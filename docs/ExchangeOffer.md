# ExchangeOffer

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Double** | The id of this offer. | [optional] 
**inputCollection** | **String** | The address of the ERC1155 of MetaFab game items contract for input items required by this offer. | [optional] 
**inputCollectionItemIds** | **[Double]** | An array of item ids from the input collection that are required for this offer. | [optional] 
**inputCollectionItemAmounts** | **[Double]** | An array of amounts for each item id for the input collection that are required to use this offer. | [optional] 
**inputCurrency** | **String** | The address of the ERC20 or MetaFab game currency for the currency required by this offer. | [optional] 
**inputCurrencyAmount** | **Double** | The amount of currency required by this offer. | [optional] 
**outputCollection** | **String** | The address of the ERC1155 of MetaFab game items contract for output items given by this offer. | [optional] 
**outputCollectionItemIds** | **[Double]** | An array of item ids from the output collection that are given for this offer. | [optional] 
**outputCollectionItemAmounts** | **[Double]** | An array of amounts for each item id for the output collection that are given by this offer. | [optional] 
**outputCurrency** | **String** | The address of the ERC20 or MetaFab game currency for the output currency given by this offer. | [optional] 
**outputCurrencyAmount** | **Double** | The amount of currency given by this offer. | [optional] 
**uses** | **Double** | The number of times this offer has been used. | [optional] 
**maxUses** | **Double** | The maximum number of times this offer can be used. A value of &#x60;0&#x60; means there is no limit on how many times this offer can be used. | [optional] 
**lastUpdatedAt** | **Double** | A unix timestamp in seconds that represents the last time this offer was set or updated. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


