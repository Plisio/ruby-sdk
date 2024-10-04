=begin
#Plisio API

#Plisio payment gateway API

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for PlisioAPIClient::FeeSimplePlanItemDto
describe 'FeeSimplePlanItemDto' do
  before do
    # run before each test
    @instance = PlisioAPIClient::FeeSimplePlanItemDto.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FeeSimplePlanItemDto' do
    it 'should create an instance of FeeSimplePlanItemDto' do
      expect(@instance).to be_instance_of(PlisioAPIClient::FeeSimplePlanItemDto)
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

  describe 'test attribute "value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
