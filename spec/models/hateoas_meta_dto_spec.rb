=begin
#Plisio API

#Plisio payment gateway API

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for PlisioAPIClient::HateoasMetaDto
describe 'HateoasMetaDto' do
  before do
    # run before each test
    @instance = PlisioAPIClient::HateoasMetaDto.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of HateoasMetaDto' do
    it 'should create an instance of HateoasMetaDto' do
      expect(@instance).to be_instance_of(PlisioAPIClient::HateoasMetaDto)
    end
  end
  describe 'test attribute "total_count"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "page_count"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "current_page"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "per_page"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
