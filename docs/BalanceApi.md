# PlisioAPIClient::BalanceApi

All URIs are relative to *https://plisio.net/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**balances_psys_cid_get**](BalanceApi.md#balances_psys_cid_get) | **GET** /balances/{psys_cid} | Get cryptocurrency balance

# **balances_psys_cid_get**
> BalanceApiResponseDto balances_psys_cid_get(psys_cid)

Get cryptocurrency balance

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

api_instance = PlisioAPIClient::BalanceApi.new
psys_cid = 'psys_cid_example' # String | ID column from one of the supported cryptocurrencies supported by Plisio


begin
  #Get cryptocurrency balance
  result = api_instance.balances_psys_cid_get(psys_cid)
  p result
rescue PlisioAPIClient::ApiError => e
  puts "Exception when calling BalanceApi->balances_psys_cid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **psys_cid** | **String**| ID column from one of the supported cryptocurrencies supported by Plisio | 

### Return type

[**BalanceApiResponseDto**](BalanceApiResponseDto.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



