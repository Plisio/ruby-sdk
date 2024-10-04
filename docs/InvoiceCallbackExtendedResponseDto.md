# PlisioAPIClient::InvoiceCallbackExtendedResponseDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **String** | Invoice amount in the selected cryptocurrency | [optional] 
**pending_amount** | **String** | Remained amount in the selected cryptocurrency | [optional] 
**wallet_hash** | **String** | Invoice hash | [optional] 
**psys_cid** | **String** | ID column from https://plisio.net/documentation/appendices/supported-cryptocurrencies | [optional] 
**currency** | **String** | Code column from https://plisio.net/documentation/appendices/supported-cryptocurrencies | [optional] 
**source_currency** | **String** | Fiat currency - only USD available for the moment | [optional] 
**source_rate** | **String** | Exchange rate from the “psys_cid” to the “source_currency” at the moment of transfer | [optional] 
**expected_confirmations** | **String** | How many confirmations expected to mark invoice completed | [optional] 
**qr_code** | **String** | QR code image in base64 format | [optional] 
**verify_hash** | **String** | Hash to verify the “POST” data signed with your SHOP_API_KEY | [optional] 
**invoice_commission** | **String** | Plisio commission | [optional] 
**invoice_sum** | **String** | shop pays commission: invoice amount - invoice_commission client pays commission: invoice amount | [optional] 
**invoice_total_sum** | **String** | shop pays commission: invoice amount client pays commission: invoice_commission + invoice_sum | [optional] 
**id** | **String** | Plisio’s intertnal ID (copy of txn_id) | [optional] 
**received_amount** | **String** | Received and approved amount in the selected cryptocurrency | [optional] 
**remaining_amount** | **String** | Remaining amount in the selected cryptocurrency | [optional] 
**email_already_set** | **BOOLEAN** | If email has been set | [optional] 
**tx_url** | **String** | link to the cryptocurrency block explorer | [optional] 
**tx_id** | **Array&lt;String&gt;** | array of transaction ids | [optional] 
**switch_id** | **String** | Initial invoice ID | [optional] 
**paid_id** | **String** | ID of invoice that has money | [optional] 
**params** | [**OperationParamsDto**](OperationParamsDto.md) |  | [optional] 
**view_key** | **String** | invoice read-only view key | [optional] 

