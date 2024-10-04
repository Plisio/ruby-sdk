=begin
#Plisio API

#Plisio payment gateway API

=end

require 'spec_helper'
require 'json'

# Unit tests for PlisioAPIClient::ShopApi
describe 'ShopApi' do
  before do
    # run before each test
    @instance = PlisioAPIClient::ShopApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ShopApi' do
    it 'should create an instance of ShopApi' do
      expect(@instance).to be_instance_of(PlisioAPIClient::ShopApi)
    end
  end

  # unit tests for shops_get
  # Get shop info by api_key
  # @param [Hash] opts the optional parameters
  # @return [ShopResponseDto]
  describe 'shops_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
