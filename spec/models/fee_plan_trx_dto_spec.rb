=begin
#Plisio API

#Plisio payment gateway API

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for PlisioAPIClient::FeePlanTrxDto
describe 'FeePlanTrxDto' do
  before do
    # run before each test
    @instance = PlisioAPIClient::FeePlanTrxDto.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FeePlanTrxDto' do
    it 'should create an instance of FeePlanTrxDto' do
      expect(@instance).to be_instance_of(PlisioAPIClient::FeePlanTrxDto)
    end
  end
  describe 'test attribute "value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "key"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "description"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
