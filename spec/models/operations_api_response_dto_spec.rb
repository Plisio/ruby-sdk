=begin
#Plisio API

#Plisio payment gateway API

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for PlisioAPIClient::OperationsApiResponseDto
describe 'OperationsApiResponseDto' do
  before do
    # run before each test
    @instance = PlisioAPIClient::OperationsApiResponseDto.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OperationsApiResponseDto' do
    it 'should create an instance of OperationsApiResponseDto' do
      expect(@instance).to be_instance_of(PlisioAPIClient::OperationsApiResponseDto)
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
