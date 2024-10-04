# Plisio Ruby SDK

PlisioAPIClient - the Ruby gem for the Plisio API

Plisio payment gateway API

- API version: 1.0
- Package version: 1.0.0

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build plisio_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./plisio_client-1.0.0.gem
```
(for development, run `gem install --dev ./plisio_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'plisio_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'plisio_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'plisio_client'
# Setup authorization
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
# Setup authorization
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
# Setup authorization
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
# Setup authorization
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
# Setup authorization
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
# Setup authorization
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
# Setup authorization
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
# Setup authorization
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
# Setup authorization
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
# Setup authorization
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
# Setup authorization
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
# Setup authorization
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
# Setup authorization
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
# Setup authorization
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

## Documentation for API Endpoints

All URIs are relative to *https://plisio.net/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*PlisioAPIClient::BalanceApi* | [**balances_psys_cid_get**](docs/BalanceApi.md#balances_psys_cid_get) | **GET** /balances/{psys_cid} | Get cryptocurrency balance
*PlisioAPIClient::CurrenciesApi* | [**currencies_fiat_get**](docs/CurrenciesApi.md#currencies_fiat_get) | **GET** /currencies/{fiat} | List of supported cryptocurrencies
*PlisioAPIClient::InvoiceApi* | [**invoices_email_id_get**](docs/InvoiceApi.md#invoices_email_id_get) | **GET** /invoices/email/{id} | Invoice details
*PlisioAPIClient::InvoiceApi* | [**invoices_id_get**](docs/InvoiceApi.md#invoices_id_get) | **GET** /invoices/{id} | Invoice details
*PlisioAPIClient::InvoiceApi* | [**invoices_new_get**](docs/InvoiceApi.md#invoices_new_get) | **GET** /invoices/new | Create new invoice
*PlisioAPIClient::InvoiceApi* | [**invoices_switch_id_get**](docs/InvoiceApi.md#invoices_switch_id_get) | **GET** /invoices/switch/{id} | Invoice details
*PlisioAPIClient::ShopApi* | [**shops_get**](docs/ShopApi.md#shops_get) | **GET** /shops | Get shop info by api_key
*PlisioAPIClient::TransactionApi* | [**operations_commission_psys_cid_get**](docs/TransactionApi.md#operations_commission_psys_cid_get) | **GET** /operations/commission/{psys_cid} | Estimate cryptocurrency fee and Plisio commission
*PlisioAPIClient::TransactionApi* | [**operations_fee_plan_psys_cid_get**](docs/TransactionApi.md#operations_fee_plan_psys_cid_get) | **GET** /operations/fee-plan/{psys_cid} | Get Plisio fee plans
*PlisioAPIClient::TransactionApi* | [**operations_fee_psys_cid_get**](docs/TransactionApi.md#operations_fee_psys_cid_get) | **GET** /operations/fee/{psys_cid} | Estimate fee
*PlisioAPIClient::TransactionApi* | [**operations_get**](docs/TransactionApi.md#operations_get) | **GET** /operations | List of all user transactions
*PlisioAPIClient::TransactionApi* | [**operations_id_get**](docs/TransactionApi.md#operations_id_get) | **GET** /operations/{id} | Transaction details
*PlisioAPIClient::TransactionApi* | [**operations_withdraw_get**](docs/TransactionApi.md#operations_withdraw_get) | **GET** /operations/withdraw | Create new invoice
*PlisioAPIClient::WithdrawApi* | [**operations_withdraw_get**](docs/WithdrawApi.md#operations_withdraw_get) | **GET** /operations/withdraw | Create new invoice

## Documentation for Models

 - [PlisioAPIClient::BalanceApiResponseDto](docs/BalanceApiResponseDto.md)
 - [PlisioAPIClient::BalanceResponseDto](docs/BalanceResponseDto.md)
 - [PlisioAPIClient::CommissionApiResponseDto](docs/CommissionApiResponseDto.md)
 - [PlisioAPIClient::CommissionResponseBoostDto](docs/CommissionResponseBoostDto.md)
 - [PlisioAPIClient::CommissionResponseDto](docs/CommissionResponseDto.md)
 - [PlisioAPIClient::CommissionResponseSimpleDto](docs/CommissionResponseSimpleDto.md)
 - [PlisioAPIClient::CommissionResponseSimpleErrorDto](docs/CommissionResponseSimpleErrorDto.md)
 - [PlisioAPIClient::CryptocurrencyApiResponseDto](docs/CryptocurrencyApiResponseDto.md)
 - [PlisioAPIClient::DonateBlockDto](docs/DonateBlockDto.md)
 - [PlisioAPIClient::DonateDto](docs/DonateDto.md)
 - [PlisioAPIClient::ErrorDto](docs/ErrorDto.md)
 - [PlisioAPIClient::ErrorResponseDto](docs/ErrorResponseDto.md)
 - [PlisioAPIClient::FeeApiResponseDto](docs/FeeApiResponseDto.md)
 - [PlisioAPIClient::FeeParamsDto](docs/FeeParamsDto.md)
 - [PlisioAPIClient::FeePlanApiResponseDto](docs/FeePlanApiResponseDto.md)
 - [PlisioAPIClient::FeePlanBtcDto](docs/FeePlanBtcDto.md)
 - [PlisioAPIClient::FeePlanCommonDto](docs/FeePlanCommonDto.md)
 - [PlisioAPIClient::FeePlanCustomDto](docs/FeePlanCustomDto.md)
 - [PlisioAPIClient::FeePlanDto](docs/FeePlanDto.md)
 - [PlisioAPIClient::FeePlanEthDto](docs/FeePlanEthDto.md)
 - [PlisioAPIClient::FeePlanLimitsBtcDto](docs/FeePlanLimitsBtcDto.md)
 - [PlisioAPIClient::FeePlanLimitsEthDto](docs/FeePlanLimitsEthDto.md)
 - [PlisioAPIClient::FeePlanTonDto](docs/FeePlanTonDto.md)
 - [PlisioAPIClient::FeePlanTrxDto](docs/FeePlanTrxDto.md)
 - [PlisioAPIClient::FeePlanXmrDto](docs/FeePlanXmrDto.md)
 - [PlisioAPIClient::FeeResponseDto](docs/FeeResponseDto.md)
 - [PlisioAPIClient::FeeSimplePlanDto](docs/FeeSimplePlanDto.md)
 - [PlisioAPIClient::FeeSimplePlanItemDto](docs/FeeSimplePlanItemDto.md)
 - [PlisioAPIClient::HateoasLinkDto](docs/HateoasLinkDto.md)
 - [PlisioAPIClient::HateoasLinksDto](docs/HateoasLinksDto.md)
 - [PlisioAPIClient::HateoasMetaDto](docs/HateoasMetaDto.md)
 - [PlisioAPIClient::InvoiceCallbackExtendedResponseDto](docs/InvoiceCallbackExtendedResponseDto.md)
 - [PlisioAPIClient::InvoiceDetailsApiResponseDto](docs/InvoiceDetailsApiResponseDto.md)
 - [PlisioAPIClient::InvoiceDetailsResponseDto](docs/InvoiceDetailsResponseDto.md)
 - [PlisioAPIClient::InvoiceExtendedResponseDto](docs/InvoiceExtendedResponseDto.md)
 - [PlisioAPIClient::InvoiceFormResponseDto](docs/InvoiceFormResponseDto.md)
 - [PlisioAPIClient::InvoicePaysysContractsGroupDto](docs/InvoicePaysysContractsGroupDto.md)
 - [PlisioAPIClient::InvoicePaysysDto](docs/InvoicePaysysDto.md)
 - [PlisioAPIClient::InvoiceResponseDto](docs/InvoiceResponseDto.md)
 - [PlisioAPIClient::InvoiceSimpleResponseDto](docs/InvoiceSimpleResponseDto.md)
 - [PlisioAPIClient::InvoiceSwitchApiResponseDto](docs/InvoiceSwitchApiResponseDto.md)
 - [PlisioAPIClient::InvoiceUpdateEmailApiResponseDto](docs/InvoiceUpdateEmailApiResponseDto.md)
 - [PlisioAPIClient::InvoiceUpdateEmailResponseDto](docs/InvoiceUpdateEmailResponseDto.md)
 - [PlisioAPIClient::InvoiceWhiteLabelResponseDto](docs/InvoiceWhiteLabelResponseDto.md)
 - [PlisioAPIClient::OperationApiResponseDto](docs/OperationApiResponseDto.md)
 - [PlisioAPIClient::OperationDto](docs/OperationDto.md)
 - [PlisioAPIClient::OperationParamsDto](docs/OperationParamsDto.md)
 - [PlisioAPIClient::OperationSimpleDto](docs/OperationSimpleDto.md)
 - [PlisioAPIClient::OperationsApiResponseDto](docs/OperationsApiResponseDto.md)
 - [PlisioAPIClient::OperationsHateoasResponseDto](docs/OperationsHateoasResponseDto.md)
 - [PlisioAPIClient::PaysysDto](docs/PaysysDto.md)
 - [PlisioAPIClient::ShopDto](docs/ShopDto.md)
 - [PlisioAPIClient::ShopInfoDto](docs/ShopInfoDto.md)
 - [PlisioAPIClient::ShopResponseDto](docs/ShopResponseDto.md)
 - [PlisioAPIClient::SuccessResponseDto](docs/SuccessResponseDto.md)
 - [PlisioAPIClient::WithdrawApiResponseDto](docs/WithdrawApiResponseDto.md)
 - [PlisioAPIClient::WithdrawResponseDto](docs/WithdrawResponseDto.md)

## Documentation for Authorization


### api_key

- **Type**: API key
- **API key parameter name**: api_key
- **Location**: URL query string

### view_key

- **Type**: API key
- **API key parameter name**: view_key
- **Location**: URL query string

