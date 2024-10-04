=begin
#Plisio API

#Plisio payment gateway API

=end

require 'spec_helper'
require 'json'

# Unit tests for PlisioAPIClient::CurrenciesApi
describe 'CurrenciesApi' do
  before do
    # run before each test
    @instance = PlisioAPIClient::CurrenciesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CurrenciesApi' do
    it 'should create an instance of CurrenciesApi' do
      expect(@instance).to be_instance_of(PlisioAPIClient::CurrenciesApi)
    end
  end

  # unit tests for currencies_fiat_get
  # List of supported cryptocurrencies
  # @param fiat one of the 168 fiat currencies https://plisio.net/documentation/appendices/supported-fiat-currencies
  # @param [Hash] opts the optional parameters
  # @return [CryptocurrencyApiResponseDto]
  describe 'currencies_fiat_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
