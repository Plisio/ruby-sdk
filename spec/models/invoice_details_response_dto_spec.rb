=begin
#Plisio API

#Plisio payment gateway API

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for PlisioAPIClient::InvoiceDetailsResponseDto
describe 'InvoiceDetailsResponseDto' do
  before do
    # run before each test
    @instance = PlisioAPIClient::InvoiceDetailsResponseDto.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InvoiceDetailsResponseDto' do
    it 'should create an instance of InvoiceDetailsResponseDto' do
      expect(@instance).to be_instance_of(PlisioAPIClient::InvoiceDetailsResponseDto)
    end
  end
  describe 'test attribute "invoice"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "active_invoice_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "shop"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "paysys"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "allowed_psys_cids"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
