# PlayersAPI

All URIs are relative to *https://api.trymetafab.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authPlayer**](PlayersAPI.md#authplayer) | **GET** /v1/players/auth | Authenticate player
[**createPlayer**](PlayersAPI.md#createplayer) | **POST** /v1/players | Create player
[**getPlayer**](PlayersAPI.md#getplayer) | **GET** /v1/players/{playerId} | Get player
[**getPlayers**](PlayersAPI.md#getplayers) | **GET** /v1/players | Get players
[**updatePlayer**](PlayersAPI.md#updateplayer) | **PATCH** /v1/players/{playerId} | Update player


# **authPlayer**
```swift
    open class func authPlayer(xGameKey: String, completion: @escaping (_ data: AuthPlayer200Response?, _ error: Error?) -> Void)
```

Authenticate player

Returns an existing player object containing access token, wallet, and other details for a game when provided a valid username and password login using Basic Auth.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let xGameKey = "xGameKey_example" // String | The `publishedKey` of a specific game. This can be shared or included in game clients, websites, etc.

// Authenticate player
PlayersAPI.authPlayer(xGameKey: xGameKey) { (response, error) in
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

[**AuthPlayer200Response**](AuthPlayer200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPlayer**
```swift
    open class func createPlayer(xGameKey: String, createPlayerRequest: CreatePlayerRequest, completion: @escaping (_ data: AuthPlayer200Response?, _ error: Error?) -> Void)
```

Create player

Create a new player for a game. Players are automatically associated with an internally managed wallet.  Player access tokens can be used to directly interact with any MetaFab managed contracts, currencies, items collections, marketplaces and more. Player interactions are also gasless by default, completely removing all crypto friction for players to engage with your MetaFab supported games.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let xGameKey = "xGameKey_example" // String | The `publishedKey` of a specific game. This can be shared or included in game clients, websites, etc.
let createPlayerRequest = createPlayer_request(username: "username_example", password: "password_example") // CreatePlayerRequest | 

// Create player
PlayersAPI.createPlayer(xGameKey: xGameKey, createPlayerRequest: createPlayerRequest) { (response, error) in
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
 **createPlayerRequest** | [**CreatePlayerRequest**](CreatePlayerRequest.md) |  | 

### Return type

[**AuthPlayer200Response**](AuthPlayer200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPlayer**
```swift
    open class func getPlayer(playerId: String, completion: @escaping (_ data: PublicPlayer?, _ error: Error?) -> Void)
```

Get player

Returns a player object for the provided player id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let playerId = "playerId_example" // String | Any player id within the MetaFab ecosystem.

// Get player
PlayersAPI.getPlayer(playerId: playerId) { (response, error) in
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
 **playerId** | **String** | Any player id within the MetaFab ecosystem. | 

### Return type

[**PublicPlayer**](PublicPlayer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPlayers**
```swift
    open class func getPlayers(xAuthorization: String, completion: @escaping (_ data: [PublicPlayer]?, _ error: Error?) -> Void)
```

Get players

Returns all players for the authenticated game as an array of player objects.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let xAuthorization = "xAuthorization_example" // String | The `secretKey` of the authenticating game.

// Get players
PlayersAPI.getPlayers(xAuthorization: xAuthorization) { (response, error) in
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

### Return type

[**[PublicPlayer]**](PublicPlayer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePlayer**
```swift
    open class func updatePlayer(playerId: String, xAuthorization: String, updatePlayerRequest: UpdatePlayerRequest, completion: @escaping (_ data: PlayerModel?, _ error: Error?) -> Void)
```

Update player

Update various fields specific to a player. Such as changing its password and resetting its access token.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let playerId = "playerId_example" // String | Any player id within the MetaFab ecosystem.
let xAuthorization = "xAuthorization_example" // String | The `accessToken` of the authenticating player.
let updatePlayerRequest = updatePlayer_request(currentPassword: "currentPassword_example", newPassword: "newPassword_example", resetAccessToken: false) // UpdatePlayerRequest | 

// Update player
PlayersAPI.updatePlayer(playerId: playerId, xAuthorization: xAuthorization, updatePlayerRequest: updatePlayerRequest) { (response, error) in
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
 **playerId** | **String** | Any player id within the MetaFab ecosystem. | 
 **xAuthorization** | **String** | The &#x60;accessToken&#x60; of the authenticating player. | 
 **updatePlayerRequest** | [**UpdatePlayerRequest**](UpdatePlayerRequest.md) |  | 

### Return type

[**PlayerModel**](PlayerModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

