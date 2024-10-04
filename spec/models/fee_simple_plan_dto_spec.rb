=begin
#Plisio API

#Plisio payment gateway API

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for PlisioAPIClient::FeeSimplePlanDto
describe 'FeeSimplePlanDto' do
  before do
    # run before each test
    @instance = PlisioAPIClient::FeeSimplePlanDto.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FeeSimplePlanDto' do
    it 'should create an instance of FeeSimplePlanDto' do
      expect(@instance).to be_instance_of(PlisioAPIClient::FeeSimplePlanDto)
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
