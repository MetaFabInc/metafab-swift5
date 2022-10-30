# ExchangesAPI

All URIs are relative to *https://api.trymetafab.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createExchange**](ExchangesAPI.md#createexchange) | **POST** /v1/exchanges | Create exchange
[**getExchangeOffer**](ExchangesAPI.md#getexchangeoffer) | **GET** /v1/exchanges/{exchangeId}/items/{exchangeOfferId} | Get exchange offer
[**getExchangeOffers**](ExchangesAPI.md#getexchangeoffers) | **GET** /v1/exchanges/{exchangeId}/offers | Get exchange offers
[**getExchanges**](ExchangesAPI.md#getexchanges) | **GET** /v1/exchanges | Get exchanges
[**removeExchangeOffer**](ExchangesAPI.md#removeexchangeoffer) | **DELETE** /v1/exchanges/{exchangeId}/offers/{exchangeOfferId} | Remove exchange offer
[**setExchangeOffer**](ExchangesAPI.md#setexchangeoffer) | **POST** /v1/exchanges/{exchangeId}/offers | Set exchange offer
[**useExchangeOffer**](ExchangesAPI.md#useexchangeoffer) | **POST** /v1/exchanges/{exchangeId}/offers/{exchangeOfferId}/uses | Use exchange offer
[**withdrawFromExchange**](ExchangesAPI.md#withdrawfromexchange) | **POST** /v1/exchanges/{exchangeId}/withdrawals | Withdraw from exchange


# **createExchange**
```swift
    open class func createExchange(xAuthorization: String, xPassword: String, createExchangeRequest: CreateExchangeRequest, completion: @escaping (_ data: CreateExchange200Response?, _ error: Error?) -> Void)
```

Create exchange

Creates a new game exchange and deploys a exchange contract on behalf of the authenticating game's primary wallet. The deployed exchange contract allows you to create fixed price rates for players to buy specific items from any item collection or ERC1155 contract. Additionally, an exchange allows you to create exchange offers for some set of item(s) to another set of item(s) or any mix of currency. Exchanges completely supports gasless player transactions.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let xAuthorization = "xAuthorization_example" // String | The `secretKey` of the authenticating game.
let xPassword = "xPassword_example" // String | The password of the authenticating game. Required to decrypt and perform blockchain transactions with the game primary wallet.
let createExchangeRequest = createExchange_request(chain: "chain_example") // CreateExchangeRequest | 

// Create exchange
ExchangesAPI.createExchange(xAuthorization: xAuthorization, xPassword: xPassword, createExchangeRequest: createExchangeRequest) { (response, error) in
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
 **createExchangeRequest** | [**CreateExchangeRequest**](CreateExchangeRequest.md) |  | 

### Return type

[**CreateExchange200Response**](CreateExchange200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExchangeOffer**
```swift
    open class func getExchangeOffer(exchangeId: String, exchangeOfferId: String, completion: @escaping (_ data: ExchangeOffer?, _ error: Error?) -> Void)
```

Get exchange offer

Returns a exchange offer object for the provided exchangeOfferId.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let exchangeId = "exchangeId_example" // String | Any exchange id within the MetaFab ecosystem.
let exchangeOfferId = "exchangeOfferId_example" // String | Any offer id for the exchange. Zero, or a positive integer.

// Get exchange offer
ExchangesAPI.getExchangeOffer(exchangeId: exchangeId, exchangeOfferId: exchangeOfferId) { (response, error) in
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
 **exchangeId** | **String** | Any exchange id within the MetaFab ecosystem. | 
 **exchangeOfferId** | **String** | Any offer id for the exchange. Zero, or a positive integer. | 

### Return type

[**ExchangeOffer**](ExchangeOffer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExchangeOffers**
```swift
    open class func getExchangeOffers(exchangeId: String, completion: @escaping (_ data: [ExchangeOffer]?, _ error: Error?) -> Void)
```

Get exchange offers

Returns all exchange offers as an array of exchange offer objects.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let exchangeId = "exchangeId_example" // String | Any exchange id within the MetaFab ecosystem.

// Get exchange offers
ExchangesAPI.getExchangeOffers(exchangeId: exchangeId) { (response, error) in
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
 **exchangeId** | **String** | Any exchange id within the MetaFab ecosystem. | 

### Return type

[**[ExchangeOffer]**](ExchangeOffer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExchanges**
```swift
    open class func getExchanges(xGameKey: String, completion: @escaping (_ data: [GetExchanges200ResponseInner]?, _ error: Error?) -> Void)
```

Get exchanges

Returns an array of active exchanges for the game associated with the provided `X-Game-Key`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let xGameKey = "xGameKey_example" // String | The `publishedKey` of a specific game. This can be shared or included in game clients, websites, etc.

// Get exchanges
ExchangesAPI.getExchanges(xGameKey: xGameKey) { (response, error) in
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

[**[GetExchanges200ResponseInner]**](GetExchanges200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeExchangeOffer**
```swift
    open class func removeExchangeOffer(exchangeId: String, exchangeOfferId: String, xAuthorization: String, xPassword: String, completion: @escaping (_ data: TransactionModel?, _ error: Error?) -> Void)
```

Remove exchange offer

Removes the provided offerId from the provided exchange. Removed offers can no longer be used.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let exchangeId = "exchangeId_example" // String | Any exchange id within the MetaFab ecosystem.
let exchangeOfferId = "exchangeOfferId_example" // String | Any offer id for the exchange. Zero, or a positive integer.
let xAuthorization = "xAuthorization_example" // String | The `secretKey` of the authenticating game.
let xPassword = "xPassword_example" // String | The password of the authenticating game. Required to decrypt and perform blockchain transactions with the game primary wallet.

// Remove exchange offer
ExchangesAPI.removeExchangeOffer(exchangeId: exchangeId, exchangeOfferId: exchangeOfferId, xAuthorization: xAuthorization, xPassword: xPassword) { (response, error) in
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
 **exchangeId** | **String** | Any exchange id within the MetaFab ecosystem. | 
 **exchangeOfferId** | **String** | Any offer id for the exchange. Zero, or a positive integer. | 
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

# **setExchangeOffer**
```swift
    open class func setExchangeOffer(exchangeId: String, xAuthorization: String, xPassword: String, setExchangeOfferRequest: SetExchangeOfferRequest, completion: @escaping (_ data: TransactionModel?, _ error: Error?) -> Void)
```

Set exchange offer

Sets a new exchange offer or updates an existing one for the provided id. Exchange offers allow currency to item, item to currency or item to item exchanges.  All request fields besides `id` are optional. Any optional fields omitted will not be used for the offer. This allows you to create many different combinations of offers. For example, you can create an offer that may require 3 unique item ids of specified quantities from a given item collection and gives the user 1 new unique item id in exchange.  Another example, you may want to make an exchange offer from one ERC20 token to another. This is also possible - simple set the input and output currency fields and leave the others blank.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let exchangeId = "exchangeId_example" // String | Any exchange id within the MetaFab ecosystem.
let xAuthorization = "xAuthorization_example" // String | The `secretKey` of the authenticating game.
let xPassword = "xPassword_example" // String | The password of the authenticating game. Required to decrypt and perform blockchain transactions with the game primary wallet.
let setExchangeOfferRequest = setExchangeOffer_request(id: 123, inputCollectionAddress: "inputCollectionAddress_example", inputCollectionId: "inputCollectionId_example", inputCollectionItemIds: [123], inputCollectionItemAmounts: [123], inputCurrencyAddress: "inputCurrencyAddress_example", inputCurrencyId: "inputCurrencyId_example", inputCurrencyAmount: 123, outputCollectionAddress: "outputCollectionAddress_example", outputCollectionId: "outputCollectionId_example", outputCollectionItemIds: [123], outputCollectionItemAmounts: [123], outputCurrencyAddress: "outputCurrencyAddress_example", outputCurrencyId: "outputCurrencyId_example", outputCurrencyAmount: 123, maxUses: 123) // SetExchangeOfferRequest | 

// Set exchange offer
ExchangesAPI.setExchangeOffer(exchangeId: exchangeId, xAuthorization: xAuthorization, xPassword: xPassword, setExchangeOfferRequest: setExchangeOfferRequest) { (response, error) in
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
 **exchangeId** | **String** | Any exchange id within the MetaFab ecosystem. | 
 **xAuthorization** | **String** | The &#x60;secretKey&#x60; of the authenticating game. | 
 **xPassword** | **String** | The password of the authenticating game. Required to decrypt and perform blockchain transactions with the game primary wallet. | 
 **setExchangeOfferRequest** | [**SetExchangeOfferRequest**](SetExchangeOfferRequest.md) |  | 

### Return type

[**TransactionModel**](TransactionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **useExchangeOffer**
```swift
    open class func useExchangeOffer(exchangeId: String, exchangeOfferId: String, xAuthorization: String, xPassword: String, completion: @escaping (_ data: TransactionModel?, _ error: Error?) -> Void)
```

Use exchange offer

Uses an exchange offer. The required (input) item(s) and/or currency are removed from the wallet or player wallet using the offer. The given (output) item(s) and/or currency are given to the wallet or player wallet using the offer.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let exchangeId = "exchangeId_example" // String | Any exchange id within the MetaFab ecosystem.
let exchangeOfferId = "exchangeOfferId_example" // String | Any offer id for the exchange. Zero, or a positive integer.
let xAuthorization = "xAuthorization_example" // String | The `secretKey` of a specific game or the `accessToken` of a specific player.
let xPassword = "xPassword_example" // String | The password of the authenticating game or player. Required to decrypt and perform blockchain transactions with the game or player primary wallet.

// Use exchange offer
ExchangesAPI.useExchangeOffer(exchangeId: exchangeId, exchangeOfferId: exchangeOfferId, xAuthorization: xAuthorization, xPassword: xPassword) { (response, error) in
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
 **exchangeId** | **String** | Any exchange id within the MetaFab ecosystem. | 
 **exchangeOfferId** | **String** | Any offer id for the exchange. Zero, or a positive integer. | 
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

# **withdrawFromExchange**
```swift
    open class func withdrawFromExchange(exchangeId: String, xAuthorization: String, xPassword: String, withdrawFromExchangeRequest: WithdrawFromExchangeRequest, completion: @escaping (_ data: TransactionModel?, _ error: Error?) -> Void)
```

Withdraw from exchange

Withdraws native token, currency or items from a exchange. Whenever an exchange offer has input requirements, the native tokens, currencies or items for the requirements of that offer are deposited into the exchange contract when the offer is used. These can be withdrawn to any other address.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let exchangeId = "exchangeId_example" // String | Any exchange id within the MetaFab ecosystem.
let xAuthorization = "xAuthorization_example" // String | The `secretKey` of the authenticating game.
let xPassword = "xPassword_example" // String | The password of the authenticating game. Required to decrypt and perform blockchain transactions with the game primary wallet.
let withdrawFromExchangeRequest = withdrawFromExchange_request(address: "address_example", walletId: "walletId_example", currencyAddress: "currencyAddress_example", currencyId: "currencyId_example", collectionAddress: "collectionAddress_example", collectionId: "collectionId_example", itemIds: [123]) // WithdrawFromExchangeRequest | 

// Withdraw from exchange
ExchangesAPI.withdrawFromExchange(exchangeId: exchangeId, xAuthorization: xAuthorization, xPassword: xPassword, withdrawFromExchangeRequest: withdrawFromExchangeRequest) { (response, error) in
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
 **exchangeId** | **String** | Any exchange id within the MetaFab ecosystem. | 
 **xAuthorization** | **String** | The &#x60;secretKey&#x60; of the authenticating game. | 
 **xPassword** | **String** | The password of the authenticating game. Required to decrypt and perform blockchain transactions with the game primary wallet. | 
 **withdrawFromExchangeRequest** | [**WithdrawFromExchangeRequest**](WithdrawFromExchangeRequest.md) |  | 

### Return type

[**TransactionModel**](TransactionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

