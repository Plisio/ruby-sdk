=begin
#Plisio API

#Plisio payment gateway API

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for PlisioAPIClient::FeePlanApiResponseDto
describe 'FeePlanApiResponseDto' do
  before do
    # run before each test
    @instance = PlisioAPIClient::FeePlanApiResponseDto.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FeePlanApiResponseDto' do
    it 'should create an instance of FeePlanApiResponseDto' do
      expect(@instance).to be_instance_of(PlisioAPIClient::FeePlanApiResponseDto)
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
