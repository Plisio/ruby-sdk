# PlisioAPIClient::OperationParamsDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fee** | [**FeeParamsDto**](FeeParamsDto.md) |  | [optional] 
**order_number** | **String** | Invoice order number. Must be unique number in your store for each new store&#x60;s order!!! | [optional] 
**order_name** | **String** | Order name | [optional] 
**description** | **String** | Order description | [optional] 
**source_amount** | **String** | Invoice amount in fiat currency | [optional] 
**source_currency** | **String** | Invoice fiat currency | [optional] 
**value** | **String** | fee value | [optional] 
**avatar** | **String** | Custom invoice avatar | [optional] 
**store** | **String** | Custom invoice store name | [optional] 
**currency** | **String** | Code column from https://plisio.net/documentation/appendices/supported-cryptocurrencies | [optional] 
**psys_cid** | **String** | ID column from https://plisio.net/documentation/appendices/supported-cryptocurrencies | [optional] 
**amount** | **String** | Invoice amount in selected cryptocurrency | [optional] 
**source_rate** | **String** | Cryptocurrency rate | [optional] 
**email** | **String** | Email of payer | [optional] 
**donate_hash** | **String** | Donation hash | [optional] 

