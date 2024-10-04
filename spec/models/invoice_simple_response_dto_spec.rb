=begin
#Plisio API

#Plisio payment gateway API

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for PlisioAPIClient::InvoiceSimpleResponseDto
describe 'InvoiceSimpleResponseDto' do
  before do
    # run before each test
    @instance = PlisioAPIClient::InvoiceSimpleResponseDto.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InvoiceSimpleResponseDto' do
    it 'should create an instance of InvoiceSimpleResponseDto' do
      expect(@instance).to be_instance_of(PlisioAPIClient::InvoiceSimpleResponseDto)
    end
  end
  describe 'test attribute "txn_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "invoice_url"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "invoice_total_sum"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
