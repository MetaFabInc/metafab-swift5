# EcosystemsAPI

All URIs are relative to *https://api.trymetafab.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**approveEcosystemGame**](EcosystemsAPI.md#approveecosystemgame) | **POST** /v1/ecosystems/{ecosystemId}/games | Approve ecosystem game
[**authEcosystem**](EcosystemsAPI.md#authecosystem) | **GET** /v1/ecosystems/auth | Authenticate ecosystem
[**authProfile**](EcosystemsAPI.md#authprofile) | **GET** /v1/profiles/auth | Authenticate profile
[**authProfilePlayer**](EcosystemsAPI.md#authprofileplayer) | **GET** /v1/profiles/{profileId}/games/{gameId}/players/auth | Authenticate profile player
[**createEcosystem**](EcosystemsAPI.md#createecosystem) | **POST** /v1/ecosystems | Create ecosystem
[**createProfile**](EcosystemsAPI.md#createprofile) | **POST** /v1/profiles | Create profile
[**createProfilePlayer**](EcosystemsAPI.md#createprofileplayer) | **POST** /v1/profiles/{profileId}/games/{gameId}/players | Create profile player
[**getEcosystem**](EcosystemsAPI.md#getecosystem) | **GET** /v1/ecosystems/{ecosystemId} | Get ecosystem
[**getEcosystemGame**](EcosystemsAPI.md#getecosystemgame) | **GET** /v1/ecosystems/{ecosystemId}/games/{gameId} | Get ecosystem game
[**getEcosystemGames**](EcosystemsAPI.md#getecosystemgames) | **GET** /v1/ecosystems/{ecosystemId}/games | Get ecosystem games
[**getProfileGame**](EcosystemsAPI.md#getprofilegame) | **GET** /v1/profiles/{profileId}/games/{gameId} | Get profile game
[**getProfileGames**](EcosystemsAPI.md#getprofilegames) | **GET** /v1/profiles/{profileId}/games | Get profile games
[**unapproveEcosystemGame**](EcosystemsAPI.md#unapproveecosystemgame) | **DELETE** /v1/ecosystems/{ecosystemId}/games/{gameId} | Unapprove ecosystem game
[**updateEcosystem**](EcosystemsAPI.md#updateecosystem) | **PATCH** /v1/ecosystems/{ecosystemId} | Update ecosystem
[**updateProfile**](EcosystemsAPI.md#updateprofile) | **PATCH** /v1/profiles/{profileId} | Update profile
[**updateProfilePlayer**](EcosystemsAPI.md#updateprofileplayer) | **PATCH** /v1/profiles/{profileId}/games/{gameId}/players/{playerId} | Update profile player


# **approveEcosystemGame**
```swift
    open class func approveEcosystemGame(ecosystemId: String, xAuthorization: String, approveEcosystemGameRequest: ApproveEcosystemGameRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Approve ecosystem game

Approves a game for an ecosystem. By approving a game, it allows that game to integrate the ability for profile accounts from an ecosystem to login directly to the approved game and play. This also allows games to request access to assets held at the profile level for the game to frictionlessly interact with on behalf of the profile.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let ecosystemId = "ecosystemId_example" // String | The ecosystem id of the authenticating ecosystem.
let xAuthorization = "xAuthorization_example" // String | The `secretKey` of the authenticating ecosystem.
let approveEcosystemGameRequest = approveEcosystemGame_request(gameId: "gameId_example") // ApproveEcosystemGameRequest | 

// Approve ecosystem game
EcosystemsAPI.approveEcosystemGame(ecosystemId: ecosystemId, xAuthorization: xAuthorization, approveEcosystemGameRequest: approveEcosystemGameRequest) { (response, error) in
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
 **ecosystemId** | **String** | The ecosystem id of the authenticating ecosystem. | 
 **xAuthorization** | **String** | The &#x60;secretKey&#x60; of the authenticating ecosystem. | 
 **approveEcosystemGameRequest** | [**ApproveEcosystemGameRequest**](ApproveEcosystemGameRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authEcosystem**
```swift
    open class func authEcosystem(completion: @escaping (_ data: EcosystemModel?, _ error: Error?) -> Void)
```

Authenticate ecosystem

Returns an existing ecosystem object containing authorization keys when provided a valid email (in place of username) and password login using Basic Auth.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5


// Authenticate ecosystem
EcosystemsAPI.authEcosystem() { (response, error) in
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

[**EcosystemModel**](EcosystemModel.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authProfile**
```swift
    open class func authProfile(xEcosystemKey: String, completion: @escaping (_ data: AuthProfile200Response?, _ error: Error?) -> Void)
```

Authenticate profile

Returns an existing profile object containing access token, wallet, and other details when provided a valid profile username and password login using Basic Auth.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let xEcosystemKey = "xEcosystemKey_example" // String | The `publishedKey` of a specific ecosystem. This can be shared or included in clients, websites, etc.

// Authenticate profile
EcosystemsAPI.authProfile(xEcosystemKey: xEcosystemKey) { (response, error) in
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
 **xEcosystemKey** | **String** | The &#x60;publishedKey&#x60; of a specific ecosystem. This can be shared or included in clients, websites, etc. | 

### Return type

[**AuthProfile200Response**](AuthProfile200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authProfilePlayer**
```swift
    open class func authProfilePlayer(profileId: String, gameId: String, xAuthorization: String, xWalletDecryptKey: String, xUsername: String, completion: @escaping (_ data: AuthPlayer200Response?, _ error: Error?) -> Void)
```

Authenticate profile player

Returns an existing player object containing access token, wallet, wallet decrypt key, profile authorization and other details for a game when provided profile authentication and the player's username.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let profileId = "profileId_example" // String | The profile id of the authenticating profile.
let gameId = "gameId_example" // String | Any game id within the MetaFab platform.
let xAuthorization = "xAuthorization_example" // String | The `accessToken` of the authenticating profile.
let xWalletDecryptKey = "xWalletDecryptKey_example" // String | The `walletDecryptKey` of the authenticating profile. Required to decrypt and perform blockchain transactions with the profile wallet.
let xUsername = "xUsername_example" // String | The username of a player.

// Authenticate profile player
EcosystemsAPI.authProfilePlayer(profileId: profileId, gameId: gameId, xAuthorization: xAuthorization, xWalletDecryptKey: xWalletDecryptKey, xUsername: xUsername) { (response, error) in
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
 **profileId** | **String** | The profile id of the authenticating profile. | 
 **gameId** | **String** | Any game id within the MetaFab platform. | 
 **xAuthorization** | **String** | The &#x60;accessToken&#x60; of the authenticating profile. | 
 **xWalletDecryptKey** | **String** | The &#x60;walletDecryptKey&#x60; of the authenticating profile. Required to decrypt and perform blockchain transactions with the profile wallet. | 
 **xUsername** | **String** | The username of a player. | 

### Return type

[**AuthPlayer200Response**](AuthPlayer200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createEcosystem**
```swift
    open class func createEcosystem(createEcosystemRequest: CreateEcosystemRequest, completion: @escaping (_ data: EcosystemModel?, _ error: Error?) -> Void)
```

Create ecosystem

Create a new ecosystem. An ecosystem is a parent entity that many profiles live under for a given ecosystem of games. Ecosystems allow your players to create one profile within your ecosystem that allows a single account and wallet to be used across all of the approved games in your ecosystem that they play.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let createEcosystemRequest = createEcosystem_request(name: "name_example", email: "email_example", password: "password_example") // CreateEcosystemRequest | 

// Create ecosystem
EcosystemsAPI.createEcosystem(createEcosystemRequest: createEcosystemRequest) { (response, error) in
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
 **createEcosystemRequest** | [**CreateEcosystemRequest**](CreateEcosystemRequest.md) |  | 

### Return type

[**EcosystemModel**](EcosystemModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createProfile**
```swift
    open class func createProfile(xEcosystemKey: String, createProfileRequest: CreateProfileRequest, completion: @escaping (_ data: AuthProfile200Response?, _ error: Error?) -> Void)
```

Create profile

Create a new profile. Profiles are automatically associated with an internally managed wallet. Profiles can be thought of as a umbrella account that can be used to sign into and create player accounts across many games and have a singular asset store wallet at the profile level that can be used across all connected player accounts for games those player accounts are a part of.  Profiles are associated to a parent ecosystem of games. This allows an ecosystem to approve a permissioned set of games that can request authorized wallet permissions from profiles of players for their game.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let xEcosystemKey = "xEcosystemKey_example" // String | The `publishedKey` of a specific ecosystem. This can be shared or included in clients, websites, etc.
let createProfileRequest = createProfile_request(username: "username_example", password: "password_example") // CreateProfileRequest | 

// Create profile
EcosystemsAPI.createProfile(xEcosystemKey: xEcosystemKey, createProfileRequest: createProfileRequest) { (response, error) in
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
 **xEcosystemKey** | **String** | The &#x60;publishedKey&#x60; of a specific ecosystem. This can be shared or included in clients, websites, etc. | 
 **createProfileRequest** | [**CreateProfileRequest**](CreateProfileRequest.md) |  | 

### Return type

[**AuthProfile200Response**](AuthProfile200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createProfilePlayer**
```swift
    open class func createProfilePlayer(profileId: String, gameId: String, xAuthorization: String, xWalletDecryptKey: String, createProfilePlayerRequest: CreateProfilePlayerRequest, completion: @escaping (_ data: AuthPlayer200Response?, _ error: Error?) -> Void)
```

Create profile player

Creates a new player account for the provided game id linked to the authenticating profile. The created player account will default to using the parent profile's wallet for any transactions, wallet content balance checks and verifications, and more.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let profileId = "profileId_example" // String | The profile id of the authenticating profile.
let gameId = "gameId_example" // String | Any game id within the MetaFab platform.
let xAuthorization = "xAuthorization_example" // String | The `accessToken` of the authenticating profile.
let xWalletDecryptKey = "xWalletDecryptKey_example" // String | The `walletDecryptKey` of the authenticating profile. Required to decrypt and perform blockchain transactions with the profile wallet.
let createProfilePlayerRequest = createProfilePlayer_request(username: "username_example", permissions: "TODO") // CreateProfilePlayerRequest | 

// Create profile player
EcosystemsAPI.createProfilePlayer(profileId: profileId, gameId: gameId, xAuthorization: xAuthorization, xWalletDecryptKey: xWalletDecryptKey, createProfilePlayerRequest: createProfilePlayerRequest) { (response, error) in
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
 **profileId** | **String** | The profile id of the authenticating profile. | 
 **gameId** | **String** | Any game id within the MetaFab platform. | 
 **xAuthorization** | **String** | The &#x60;accessToken&#x60; of the authenticating profile. | 
 **xWalletDecryptKey** | **String** | The &#x60;walletDecryptKey&#x60; of the authenticating profile. Required to decrypt and perform blockchain transactions with the profile wallet. | 
 **createProfilePlayerRequest** | [**CreateProfilePlayerRequest**](CreateProfilePlayerRequest.md) |  | 

### Return type

[**AuthPlayer200Response**](AuthPlayer200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEcosystem**
```swift
    open class func getEcosystem(ecosystemId: String, completion: @escaping (_ data: PublicEcosystem?, _ error: Error?) -> Void)
```

Get ecosystem

Returns a ecosystem object for the provided ecosystem id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let ecosystemId = "ecosystemId_example" // String | Any ecosystem id within the MetaFab platform.

// Get ecosystem
EcosystemsAPI.getEcosystem(ecosystemId: ecosystemId) { (response, error) in
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
 **ecosystemId** | **String** | Any ecosystem id within the MetaFab platform. | 

### Return type

[**PublicEcosystem**](PublicEcosystem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEcosystemGame**
```swift
    open class func getEcosystemGame(ecosystemId: String, gameId: String, completion: @escaping (_ data: PublicGame?, _ error: Error?) -> Void)
```

Get ecosystem game

Returns a game object for the provided game id that the ecosystem has approved.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let ecosystemId = "ecosystemId_example" // String | Any ecosystem id within the MetaFab platform.
let gameId = "gameId_example" // String | Any game id within the MetaFab platform.

// Get ecosystem game
EcosystemsAPI.getEcosystemGame(ecosystemId: ecosystemId, gameId: gameId) { (response, error) in
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
 **ecosystemId** | **String** | Any ecosystem id within the MetaFab platform. | 
 **gameId** | **String** | Any game id within the MetaFab platform. | 

### Return type

[**PublicGame**](PublicGame.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEcosystemGames**
```swift
    open class func getEcosystemGames(ecosystemId: String, completion: @escaping (_ data: [PublicGame]?, _ error: Error?) -> Void)
```

Get ecosystem games

Returns an array of games the ecosystem has approved.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let ecosystemId = "ecosystemId_example" // String | Any ecosystem id within the MetaFab platform.

// Get ecosystem games
EcosystemsAPI.getEcosystemGames(ecosystemId: ecosystemId) { (response, error) in
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
 **ecosystemId** | **String** | Any ecosystem id within the MetaFab platform. | 

### Return type

[**[PublicGame]**](PublicGame.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProfileGame**
```swift
    open class func getProfileGame(profileId: String, gameId: String, xAuthorization: String, completion: @escaping (_ data: GetProfileGames200ResponseInner?, _ error: Error?) -> Void)
```

Get profile game

Returns a game this profile has connected player accounts for.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let profileId = "profileId_example" // String | The profile id of the authenticating profile.
let gameId = "gameId_example" // String | Any game id within the MetaFab platform.
let xAuthorization = "xAuthorization_example" // String | The `accessToken` of the authenticating profile.

// Get profile game
EcosystemsAPI.getProfileGame(profileId: profileId, gameId: gameId, xAuthorization: xAuthorization) { (response, error) in
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
 **profileId** | **String** | The profile id of the authenticating profile. | 
 **gameId** | **String** | Any game id within the MetaFab platform. | 
 **xAuthorization** | **String** | The &#x60;accessToken&#x60; of the authenticating profile. | 

### Return type

[**GetProfileGames200ResponseInner**](GetProfileGames200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProfileGames**
```swift
    open class func getProfileGames(profileId: String, xAuthorization: String, completion: @escaping (_ data: [GetProfileGames200ResponseInner]?, _ error: Error?) -> Void)
```

Get profile games

Returns an array of games the authorized profile has connected player accounts for.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let profileId = "profileId_example" // String | The profile id of the authenticating profile.
let xAuthorization = "xAuthorization_example" // String | The `accessToken` of the authenticating profile.

// Get profile games
EcosystemsAPI.getProfileGames(profileId: profileId, xAuthorization: xAuthorization) { (response, error) in
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
 **profileId** | **String** | The profile id of the authenticating profile. | 
 **xAuthorization** | **String** | The &#x60;accessToken&#x60; of the authenticating profile. | 

### Return type

[**[GetProfileGames200ResponseInner]**](GetProfileGames200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unapproveEcosystemGame**
```swift
    open class func unapproveEcosystemGame(ecosystemId: String, gameId: String, xAuthorization: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Unapprove ecosystem game

Unapproves a game for an ecosystem. The game will no longer be able to allow profiles from the ecosystem to login. All profile permissions approved for the game will also be revoked.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let ecosystemId = "ecosystemId_example" // String | The ecosystem id of the authenticating ecosystem.
let gameId = "gameId_example" // String | Any game id within the MetaFab platform.
let xAuthorization = "xAuthorization_example" // String | The `secretKey` of the authenticating ecosystem.

// Unapprove ecosystem game
EcosystemsAPI.unapproveEcosystemGame(ecosystemId: ecosystemId, gameId: gameId, xAuthorization: xAuthorization) { (response, error) in
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
 **ecosystemId** | **String** | The ecosystem id of the authenticating ecosystem. | 
 **gameId** | **String** | Any game id within the MetaFab platform. | 
 **xAuthorization** | **String** | The &#x60;secretKey&#x60; of the authenticating ecosystem. | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEcosystem**
```swift
    open class func updateEcosystem(ecosystemId: String, xAuthorization: String, updateEcosystemRequest: UpdateEcosystemRequest, completion: @escaping (_ data: EcosystemModel?, _ error: Error?) -> Void)
```

Update ecosystem

Update various fields specific to an ecosystem. Such as changing its password, resetting its published or secret key, or updating its approved games.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let ecosystemId = "ecosystemId_example" // String | The ecosystem id of the authenticating ecosystem.
let xAuthorization = "xAuthorization_example" // String | The `secretKey` of the authenticating ecosystem.
let updateEcosystemRequest = updateEcosystem_request(name: "name_example", email: "email_example", currentPassword: "currentPassword_example", newPassword: "newPassword_example", iconImageBase64: "iconImageBase64_example", coverImageBase64: "coverImageBase64_example", primaryColorHex: "primaryColorHex_example", resetPublishedKey: false, resetSecretKey: false) // UpdateEcosystemRequest | 

// Update ecosystem
EcosystemsAPI.updateEcosystem(ecosystemId: ecosystemId, xAuthorization: xAuthorization, updateEcosystemRequest: updateEcosystemRequest) { (response, error) in
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
 **ecosystemId** | **String** | The ecosystem id of the authenticating ecosystem. | 
 **xAuthorization** | **String** | The &#x60;secretKey&#x60; of the authenticating ecosystem. | 
 **updateEcosystemRequest** | [**UpdateEcosystemRequest**](UpdateEcosystemRequest.md) |  | 

### Return type

[**EcosystemModel**](EcosystemModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProfile**
```swift
    open class func updateProfile(profileId: String, xAuthorization: String, updateProfileRequest: UpdateProfileRequest, completion: @escaping (_ data: ProfileModel?, _ error: Error?) -> Void)
```

Update profile

Update various fields specific to a profile. Such as changing its password and resetting its access token.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let profileId = "profileId_example" // String | The profile id of the authenticating profile.
let xAuthorization = "xAuthorization_example" // String | The `accessToken` of the authenticating profile.
let updateProfileRequest = updateProfile_request(currentPassword: "currentPassword_example", newPassword: "newPassword_example", resetAccessToken: false) // UpdateProfileRequest | 

// Update profile
EcosystemsAPI.updateProfile(profileId: profileId, xAuthorization: xAuthorization, updateProfileRequest: updateProfileRequest) { (response, error) in
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
 **profileId** | **String** | The profile id of the authenticating profile. | 
 **xAuthorization** | **String** | The &#x60;accessToken&#x60; of the authenticating profile. | 
 **updateProfileRequest** | [**UpdateProfileRequest**](UpdateProfileRequest.md) |  | 

### Return type

[**ProfileModel**](ProfileModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProfilePlayer**
```swift
    open class func updateProfilePlayer(profileId: String, gameId: String, playerId: String, xAuthorization: String, xWalletDecryptKey: String, updateProfilePlayerRequest: UpdateProfilePlayerRequest, completion: @escaping (_ data: UpdateProfilePlayer200Response?, _ error: Error?) -> Void)
```

Update profile player

Update various fields specific to a player. Such as changing its permissions.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaFabSwift5

let profileId = "profileId_example" // String | The profile id of the authenticating profile.
let gameId = "gameId_example" // String | Any game id within the MetaFab platform.
let playerId = "playerId_example" // String | Any player id within the MetaFab platform.
let xAuthorization = "xAuthorization_example" // String | The `accessToken` of the authenticating profile.
let xWalletDecryptKey = "xWalletDecryptKey_example" // String | The `walletDecryptKey` of the authenticating profile. Required to decrypt and perform blockchain transactions with the profile wallet.
let updateProfilePlayerRequest = updateProfilePlayer_request(permissions: "TODO") // UpdateProfilePlayerRequest | 

// Update profile player
EcosystemsAPI.updateProfilePlayer(profileId: profileId, gameId: gameId, playerId: playerId, xAuthorization: xAuthorization, xWalletDecryptKey: xWalletDecryptKey, updateProfilePlayerRequest: updateProfilePlayerRequest) { (response, error) in
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
 **profileId** | **String** | The profile id of the authenticating profile. | 
 **gameId** | **String** | Any game id within the MetaFab platform. | 
 **playerId** | **String** | Any player id within the MetaFab platform. | 
 **xAuthorization** | **String** | The &#x60;accessToken&#x60; of the authenticating profile. | 
 **xWalletDecryptKey** | **String** | The &#x60;walletDecryptKey&#x60; of the authenticating profile. Required to decrypt and perform blockchain transactions with the profile wallet. | 
 **updateProfilePlayerRequest** | [**UpdateProfilePlayerRequest**](UpdateProfilePlayerRequest.md) |  | 

### Return type

[**UpdateProfilePlayer200Response**](UpdateProfilePlayer200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

