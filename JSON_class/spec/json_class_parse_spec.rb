require 'spec_helper'

describe 'Testing the exchange rates' do
  before(:all) do
    @exchange_rates = ParseJson.new('json_exchange_rates.json')
  end

  it 'Should be a hash' do
    expect(@exchange_rates.json_file).to be_kind_of(Hash)
  end
end
