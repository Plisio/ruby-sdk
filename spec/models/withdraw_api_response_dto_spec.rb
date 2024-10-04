=begin
#Plisio API

#Plisio payment gateway API

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for PlisioAPIClient::WithdrawApiResponseDto
describe 'WithdrawApiResponseDto' do
  before do
    # run before each test
    @instance = PlisioAPIClient::WithdrawApiResponseDto.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WithdrawApiResponseDto' do
    it 'should create an instance of WithdrawApiResponseDto' do
      expect(@instance).to be_instance_of(PlisioAPIClient::WithdrawApiResponseDto)
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
