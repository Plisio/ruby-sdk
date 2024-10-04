=begin
#Plisio API

#Plisio payment gateway API

=end

require 'spec_helper'

describe PlisioAPIClient::Configuration do
  let(:config) { PlisioAPIClient::Configuration.default }

  before(:each) do
    # uncomment below to setup host and base_path
    # require 'URI'
    # uri = URI.parse("https://plisio.net/api/v1")
    # PlisioAPIClient.configure do |c|
    #   c.host = uri.host
    #   c.base_path = uri.path
    # end
  end

  describe '#base_url' do
    it 'should have the default value' do
      # uncomment below to test default value of the base path
      # expect(config.base_url).to eq("https://plisio.net/api/v1")
    end

    it 'should remove trailing slashes' do
      [nil, '', '/', '//'].each do |base_path|
        config.base_path = base_path
        # uncomment below to test trailing slashes
        # expect(config.base_url).to eq("https://plisio.net/api/v1")
      end
    end
  end
end
