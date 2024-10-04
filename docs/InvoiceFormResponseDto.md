# PlisioAPIClient::InvoiceFormResponseDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Plisio’s intertnal ID (copy of txn_id) | [optional] 
**amount** | **String** | Invoice amount in the selected cryptocurrency | [optional] 
**received_amount** | **String** | Received and approved amount in the selected cryptocurrency | [optional] 
**pending_amount** | **String** | Pending (not approve) amount in the selected cryptocurrency | [optional] 
**remaining_amount** | **String** | Remaining amount in the selected cryptocurrency | [optional] 
**wallet_hash** | **String** | Invoice hash | [optional] 
**psys_cid** | **String** | ID column from https://plisio.net/documentation/appendices/supported-cryptocurrencies | [optional] 
**currency** | **String** | Code column from https://plisio.net/documentation/appendices/supported-cryptocurrencies | [optional] 
**source_currency** | **String** | Fiat currency - only USD available for the moment | [optional] 
**source_rate** | **String** | Exchange rate from the “psys_cid” to the “source_currency” at the moment of transfer | [optional] 
**expected_confirmations** | **String** | How many confirmations expected to mark invoice completed | [optional] 
**invoice_commission** | **String** | Plisio commission | [optional] 
**invoice_sum** | **String** | shop pays commission: invoice amount - invoice_commission client pays commission: invoice amount | [optional] 
**invoice_total_sum** | **String** | shop pays commission: invoice amount client pays commission: invoice_commission + invoice_sum | [optional] 
**email_already_set** | **BOOLEAN** | If email has been set | [optional] 
**tx_url** | **String** | link to the cryptocurrency block explorer | [optional] 
**tx_id** | **Array&lt;String&gt;** | array of transaction ids | [optional] 
**switch_id** | **String** | Initial invoice ID | [optional] 
**paid_id** | **String** | ID of invoice that has money | [optional] 
**params** | [**OperationParamsDto**](OperationParamsDto.md) |  | [optional] 
**donate_hash** | **String** | Donation hash | [optional] 
**return_url** | **String** | Invoice return url | [optional] 
**psys_cid_unsupported** | **BOOLEAN** | True when psys_cid not in supported by shop | [optional] 
**txn_id** | **String** | Plisio’s intertnal ID | [optional] 
**invoice_url** | **String** | Invoice URL | [optional] 

