# WalletsAPI

All URIs are relative to *https://api.trymetafab.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWalletSignature**](WalletsAPI.md#createwalletsignature) | **POST** /v1/wallets/{walletId}/signatures | Create wallet signature
[**getWallet**](WalletsAPI.md#getwallet) | **GET** /v1/wallets/{walletId} | Get wallet
[**getWalletBalances**](WalletsAPI.md#getwalletbalances) | **GET** /v1/wallets/{walletId}/balances | Get wallet balances
[**getWalletTransactions**](WalletsAPI.md#getwallettransactions) | **GET** /v1/wallets/{walletId}/transactions | Get wallet transactions


# **createWalletSignature**
```swift
    open class func createWalletSignature(walletId: String, xWalletDecryptKey: String, createWalletSignatureRequest: CreateWalletSignatureRequest, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Create wallet signature

Creates a wallet signature from a plaintext message using the wallet for the provided walletId and walletDecryptKey. Wallet signatures cannot be generated for EOA wallets.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let walletId = "walletId_example" // String | Any wallet id within the MetaFab platform.
let xWalletDecryptKey = "xWalletDecryptKey_example" // String | The `walletDecryptKey` for the provided `walletId`.
let createWalletSignatureRequest = createWalletSignature_request(message: "message_example") // CreateWalletSignatureRequest | 

// Create wallet signature
WalletsAPI.createWalletSignature(walletId: walletId, xWalletDecryptKey: xWalletDecryptKey, createWalletSignatureRequest: createWalletSignatureRequest) { (response, error) in
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
 **walletId** | **String** | Any wallet id within the MetaFab platform. | 
 **xWalletDecryptKey** | **String** | The &#x60;walletDecryptKey&#x60; for the provided &#x60;walletId&#x60;. | 
 **createWalletSignatureRequest** | [**CreateWalletSignatureRequest**](CreateWalletSignatureRequest.md) |  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWallet**
```swift
    open class func getWallet(walletId: String, completion: @escaping (_ data: WalletModel?, _ error: Error?) -> Void)
```

Get wallet

Returns a wallet object for the provided walletId.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let walletId = "walletId_example" // String | Any wallet id within the MetaFab platform.

// Get wallet
WalletsAPI.getWallet(walletId: walletId) { (response, error) in
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
 **walletId** | **String** | Any wallet id within the MetaFab platform. | 

### Return type

[**WalletModel**](WalletModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWalletBalances**
```swift
    open class func getWalletBalances(walletId: String, completion: @escaping (_ data: [String: Double]?, _ error: Error?) -> Void)
```

Get wallet balances

Returns the current native token balance for all chains supported by MetaFab for the provided walletId. This includes balances like Eth, Matic and other native tokens from chains MetaFab supports.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let walletId = "walletId_example" // String | Any wallet id within the MetaFab platform.

// Get wallet balances
WalletsAPI.getWalletBalances(walletId: walletId) { (response, error) in
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
 **walletId** | **String** | Any wallet id within the MetaFab platform. | 

### Return type

**[String: Double]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWalletTransactions**
```swift
    open class func getWalletTransactions(walletId: String, completion: @escaping (_ data: [TransactionModel]?, _ error: Error?) -> Void)
```

Get wallet transactions

Returns an array of MetaFab initiated transactions performed by the provided walletId. Transactions returned are ordered chronologically from newest to oldest.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let walletId = "walletId_example" // String | Any wallet id within the MetaFab platform.

// Get wallet transactions
WalletsAPI.getWalletTransactions(walletId: walletId) { (response, error) in
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
 **walletId** | **String** | Any wallet id within the MetaFab platform. | 

### Return type

[**[TransactionModel]**](TransactionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

