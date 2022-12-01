# ShopsAPI

All URIs are relative to *https://api.trymetafab.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createShop**](ShopsAPI.md#createshop) | **POST** /v1/shops | Create shop
[**getShopOffer**](ShopsAPI.md#getshopoffer) | **GET** /v1/shops/{shopId}/items/{shopOfferId} | Get shop offer
[**getShopOffers**](ShopsAPI.md#getshopoffers) | **GET** /v1/shops/{shopId}/offers | Get shop offers
[**getShops**](ShopsAPI.md#getshops) | **GET** /v1/shops | Get shops
[**removeShopOffer**](ShopsAPI.md#removeshopoffer) | **DELETE** /v1/shops/{shopId}/offers/{shopOfferId} | Remove shop offer
[**setShopOffer**](ShopsAPI.md#setshopoffer) | **POST** /v1/shops/{shopId}/offers | Set shop offer
[**useShopOffer**](ShopsAPI.md#useshopoffer) | **POST** /v1/shops/{shopId}/offers/{shopOfferId}/uses | Use shop offer
[**withdrawFromShop**](ShopsAPI.md#withdrawfromshop) | **POST** /v1/shops/{shopId}/withdrawals | Withdraw from shop


# **createShop**
```swift
    open class func createShop(xAuthorization: String, xPassword: String, createShopRequest: CreateShopRequest, completion: @escaping (_ data: CreateShop200Response?, _ error: Error?) -> Void)
```

Create shop

Creates a new game shop and deploys a shop contract on behalf of the authenticating game's primary wallet. The deployed shop contract allows you to create fixed price rates for players to buy specific items from any item collection or ERC1155 contract. Additionally, a shop allows you to create shop offers for some set of item(s) to another set of item(s) or any mix of currency. Shops completely support gasless player transactions.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let xAuthorization = "xAuthorization_example" // String | The `secretKey` of the authenticating game.
let xPassword = "xPassword_example" // String | The password of the authenticating game. Required to decrypt and perform blockchain transactions with the game primary wallet.
let createShopRequest = createShop_request(chain: "chain_example") // CreateShopRequest | 

// Create shop
ShopsAPI.createShop(xAuthorization: xAuthorization, xPassword: xPassword, createShopRequest: createShopRequest) { (response, error) in
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
 **createShopRequest** | [**CreateShopRequest**](CreateShopRequest.md) |  | 

### Return type

[**CreateShop200Response**](CreateShop200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getShopOffer**
```swift
    open class func getShopOffer(shopId: String, shopOfferId: String, completion: @escaping (_ data: ShopOffer?, _ error: Error?) -> Void)
```

Get shop offer

Returns a shop offer object for the provided shopOfferId.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let shopId = "shopId_example" // String | Any shop id within the MetaFab ecosystem.
let shopOfferId = "shopOfferId_example" // String | Any offer id for the shop. Zero, or a positive integer.

// Get shop offer
ShopsAPI.getShopOffer(shopId: shopId, shopOfferId: shopOfferId) { (response, error) in
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
 **shopId** | **String** | Any shop id within the MetaFab ecosystem. | 
 **shopOfferId** | **String** | Any offer id for the shop. Zero, or a positive integer. | 

### Return type

[**ShopOffer**](ShopOffer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getShopOffers**
```swift
    open class func getShopOffers(shopId: String, completion: @escaping (_ data: [ShopOffer]?, _ error: Error?) -> Void)
```

Get shop offers

Returns all shop offers as an array of shop offer objects.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let shopId = "shopId_example" // String | Any shop id within the MetaFab ecosystem.

// Get shop offers
ShopsAPI.getShopOffers(shopId: shopId) { (response, error) in
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
 **shopId** | **String** | Any shop id within the MetaFab ecosystem. | 

### Return type

[**[ShopOffer]**](ShopOffer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getShops**
```swift
    open class func getShops(xGameKey: String, completion: @escaping (_ data: [GetShops200ResponseInner]?, _ error: Error?) -> Void)
```

Get shops

Returns an array of active shops for the game associated with the provided `X-Game-Key`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let xGameKey = "xGameKey_example" // String | The `publishedKey` of a specific game. This can be shared or included in game clients, websites, etc.

// Get shops
ShopsAPI.getShops(xGameKey: xGameKey) { (response, error) in
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

[**[GetShops200ResponseInner]**](GetShops200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeShopOffer**
```swift
    open class func removeShopOffer(shopId: String, shopOfferId: String, xAuthorization: String, xPassword: String, completion: @escaping (_ data: TransactionModel?, _ error: Error?) -> Void)
```

Remove shop offer

Removes the provided offer by offerId from the provided shop. Removed offers can no longer be used.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let shopId = "shopId_example" // String | Any shop id within the MetaFab ecosystem.
let shopOfferId = "shopOfferId_example" // String | Any offer id for the shop. Zero, or a positive integer.
let xAuthorization = "xAuthorization_example" // String | The `secretKey` of the authenticating game.
let xPassword = "xPassword_example" // String | The password of the authenticating game. Required to decrypt and perform blockchain transactions with the game primary wallet.

// Remove shop offer
ShopsAPI.removeShopOffer(shopId: shopId, shopOfferId: shopOfferId, xAuthorization: xAuthorization, xPassword: xPassword) { (response, error) in
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
 **shopId** | **String** | Any shop id within the MetaFab ecosystem. | 
 **shopOfferId** | **String** | Any offer id for the shop. Zero, or a positive integer. | 
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

# **setShopOffer**
```swift
    open class func setShopOffer(shopId: String, xAuthorization: String, xPassword: String, setShopOfferRequest: SetShopOfferRequest, completion: @escaping (_ data: TransactionModel?, _ error: Error?) -> Void)
```

Set shop offer

Sets a new shop offer or updates an existing one for the provided id. Shop offers allow currency to item, item to currency or item to item exchanges.  All request fields besides `id` are optional. Any optional fields omitted will not be used for the offer. This allows you to create many different combinations of offers. For example, you can create an offer that may require 3 unique item ids of specified quantities from a given item collection and gives the user 1 new unique item id in exchange.  Another example, you may want to make a shop offer from one ERC20 token to another. This is also possible - simple set the input and output currency fields and leave the others blank.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let shopId = "shopId_example" // String | Any shop id within the MetaFab ecosystem.
let xAuthorization = "xAuthorization_example" // String | The `secretKey` of the authenticating game.
let xPassword = "xPassword_example" // String | The password of the authenticating game. Required to decrypt and perform blockchain transactions with the game primary wallet.
let setShopOfferRequest = setShopOffer_request(id: 123, inputCollectionAddress: "inputCollectionAddress_example", inputCollectionId: "inputCollectionId_example", inputCollectionItemIds: [123], inputCollectionItemAmounts: [123], inputCurrencyAddress: "inputCurrencyAddress_example", inputCurrencyId: "inputCurrencyId_example", inputCurrencyAmount: 123, outputCollectionAddress: "outputCollectionAddress_example", outputCollectionId: "outputCollectionId_example", outputCollectionItemIds: [123], outputCollectionItemAmounts: [123], outputCurrencyAddress: "outputCurrencyAddress_example", outputCurrencyId: "outputCurrencyId_example", outputCurrencyAmount: 123, maxUses: 123) // SetShopOfferRequest | 

// Set shop offer
ShopsAPI.setShopOffer(shopId: shopId, xAuthorization: xAuthorization, xPassword: xPassword, setShopOfferRequest: setShopOfferRequest) { (response, error) in
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
 **shopId** | **String** | Any shop id within the MetaFab ecosystem. | 
 **xAuthorization** | **String** | The &#x60;secretKey&#x60; of the authenticating game. | 
 **xPassword** | **String** | The password of the authenticating game. Required to decrypt and perform blockchain transactions with the game primary wallet. | 
 **setShopOfferRequest** | [**SetShopOfferRequest**](SetShopOfferRequest.md) |  | 

### Return type

[**TransactionModel**](TransactionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **useShopOffer**
```swift
    open class func useShopOffer(shopId: String, shopOfferId: String, xAuthorization: String, xPassword: String, completion: @escaping (_ data: TransactionModel?, _ error: Error?) -> Void)
```

Use shop offer

Uses a shop offer. The required (input) item(s) and/or currency are removed from the wallet or player wallet using the offer. The given (output) item(s) and/or currency are given to the wallet or player wallet using the offer.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let shopId = "shopId_example" // String | Any shop id within the MetaFab ecosystem.
let shopOfferId = "shopOfferId_example" // String | Any offer id for the shop. Zero, or a positive integer.
let xAuthorization = "xAuthorization_example" // String | The `secretKey` of a specific game or the `accessToken` of a specific player.
let xPassword = "xPassword_example" // String | The password of the authenticating game or player. Required to decrypt and perform blockchain transactions with the game or player primary wallet.

// Use shop offer
ShopsAPI.useShopOffer(shopId: shopId, shopOfferId: shopOfferId, xAuthorization: xAuthorization, xPassword: xPassword) { (response, error) in
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
 **shopId** | **String** | Any shop id within the MetaFab ecosystem. | 
 **shopOfferId** | **String** | Any offer id for the shop. Zero, or a positive integer. | 
 **xAuthorization** | **String** | The &#x60;secretKey&#x60; of a specific game or the &#x60;accessToken&#x60; of a specific player. | 
 **xPassword** | **String** | The password of the authenticating game or player. Required to decrypt and perform blockchain transactions with the game or player primary wallet. | 

### Return type

[**TransactionModel**](TransactionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **withdrawFromShop**
```swift
    open class func withdrawFromShop(shopId: String, xAuthorization: String, xPassword: String, withdrawFromShopRequest: WithdrawFromShopRequest, completion: @escaping (_ data: TransactionModel?, _ error: Error?) -> Void)
```

Withdraw from shop

Withdraws native token, currency or items from a shop. Whenever a shop offer has input requirements, the native tokens, currencies or items for the requirements of that offer are deposited into the shop contract when the offer is used. These can be withdrawn to any other address.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let shopId = "shopId_example" // String | Any shop id within the MetaFab ecosystem.
let xAuthorization = "xAuthorization_example" // String | The `secretKey` of the authenticating game.
let xPassword = "xPassword_example" // String | The password of the authenticating game. Required to decrypt and perform blockchain transactions with the game primary wallet.
let withdrawFromShopRequest = withdrawFromShop_request(address: "address_example", walletId: "walletId_example", currencyAddress: "currencyAddress_example", currencyId: "currencyId_example", collectionAddress: "collectionAddress_example", collectionId: "collectionId_example", itemIds: [123]) // WithdrawFromShopRequest | 

// Withdraw from shop
ShopsAPI.withdrawFromShop(shopId: shopId, xAuthorization: xAuthorization, xPassword: xPassword, withdrawFromShopRequest: withdrawFromShopRequest) { (response, error) in
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
 **shopId** | **String** | Any shop id within the MetaFab ecosystem. | 
 **xAuthorization** | **String** | The &#x60;secretKey&#x60; of the authenticating game. | 
 **xPassword** | **String** | The password of the authenticating game. Required to decrypt and perform blockchain transactions with the game primary wallet. | 
 **withdrawFromShopRequest** | [**WithdrawFromShopRequest**](WithdrawFromShopRequest.md) |  | 

### Return type

[**TransactionModel**](TransactionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

