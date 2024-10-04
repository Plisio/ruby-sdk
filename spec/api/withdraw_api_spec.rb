=begin
#Plisio API

#Plisio payment gateway API

=end

require 'spec_helper'
require 'json'

# Unit tests for PlisioAPIClient::WithdrawApi
describe 'WithdrawApi' do
  before do
    # run before each test
    @instance = PlisioAPIClient::WithdrawApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WithdrawApi' do
    it 'should create an instance of WithdrawApi' do
      expect(@instance).to be_instance_of(PlisioAPIClient::WithdrawApi)
    end
  end

  # unit tests for operations_withdraw_get
  # Create new invoice
  # @param psys_cid one of the cryptocurrencies supported by Plisio (ID column from supported cryptocurrencies https://plisio.net/documentation/appendices/supported-cryptocurrencies)
  # @param to hash or multiple comma separated hashes pooled for the &#x27;mass_cash_out&#x27;
  # @param amount any comma separated float values for the “ mass_cash_out” in the order that hashes are in “to” parameter
  # @param type &#x27;cash_out&#x27; or &#x27;mass_cash_out&#x27; to send to single or multiple comma separated hashes
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fee_plan  normal or priority (https://plisio.net/documentation/endpoints/fee-plan)
  # @return [WithdrawApiResponseDto]
  describe 'operations_withdraw_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
