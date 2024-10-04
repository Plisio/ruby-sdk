# PlisioAPIClient::InvoiceDetailsResponseDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice** | [**InvoiceExtendedResponseDto**](InvoiceExtendedResponseDto.md) |  | [optional] 
**active_invoice_id** | **String** | Current active invoice ID. Invoice ID with the last selected cryptocurrency | [optional] 
**shop** | [**ShopInfoDto**](ShopInfoDto.md) |  | [optional] 
**paysys** | [**InvoicePaysysDto**](InvoicePaysysDto.md) |  | [optional] 
**allowed_psys_cids** | [**Array&lt;InvoicePaysysDto&gt;**](InvoicePaysysDto.md) | Allowed cryptocurrencies for select | [optional] 

