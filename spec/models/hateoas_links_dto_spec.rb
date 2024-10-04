=begin
#Plisio API

#Plisio payment gateway API

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for PlisioAPIClient::HateoasLinksDto
describe 'HateoasLinksDto' do
  before do
    # run before each test
    @instance = PlisioAPIClient::HateoasLinksDto.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of HateoasLinksDto' do
    it 'should create an instance of HateoasLinksDto' do
      expect(@instance).to be_instance_of(PlisioAPIClient::HateoasLinksDto)
    end
  end
  describe 'test attribute "_self"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "_next"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "last"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
