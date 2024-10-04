# PlisioAPIClient::FeePlanLimitsBtcDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**plan** | **String** | Plan name: normal, priority or custom | [optional] 
**value** | **String** | Fee value | [optional] 
**unit** | [**BigDecimal**](BigDecimal.md) | Fee unit | [optional] 
**conf_target** | [**BigDecimal**](BigDecimal.md) | estimate fee to be included into next &#x27;conf_target&#x27; block(s) | [optional] 
**feerate** | [**BigDecimal**](BigDecimal.md) | Fee rate in BTC/Kb | [optional] 
**sat_b** | [**BigDecimal**](BigDecimal.md) | Fee rate in sat/byte | [optional] 
**dynamic_values** | **String** | Name of dynamic property name (ex: sat_b) | [optional] 

