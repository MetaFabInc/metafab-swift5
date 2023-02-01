# GamesAPI

All URIs are relative to *https://api.trymetafab.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authGame**](GamesAPI.md#authgame) | **GET** /v1/games/auth | Authenticate game
[**createGame**](GamesAPI.md#creategame) | **POST** /v1/games | Create game
[**getGame**](GamesAPI.md#getgame) | **GET** /v1/games/{gameId} | Get game
[**updateGame**](GamesAPI.md#updategame) | **PATCH** /v1/games/{gameId} | Update game


# **authGame**
```swift
    open class func authGame(completion: @escaping (_ data: AuthGame200Response?, _ error: Error?) -> Void)
```

Authenticate game

Returns an existing game object containing authorization keys and credentials when provided a valid email (in place of username) and password login using Basic Auth.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5


// Authenticate game
GamesAPI.authGame() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**AuthGame200Response**](AuthGame200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createGame**
```swift
    open class func createGame(createGameRequest: CreateGameRequest, completion: @escaping (_ data: AuthGame200Response?, _ error: Error?) -> Void)
```

Create game

Create a new game. A game is the root entity required for all API interactions. Contracts, currencies, items and more are deployed by games, player accounts are created and registered to games, etc.  To use any of MetaFab's services, you must first create a game through this endpoint.  After creating your game through this endpoint, a verification email will be sent to the email address used. Before you can access any of MetaFab's features, you'll need to click the link contained in the verification email to verify your account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let createGameRequest = createGame_request(name: "name_example", email: "email_example", password: "password_example") // CreateGameRequest | 

// Create game
GamesAPI.createGame(createGameRequest: createGameRequest) { (response, error) in
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
 **createGameRequest** | [**CreateGameRequest**](CreateGameRequest.md) |  | 

### Return type

[**AuthGame200Response**](AuthGame200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGame**
```swift
    open class func getGame(gameId: String, completion: @escaping (_ data: PublicGame?, _ error: Error?) -> Void)
```

Get game

Returns a game object for the provided game id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let gameId = "gameId_example" // String | Any game id within the MetaFab platform.

// Get game
GamesAPI.getGame(gameId: gameId) { (response, error) in
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
 **gameId** | **String** | Any game id within the MetaFab platform. | 

### Return type

[**PublicGame**](PublicGame.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGame**
```swift
    open class func updateGame(gameId: String, xAuthorization: String, updateGameRequest: UpdateGameRequest, completion: @escaping (_ data: UpdateGame200Response?, _ error: Error?) -> Void)
```

Update game

Update various fields specific to a game. Such as changing its password, resetting its published or secret key, or updating its RPCs.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let gameId = "gameId_example" // String | The game id of the authenticating game.
let xAuthorization = "xAuthorization_example" // String | The `secretKey` of the authenticating game.
let updateGameRequest = updateGame_request(name: "name_example", email: "email_example", currentPassword: "currentPassword_example", newPassword: "newPassword_example", rpcs: "TODO", redirectUris: ["redirectUris_example"], iconImageBase64: "iconImageBase64_example", coverImageBase64: "coverImageBase64_example", primaryColorHex: "primaryColorHex_example", resetPublishedKey: false, resetSecretKey: false) // UpdateGameRequest | 

// Update game
GamesAPI.updateGame(gameId: gameId, xAuthorization: xAuthorization, updateGameRequest: updateGameRequest) { (response, error) in
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
 **gameId** | **String** | The game id of the authenticating game. | 
 **xAuthorization** | **String** | The &#x60;secretKey&#x60; of the authenticating game. | 
 **updateGameRequest** | [**UpdateGameRequest**](UpdateGameRequest.md) |  | 

### Return type

[**UpdateGame200Response**](UpdateGame200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

