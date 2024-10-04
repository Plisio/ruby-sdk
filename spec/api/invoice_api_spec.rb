=begin
#Plisio API

#Plisio payment gateway API

=end

require 'spec_helper'
require 'json'

# Unit tests for PlisioAPIClient::InvoiceApi
describe 'InvoiceApi' do
  before do
    # run before each test
    @instance = PlisioAPIClient::InvoiceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InvoiceApi' do
    it 'should create an instance of InvoiceApi' do
      expect(@instance).to be_instance_of(PlisioAPIClient::InvoiceApi)
    end
  end

  # unit tests for invoices_email_id_get
  # Invoice details
  # @param id invoice id
  # @param email payer&#x27;s email
  # @param [Hash] opts the optional parameters
  # @return [InvoiceDetailsApiResponseDto]
  describe 'invoices_email_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for invoices_id_get
  # Invoice details
  # @param id invoice id
  # @param [Hash] opts the optional parameters
  # @return [InvoiceDetailsApiResponseDto]
  describe 'invoices_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for invoices_new_get
  # Create new invoice
  # @param currency one of the cryptocurrencies supported by Plisio (ID column from supported cryptocurrencies https://plisio.net/documentation/appendices/supported-cryptocurrencies)
  # @param order_name merchant internal order name
  # @param order_number merchant internal order number. Must be unique number in your store for each new store&#x60;s order!!!
  # @param [Hash] opts the optional parameters
  # @option opts [String] :amount any cryptocurrency float value. !!! Please, skip this field If you want to convert a fiat currency and use source_currency and source_amount fields instead
  # @option opts [String] :source_currency one of the 167 fiat currencies https://plisio.net/documentation/appendices/supported-fiat-currencies
  # @option opts [String] :source_amount any float value
  # @option opts [String] :allowed_psys_cids comma-separated list of cryptocurrencies that allowed for payment. Customer will be able to select one of them. Example: BTC,ETH,TZEC
  # @option opts [String] :description merchant invoice description
  # @option opts [String] :callback_url merchant full URL to get invoice updates. The “POST” request will be sent to this URL (example). If this parameter isn’t set, Plisio will send a callback to URL that can be set under profile API » API settings » ”Status URL” field
  # @option opts [String] :email an auto-fill invoice email. The customer will be asked to insert their email where a notification will be sent
  # @option opts [String] :language en_US (we support EN language only)
  # @option opts [String] :plugin Plisio’s internal field to determine integration plugin
  # @option opts [String] :version Plisio’s internal field to determine integration plugin version 
  # @option opts [BOOLEAN] :redirect_to_invoice Instead of JSON response user will be redirected to the Plisio&#x27;s invoice page (is not working for a white-label shop)
  # @option opts [String] :expire_min Interval in minutes when invoice will be expired
  # @return [InvoiceWhiteLabelResponseDto]
  describe 'invoices_new_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for invoices_switch_id_get
  # Invoice details
  # @param id invoice id
  # @param psys_cid destination cryptocurrency id
  # @param [Hash] opts the optional parameters
  # @return [InvoiceDetailsApiResponseDto]
  describe 'invoices_switch_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
