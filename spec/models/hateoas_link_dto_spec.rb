=begin
#Plisio API

#Plisio payment gateway API

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for PlisioAPIClient::HateoasLinkDto
describe 'HateoasLinkDto' do
  before do
    # run before each test
    @instance = PlisioAPIClient::HateoasLinkDto.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of HateoasLinkDto' do
    it 'should create an instance of HateoasLinkDto' do
      expect(@instance).to be_instance_of(PlisioAPIClient::HateoasLinkDto)
    end
  end
  describe 'test attribute "href"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
