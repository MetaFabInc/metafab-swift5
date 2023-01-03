# ItemsAPI

All URIs are relative to *https://api.trymetafab.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batchMintCollectionItems**](ItemsAPI.md#batchmintcollectionitems) | **POST** /v1/collections/{collectionId}/batchMints | Batch mint collection items
[**batchTransferCollectionItems**](ItemsAPI.md#batchtransfercollectionitems) | **POST** /v1/collections/{collectionId}/batchTransfers | Batch transfer collection items
[**burnCollectionItem**](ItemsAPI.md#burncollectionitem) | **POST** /v1/collections/{collectionId}/items/{collectionItemId}/burns | Burn collection item
[**createCollection**](ItemsAPI.md#createcollection) | **POST** /v1/collections | Create collection
[**createCollectionItem**](ItemsAPI.md#createcollectionitem) | **POST** /v1/collections/{collectionId}/items | Create collection item
[**getCollectionApproval**](ItemsAPI.md#getcollectionapproval) | **GET** /v1/collections/{collectionId}/approvals | Get collection approval
[**getCollectionItem**](ItemsAPI.md#getcollectionitem) | **GET** /v1/collections/{collectionId}/items/{collectionItemId} | Get collection item
[**getCollectionItemBalance**](ItemsAPI.md#getcollectionitembalance) | **GET** /v1/collections/{collectionId}/items/{collectionItemId}/balances | Get collection item balance
[**getCollectionItemBalances**](ItemsAPI.md#getcollectionitembalances) | **GET** /v1/collections/{collectionId}/balances | Get collection item balances
[**getCollectionItemSupplies**](ItemsAPI.md#getcollectionitemsupplies) | **GET** /v1/collections/{collectionId}/supplies | Get collection item supplies
[**getCollectionItemSupply**](ItemsAPI.md#getcollectionitemsupply) | **GET** /v1/collections/{collectionId}/items/{collectionItemId}/supplies | Get collection item supply
[**getCollectionItemTimelock**](ItemsAPI.md#getcollectionitemtimelock) | **GET** /v1/collections/{collectionId}/items/{collectionItemId}/timelocks | Get collection item timelock
[**getCollectionItems**](ItemsAPI.md#getcollectionitems) | **GET** /v1/collections/{collectionId}/items | Get collection items
[**getCollectionRole**](ItemsAPI.md#getcollectionrole) | **GET** /v1/collections/{collectionId}/roles | Get collection role
[**getCollections**](ItemsAPI.md#getcollections) | **GET** /v1/collections | Get collections
[**grantCollectionRole**](ItemsAPI.md#grantcollectionrole) | **POST** /v1/collections/{collectionId}/roles | Grant collection role
[**mintCollectionItem**](ItemsAPI.md#mintcollectionitem) | **POST** /v1/collections/{collectionId}/items/{collectionItemId}/mints | Mint collection item
[**revokeCollectionRole**](ItemsAPI.md#revokecollectionrole) | **DELETE** /v1/collections/{collectionId}/roles | Revoke collection role
[**setCollectionApproval**](ItemsAPI.md#setcollectionapproval) | **POST** /v1/collections/{collectionId}/approvals | Set collection approval
[**setCollectionItemTimelock**](ItemsAPI.md#setcollectionitemtimelock) | **POST** /v1/collections/{collectionId}/items/{collectionItemId}/timelocks | Set collection item timelock
[**transferCollectionItem**](ItemsAPI.md#transfercollectionitem) | **POST** /v1/collections/{collectionId}/items/{collectionItemId}/transfers | Transfer collection item


# **batchMintCollectionItems**
```swift
    open class func batchMintCollectionItems(collectionId: String, xAuthorization: String, xPassword: String, batchMintCollectionItemsRequest: BatchMintCollectionItemsRequest, completion: @escaping (_ data: TransactionModel?, _ error: Error?) -> Void)
```

Batch mint collection items

Creates (mints) the provided itemIds of the specified quantities to the provided wallet address or wallet address associated with the provided walletId.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let collectionId = "collectionId_example" // String | Any collection id within the MetaFab ecosystem.
let xAuthorization = "xAuthorization_example" // String | The `secretKey` of the authenticating game.
let xPassword = "xPassword_example" // String | The password of the authenticating game. Required to decrypt and perform blockchain transactions with the game primary wallet.
let batchMintCollectionItemsRequest = batchMintCollectionItems_request(address: "address_example", itemIds: [123], quantities: [123], walletId: "walletId_example") // BatchMintCollectionItemsRequest | 

// Batch mint collection items
ItemsAPI.batchMintCollectionItems(collectionId: collectionId, xAuthorization: xAuthorization, xPassword: xPassword, batchMintCollectionItemsRequest: batchMintCollectionItemsRequest) { (response, error) in
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
 **collectionId** | **String** | Any collection id within the MetaFab ecosystem. | 
 **xAuthorization** | **String** | The &#x60;secretKey&#x60; of the authenticating game. | 
 **xPassword** | **String** | The password of the authenticating game. Required to decrypt and perform blockchain transactions with the game primary wallet. | 
 **batchMintCollectionItemsRequest** | [**BatchMintCollectionItemsRequest**](BatchMintCollectionItemsRequest.md) |  | 

### Return type

[**TransactionModel**](TransactionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **batchTransferCollectionItems**
```swift
    open class func batchTransferCollectionItems(collectionId: String, xAuthorization: String, xPassword: String, batchTransferCollectionItemsRequest: BatchTransferCollectionItemsRequest, completion: @escaping (_ data: TransactionModel?, _ error: Error?) -> Void)
```

Batch transfer collection items

Transfers one or multiple items of specified quantities to the provided wallet addresses or wallet addresses associated with the provided walletIds. You may also provide a combination of addresses and walletIds in one request.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let collectionId = "collectionId_example" // String | Any collection id within the MetaFab ecosystem.
let xAuthorization = "xAuthorization_example" // String | The `secretKey` of a specific game or the `accessToken` of a specific player.
let xPassword = "xPassword_example" // String | The password of the authenticating game or player. Required to decrypt and perform blockchain transactions with the game or player primary wallet.
let batchTransferCollectionItemsRequest = batchTransferCollectionItems_request(addresses: ["addresses_example"], walletIds: ["walletIds_example"], itemIds: [123], quantities: [123]) // BatchTransferCollectionItemsRequest | 

// Batch transfer collection items
ItemsAPI.batchTransferCollectionItems(collectionId: collectionId, xAuthorization: xAuthorization, xPassword: xPassword, batchTransferCollectionItemsRequest: batchTransferCollectionItemsRequest) { (response, error) in
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
 **collectionId** | **String** | Any collection id within the MetaFab ecosystem. | 
 **xAuthorization** | **String** | The &#x60;secretKey&#x60; of a specific game or the &#x60;accessToken&#x60; of a specific player. | 
 **xPassword** | **String** | The password of the authenticating game or player. Required to decrypt and perform blockchain transactions with the game or player primary wallet. | 
 **batchTransferCollectionItemsRequest** | [**BatchTransferCollectionItemsRequest**](BatchTransferCollectionItemsRequest.md) |  | 

### Return type

[**TransactionModel**](TransactionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **burnCollectionItem**
```swift
    open class func burnCollectionItem(collectionId: String, collectionItemId: Double, xAuthorization: String, xPassword: String, burnCollectionItemRequest: BurnCollectionItemRequest, completion: @escaping (_ data: TransactionModel?, _ error: Error?) -> Void)
```

Burn collection item

Removes (burns) the provided quantity of the collectionItemId from the authenticating game or players wallet. The quantity is permanently removed from the circulating supply of the item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let collectionId = "collectionId_example" // String | Any collection id within the MetaFab ecosystem.
let collectionItemId = 987 // Double | Any item id for the collection. Zero, or a positive integer.
let xAuthorization = "xAuthorization_example" // String | The `secretKey` of a specific game or the `accessToken` of a specific player.
let xPassword = "xPassword_example" // String | The password of the authenticating game or player. Required to decrypt and perform blockchain transactions with the game or player primary wallet.
let burnCollectionItemRequest = burnCollectionItem_request(quantity: 123) // BurnCollectionItemRequest | 

// Burn collection item
ItemsAPI.burnCollectionItem(collectionId: collectionId, collectionItemId: collectionItemId, xAuthorization: xAuthorization, xPassword: xPassword, burnCollectionItemRequest: burnCollectionItemRequest) { (response, error) in
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
 **collectionId** | **String** | Any collection id within the MetaFab ecosystem. | 
 **collectionItemId** | **Double** | Any item id for the collection. Zero, or a positive integer. | 
 **xAuthorization** | **String** | The &#x60;secretKey&#x60; of a specific game or the &#x60;accessToken&#x60; of a specific player. | 
 **xPassword** | **String** | The password of the authenticating game or player. Required to decrypt and perform blockchain transactions with the game or player primary wallet. | 
 **burnCollectionItemRequest** | [**BurnCollectionItemRequest**](BurnCollectionItemRequest.md) |  | 

### Return type

[**TransactionModel**](TransactionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCollection**
```swift
    open class func createCollection(xAuthorization: String, xPassword: String, createCollectionRequest: CreateCollectionRequest, completion: @escaping (_ data: CreateCollection200Response?, _ error: Error?) -> Void)
```

Create collection

Creates a new game item collection and deploys an extended functionality ERC1155 contract on behalf of the authenticating game's primary wallet. The deployed ERC1155 contract is preconfigured to fully support creating unique item types, item transfer timelocks, custom metadata per item, gasless transactions from player managed wallets, and much more.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let xAuthorization = "xAuthorization_example" // String | The `secretKey` of the authenticating game.
let xPassword = "xPassword_example" // String | The password of the authenticating game. Required to decrypt and perform blockchain transactions with the game primary wallet.
let createCollectionRequest = createCollection_request(chain: "chain_example") // CreateCollectionRequest | 

// Create collection
ItemsAPI.createCollection(xAuthorization: xAuthorization, xPassword: xPassword, createCollectionRequest: createCollectionRequest) { (response, error) in
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
 **createCollectionRequest** | [**CreateCollectionRequest**](CreateCollectionRequest.md) |  | 

### Return type

[**CreateCollection200Response**](CreateCollection200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCollectionItem**
```swift
    open class func createCollectionItem(collectionId: String, xAuthorization: String, xPassword: String, createCollectionItemRequest: CreateCollectionItemRequest, completion: @escaping (_ data: TransactionModel?, _ error: Error?) -> Void)
```

Create collection item

Creates a new item type. Item type creation associates all of the relevant item data to a specific itemId. Such as item name, image, description, attributes, any arbitrary data such as 2D or 3D model resolver URLs, and more. It is recommended, but not required, that you create a new item type through this endpoint before minting any quantity of the related itemId.  Any itemId provided will have its existing item type overriden if it already exists.  Item type data is uploaded to, and resolved through IPFS for decentralized persistence.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let collectionId = "collectionId_example" // String | Any collection id within the MetaFab ecosystem.
let xAuthorization = "xAuthorization_example" // String | The `secretKey` of the authenticating game.
let xPassword = "xPassword_example" // String | The password of the authenticating game. Required to decrypt and perform blockchain transactions with the game primary wallet.
let createCollectionItemRequest = createCollectionItem_request(id: 123, name: "name_example", description: "description_example", imageBase64: 123, imageUrl: "imageUrl_example", externalUrl: "externalUrl_example", attributes: [createCollectionItem_request_attributes_inner(traitType: "traitType_example", value: "TODO")], data: "TODO") // CreateCollectionItemRequest | 

// Create collection item
ItemsAPI.createCollectionItem(collectionId: collectionId, xAuthorization: xAuthorization, xPassword: xPassword, createCollectionItemRequest: createCollectionItemRequest) { (response, error) in
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
 **collectionId** | **String** | Any collection id within the MetaFab ecosystem. | 
 **xAuthorization** | **String** | The &#x60;secretKey&#x60; of the authenticating game. | 
 **xPassword** | **String** | The password of the authenticating game. Required to decrypt and perform blockchain transactions with the game primary wallet. | 
 **createCollectionItemRequest** | [**CreateCollectionItemRequest**](CreateCollectionItemRequest.md) |  | 

### Return type

[**TransactionModel**](TransactionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCollectionApproval**
```swift
    open class func getCollectionApproval(collectionId: String, operatorAddress: String, address: String? = nil, walletId: String? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Get collection approval

Returns a boolean (true/false) representing if the provided operatorAddress has approval to transfer and burn items from the current collection owned by the address or address associated with the provided walletId.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let collectionId = "collectionId_example" // String | Any collection id within the MetaFab ecosystem.
let operatorAddress = "operatorAddress_example" // String | A valid EVM based address. For example, `0x39cb70F972E0EE920088AeF97Dbe5c6251a9c25D`.
let address = "address_example" // String | A valid EVM based address. For example, `0x39cb70F972E0EE920088AeF97Dbe5c6251a9c25D`. (optional)
let walletId = "walletId_example" // String | Any wallet id within the MetaFab ecosystem. (optional)

// Get collection approval
ItemsAPI.getCollectionApproval(collectionId: collectionId, operatorAddress: operatorAddress, address: address, walletId: walletId) { (response, error) in
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
 **collectionId** | **String** | Any collection id within the MetaFab ecosystem. | 
 **operatorAddress** | **String** | A valid EVM based address. For example, &#x60;0x39cb70F972E0EE920088AeF97Dbe5c6251a9c25D&#x60;. | 
 **address** | **String** | A valid EVM based address. For example, &#x60;0x39cb70F972E0EE920088AeF97Dbe5c6251a9c25D&#x60;. | [optional] 
 **walletId** | **String** | Any wallet id within the MetaFab ecosystem. | [optional] 

### Return type

**Bool**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCollectionItem**
```swift
    open class func getCollectionItem(collectionId: String, collectionItemId: Double, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get collection item

Returns a metadata object for the provided collectionItemId.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let collectionId = "collectionId_example" // String | Any collection id within the MetaFab ecosystem.
let collectionItemId = 987 // Double | Any item id for the collection. Zero, or a positive integer.

// Get collection item
ItemsAPI.getCollectionItem(collectionId: collectionId, collectionItemId: collectionItemId) { (response, error) in
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
 **collectionId** | **String** | Any collection id within the MetaFab ecosystem. | 
 **collectionItemId** | **Double** | Any item id for the collection. Zero, or a positive integer. | 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCollectionItemBalance**
```swift
    open class func getCollectionItemBalance(collectionId: String, collectionItemId: Double, address: String? = nil, walletId: String? = nil, completion: @escaping (_ data: Int?, _ error: Error?) -> Void)
```

Get collection item balance

Returns the current collection item balance of the provided collectionItemId for the provided wallet address or the wallet address associated with the provided walletId.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let collectionId = "collectionId_example" // String | Any collection id within the MetaFab ecosystem.
let collectionItemId = 987 // Double | Any item id for the collection. Zero, or a positive integer.
let address = "address_example" // String | A valid EVM based address. For example, `0x39cb70F972E0EE920088AeF97Dbe5c6251a9c25D`. (optional)
let walletId = "walletId_example" // String | Any wallet id within the MetaFab ecosystem. (optional)

// Get collection item balance
ItemsAPI.getCollectionItemBalance(collectionId: collectionId, collectionItemId: collectionItemId, address: address, walletId: walletId) { (response, error) in
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
 **collectionId** | **String** | Any collection id within the MetaFab ecosystem. | 
 **collectionItemId** | **Double** | Any item id for the collection. Zero, or a positive integer. | 
 **address** | **String** | A valid EVM based address. For example, &#x60;0x39cb70F972E0EE920088AeF97Dbe5c6251a9c25D&#x60;. | [optional] 
 **walletId** | **String** | Any wallet id within the MetaFab ecosystem. | [optional] 

### Return type

**Int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCollectionItemBalances**
```swift
    open class func getCollectionItemBalances(collectionId: String, address: String? = nil, walletId: String? = nil, completion: @escaping (_ data: [String: Int]?, _ error: Error?) -> Void)
```

Get collection item balances

Returns the current collection item balances of all collection items for the provided wallet address or the wallet address associated with the provided walletId.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let collectionId = "collectionId_example" // String | Any collection id within the MetaFab ecosystem.
let address = "address_example" // String | A valid EVM based address. For example, `0x39cb70F972E0EE920088AeF97Dbe5c6251a9c25D`. (optional)
let walletId = "walletId_example" // String | Any wallet id within the MetaFab ecosystem. (optional)

// Get collection item balances
ItemsAPI.getCollectionItemBalances(collectionId: collectionId, address: address, walletId: walletId) { (response, error) in
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
 **collectionId** | **String** | Any collection id within the MetaFab ecosystem. | 
 **address** | **String** | A valid EVM based address. For example, &#x60;0x39cb70F972E0EE920088AeF97Dbe5c6251a9c25D&#x60;. | [optional] 
 **walletId** | **String** | Any wallet id within the MetaFab ecosystem. | [optional] 

### Return type

**[String: Int]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCollectionItemSupplies**
```swift
    open class func getCollectionItemSupplies(collectionId: String, completion: @escaping (_ data: [String: Int]?, _ error: Error?) -> Void)
```

Get collection item supplies

Returns the currency circulating supply of all collection items.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let collectionId = "collectionId_example" // String | Any collection id within the MetaFab ecosystem.

// Get collection item supplies
ItemsAPI.getCollectionItemSupplies(collectionId: collectionId) { (response, error) in
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
 **collectionId** | **String** | Any collection id within the MetaFab ecosystem. | 

### Return type

**[String: Int]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCollectionItemSupply**
```swift
    open class func getCollectionItemSupply(collectionId: String, collectionItemId: Double, address: String? = nil, walletId: String? = nil, completion: @escaping (_ data: Int?, _ error: Error?) -> Void)
```

Get collection item supply

Returns the current circulating supply of the provided collectionItemId.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let collectionId = "collectionId_example" // String | Any collection id within the MetaFab ecosystem.
let collectionItemId = 987 // Double | Any item id for the collection. Zero, or a positive integer.
let address = "address_example" // String | A valid EVM based address. For example, `0x39cb70F972E0EE920088AeF97Dbe5c6251a9c25D`. (optional)
let walletId = "walletId_example" // String | Any wallet id within the MetaFab ecosystem. (optional)

// Get collection item supply
ItemsAPI.getCollectionItemSupply(collectionId: collectionId, collectionItemId: collectionItemId, address: address, walletId: walletId) { (response, error) in
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
 **collectionId** | **String** | Any collection id within the MetaFab ecosystem. | 
 **collectionItemId** | **Double** | Any item id for the collection. Zero, or a positive integer. | 
 **address** | **String** | A valid EVM based address. For example, &#x60;0x39cb70F972E0EE920088AeF97Dbe5c6251a9c25D&#x60;. | [optional] 
 **walletId** | **String** | Any wallet id within the MetaFab ecosystem. | [optional] 

### Return type

**Int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCollectionItemTimelock**
```swift
    open class func getCollectionItemTimelock(collectionId: String, collectionItemId: Double, completion: @escaping (_ data: Int?, _ error: Error?) -> Void)
```

Get collection item timelock

Returns a timestamp (in seconds) for when the provided collectionItemId's transfer timelock expires. A value of 0 means the provided collectionItemId does not have a timelock set. Timelocks prevent items of a specific collectionItemId from being transferred until the set timelock timestamp has been surpassed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let collectionId = "collectionId_example" // String | Any collection id within the MetaFab ecosystem.
let collectionItemId = 987 // Double | Any item id for the collection. Zero, or a positive integer.

// Get collection item timelock
ItemsAPI.getCollectionItemTimelock(collectionId: collectionId, collectionItemId: collectionItemId) { (response, error) in
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
 **collectionId** | **String** | Any collection id within the MetaFab ecosystem. | 
 **collectionItemId** | **Double** | Any item id for the collection. Zero, or a positive integer. | 

### Return type

**Int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCollectionItems**
```swift
    open class func getCollectionItems(collectionId: String, completion: @escaping (_ data: [AnyCodable]?, _ error: Error?) -> Void)
```

Get collection items

Returns all collection items as an array of metadata objects.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let collectionId = "collectionId_example" // String | Any collection id within the MetaFab ecosystem.

// Get collection items
ItemsAPI.getCollectionItems(collectionId: collectionId) { (response, error) in
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
 **collectionId** | **String** | Any collection id within the MetaFab ecosystem. | 

### Return type

[**[AnyCodable]**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCollectionRole**
```swift
    open class func getCollectionRole(collectionId: String, role: String, address: String? = nil, walletId: String? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Get collection role

Returns a boolean (true/false) representing if the provided role for this collection has been granted to the provided address or address associated with the provided walletId.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let collectionId = "collectionId_example" // String | Any collection id within the MetaFab ecosystem.
let role = "role_example" // String | A valid MetaFab role or bytes string representing a role, such as `0xc9eb32e43bf5ecbceacf00b32281dfc5d6d700a0db676ea26ccf938a385ac3b7`
let address = "address_example" // String | A valid EVM based address. For example, `0x39cb70F972E0EE920088AeF97Dbe5c6251a9c25D`. (optional)
let walletId = "walletId_example" // String | Any wallet id within the MetaFab ecosystem. (optional)

// Get collection role
ItemsAPI.getCollectionRole(collectionId: collectionId, role: role, address: address, walletId: walletId) { (response, error) in
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
 **collectionId** | **String** | Any collection id within the MetaFab ecosystem. | 
 **role** | **String** | A valid MetaFab role or bytes string representing a role, such as &#x60;0xc9eb32e43bf5ecbceacf00b32281dfc5d6d700a0db676ea26ccf938a385ac3b7&#x60; | 
 **address** | **String** | A valid EVM based address. For example, &#x60;0x39cb70F972E0EE920088AeF97Dbe5c6251a9c25D&#x60;. | [optional] 
 **walletId** | **String** | Any wallet id within the MetaFab ecosystem. | [optional] 

### Return type

**Bool**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCollections**
```swift
    open class func getCollections(xGameKey: String, completion: @escaping (_ data: [GetCollections200ResponseInner]?, _ error: Error?) -> Void)
```

Get collections

Returns an array of active item collections for the game associated with the provided `X-Game-Key`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let xGameKey = "xGameKey_example" // String | The `publishedKey` of a specific game. This can be shared or included in game clients, websites, etc.

// Get collections
ItemsAPI.getCollections(xGameKey: xGameKey) { (response, error) in
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

[**[GetCollections200ResponseInner]**](GetCollections200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **grantCollectionRole**
```swift
    open class func grantCollectionRole(collectionId: String, xAuthorization: String, xPassword: String, grantCollectionRoleRequest: GrantCollectionRoleRequest, completion: @escaping (_ data: TransactionModel?, _ error: Error?) -> Void)
```

Grant collection role

Grants the provided role for the collection to the provided address or address associated with the provided walletId. Granted roles give different types of authority on behalf of the collection for specific players, addresses, or contracts to perform different types of permissioned collection operations.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let collectionId = "collectionId_example" // String | Any collection id within the MetaFab ecosystem.
let xAuthorization = "xAuthorization_example" // String | The `secretKey` of a specific game or the `accessToken` of a specific player.
let xPassword = "xPassword_example" // String | The password of the authenticating game or player. Required to decrypt and perform blockchain transactions with the game or player primary wallet.
let grantCollectionRoleRequest = grantCollectionRole_request(role: "role_example", address: "address_example", walletId: ["walletId_example"]) // GrantCollectionRoleRequest | 

// Grant collection role
ItemsAPI.grantCollectionRole(collectionId: collectionId, xAuthorization: xAuthorization, xPassword: xPassword, grantCollectionRoleRequest: grantCollectionRoleRequest) { (response, error) in
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
 **collectionId** | **String** | Any collection id within the MetaFab ecosystem. | 
 **xAuthorization** | **String** | The &#x60;secretKey&#x60; of a specific game or the &#x60;accessToken&#x60; of a specific player. | 
 **xPassword** | **String** | The password of the authenticating game or player. Required to decrypt and perform blockchain transactions with the game or player primary wallet. | 
 **grantCollectionRoleRequest** | [**GrantCollectionRoleRequest**](GrantCollectionRoleRequest.md) |  | 

### Return type

[**TransactionModel**](TransactionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mintCollectionItem**
```swift
    open class func mintCollectionItem(collectionId: String, collectionItemId: Double, xAuthorization: String, xPassword: String, mintCollectionItemRequest: MintCollectionItemRequest, completion: @escaping (_ data: TransactionModel?, _ error: Error?) -> Void)
```

Mint collection item

Creates (mints) the specified quantity of the provided collectionItemId to the provided wallet address or wallet address associated with the provided walletId.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let collectionId = "collectionId_example" // String | Any collection id within the MetaFab ecosystem.
let collectionItemId = 987 // Double | Any item id for the collection. Zero, or a positive integer.
let xAuthorization = "xAuthorization_example" // String | The `secretKey` of the authenticating game.
let xPassword = "xPassword_example" // String | The password of the authenticating game. Required to decrypt and perform blockchain transactions with the game primary wallet.
let mintCollectionItemRequest = mintCollectionItem_request(address: "address_example", quantity: 123, walletId: "walletId_example") // MintCollectionItemRequest | 

// Mint collection item
ItemsAPI.mintCollectionItem(collectionId: collectionId, collectionItemId: collectionItemId, xAuthorization: xAuthorization, xPassword: xPassword, mintCollectionItemRequest: mintCollectionItemRequest) { (response, error) in
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
 **collectionId** | **String** | Any collection id within the MetaFab ecosystem. | 
 **collectionItemId** | **Double** | Any item id for the collection. Zero, or a positive integer. | 
 **xAuthorization** | **String** | The &#x60;secretKey&#x60; of the authenticating game. | 
 **xPassword** | **String** | The password of the authenticating game. Required to decrypt and perform blockchain transactions with the game primary wallet. | 
 **mintCollectionItemRequest** | [**MintCollectionItemRequest**](MintCollectionItemRequest.md) |  | 

### Return type

[**TransactionModel**](TransactionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeCollectionRole**
```swift
    open class func revokeCollectionRole(collectionId: String, xAuthorization: String, xPassword: String, revokeCollectionRoleRequest: RevokeCollectionRoleRequest, completion: @escaping (_ data: TransactionModel?, _ error: Error?) -> Void)
```

Revoke collection role

Revokes the provided role for the collection to the provided address or address associated with the provided walletId.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let collectionId = "collectionId_example" // String | Any collection id within the MetaFab ecosystem.
let xAuthorization = "xAuthorization_example" // String | The `secretKey` of a specific game or the `accessToken` of a specific player.
let xPassword = "xPassword_example" // String | The password of the authenticating game or player. Required to decrypt and perform blockchain transactions with the game or player primary wallet.
let revokeCollectionRoleRequest = revokeCollectionRole_request(role: "role_example", address: "address_example", walletId: ["walletId_example"]) // RevokeCollectionRoleRequest | 

// Revoke collection role
ItemsAPI.revokeCollectionRole(collectionId: collectionId, xAuthorization: xAuthorization, xPassword: xPassword, revokeCollectionRoleRequest: revokeCollectionRoleRequest) { (response, error) in
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
 **collectionId** | **String** | Any collection id within the MetaFab ecosystem. | 
 **xAuthorization** | **String** | The &#x60;secretKey&#x60; of a specific game or the &#x60;accessToken&#x60; of a specific player. | 
 **xPassword** | **String** | The password of the authenticating game or player. Required to decrypt and perform blockchain transactions with the game or player primary wallet. | 
 **revokeCollectionRoleRequest** | [**RevokeCollectionRoleRequest**](RevokeCollectionRoleRequest.md) |  | 

### Return type

[**TransactionModel**](TransactionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setCollectionApproval**
```swift
    open class func setCollectionApproval(collectionId: String, xAuthorization: String, xPassword: String, setCollectionApprovalRequest: SetCollectionApprovalRequest, completion: @escaping (_ data: TransactionModel?, _ error: Error?) -> Void)
```

Set collection approval

Sets approval for the provided address or wallet address associated with the provided walletId to operate on behalf of the authenticating game or player's owned items for this collection. Setting an approved value of `true` allows the provided address or address associated with the provided walletId to transfer and burn items from this collection on behalf of the authenticated game or player's wallet address.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let collectionId = "collectionId_example" // String | Any collection id within the MetaFab ecosystem.
let xAuthorization = "xAuthorization_example" // String | The `secretKey` of a specific game or the `accessToken` of a specific player.
let xPassword = "xPassword_example" // String | The password of the authenticating game or player. Required to decrypt and perform blockchain transactions with the game or player primary wallet.
let setCollectionApprovalRequest = setCollectionApproval_request(approved: false, address: "address_example", walletId: ["walletId_example"]) // SetCollectionApprovalRequest | 

// Set collection approval
ItemsAPI.setCollectionApproval(collectionId: collectionId, xAuthorization: xAuthorization, xPassword: xPassword, setCollectionApprovalRequest: setCollectionApprovalRequest) { (response, error) in
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
 **collectionId** | **String** | Any collection id within the MetaFab ecosystem. | 
 **xAuthorization** | **String** | The &#x60;secretKey&#x60; of a specific game or the &#x60;accessToken&#x60; of a specific player. | 
 **xPassword** | **String** | The password of the authenticating game or player. Required to decrypt and perform blockchain transactions with the game or player primary wallet. | 
 **setCollectionApprovalRequest** | [**SetCollectionApprovalRequest**](SetCollectionApprovalRequest.md) |  | 

### Return type

[**TransactionModel**](TransactionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setCollectionItemTimelock**
```swift
    open class func setCollectionItemTimelock(collectionId: String, collectionItemId: Double, xAuthorization: String, xPassword: String, setCollectionItemTimelockRequest: SetCollectionItemTimelockRequest, completion: @escaping (_ data: TransactionModel?, _ error: Error?) -> Void)
```

Set collection item timelock

Sets the item timelock for the provided collection itemId. The timelock is a unix timestamp (in seconds) that defines a period in time of when an item may be transferred by players. Until the timelock timestamp has passed, the itemId for the given timelock may not be transferred, sold, traded, etc. A timelock of 0 (default) means that there is no timelock set on the itemId and it can be freely transferred, traded, etc.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let collectionId = "collectionId_example" // String | Any collection id within the MetaFab ecosystem.
let collectionItemId = 987 // Double | Any item id for the collection. Zero, or a positive integer.
let xAuthorization = "xAuthorization_example" // String | The `secretKey` of the authenticating game.
let xPassword = "xPassword_example" // String | The password of the authenticating game. Required to decrypt and perform blockchain transactions with the game primary wallet.
let setCollectionItemTimelockRequest = setCollectionItemTimelock_request(timelock: 123) // SetCollectionItemTimelockRequest | 

// Set collection item timelock
ItemsAPI.setCollectionItemTimelock(collectionId: collectionId, collectionItemId: collectionItemId, xAuthorization: xAuthorization, xPassword: xPassword, setCollectionItemTimelockRequest: setCollectionItemTimelockRequest) { (response, error) in
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
 **collectionId** | **String** | Any collection id within the MetaFab ecosystem. | 
 **collectionItemId** | **Double** | Any item id for the collection. Zero, or a positive integer. | 
 **xAuthorization** | **String** | The &#x60;secretKey&#x60; of the authenticating game. | 
 **xPassword** | **String** | The password of the authenticating game. Required to decrypt and perform blockchain transactions with the game primary wallet. | 
 **setCollectionItemTimelockRequest** | [**SetCollectionItemTimelockRequest**](SetCollectionItemTimelockRequest.md) |  | 

### Return type

[**TransactionModel**](TransactionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transferCollectionItem**
```swift
    open class func transferCollectionItem(collectionId: String, collectionItemId: Double, xAuthorization: String, xPassword: String, transferCollectionItemRequest: TransferCollectionItemRequest, completion: @escaping (_ data: TransactionModel?, _ error: Error?) -> Void)
```

Transfer collection item

Transfers specified quantity of itemId to the provided wallet address or wallet address associated with the provided walletId.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let collectionId = "collectionId_example" // String | Any collection id within the MetaFab ecosystem.
let collectionItemId = 987 // Double | Any item id for the collection. Zero, or a positive integer.
let xAuthorization = "xAuthorization_example" // String | The `secretKey` of a specific game or the `accessToken` of a specific player.
let xPassword = "xPassword_example" // String | The password of the authenticating game or player. Required to decrypt and perform blockchain transactions with the game or player primary wallet.
let transferCollectionItemRequest = transferCollectionItem_request(address: "address_example", walletId: ["walletId_example"], quantity: 123) // TransferCollectionItemRequest | 

// Transfer collection item
ItemsAPI.transferCollectionItem(collectionId: collectionId, collectionItemId: collectionItemId, xAuthorization: xAuthorization, xPassword: xPassword, transferCollectionItemRequest: transferCollectionItemRequest) { (response, error) in
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
 **collectionId** | **String** | Any collection id within the MetaFab ecosystem. | 
 **collectionItemId** | **Double** | Any item id for the collection. Zero, or a positive integer. | 
 **xAuthorization** | **String** | The &#x60;secretKey&#x60; of a specific game or the &#x60;accessToken&#x60; of a specific player. | 
 **xPassword** | **String** | The password of the authenticating game or player. Required to decrypt and perform blockchain transactions with the game or player primary wallet. | 
 **transferCollectionItemRequest** | [**TransferCollectionItemRequest**](TransferCollectionItemRequest.md) |  | 

### Return type

[**TransactionModel**](TransactionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

