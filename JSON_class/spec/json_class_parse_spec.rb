require 'spec_helper'

describe 'Testing the exchange rates' do
  before(:all) do
    @exchange_rates = ParseJson.new('json_exchange_rates.json')
  end

  it 'Should be a hash' do
    expect(@exchange_rates.json_file).to be_kind_of(Hash)
  end

  it 'Should contain the base as EUR' do
    expect(@exchange_rates.json_file['base']).to include("EUR")
  end

  it 'Should have a date string' do
    expect(@exchange_rates.json_file['date']).to be_kind_of(String)
  end

  it 'Should have 31 rates' do
    expect(@exchange_rates.json_file['rates'].keys.count).to eq(31)
  end

  it 'Should have all rates as floats' do
    @exchange_rates.json_file['rates'].each do |key, value|
      expect(value).to be_kind_of(Float)
    end
  end
end
