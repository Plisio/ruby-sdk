=begin
#Plisio API

#Plisio payment gateway API

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for PlisioAPIClient::BalanceResponseDto
describe 'BalanceResponseDto' do
  before do
    # run before each test
    @instance = PlisioAPIClient::BalanceResponseDto.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BalanceResponseDto' do
    it 'should create an instance of BalanceResponseDto' do
      expect(@instance).to be_instance_of(PlisioAPIClient::BalanceResponseDto)
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

  describe 'test attribute "balance"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
