# PlisioAPIClient::CurrenciesApi

All URIs are relative to *https://plisio.net/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**currencies_fiat_get**](CurrenciesApi.md#currencies_fiat_get) | **GET** /currencies/{fiat} | List of supported cryptocurrencies

# **currencies_fiat_get**
> CryptocurrencyApiResponseDto currencies_fiat_get(fiat)

List of supported cryptocurrencies

### Example
```ruby
# load the gem
require 'plisio_client'
# setup authorization
PlisioAPIClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = PlisioAPIClient::CurrenciesApi.new
fiat = 'fiat_example' # String | one of the 168 fiat currencies https://plisio.net/documentation/appendices/supported-fiat-currencies


begin
  #List of supported cryptocurrencies
  result = api_instance.currencies_fiat_get(fiat)
  p result
rescue PlisioAPIClient::ApiError => e
  puts "Exception when calling CurrenciesApi->currencies_fiat_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fiat** | **String**| one of the 168 fiat currencies https://plisio.net/documentation/appendices/supported-fiat-currencies | 

### Return type

[**CryptocurrencyApiResponseDto**](CryptocurrencyApiResponseDto.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



