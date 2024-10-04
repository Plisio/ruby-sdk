# -*- encoding: utf-8 -*-

=begin
#Plisio API

#Plisio payment gateway API

=end

$:.push File.expand_path("../lib", __FILE__)
require "plisio_client/version"

Gem::Specification.new do |s|
  s.name        = "plisio_client"
  s.version     = PlisioAPIClient::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Swagger-Plisio"]
  s.email       = ["lead@plisio.net"]
  s.homepage    = "https://plisio.net"
  s.summary     = "ArubyPlisio"
  s.description = "Thisgemmapstoaplisioapi"
  s.license     = 'MIT'
  s.required_ruby_version = ">= 1.9"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency 'json', '~> 2.1', '>= 2.1.0'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
