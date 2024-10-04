=begin
#Plisio API

#Plisio payment gateway API

=end

require 'spec_helper'
require 'json'

# Unit tests for PlisioAPIClient::BalanceApi
describe 'BalanceApi' do
  before do
    # run before each test
    @instance = PlisioAPIClient::BalanceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BalanceApi' do
    it 'should create an instance of BalanceApi' do
      expect(@instance).to be_instance_of(PlisioAPIClient::BalanceApi)
    end
  end

  # unit tests for balances_psys_cid_get
  # Get cryptocurrency balance
  # @param psys_cid ID column from one of the supported cryptocurrencies supported by Plisio
  # @param [Hash] opts the optional parameters
  # @return [BalanceApiResponseDto]
  describe 'balances_psys_cid_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
