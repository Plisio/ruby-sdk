=begin
#Plisio API

#Plisio payment gateway API

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for PlisioAPIClient::FeeParamsDto
describe 'FeeParamsDto' do
  before do
    # run before each test
    @instance = PlisioAPIClient::FeeParamsDto.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FeeParamsDto' do
    it 'should create an instance of FeeParamsDto' do
      expect(@instance).to be_instance_of(PlisioAPIClient::FeeParamsDto)
    end
  end
  describe 'test attribute "conf_target"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "plan"' do
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
