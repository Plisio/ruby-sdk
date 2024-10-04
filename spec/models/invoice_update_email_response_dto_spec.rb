=begin
#Plisio API

#Plisio payment gateway API

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for PlisioAPIClient::InvoiceUpdateEmailResponseDto
describe 'InvoiceUpdateEmailResponseDto' do
  before do
    # run before each test
    @instance = PlisioAPIClient::InvoiceUpdateEmailResponseDto.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InvoiceUpdateEmailResponseDto' do
    it 'should create an instance of InvoiceUpdateEmailResponseDto' do
      expect(@instance).to be_instance_of(PlisioAPIClient::InvoiceUpdateEmailResponseDto)
    end
  end
  describe 'test attribute "email"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
