=begin
#Plisio API

#Plisio payment gateway API

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for PlisioAPIClient::InvoiceDetailsApiResponseDto
describe 'InvoiceDetailsApiResponseDto' do
  before do
    # run before each test
    @instance = PlisioAPIClient::InvoiceDetailsApiResponseDto.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InvoiceDetailsApiResponseDto' do
    it 'should create an instance of InvoiceDetailsApiResponseDto' do
      expect(@instance).to be_instance_of(PlisioAPIClient::InvoiceDetailsApiResponseDto)
    end
  end
  describe 'test attribute "data"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
