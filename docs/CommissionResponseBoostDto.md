# PlisioAPIClient::CommissionResponseBoostDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**min_fee_rate** | **Float** | Minimal fee rate for boost | [optional] 
**max_fee_rate** | **Float** | Maximum fee rate for boost | [optional] 
**commission** | **String** | Plisio commission value | [optional] 
**fee** | **String** | Cryptocurrency fee value | [optional] 
**fee_unit** | **String** | Cryptocurrency feeUnit value | [optional] 
**fee_fiat** | **String** | Cryptocurrency fee value in selected fiat currency | [optional] 
**fee_fiat_unit** | **String** | Selected fiat currency | [optional] 
**max_amount** | **String** | Maximum allowed amount to withdrawal | [optional] 
**plan** | **String** | Plisio&#x27;s cryptocurrency fee estimation plan | [optional] 
**use_wallet** | **String** | Pay fee from wallet | [optional] 
**use_wallet_balance** | **String** | Balance of wallet that will be used to pay fee | [optional] 
**plans** | [**FeeSimplePlanDto**](FeeSimplePlanDto.md) |  | [optional] 
**custom** | [**Array&lt;FeePlanCustomDto&gt;**](FeePlanCustomDto.md) | Cryptocurrency fee limits | [optional] 
**errors** | [**Array&lt;CommissionResponseSimpleErrorDto&gt;**](CommissionResponseSimpleErrorDto.md) |  | [optional] 
**custom_fee_rate** | **Float** |  | [optional] 

