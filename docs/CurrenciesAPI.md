# CurrenciesAPI

All URIs are relative to *https://api.trymetafab.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batchTransferCurrency**](CurrenciesAPI.md#batchtransfercurrency) | **POST** /v1/currencies/{currencyId}/batchTransfers | Batch transfer currency
[**burnCurrency**](CurrenciesAPI.md#burncurrency) | **POST** /v1/currencies/{currencyId}/burns | Burn currency
[**createCurrency**](CurrenciesAPI.md#createcurrency) | **POST** /v1/currencies | Create currency
[**getCurrencies**](CurrenciesAPI.md#getcurrencies) | **GET** /v1/currencies | Get currencies
[**getCurrencyBalances**](CurrenciesAPI.md#getcurrencybalances) | **GET** /v1/currencies/{currencyId}/balances | Get currency balance
[**getCurrencyFees**](CurrenciesAPI.md#getcurrencyfees) | **GET** /v1/currencies/{currencyId}/fees | Get currency fees
[**mintCurrency**](CurrenciesAPI.md#mintcurrency) | **POST** /v1/currencies/{currencyId}/mints | Mint currency
[**setCurrencyFees**](CurrenciesAPI.md#setcurrencyfees) | **POST** /v1/currencies/{currencyId}/fees | Set currency fees
[**transferCurrency**](CurrenciesAPI.md#transfercurrency) | **POST** /v1/currencies/{currencyId}/transfers | Transfer currency


# **batchTransferCurrency**
```swift
    open class func batchTransferCurrency(currencyId: String, xAuthorization: String, xPassword: String, batchTransferCurrencyRequest: BatchTransferCurrencyRequest, completion: @escaping (_ data: TransactionModel?, _ error: Error?) -> Void)
```

Batch transfer currency

Transfers multiple amounts of currency to multiple provided wallet addresses or wallet addresses associated with the provided walletIds. You may also provide a combination of addresses and walletIds in one request, the proper receipients will be automatically determined, with `addresses` getting `amounts` order priority first. Optional references may be included for the transfer. References are useful for identifying transfers intended to pay for items, trades, services and more.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let currencyId = "currencyId_example" // String | Any currency id within the MetaFab ecosystem.
let xAuthorization = "xAuthorization_example" // String | The `secretKey` of a specific game or the `accessToken` of a specific player.
let xPassword = "xPassword_example" // String | The password of the authenticating game or player. Required to decrypt and perform blockchain transactions with the game or player primary wallet.
let batchTransferCurrencyRequest = batchTransferCurrency_request(addresses: ["addresses_example"], walletIds: ["walletIds_example"], amounts: [123], references: [123]) // BatchTransferCurrencyRequest | 

// Batch transfer currency
CurrenciesAPI.batchTransferCurrency(currencyId: currencyId, xAuthorization: xAuthorization, xPassword: xPassword, batchTransferCurrencyRequest: batchTransferCurrencyRequest) { (response, error) in
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
 **currencyId** | **String** | Any currency id within the MetaFab ecosystem. | 
 **xAuthorization** | **String** | The &#x60;secretKey&#x60; of a specific game or the &#x60;accessToken&#x60; of a specific player. | 
 **xPassword** | **String** | The password of the authenticating game or player. Required to decrypt and perform blockchain transactions with the game or player primary wallet. | 
 **batchTransferCurrencyRequest** | [**BatchTransferCurrencyRequest**](BatchTransferCurrencyRequest.md) |  | 

### Return type

[**TransactionModel**](TransactionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **burnCurrency**
```swift
    open class func burnCurrency(currencyId: String, xAuthorization: String, xPassword: String, burnCurrencyRequest: BurnCurrencyRequest, completion: @escaping (_ data: TransactionModel?, _ error: Error?) -> Void)
```

Burn currency

Removes (burns) the provided amount of currency from the authenticating game or players wallet. The currency amount is permanently removed from the circulating supply of the currency.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let currencyId = "currencyId_example" // String | Any currency id within the MetaFab ecosystem.
let xAuthorization = "xAuthorization_example" // String | The `secretKey` of a specific game or the `accessToken` of a specific player.
let xPassword = "xPassword_example" // String | The password of the authenticating game or player. Required to decrypt and perform blockchain transactions with the game or player primary wallet.
let burnCurrencyRequest = burnCurrency_request(amount: 123) // BurnCurrencyRequest | 

// Burn currency
CurrenciesAPI.burnCurrency(currencyId: currencyId, xAuthorization: xAuthorization, xPassword: xPassword, burnCurrencyRequest: burnCurrencyRequest) { (response, error) in
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
 **currencyId** | **String** | Any currency id within the MetaFab ecosystem. | 
 **xAuthorization** | **String** | The &#x60;secretKey&#x60; of a specific game or the &#x60;accessToken&#x60; of a specific player. | 
 **xPassword** | **String** | The password of the authenticating game or player. Required to decrypt and perform blockchain transactions with the game or player primary wallet. | 
 **burnCurrencyRequest** | [**BurnCurrencyRequest**](BurnCurrencyRequest.md) |  | 

### Return type

[**TransactionModel**](TransactionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCurrency**
```swift
    open class func createCurrency(xAuthorization: String, xPassword: String, createCurrencyRequest: CreateCurrencyRequest, completion: @escaping (_ data: CreateCurrency200Response?, _ error: Error?) -> Void)
```

Create currency

Creates a new game currency and deploys an ERC20 token contract on behalf of the authenticating game's primary wallet. The deployed ERC20 contract is preconfigured to fully support bridging across blockchains, batched transfers and gasless transactions on any supported blockchain as well as full support for gasless transactions from player managed wallets.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let xAuthorization = "xAuthorization_example" // String | The `secretKey` of the authenticating game.
let xPassword = "xPassword_example" // String | The password of the authenticating game. Required to decrypt and perform blockchain transactions with the game primary wallet.
let createCurrencyRequest = createCurrency_request(name: "name_example", symbol: "symbol_example", supplyCap: 123, chain: "chain_example") // CreateCurrencyRequest | 

// Create currency
CurrenciesAPI.createCurrency(xAuthorization: xAuthorization, xPassword: xPassword, createCurrencyRequest: createCurrencyRequest) { (response, error) in
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
 **createCurrencyRequest** | [**CreateCurrencyRequest**](CreateCurrencyRequest.md) |  | 

### Return type

[**CreateCurrency200Response**](CreateCurrency200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCurrencies**
```swift
    open class func getCurrencies(xGameKey: String, completion: @escaping (_ data: [GetCurrencies200ResponseInner]?, _ error: Error?) -> Void)
```

Get currencies

Returns an array of active currencies for the game associated with the provided `X-Game-Key`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let xGameKey = "xGameKey_example" // String | The `publishedKey` of a specific game. This can be shared or included in game clients, websites, etc.

// Get currencies
CurrenciesAPI.getCurrencies(xGameKey: xGameKey) { (response, error) in
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

[**[GetCurrencies200ResponseInner]**](GetCurrencies200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCurrencyBalances**
```swift
    open class func getCurrencyBalances(currencyId: String, address: String? = nil, walletId: String? = nil, completion: @escaping (_ data: Double?, _ error: Error?) -> Void)
```

Get currency balance

Returns the current currency balance of the provided wallet address or or the wallet address associated with the provided walletId.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let currencyId = "currencyId_example" // String | Any currency id within the MetaFab ecosystem.
let address = "address_example" // String | A valid EVM based address. For example, `0x39cb70F972E0EE920088AeF97Dbe5c6251a9c25D`. (optional)
let walletId = "walletId_example" // String | Any wallet id within the MetaFab ecosystem. (optional)

// Get currency balance
CurrenciesAPI.getCurrencyBalances(currencyId: currencyId, address: address, walletId: walletId) { (response, error) in
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
 **currencyId** | **String** | Any currency id within the MetaFab ecosystem. | 
 **address** | **String** | A valid EVM based address. For example, &#x60;0x39cb70F972E0EE920088AeF97Dbe5c6251a9c25D&#x60;. | [optional] 
 **walletId** | **String** | Any wallet id within the MetaFab ecosystem. | [optional] 

### Return type

**Double**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCurrencyFees**
```swift
    open class func getCurrencyFees(currencyId: String, completion: @escaping (_ data: GetCurrencyFees200Response?, _ error: Error?) -> Void)
```

Get currency fees

Returns the current fee recipient address and fees of the currency for the provided currencyId. Fees are only applicable for gasless transactions performed by default by players.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let currencyId = "currencyId_example" // String | Any currency id within the MetaFab ecosystem.

// Get currency fees
CurrenciesAPI.getCurrencyFees(currencyId: currencyId) { (response, error) in
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
 **currencyId** | **String** | Any currency id within the MetaFab ecosystem. | 

### Return type

[**GetCurrencyFees200Response**](GetCurrencyFees200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mintCurrency**
```swift
    open class func mintCurrency(currencyId: String, xAuthorization: String, xPassword: String, mintCurrencyRequest: MintCurrencyRequest, completion: @escaping (_ data: TransactionModel?, _ error: Error?) -> Void)
```

Mint currency

Creates (mints) the provided amount of currency  to the provided wallet address or wallet address associated with the provided walletId.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let currencyId = "currencyId_example" // String | Any currency id within the MetaFab ecosystem.
let xAuthorization = "xAuthorization_example" // String | The `secretKey` of the authenticating game.
let xPassword = "xPassword_example" // String | The password of the authenticating game. Required to decrypt and perform blockchain transactions with the game primary wallet.
let mintCurrencyRequest = mintCurrency_request(amount: 123, address: "address_example", walletId: "walletId_example") // MintCurrencyRequest | 

// Mint currency
CurrenciesAPI.mintCurrency(currencyId: currencyId, xAuthorization: xAuthorization, xPassword: xPassword, mintCurrencyRequest: mintCurrencyRequest) { (response, error) in
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
 **currencyId** | **String** | Any currency id within the MetaFab ecosystem. | 
 **xAuthorization** | **String** | The &#x60;secretKey&#x60; of the authenticating game. | 
 **xPassword** | **String** | The password of the authenticating game. Required to decrypt and perform blockchain transactions with the game primary wallet. | 
 **mintCurrencyRequest** | [**MintCurrencyRequest**](MintCurrencyRequest.md) |  | 

### Return type

[**TransactionModel**](TransactionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setCurrencyFees**
```swift
    open class func setCurrencyFees(currencyId: String, xAuthorization: String, xPassword: String, setCurrencyFeesRequest: SetCurrencyFeesRequest, completion: @escaping (_ data: TransactionModel?, _ error: Error?) -> Void)
```

Set currency fees

Sets the recipient address, basis points, fixed amount and cap amount for a currency's fees.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let currencyId = "currencyId_example" // String | Any currency id within the MetaFab ecosystem.
let xAuthorization = "xAuthorization_example" // String | The `secretKey` of the authenticating game.
let xPassword = "xPassword_example" // String | The password of the authenticating game. Required to decrypt and perform blockchain transactions with the game primary wallet.
let setCurrencyFeesRequest = setCurrencyFees_request(recipientAddress: "recipientAddress_example", basisPoints: 123, fixedAmount: 123, capAmount: 123) // SetCurrencyFeesRequest | 

// Set currency fees
CurrenciesAPI.setCurrencyFees(currencyId: currencyId, xAuthorization: xAuthorization, xPassword: xPassword, setCurrencyFeesRequest: setCurrencyFeesRequest) { (response, error) in
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
 **currencyId** | **String** | Any currency id within the MetaFab ecosystem. | 
 **xAuthorization** | **String** | The &#x60;secretKey&#x60; of the authenticating game. | 
 **xPassword** | **String** | The password of the authenticating game. Required to decrypt and perform blockchain transactions with the game primary wallet. | 
 **setCurrencyFeesRequest** | [**SetCurrencyFeesRequest**](SetCurrencyFeesRequest.md) |  | 

### Return type

[**TransactionModel**](TransactionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transferCurrency**
```swift
    open class func transferCurrency(currencyId: String, xAuthorization: String, xPassword: String, transferCurrencyRequest: TransferCurrencyRequest, completion: @escaping (_ data: TransactionModel?, _ error: Error?) -> Void)
```

Transfer currency

Transfers an amount of currency to the provided wallet address or wallet address associated with the provided walletId. If you want to transfer to multiple wallets with different amounts and optional references in one API request, please see the Batch transfer currency documentation.  An optional reference may be included for the transfer. References are useful for identifying transfers intended to pay for items, trades, services and more.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let currencyId = "currencyId_example" // String | Any currency id within the MetaFab ecosystem.
let xAuthorization = "xAuthorization_example" // String | The `secretKey` of a specific game or the `accessToken` of a specific player.
let xPassword = "xPassword_example" // String | The password of the authenticating game or player. Required to decrypt and perform blockchain transactions with the game or player primary wallet.
let transferCurrencyRequest = transferCurrency_request(address: "address_example", walletId: "walletId_example", amount: 123, reference: 123) // TransferCurrencyRequest | 

// Transfer currency
CurrenciesAPI.transferCurrency(currencyId: currencyId, xAuthorization: xAuthorization, xPassword: xPassword, transferCurrencyRequest: transferCurrencyRequest) { (response, error) in
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
 **currencyId** | **String** | Any currency id within the MetaFab ecosystem. | 
 **xAuthorization** | **String** | The &#x60;secretKey&#x60; of a specific game or the &#x60;accessToken&#x60; of a specific player. | 
 **xPassword** | **String** | The password of the authenticating game or player. Required to decrypt and perform blockchain transactions with the game or player primary wallet. | 
 **transferCurrencyRequest** | [**TransferCurrencyRequest**](TransferCurrencyRequest.md) |  | 

### Return type

[**TransactionModel**](TransactionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

