# PlisioAPIClient::TransactionApi

All URIs are relative to *https://plisio.net/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**operations_commission_psys_cid_get**](TransactionApi.md#operations_commission_psys_cid_get) | **GET** /operations/commission/{psys_cid} | Estimate cryptocurrency fee and Plisio commission
[**operations_fee_plan_psys_cid_get**](TransactionApi.md#operations_fee_plan_psys_cid_get) | **GET** /operations/fee-plan/{psys_cid} | Get Plisio fee plans
[**operations_fee_psys_cid_get**](TransactionApi.md#operations_fee_psys_cid_get) | **GET** /operations/fee/{psys_cid} | Estimate fee
[**operations_get**](TransactionApi.md#operations_get) | **GET** /operations | List of all user transactions
[**operations_id_get**](TransactionApi.md#operations_id_get) | **GET** /operations/{id} | Transaction details
[**operations_withdraw_get**](TransactionApi.md#operations_withdraw_get) | **GET** /operations/withdraw | Create new invoice

# **operations_commission_psys_cid_get**
> CommissionApiResponseDto operations_commission_psys_cid_get(psys_cid, addresses, amounts, type, opts)

Estimate cryptocurrency fee and Plisio commission

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

api_instance = PlisioAPIClient::TransactionApi.new
psys_cid = 'psys_cid_example' # String | ID column from one of the supported cryptocurrencies supported by Plisio
addresses = 'addresses_example' # String | wallet address or comma separated addresses when estimating fee for mass withdrawal
amounts = 'amounts_example' # String | amount or comma separated amount that will be send in case of mass withdraw
type = 'type_example' # String | operation type
opts = { 
  fee_plan: 'fee_plan_example' # String | normal or priority (https://plisio.net/documentation/endpoints/fee-plans)
}

begin
  #Estimate cryptocurrency fee and Plisio commission
  result = api_instance.operations_commission_psys_cid_get(psys_cid, addresses, amounts, type, opts)
  p result
rescue PlisioAPIClient::ApiError => e
  puts "Exception when calling TransactionApi->operations_commission_psys_cid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **psys_cid** | **String**| ID column from one of the supported cryptocurrencies supported by Plisio | 
 **addresses** | **String**| wallet address or comma separated addresses when estimating fee for mass withdrawal | 
 **amounts** | **String**| amount or comma separated amount that will be send in case of mass withdraw | 
 **type** | **String**| operation type | 
 **fee_plan** | **String**| normal or priority (https://plisio.net/documentation/endpoints/fee-plans) | [optional] 

### Return type

[**CommissionApiResponseDto**](CommissionApiResponseDto.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **operations_fee_plan_psys_cid_get**
> FeePlanApiResponseDto operations_fee_plan_psys_cid_get(psys_cid)

Get Plisio fee plans

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

api_instance = PlisioAPIClient::TransactionApi.new
psys_cid = 'psys_cid_example' # String | ID column from one of the supported cryptocurrencies supported by Plisio


begin
  #Get Plisio fee plans
  result = api_instance.operations_fee_plan_psys_cid_get(psys_cid)
  p result
rescue PlisioAPIClient::ApiError => e
  puts "Exception when calling TransactionApi->operations_fee_plan_psys_cid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **psys_cid** | **String**| ID column from one of the supported cryptocurrencies supported by Plisio | 

### Return type

[**FeePlanApiResponseDto**](FeePlanApiResponseDto.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **operations_fee_psys_cid_get**
> FeeApiResponseDto operations_fee_psys_cid_get(psys_cid, addresses, amounts, opts)

Estimate fee

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

api_instance = PlisioAPIClient::TransactionApi.new
psys_cid = 'psys_cid_example' # String | ID column from one of the supported cryptocurrencies supported by Plisio
addresses = 'addresses_example' # String | wallet address or comma separated addresses when estimating fee for mass withdrawal
amounts = 'amounts_example' # String | amount or comma separated amount that will be send in case of mass withdraw
opts = { 
  fee_plan: 'fee_plan_example' # String | normal or priority (https://plisio.net/documentation/endpoints/fee-plans)
}

begin
  #Estimate fee
  result = api_instance.operations_fee_psys_cid_get(psys_cid, addresses, amounts, opts)
  p result
rescue PlisioAPIClient::ApiError => e
  puts "Exception when calling TransactionApi->operations_fee_psys_cid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **psys_cid** | **String**| ID column from one of the supported cryptocurrencies supported by Plisio | 
 **addresses** | **String**| wallet address or comma separated addresses when estimating fee for mass withdrawal | 
 **amounts** | **String**| amount or comma separated amount that will be send in case of mass withdraw | 
 **fee_plan** | **String**| normal or priority (https://plisio.net/documentation/endpoints/fee-plans) | [optional] 

### Return type

[**FeeApiResponseDto**](FeeApiResponseDto.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **operations_get**
> OperationsApiResponseDto operations_get(opts)

List of all user transactions

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

api_instance = PlisioAPIClient::TransactionApi.new
opts = { 
  page: 56, # Integer | page number
  limit: 56, # Integer | number of elements on the page
  shop_id: 'shop_id_example', # String | Filter operation by shop
  type: 'type_example', # String | Transaction type
  status: 'status_example', # String | Transaction status
  currency: 'currency_example', # String | one of the cryptocurrencies supported by Plisio (ID column from supported cryptocurrencies https://plisio.net/documentation/appendices/supported-cryptocurrencies)
  search: 'search_example' # String | text search by the transaction id (txid), invoice’s order number or customer email from invoice
}

begin
  #List of all user transactions
  result = api_instance.operations_get(opts)
  p result
rescue PlisioAPIClient::ApiError => e
  puts "Exception when calling TransactionApi->operations_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| page number | [optional] 
 **limit** | **Integer**| number of elements on the page | [optional] 
 **shop_id** | **String**| Filter operation by shop | [optional] 
 **type** | **String**| Transaction type | [optional] 
 **status** | **String**| Transaction status | [optional] 
 **currency** | **String**| one of the cryptocurrencies supported by Plisio (ID column from supported cryptocurrencies https://plisio.net/documentation/appendices/supported-cryptocurrencies) | [optional] 
 **search** | **String**| text search by the transaction id (txid), invoice’s order number or customer email from invoice | [optional] 

### Return type

[**OperationsApiResponseDto**](OperationsApiResponseDto.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **operations_id_get**
> OperationApiResponseDto operations_id_get(id)

Transaction details

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

api_instance = PlisioAPIClient::TransactionApi.new
id = 'id_example' # String | transactoion id


begin
  #Transaction details
  result = api_instance.operations_id_get(id)
  p result
rescue PlisioAPIClient::ApiError => e
  puts "Exception when calling TransactionApi->operations_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| transactoion id | 

### Return type

[**OperationApiResponseDto**](OperationApiResponseDto.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



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

api_instance = PlisioAPIClient::TransactionApi.new
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
  puts "Exception when calling TransactionApi->operations_withdraw_get: #{e}"
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



