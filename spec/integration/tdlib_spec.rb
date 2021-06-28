require 'spec_helper'
require 'tdlib-ruby'

describe TD::Client do
  let(:client) { TD::Client.new(timeout: timeout).tap(&:connect) }
  let!(:payload) { { '@type' => 'getTextEntities', 'text' => text } }
  let!(:text) { '@telegram' }
  let(:timeout) { TD::Client::TIMEOUT }

  before do
    TD.configure do |config|
      config.lib_path = File.join(File.expand_path("#{TD.root_path}/../"), 'td', 'build')

      config.client.api_id = ENV['TD_API_ID']
      config.client.api_hash = ENV['TD_API_HASH']
      config.client.use_test_dc = true
    end

    TD::Api.set_log_verbosity_level(1)
  end

  around do |example|
    begin
      example.run
    ensure
      client.dispose
    end
  end

  describe '#on_ready' do
    subject { client.on_ready { [client, 'ready'] } }

    it { is_expected.to include(client) }
    it { is_expected.to include('ready') }

    context 'when timeout reached' do
      let(:timeout) { 0.0001 }

      subject { client.on_ready { [client, 'ready'] } }

      it { expect { subject }.to raise_error(TD::Error) }
    end
  end

  describe '#broadcast' do
    context 'when no block given' do
      subject { client.ready.then { client.get_text_entities(text: text) }.flat.wait }

      it { expect { subject }.not_to raise_error(Exception) }
      it { is_expected.to satisfy(&:fulfilled?) }
      it { is_expected.to satisfy { |result| result.value.is_a?(TD::Types::TextEntities) } }
    end
  end

  describe '#fetch' do
    subject { client.on_ready { client.fetch(payload) } }

    it { is_expected.to respond_to(:entities) }

    context 'when timeout reached' do
      let(:timeout) { 0.0001 }

      subject { client.on_ready { client.fetch(payload) } }

      it { expect { subject }.to raise_error(TD::Error) }
    end
  end

  describe '#on' do
    subject do
      client.on_ready do
        client.on('textEntities') { |update| @result = update }
        client.broadcast(payload)
      end
    end

    it 'runs block on update' do
      subject
      sleep 1
      expect(@result).to respond_to(:entities)
    end
  end

  describe 'nested handlers' do
    before { Thread.abort_on_exception = true }

    subject do
      client.on_ready do
        client.broadcast(payload) do
          client.fetch(payload)
        end
        sleep 1
      end
    end

    it { expect { subject }.not_to raise_error(Exception) }
  end
end
