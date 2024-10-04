# PlisioAPIClient::OperationSimpleDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**shop_id** | **String** | Shop ID | [optional] 
**type** | **String** | cash_in, cash_out, mass_cash_out, invoice | [optional] 
**status** | **String** | pending, completed, error, new, expired, mismatch, cancelled | [optional] 
**tx_url** | **String** | link to the cryptocurrency block explorer | [optional] 
**id** | **String** | internal Plisio operation ID | [optional] 
**txn_id** | **String** | Plisio’s intertnal ID | [optional] 
**invoice_url** | **String** | Invoice URL | [optional] 
**invoice_total_sum** | **String** | shop pays commission: invoice amount client pays commission: invoice_commission + invoice_sum | [optional] 

