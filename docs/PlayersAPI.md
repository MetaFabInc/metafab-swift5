# PlayersAPI

All URIs are relative to *https://api.trymetafab.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authPlayer**](PlayersAPI.md#authplayer) | **GET** /v1/players/auth | Authenticate player
[**createPlayer**](PlayersAPI.md#createplayer) | **POST** /v1/players | Create player
[**getPlayer**](PlayersAPI.md#getplayer) | **GET** /v1/players/{playerId} | Get player
[**getPlayerData**](PlayersAPI.md#getplayerdata) | **GET** /v1/players/{playerId}/data | Get player data
[**getPlayers**](PlayersAPI.md#getplayers) | **GET** /v1/players | Get players
[**removePlayerConnectedWallet**](PlayersAPI.md#removeplayerconnectedwallet) | **DELETE** /v1/players/{playerId}/wallets/{playerWalletId} | Remove player connected wallet
[**setPlayerConnectedWallet**](PlayersAPI.md#setplayerconnectedwallet) | **POST** /v1/players/{playerId}/wallets | Set player connected wallet
[**setPlayerData**](PlayersAPI.md#setplayerdata) | **POST** /v1/players/{playerId}/data | Set player data
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

# **getPlayerData**
```swift
    open class func getPlayerData(playerId: String, completion: @escaping (_ data: GetPlayerData200Response?, _ error: Error?) -> Void)
```

Get player data

Returns the latest public and protected data as an object for the provided playerId.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let playerId = "playerId_example" // String | Any player id within the MetaFab ecosystem.

// Get player data
PlayersAPI.getPlayerData(playerId: playerId) { (response, error) in
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

[**GetPlayerData200Response**](GetPlayerData200Response.md)

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

# **removePlayerConnectedWallet**
```swift
    open class func removePlayerConnectedWallet(playerId: String, playerWalletId: String, removePlayerConnectedWalletRequest: RemovePlayerConnectedWalletRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Remove player connected wallet

Removes an external wallet from a player account. The player's wallet is reverted to their custodial wallet.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let playerId = "playerId_example" // String | Any player id within the MetaFab ecosystem.
let playerWalletId = "playerWalletId_example" // String | Any player wallet id within the MetaFab ecosystem.
let removePlayerConnectedWalletRequest = removePlayerConnectedWallet_request(address: "address_example", nonce: 123, signature: "signature_example", chain: "chain_example") // RemovePlayerConnectedWalletRequest | 

// Remove player connected wallet
PlayersAPI.removePlayerConnectedWallet(playerId: playerId, playerWalletId: playerWalletId, removePlayerConnectedWalletRequest: removePlayerConnectedWalletRequest) { (response, error) in
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
 **playerWalletId** | **String** | Any player wallet id within the MetaFab ecosystem. | 
 **removePlayerConnectedWalletRequest** | [**RemovePlayerConnectedWalletRequest**](RemovePlayerConnectedWalletRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setPlayerConnectedWallet**
```swift
    open class func setPlayerConnectedWallet(playerId: String, xAuthorization: String, setPlayerConnectedWalletRequest: SetPlayerConnectedWalletRequest, completion: @escaping (_ data: SetPlayerConnectedWallet200Response?, _ error: Error?) -> Void)
```

Set player connected wallet

Sets an external wallet as the wallet for a player account. The set wallet can transact gaslessly with all MetaFab related systems through the same MetaFab API calls as custodial wallets without requiring transaction signing or private keys.  This is done through an internal system MetaFab has created that allows an external connected wallet to delegate transaction signing for a specific game's set of contracts to a player's password protected custodial wallet. This allow the custodial wallet to sign and submit transactions to a specific game's related contracts as if they were signed and submitted by the connected external wallet. This also means that all earned tokens, purchased items and any interactions happen and are recorded on chain as the external connected wallet. No additional logic needs to be writted by developers to support both custodial and external wallets, everything just works.  Finally, this endpoint is meant for advanced users. The majority of developers who want to implement external wallet support for their game can do so without any extra work through our whitelabeled wallet connection feature that implements this endpoint underneath the hood without any required work.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let playerId = "playerId_example" // String | Any player id within the MetaFab ecosystem.
let xAuthorization = "xAuthorization_example" // String | The `accessToken` of the authenticating player.
let setPlayerConnectedWalletRequest = setPlayerConnectedWallet_request(address: "address_example", nonce: 123, signature: "signature_example", chain: "chain_example") // SetPlayerConnectedWalletRequest | 

// Set player connected wallet
PlayersAPI.setPlayerConnectedWallet(playerId: playerId, xAuthorization: xAuthorization, setPlayerConnectedWalletRequest: setPlayerConnectedWalletRequest) { (response, error) in
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
 **setPlayerConnectedWalletRequest** | [**SetPlayerConnectedWalletRequest**](SetPlayerConnectedWalletRequest.md) |  | 

### Return type

[**SetPlayerConnectedWallet200Response**](SetPlayerConnectedWallet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setPlayerData**
```swift
    open class func setPlayerData(playerId: String, xAuthorization: String, setPlayerDataRequest: SetPlayerDataRequest, completion: @escaping (_ data: GetPlayerData200Response?, _ error: Error?) -> Void)
```

Set player data

Creates or updates public and/or protected data for the provided playerId. Data updates are performed using deep merging. This means that when you update any top level or nested properties specific to player public or protected data, you only need to include the properties you are making changes to. Any existing properties not included in request body arguments will be retained on the player data object.  Please note, When writing an array type for a player, arrays do not follow the deep merge approach. If you add or remove an item from an array, the entire array must be passed as an argument when updating the related property for player public or protected data.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let playerId = "playerId_example" // String | Any player id within the MetaFab ecosystem.
let xAuthorization = "xAuthorization_example" // String | The `secretKey` of a specific game or the `accessToken` of a specific player.
let setPlayerDataRequest = setPlayerData_request(protectedData: "TODO", publicData: "TODO") // SetPlayerDataRequest | 

// Set player data
PlayersAPI.setPlayerData(playerId: playerId, xAuthorization: xAuthorization, setPlayerDataRequest: setPlayerDataRequest) { (response, error) in
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
 **xAuthorization** | **String** | The &#x60;secretKey&#x60; of a specific game or the &#x60;accessToken&#x60; of a specific player. | 
 **setPlayerDataRequest** | [**SetPlayerDataRequest**](SetPlayerDataRequest.md) |  | 

### Return type

[**GetPlayerData200Response**](GetPlayerData200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
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

