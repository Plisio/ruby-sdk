=begin
#Plisio API

#Plisio payment gateway API

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for PlisioAPIClient::FeeResponseDto
describe 'FeeResponseDto' do
  before do
    # run before each test
    @instance = PlisioAPIClient::FeeResponseDto.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FeeResponseDto' do
    it 'should create an instance of FeeResponseDto' do
      expect(@instance).to be_instance_of(PlisioAPIClient::FeeResponseDto)
    end
  end
  describe 'test attribute "fee"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "psys_cid"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "currency"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "plan"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
