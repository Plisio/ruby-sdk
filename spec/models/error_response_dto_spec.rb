=begin
#Plisio API

#Plisio payment gateway API

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for PlisioAPIClient::ErrorResponseDto
describe 'ErrorResponseDto' do
  before do
    # run before each test
    @instance = PlisioAPIClient::ErrorResponseDto.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ErrorResponseDto' do
    it 'should create an instance of ErrorResponseDto' do
      expect(@instance).to be_instance_of(PlisioAPIClient::ErrorResponseDto)
    end
  end
  describe 'test attribute "status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "data"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
