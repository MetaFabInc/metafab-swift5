# SetPlayerDataRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**protectedData** | [**AnyCodable**](.md) | protectedData can only be set if &#x60;X-Authorization&#x60; includes credentials for the game the target player is a part of. Expects an arbitrary object allowed to contain any set of properties and nested data within those properties, including arrays. | [optional] 
**publicData** | [**AnyCodable**](.md) | publicData can be set if &#x60;X-Authorization&#x60; includes credentials for the target player or game the player is a part of. Expects an arbitrary object allowed to contain any set of properties and nested data within those properties, including arrays. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


