# WalletsAPI

All URIs are relative to *https://api.trymetafab.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getWalletBalances**](WalletsAPI.md#getwalletbalances) | **GET** /v1/wallets/{walletId}/balances | Get wallet balances
[**getWalletTransactions**](WalletsAPI.md#getwallettransactions) | **GET** /v1/wallets/{walletId}/transactions | Get wallet transactions


# **getWalletBalances**
```swift
    open class func getWalletBalances(walletId: String, completion: @escaping (_ data: [String: Double]?, _ error: Error?) -> Void)
```

Get wallet balances

Returns the current native token balance for all chains supported by MetaFab for the provided walletId. This includes balances like Eth, Matic and other native tokens from chains MetaFab supports.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let walletId = "walletId_example" // String | Any wallet id within the MetaFab ecosystem.

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
 **walletId** | **String** | Any wallet id within the MetaFab ecosystem. | 

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
import OpenAPIClient

let walletId = "walletId_example" // String | Any wallet id within the MetaFab ecosystem.

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
 **walletId** | **String** | Any wallet id within the MetaFab ecosystem. | 

### Return type

[**[TransactionModel]**](TransactionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

