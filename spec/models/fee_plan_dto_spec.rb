=begin
#Plisio API

#Plisio payment gateway API

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for PlisioAPIClient::FeePlanDto
describe 'FeePlanDto' do
  before do
    # run before each test
    @instance = PlisioAPIClient::FeePlanDto.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FeePlanDto' do
    it 'should create an instance of FeePlanDto' do
      expect(@instance).to be_instance_of(PlisioAPIClient::FeePlanDto)
    end
  end
  describe 'test attribute "economy"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "normal"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "priority"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
