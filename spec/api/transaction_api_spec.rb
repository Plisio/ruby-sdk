=begin
#Plisio API

#Plisio payment gateway API

=end

require 'spec_helper'
require 'json'

# Unit tests for PlisioAPIClient::TransactionApi
describe 'TransactionApi' do
  before do
    # run before each test
    @instance = PlisioAPIClient::TransactionApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TransactionApi' do
    it 'should create an instance of TransactionApi' do
      expect(@instance).to be_instance_of(PlisioAPIClient::TransactionApi)
    end
  end

  # unit tests for operations_commission_psys_cid_get
  # Estimate cryptocurrency fee and Plisio commission
  # @param psys_cid ID column from one of the supported cryptocurrencies supported by Plisio
  # @param addresses wallet address or comma separated addresses when estimating fee for mass withdrawal
  # @param amounts amount or comma separated amount that will be send in case of mass withdraw
  # @param type operation type
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fee_plan normal or priority (https://plisio.net/documentation/endpoints/fee-plans)
  # @return [CommissionApiResponseDto]
  describe 'operations_commission_psys_cid_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for operations_fee_plan_psys_cid_get
  # Get Plisio fee plans
  # @param psys_cid ID column from one of the supported cryptocurrencies supported by Plisio
  # @param [Hash] opts the optional parameters
  # @return [FeePlanApiResponseDto]
  describe 'operations_fee_plan_psys_cid_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for operations_fee_psys_cid_get
  # Estimate fee
  # @param psys_cid ID column from one of the supported cryptocurrencies supported by Plisio
  # @param addresses wallet address or comma separated addresses when estimating fee for mass withdrawal
  # @param amounts amount or comma separated amount that will be send in case of mass withdraw
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fee_plan normal or priority (https://plisio.net/documentation/endpoints/fee-plans)
  # @return [FeeApiResponseDto]
  describe 'operations_fee_psys_cid_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for operations_get
  # List of all user transactions
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page page number
  # @option opts [Integer] :limit number of elements on the page
  # @option opts [String] :shop_id Filter operation by shop
  # @option opts [String] :type Transaction type
  # @option opts [String] :status Transaction status
  # @option opts [String] :currency one of the cryptocurrencies supported by Plisio (ID column from supported cryptocurrencies https://plisio.net/documentation/appendices/supported-cryptocurrencies)
  # @option opts [String] :search text search by the transaction id (txid), invoice’s order number or customer email from invoice
  # @return [OperationsApiResponseDto]
  describe 'operations_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for operations_id_get
  # Transaction details
  # @param id transactoion id
  # @param [Hash] opts the optional parameters
  # @return [OperationApiResponseDto]
  describe 'operations_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
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
