# PlisioAPIClient::WithdrawApi

All URIs are relative to *https://plisio.net/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**operations_withdraw_get**](WithdrawApi.md#operations_withdraw_get) | **GET** /operations/withdraw | Create new invoice

# **operations_withdraw_get**
> WithdrawApiResponseDto operations_withdraw_get(psys_cid, to, amount, type, opts)

Create new invoice

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

api_instance = PlisioAPIClient::WithdrawApi.new
psys_cid = 'psys_cid_example' # String | one of the cryptocurrencies supported by Plisio (ID column from supported cryptocurrencies https://plisio.net/documentation/appendices/supported-cryptocurrencies)
to = 'to_example' # String | hash or multiple comma separated hashes pooled for the 'mass_cash_out'
amount = 'amount_example' # String | any comma separated float values for the “ mass_cash_out” in the order that hashes are in “to” parameter
type = 'type_example' # String | 'cash_out' or 'mass_cash_out' to send to single or multiple comma separated hashes
opts = { 
  fee_plan: 'fee_plan_example' # String |  normal or priority (https://plisio.net/documentation/endpoints/fee-plan)
}

begin
  #Create new invoice
  result = api_instance.operations_withdraw_get(psys_cid, to, amount, type, opts)
  p result
rescue PlisioAPIClient::ApiError => e
  puts "Exception when calling WithdrawApi->operations_withdraw_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **psys_cid** | **String**| one of the cryptocurrencies supported by Plisio (ID column from supported cryptocurrencies https://plisio.net/documentation/appendices/supported-cryptocurrencies) | 
 **to** | **String**| hash or multiple comma separated hashes pooled for the &#x27;mass_cash_out&#x27; | 
 **amount** | **String**| any comma separated float values for the “ mass_cash_out” in the order that hashes are in “to” parameter | 
 **type** | **String**| &#x27;cash_out&#x27; or &#x27;mass_cash_out&#x27; to send to single or multiple comma separated hashes | 
 **fee_plan** | **String**|  normal or priority (https://plisio.net/documentation/endpoints/fee-plan) | [optional] 

### Return type

[**WithdrawApiResponseDto**](WithdrawApiResponseDto.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



