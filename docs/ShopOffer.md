# ShopOffer

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** | The id of this offer. | [optional] 
**inputCollection** | **String** | The address of the ERC1155 or MetaFab game items contract for input items required by this offer. | [optional] 
**inputCollectionItemIds** | **[Int]** | An array of item ids from the input collection that are required for this offer. | [optional] 
**inputCollectionItemAmounts** | **[Int]** | An array of amounts for each item id for the input collection that are required to use this offer. | [optional] 
**inputCurrency** | **String** | The address of the ERC20 or MetaFab game currency for the currency required by this offer. | [optional] 
**inputCurrencyAmount** | **Double** | The amount of currency required by this offer. | [optional] 
**outputCollection** | **String** | The address of the ERC1155 or MetaFab game items contract for output items given by this offer. | [optional] 
**outputCollectionItemIds** | **[Int]** | An array of item ids from the output collection that are given for this offer. | [optional] 
**outputCollectionItemAmounts** | **[Int]** | An array of amounts for each item id for the output collection that are given by this offer. | [optional] 
**outputCurrency** | **String** | The address of the ERC20 or MetaFab game currency for the output currency given by this offer. | [optional] 
**outputCurrencyAmount** | **Double** | The amount of currency given by this offer. | [optional] 
**uses** | **Int** | The number of times this offer has been used. | [optional] 
**maxUses** | **Int** | The maximum number of times this offer can be used. A value of &#x60;0&#x60; means there is no limit on how many times this offer can be used. | [optional] 
**lastUpdatedAt** | **Int** | A unix timestamp in seconds that represents the last time this offer was set or updated. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


