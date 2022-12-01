# LootboxesAPI

All URIs are relative to *https://api.trymetafab.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createLootboxManager**](LootboxesAPI.md#createlootboxmanager) | **POST** /v1/lootboxManagers | Create lootbox manager
[**getLootboxManagerLootbox**](LootboxesAPI.md#getlootboxmanagerlootbox) | **GET** /v1/lootboxManagers/{lootboxManagerId}/lootboxes/{lootboxManagerLootboxId} | Get lootbox manager lootbox
[**getLootboxManagerLootboxes**](LootboxesAPI.md#getlootboxmanagerlootboxes) | **GET** /v1/lootboxManagers/{lootboxManagerId}/lootboxes | Get lootbox manager lootboxes
[**getLootboxManagers**](LootboxesAPI.md#getlootboxmanagers) | **GET** /v1/lootboxManagers | Get lootbox managers
[**openLootboxManagerLootbox**](LootboxesAPI.md#openlootboxmanagerlootbox) | **POST** /v1/lootboxManagers/{lootboxManagerId}/lootboxes/{lootboxManagerLootboxId}/opens | Open lootbox manager lootbox
[**removeLootboxManagerLootbox**](LootboxesAPI.md#removelootboxmanagerlootbox) | **DELETE** /v1/lootboxManagers/{lootboxManagerId}/lootboxes/{lootboxManagerLootboxId} | Remove lootbox manager lootbox
[**setLootboxManagerLootbox**](LootboxesAPI.md#setlootboxmanagerlootbox) | **POST** /v1/lootboxManagers/{lootboxManagerId}/lootboxes | Set lootbox manager lootbox


# **createLootboxManager**
```swift
    open class func createLootboxManager(xAuthorization: String, xPassword: String, createLootboxManagerRequest: CreateLootboxManagerRequest, completion: @escaping (_ data: CreateLootboxManager200Response?, _ error: Error?) -> Void)
```

Create lootbox manager

Creates a new game lootbox manager and deploys a lootbox manager contract on behalf of the authenticating game's primary wallet. The deployed lootbox manager contract allows you to create lootbox behavior for existing items. For example, you can define item id(s) from one of your item collections as the requirement(s) to open a \"lootbox\". The required item(s) would be burned from the interacting player's wallet and the player would receive item(s) from a weighted randomized set of possible items the lootbox can contain.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let xAuthorization = "xAuthorization_example" // String | The `secretKey` of the authenticating game.
let xPassword = "xPassword_example" // String | The password of the authenticating game. Required to decrypt and perform blockchain transactions with the game primary wallet.
let createLootboxManagerRequest = createLootboxManager_request(chain: "chain_example") // CreateLootboxManagerRequest | 

// Create lootbox manager
LootboxesAPI.createLootboxManager(xAuthorization: xAuthorization, xPassword: xPassword, createLootboxManagerRequest: createLootboxManagerRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xAuthorization** | **String** | The &#x60;secretKey&#x60; of the authenticating game. | 
 **xPassword** | **String** | The password of the authenticating game. Required to decrypt and perform blockchain transactions with the game primary wallet. | 
 **createLootboxManagerRequest** | [**CreateLootboxManagerRequest**](CreateLootboxManagerRequest.md) |  | 

### Return type

[**CreateLootboxManager200Response**](CreateLootboxManager200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLootboxManagerLootbox**
```swift
    open class func getLootboxManagerLootbox(lootboxManagerId: String, lootboxManagerLootboxId: String, completion: @escaping (_ data: LootboxManagerLootbox?, _ error: Error?) -> Void)
```

Get lootbox manager lootbox

Returns a lootbox manager lootbox object for the provided lootboxManagerLootboxId.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let lootboxManagerId = "lootboxManagerId_example" // String | Any lootbox manager id within the MetaFab ecosystem.
let lootboxManagerLootboxId = "lootboxManagerLootboxId_example" // String | Any lootbox manager lootbox id within the MetaFab ecosystem.

// Get lootbox manager lootbox
LootboxesAPI.getLootboxManagerLootbox(lootboxManagerId: lootboxManagerId, lootboxManagerLootboxId: lootboxManagerLootboxId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lootboxManagerId** | **String** | Any lootbox manager id within the MetaFab ecosystem. | 
 **lootboxManagerLootboxId** | **String** | Any lootbox manager lootbox id within the MetaFab ecosystem. | 

### Return type

[**LootboxManagerLootbox**](LootboxManagerLootbox.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLootboxManagerLootboxes**
```swift
    open class func getLootboxManagerLootboxes(lootboxManagerId: String, completion: @escaping (_ data: [LootboxManagerLootbox]?, _ error: Error?) -> Void)
```

Get lootbox manager lootboxes

Returns all lootbox manager lootboxes as an array of lootbox objects.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let lootboxManagerId = "lootboxManagerId_example" // String | Any lootbox manager id within the MetaFab ecosystem.

// Get lootbox manager lootboxes
LootboxesAPI.getLootboxManagerLootboxes(lootboxManagerId: lootboxManagerId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lootboxManagerId** | **String** | Any lootbox manager id within the MetaFab ecosystem. | 

### Return type

[**[LootboxManagerLootbox]**](LootboxManagerLootbox.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLootboxManagers**
```swift
    open class func getLootboxManagers(xGameKey: String, completion: @escaping (_ data: [GetLootboxManagers200ResponseInner]?, _ error: Error?) -> Void)
```

Get lootbox managers

Returns an array of active lootbox managers for the game associated with the provided `X-Game-Key`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let xGameKey = "xGameKey_example" // String | The `publishedKey` of a specific game. This can be shared or included in game clients, websites, etc.

// Get lootbox managers
LootboxesAPI.getLootboxManagers(xGameKey: xGameKey) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xGameKey** | **String** | The &#x60;publishedKey&#x60; of a specific game. This can be shared or included in game clients, websites, etc. | 

### Return type

[**[GetLootboxManagers200ResponseInner]**](GetLootboxManagers200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **openLootboxManagerLootbox**
```swift
    open class func openLootboxManagerLootbox(lootboxManagerId: String, lootboxManagerLootboxId: String, xAuthorization: String, xPassword: String, completion: @escaping (_ data: [TransactionModel]?, _ error: Error?) -> Void)
```

Open lootbox manager lootbox

Opens a lootbox manager lootbox. The required input item(s) are burned from the wallet or player wallet opening the lootbox. The given output item(s) are given to the wallet or player wallet opening the lootbox.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let lootboxManagerId = "lootboxManagerId_example" // String | Any lootbox manager id within the MetaFab ecosystem.
let lootboxManagerLootboxId = "lootboxManagerLootboxId_example" // String | Any lootbox manager lootbox id within the MetaFab ecosystem.
let xAuthorization = "xAuthorization_example" // String | The `secretKey` of a specific game or the `accessToken` of a specific player.
let xPassword = "xPassword_example" // String | The password of the authenticating game or player. Required to decrypt and perform blockchain transactions with the game or player primary wallet.

// Open lootbox manager lootbox
LootboxesAPI.openLootboxManagerLootbox(lootboxManagerId: lootboxManagerId, lootboxManagerLootboxId: lootboxManagerLootboxId, xAuthorization: xAuthorization, xPassword: xPassword) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lootboxManagerId** | **String** | Any lootbox manager id within the MetaFab ecosystem. | 
 **lootboxManagerLootboxId** | **String** | Any lootbox manager lootbox id within the MetaFab ecosystem. | 
 **xAuthorization** | **String** | The &#x60;secretKey&#x60; of a specific game or the &#x60;accessToken&#x60; of a specific player. | 
 **xPassword** | **String** | The password of the authenticating game or player. Required to decrypt and perform blockchain transactions with the game or player primary wallet. | 

### Return type

[**[TransactionModel]**](TransactionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeLootboxManagerLootbox**
```swift
    open class func removeLootboxManagerLootbox(lootboxManagerId: String, lootboxManagerLootboxId: String, xAuthorization: String, xPassword: String, completion: @escaping (_ data: TransactionModel?, _ error: Error?) -> Void)
```

Remove lootbox manager lootbox

Removes the provided lootbox by lootboxId from the provided lootbox manager. Removed lootboxes can no longer be used.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let lootboxManagerId = "lootboxManagerId_example" // String | Any lootbox manager id within the MetaFab ecosystem.
let lootboxManagerLootboxId = "lootboxManagerLootboxId_example" // String | Any lootbox manager lootbox id within the MetaFab ecosystem.
let xAuthorization = "xAuthorization_example" // String | The `secretKey` of the authenticating game.
let xPassword = "xPassword_example" // String | The password of the authenticating game. Required to decrypt and perform blockchain transactions with the game primary wallet.

// Remove lootbox manager lootbox
LootboxesAPI.removeLootboxManagerLootbox(lootboxManagerId: lootboxManagerId, lootboxManagerLootboxId: lootboxManagerLootboxId, xAuthorization: xAuthorization, xPassword: xPassword) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lootboxManagerId** | **String** | Any lootbox manager id within the MetaFab ecosystem. | 
 **lootboxManagerLootboxId** | **String** | Any lootbox manager lootbox id within the MetaFab ecosystem. | 
 **xAuthorization** | **String** | The &#x60;secretKey&#x60; of the authenticating game. | 
 **xPassword** | **String** | The password of the authenticating game. Required to decrypt and perform blockchain transactions with the game primary wallet. | 

### Return type

[**TransactionModel**](TransactionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setLootboxManagerLootbox**
```swift
    open class func setLootboxManagerLootbox(lootboxManagerId: String, xAuthorization: String, xPassword: String, setLootboxManagerLootboxRequest: SetLootboxManagerLootboxRequest, completion: @escaping (_ data: TransactionModel?, _ error: Error?) -> Void)
```

Set lootbox manager lootbox

Sets a new lootbox manager lootbox or updates an existing one for the provided id. Lootboxes allow item(s) to be burned to receive a random set of possible item(s) based on probability weight.  Lootboxes can require any number of unique types of items and quantities to open a created lootbox type within the system. A common pattern with lootboxes is to create a lootbox item type within an item collection, and require it as the input item type.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let lootboxManagerId = "lootboxManagerId_example" // String | Any lootbox manager id within the MetaFab ecosystem.
let xAuthorization = "xAuthorization_example" // String | The `secretKey` of the authenticating game.
let xPassword = "xPassword_example" // String | The password of the authenticating game. Required to decrypt and perform blockchain transactions with the game primary wallet.
let setLootboxManagerLootboxRequest = setLootboxManagerLootbox_request(id: 123, inputCollectionAddress: "inputCollectionAddress_example", inputCollectionId: "inputCollectionId_example", inputCollectionItemIds: [123], inputCollectionItemAmounts: [123], outputCollectionAddress: "outputCollectionAddress_example", outputCollectionId: "outputCollectionId_example", outputCollectionItemIds: [123], outputCollectionItemAmounts: [123], outputCollectionItemWeights: [123], outputTotalItems: 123) // SetLootboxManagerLootboxRequest | 

// Set lootbox manager lootbox
LootboxesAPI.setLootboxManagerLootbox(lootboxManagerId: lootboxManagerId, xAuthorization: xAuthorization, xPassword: xPassword, setLootboxManagerLootboxRequest: setLootboxManagerLootboxRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lootboxManagerId** | **String** | Any lootbox manager id within the MetaFab ecosystem. | 
 **xAuthorization** | **String** | The &#x60;secretKey&#x60; of the authenticating game. | 
 **xPassword** | **String** | The password of the authenticating game. Required to decrypt and perform blockchain transactions with the game primary wallet. | 
 **setLootboxManagerLootboxRequest** | [**SetLootboxManagerLootboxRequest**](SetLootboxManagerLootboxRequest.md) |  | 

### Return type

[**TransactionModel**](TransactionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

