# ContractsAPI

All URIs are relative to *https://api.trymetafab.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createContract**](ContractsAPI.md#createcontract) | **POST** /v1/contracts | Create custom contract
[**getContracts**](ContractsAPI.md#getcontracts) | **GET** /v1/contracts | Get contracts
[**readContract**](ContractsAPI.md#readcontract) | **GET** /v1/contracts/{contractId}/reads | Read contract data
[**writeContract**](ContractsAPI.md#writecontract) | **POST** /v1/contracts/{contractId}/writes | Write contract data


# **createContract**
```swift
    open class func createContract(xAuthorization: String, createContractRequest: CreateContractRequest, completion: @escaping (_ data: ContractModel?, _ error: Error?) -> Void)
```

Create custom contract

Create a MetaFab custom contract entry from an existing contract address and contract abi. This allows the game and players belonging to the authenticated game to interact with the contract's read and write functions through MetaFab's read and write contract endpoints.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let xAuthorization = "xAuthorization_example" // String | The `secretKey` of the authenticating game.
let createContractRequest = createContract_request(address: "address_example", abi: "abi_example", chain: "chain_example") // CreateContractRequest | 

// Create custom contract
ContractsAPI.createContract(xAuthorization: xAuthorization, createContractRequest: createContractRequest) { (response, error) in
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
 **createContractRequest** | [**CreateContractRequest**](CreateContractRequest.md) |  | 

### Return type

[**ContractModel**](ContractModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContracts**
```swift
    open class func getContracts(xGameKey: String, completion: @escaping (_ data: [ContractModel]?, _ error: Error?) -> Void)
```

Get contracts

Returns an array of active contracts deployed by the game associated with the provided `X-Game-Key`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let xGameKey = "xGameKey_example" // String | The `publishedKey` of a specific game. This can be shared or included in game clients, websites, etc.

// Get contracts
ContractsAPI.getContracts(xGameKey: xGameKey) { (response, error) in
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

[**[ContractModel]**](ContractModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readContract**
```swift
    open class func readContract(contractId: String, _func: String, args: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Read contract data

Oftentimes you'll want to query and retrieve some data from a contract. This is incredibly easy to do for any contract deployed through MetaFab.  Using this endpoint, you can get the data returned by any readable function listed in a contracts ABI. This could be things like querying the totalSupply of a currency contract, the number of owners of an items contract, and more.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let contractId = "contractId_example" // String | Any contract id within the MetaFab ecosystem.
let _func = "_func_example" // String | A contract function name. This can be any valid function from the the ABI of the contract you are interacting with. For example, `balanceOf`.
let args = "args_example" // String | A comma seperated list of basic data type arguments. This is optional and only necessary if the function being invoked requires arguments per the contract ABI. For example, `123,\"Hello\",false`. (optional)

// Read contract data
ContractsAPI.readContract(contractId: contractId, _func: _func, args: args) { (response, error) in
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
 **contractId** | **String** | Any contract id within the MetaFab ecosystem. | 
 **_func** | **String** | A contract function name. This can be any valid function from the the ABI of the contract you are interacting with. For example, &#x60;balanceOf&#x60;. | 
 **args** | **String** | A comma seperated list of basic data type arguments. This is optional and only necessary if the function being invoked requires arguments per the contract ABI. For example, &#x60;123,\&quot;Hello\&quot;,false&#x60;. | [optional] 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **writeContract**
```swift
    open class func writeContract(contractId: String, xAuthorization: String, xPassword: String, writeContractRequest: WriteContractRequest, completion: @escaping (_ data: TransactionModel?, _ error: Error?) -> Void)
```

Write contract data

MetaFab's convenience endpoints for contract interactions may not be flexible enough depending on your use case. For these situations, you can interact with contracts and create transactions directly.  Using this endpoint, you can execute a transaction for any writeable contract method as defined in the contract's ABI for the MetaFab contractId provided. Both Games and Player resources have authority to use this endpoint to execute transactions against any valid MetaFab contractId.  Additionally, MetaFab will automatically attempt to perform a gasless transaction for players interacting with a contract through this endpoint. Gasless transactions by players through this endpoint will only work if the target contract was deployed through MetaFab or supports MetaFab's ERC2771 trusted forwarder contract.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let contractId = "contractId_example" // String | Any contract id within the MetaFab ecosystem.
let xAuthorization = "xAuthorization_example" // String | The `secretKey` of a specific game or the `accessToken` of a specific player.
let xPassword = "xPassword_example" // String | The password of the authenticating game or player. Required to decrypt and perform blockchain transactions with the game or player primary wallet.
let writeContractRequest = writeContract_request(_func: "_func_example", args: [writeContract_request_args_inner()]) // WriteContractRequest | 

// Write contract data
ContractsAPI.writeContract(contractId: contractId, xAuthorization: xAuthorization, xPassword: xPassword, writeContractRequest: writeContractRequest) { (response, error) in
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
 **contractId** | **String** | Any contract id within the MetaFab ecosystem. | 
 **xAuthorization** | **String** | The &#x60;secretKey&#x60; of a specific game or the &#x60;accessToken&#x60; of a specific player. | 
 **xPassword** | **String** | The password of the authenticating game or player. Required to decrypt and perform blockchain transactions with the game or player primary wallet. | 
 **writeContractRequest** | [**WriteContractRequest**](WriteContractRequest.md) |  | 

### Return type

[**TransactionModel**](TransactionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

