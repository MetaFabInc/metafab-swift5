# TransactionsAPI

All URIs are relative to *https://api.trymetafab.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTransaction**](TransactionsAPI.md#gettransaction) | **GET** /v1/transactions/{transactionId} | Get transaction


# **getTransaction**
```swift
    open class func getTransaction(transactionId: String, completion: @escaping (_ data: TransactionModel?, _ error: Error?) -> Void)
```

Get transaction

Returns an executed transaction object for the provided transactionId. Transactions are created by MetaFab when interacting with contracts, currencies, items and other MetaFab resources.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let transactionId = "transactionId_example" // String | Any transaction id within the MetaFab ecosystem.

// Get transaction
TransactionsAPI.getTransaction(transactionId: transactionId) { (response, error) in
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
 **transactionId** | **String** | Any transaction id within the MetaFab ecosystem. | 

### Return type

[**TransactionModel**](TransactionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

