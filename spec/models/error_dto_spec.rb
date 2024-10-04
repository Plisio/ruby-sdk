=begin
#Plisio API

#Plisio payment gateway API

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for PlisioAPIClient::ErrorDto
describe 'ErrorDto' do
  before do
    # run before each test
    @instance = PlisioAPIClient::ErrorDto.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ErrorDto' do
    it 'should create an instance of ErrorDto' do
      expect(@instance).to be_instance_of(PlisioAPIClient::ErrorDto)
    end
  end
  describe 'test attribute "message"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
