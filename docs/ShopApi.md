# PlisioAPIClient::ShopApi

All URIs are relative to *https://plisio.net/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**shops_get**](ShopApi.md#shops_get) | **GET** /shops | Get shop info by api_key

# **shops_get**
> ShopResponseDto shops_get

Get shop info by api_key

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

api_instance = PlisioAPIClient::ShopApi.new

begin
  #Get shop info by api_key
  result = api_instance.shops_get
  p result
rescue PlisioAPIClient::ApiError => e
  puts "Exception when calling ShopApi->shops_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ShopResponseDto**](ShopResponseDto.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



