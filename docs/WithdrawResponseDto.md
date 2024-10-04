# PlisioAPIClient::WithdrawResponseDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | &#x27;cash_out&#x27; or &#x27;mass_cash_out&#x27; depending on the request | [optional] 
**status** | **String** | Cash-out status &#x27;competed&#x27;, &#x27;error&#x27; | [optional] 
**psys_cid** | **String** | ID column from https://plisio.net/documentation/appendices/supported-cryptocurrencies | [optional] 
**currency** | **String** | Code column from https://plisio.net/documentation/appendices/supported-cryptocurrencies | [optional] 
**source_currency** | **String** | Fiat currency - only USD available for the moment | [optional] 
**source_rate** | **String** | Exchange rate from the “psys_cid” to the “source_currency” at the moment of transfer | [optional] 
**fee** | **String** | Transaction fee stated in the transfer | [optional] 
**wallet_hash** | **String** | Destination hash (type&#x3D;cash_out) | [optional] 
**sendmany** | **Array&lt;String&gt;** | Pairs of hashes and values (type&#x3D;mass_cash_out) | [optional] 
**params** | [**FeeParamsDto**](FeeParamsDto.md) |  | [optional] 
**created_at_utc** | **Integer** | timestamp in the UTC timezone; it may need to be divided by 1000 | [optional] 
**amount** | **String** | transfer amount in cryptocurrency | [optional] 
**tx_url** | **String** | link to the cryptocurrency block explorer | [optional] 
**tx_id** | **Array&lt;String&gt;** | array of transaction ids | [optional] 
**id** | **String** | internal Plisio operation ID | [optional] 
**txn_id** | **String** | internal Plisio operation ID | [optional] 

