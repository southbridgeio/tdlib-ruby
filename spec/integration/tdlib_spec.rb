require 'spec_helper'
require 'tdlib-ruby'

describe TD::Client do
  let(:client) { TD::Client.new }
  let(:payload) { { '@type': 'getTextEntities', 'text': '@telegram' } }

  before do
    TD.configure do |config|
      config.lib_path = File.join(File.expand_path("#{TD.root_path}/../"), 'td', 'build')

      config.client.api_id = ENV['TD_API_ID']
      config.client.api_hash = ENV['TD_API_HASH']
      config.client.use_test_dc = true
    end

    TD::Api.set_log_verbosity_level(1)
  end

  describe '#on_ready' do
    subject { client.on_ready { [client, 'ready'] } }

    it { is_expected.to include(client) }
    it { is_expected.to include('ready') }

    context 'when timeout reached' do
      subject { client.on_ready(timeout: 0.0001) { [client, 'ready'] } }

      it { expect { subject }.to raise_error(TD::TimeoutError) }
    end
  end

  describe '#broadcast' do
    context 'when no block given' do
      subject { client.on_ready { client.broadcast(payload) } }

      it { expect { subject }.not_to raise_error(Exception) }
    end

    context 'when block given' do
      subject { client.on_ready { client.broadcast(payload) { |update| @result = update } } }

      it 'runs block on update' do
        subject
        sleep 1
        expect(@result).to include('@type', 'entities')
      end
    end
  end

  describe '#broadcast_and_receive' do
    subject { client.on_ready { client.broadcast_and_receive(payload) } }

    it { is_expected.to include('@type', 'entities') }

    context 'when timeout reached' do
      subject { client.on_ready(timeout: 0.0001) { client.broadcast_and_receive(payload) } }

      it { expect { subject }.to raise_error(TD::TimeoutError) }
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
      expect(@result).to include('@type', 'entities')
    end
  end
end
