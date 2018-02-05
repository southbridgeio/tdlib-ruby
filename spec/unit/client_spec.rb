require 'spec_helper'
require 'tdlib'
require 'support/update_manager_stub'

Thread.abort_on_exception = true

describe TD::Client do
  let(:client) { described_class.new(td_client, update_manager) }
  let(:td_client) { double }
  let(:update_manager) { UpdateManagerStub.new(td_client, update) }
  let(:query) { { '@type' => 'type' } }
  let(:send_result) { 'send_result' }
  let(:update) { { '@type' => 'update' } }
  let(:extra) { 'extra' }

  before do
    allow(TD::Api).to receive(:client_create).and_return(td_client)
    allow(TD::Api).to receive(:client_send).with(td_client, query).and_return(send_result)
    allow(TD::Api).to receive(:client_execute).with(td_client, query).and_return(send_result)
    allow(TD::Api).to receive(:client_receive).with(td_client).and_return(update)

    allow(TD::Utils).to receive(:generate_extra).with(query).and_return(extra)
  end

  describe '#broadcast' do
    context 'when no block given' do
      subject { client.broadcast(query) }

      it { is_expected.to eq(send_result) }
    end

    context 'when block given' do
      subject { client.broadcast(query) { |update| raise update.to_s } }

      it 'adds @extra key to query' do
        subject
        expect(query.keys).to include('@extra')
      end

      it { is_expected.to eq(send_result) }
    end
  end

  describe '#broadcast_and_receive' do
    let(:update) { { '@type' => 'update', '@extra' => extra } }

    subject { client.broadcast_and_receive(query) }

    it { is_expected.to eq(update) }
  end

  describe '#execute' do
    subject { client.execute(query) }

    it { is_expected.to eq(send_result) }
  end

  describe '#on' do
    subject { client.on('update') { |update| update } }

    context 'when update type matches passed type' do
      let(:update) { { '@type' => 'update', '@extra' => extra } }

      it { is_expected.to eq(update) }
    end

    context 'when update type does not match passed type' do
      let(:update) { { '@type' => 'not_update', '@extra' => extra } }

      it { is_expected.not_to eq(update) }
    end
  end
end
