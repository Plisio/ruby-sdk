# PlisioAPIClient::InvoiceApi

All URIs are relative to *https://plisio.net/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**invoices_email_id_get**](InvoiceApi.md#invoices_email_id_get) | **GET** /invoices/email/{id} | Invoice details
[**invoices_id_get**](InvoiceApi.md#invoices_id_get) | **GET** /invoices/{id} | Invoice details
[**invoices_new_get**](InvoiceApi.md#invoices_new_get) | **GET** /invoices/new | Create new invoice
[**invoices_switch_id_get**](InvoiceApi.md#invoices_switch_id_get) | **GET** /invoices/switch/{id} | Invoice details

# **invoices_email_id_get**
> InvoiceDetailsApiResponseDto invoices_email_id_get(id, email)

Invoice details

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

api_instance = PlisioAPIClient::InvoiceApi.new
id = 'id_example' # String | invoice id
email = 'email_example' # String | payer's email


begin
  #Invoice details
  result = api_instance.invoices_email_id_get(id, email)
  p result
rescue PlisioAPIClient::ApiError => e
  puts "Exception when calling InvoiceApi->invoices_email_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| invoice id | 
 **email** | **String**| payer&#x27;s email | 

### Return type

[**InvoiceDetailsApiResponseDto**](InvoiceDetailsApiResponseDto.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **invoices_id_get**
> InvoiceDetailsApiResponseDto invoices_id_get(id)

Invoice details

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

api_instance = PlisioAPIClient::InvoiceApi.new
id = 'id_example' # String | invoice id


begin
  #Invoice details
  result = api_instance.invoices_id_get(id)
  p result
rescue PlisioAPIClient::ApiError => e
  puts "Exception when calling InvoiceApi->invoices_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| invoice id | 

### Return type

[**InvoiceDetailsApiResponseDto**](InvoiceDetailsApiResponseDto.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **invoices_new_get**
> InvoiceWhiteLabelResponseDto invoices_new_get(currency, order_name, order_number, opts)

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

api_instance = PlisioAPIClient::InvoiceApi.new
currency = 'currency_example' # String | one of the cryptocurrencies supported by Plisio (ID column from supported cryptocurrencies https://plisio.net/documentation/appendices/supported-cryptocurrencies)
order_name = 'order_name_example' # String | merchant internal order name
order_number = 'order_number_example' # String | merchant internal order number. Must be unique number in your store for each new store`s order!!!
opts = { 
  amount: 'amount_example', # String | any cryptocurrency float value. !!! Please, skip this field If you want to convert a fiat currency and use source_currency and source_amount fields instead
  source_currency: 'source_currency_example', # String | one of the 167 fiat currencies https://plisio.net/documentation/appendices/supported-fiat-currencies
  source_amount: 'source_amount_example', # String | any float value
  allowed_psys_cids: 'allowed_psys_cids_example', # String | comma-separated list of cryptocurrencies that allowed for payment. Customer will be able to select one of them. Example: BTC,ETH,TZEC
  description: 'description_example', # String | merchant invoice description
  callback_url: 'callback_url_example', # String | merchant full URL to get invoice updates. The “POST” request will be sent to this URL (example). If this parameter isn’t set, Plisio will send a callback to URL that can be set under profile API » API settings » ”Status URL” field
  email: 'email_example', # String | an auto-fill invoice email. The customer will be asked to insert their email where a notification will be sent
  language: 'language_example', # String | en_US (we support EN language only)
  plugin: 'plugin_example', # String | Plisio’s internal field to determine integration plugin
  version: 'version_example', # String | Plisio’s internal field to determine integration plugin version 
  redirect_to_invoice: true, # BOOLEAN | Instead of JSON response user will be redirected to the Plisio's invoice page (is not working for a white-label shop)
  expire_min: 'expire_min_example' # String | Interval in minutes when invoice will be expired
}

begin
  #Create new invoice
  result = api_instance.invoices_new_get(currency, order_name, order_number, opts)
  p result
rescue PlisioAPIClient::ApiError => e
  puts "Exception when calling InvoiceApi->invoices_new_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **String**| one of the cryptocurrencies supported by Plisio (ID column from supported cryptocurrencies https://plisio.net/documentation/appendices/supported-cryptocurrencies) | 
 **order_name** | **String**| merchant internal order name | 
 **order_number** | **String**| merchant internal order number. Must be unique number in your store for each new store&#x60;s order!!! | 
 **amount** | **String**| any cryptocurrency float value. !!! Please, skip this field If you want to convert a fiat currency and use source_currency and source_amount fields instead | [optional] 
 **source_currency** | **String**| one of the 167 fiat currencies https://plisio.net/documentation/appendices/supported-fiat-currencies | [optional] 
 **source_amount** | **String**| any float value | [optional] 
 **allowed_psys_cids** | **String**| comma-separated list of cryptocurrencies that allowed for payment. Customer will be able to select one of them. Example: BTC,ETH,TZEC | [optional] 
 **description** | **String**| merchant invoice description | [optional] 
 **callback_url** | **String**| merchant full URL to get invoice updates. The “POST” request will be sent to this URL (example). If this parameter isn’t set, Plisio will send a callback to URL that can be set under profile API » API settings » ”Status URL” field | [optional] 
 **email** | **String**| an auto-fill invoice email. The customer will be asked to insert their email where a notification will be sent | [optional] 
 **language** | **String**| en_US (we support EN language only) | [optional] 
 **plugin** | **String**| Plisio’s internal field to determine integration plugin | [optional] 
 **version** | **String**| Plisio’s internal field to determine integration plugin version  | [optional] 
 **redirect_to_invoice** | **BOOLEAN**| Instead of JSON response user will be redirected to the Plisio&#x27;s invoice page (is not working for a white-label shop) | [optional] 
 **expire_min** | **String**| Interval in minutes when invoice will be expired | [optional] 

### Return type

[**InvoiceWhiteLabelResponseDto**](InvoiceWhiteLabelResponseDto.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **invoices_switch_id_get**
> InvoiceDetailsApiResponseDto invoices_switch_id_get(id, psys_cid)

Invoice details

### Example
```ruby
# load the gem
require 'plisio_client'
# setup authorization
PlisioAPIClient.configure do |config|
  # Configure API key authorization: view_key
  config.api_key['view_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['view_key'] = 'Bearer'
end

api_instance = PlisioAPIClient::InvoiceApi.new
id = 'id_example' # String | invoice id
psys_cid = 'psys_cid_example' # String | destination cryptocurrency id


begin
  #Invoice details
  result = api_instance.invoices_switch_id_get(id, psys_cid)
  p result
rescue PlisioAPIClient::ApiError => e
  puts "Exception when calling InvoiceApi->invoices_switch_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| invoice id | 
 **psys_cid** | **String**| destination cryptocurrency id | 

### Return type

[**InvoiceDetailsApiResponseDto**](InvoiceDetailsApiResponseDto.md)

### Authorization

[view_key](../README.md#view_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



