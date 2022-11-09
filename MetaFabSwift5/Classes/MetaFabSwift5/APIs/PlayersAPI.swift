//
// PlayersAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class PlayersAPI {

    /**
     Authenticate player
     
     - parameter xGameKey: (header) The &#x60;publishedKey&#x60; of a specific game. This can be shared or included in game clients, websites, etc. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func authPlayer(xGameKey: String, apiResponseQueue: DispatchQueue = MetaFabSwift5API.apiResponseQueue, completion: @escaping ((_ data: AuthPlayer200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return authPlayerWithRequestBuilder(xGameKey: xGameKey).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Authenticate player
     - GET /v1/players/auth
     - Returns an existing player object containing access token, wallet, and other details for a game when provided a valid username and password login using Basic Auth.
     - BASIC:
       - type: http
       - name: basicAuth
     - parameter xGameKey: (header) The &#x60;publishedKey&#x60; of a specific game. This can be shared or included in game clients, websites, etc. 
     - returns: RequestBuilder<AuthPlayer200Response> 
     */
    open class func authPlayerWithRequestBuilder(xGameKey: String) -> RequestBuilder<AuthPlayer200Response> {
        let localVariablePath = "/v1/players/auth"
        let localVariableURLString = MetaFabSwift5API.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "X-Game-Key": xGameKey.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AuthPlayer200Response>.Type = MetaFabSwift5API.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Create player
     
     - parameter xGameKey: (header) The &#x60;publishedKey&#x60; of a specific game. This can be shared or included in game clients, websites, etc. 
     - parameter createPlayerRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createPlayer(xGameKey: String, createPlayerRequest: CreatePlayerRequest, apiResponseQueue: DispatchQueue = MetaFabSwift5API.apiResponseQueue, completion: @escaping ((_ data: AuthPlayer200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return createPlayerWithRequestBuilder(xGameKey: xGameKey, createPlayerRequest: createPlayerRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create player
     - POST /v1/players
     - Create a new player for a game. Players are automatically associated with an internally managed wallet.  Player access tokens can be used to directly interact with any MetaFab managed contracts, currencies, items collections, marketplaces and more. Player interactions are also gasless by default, completely removing all crypto friction for players to engage with your MetaFab supported games.
     - parameter xGameKey: (header) The &#x60;publishedKey&#x60; of a specific game. This can be shared or included in game clients, websites, etc. 
     - parameter createPlayerRequest: (body)  
     - returns: RequestBuilder<AuthPlayer200Response> 
     */
    open class func createPlayerWithRequestBuilder(xGameKey: String, createPlayerRequest: CreatePlayerRequest) -> RequestBuilder<AuthPlayer200Response> {
        let localVariablePath = "/v1/players"
        let localVariableURLString = MetaFabSwift5API.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createPlayerRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "X-Game-Key": xGameKey.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AuthPlayer200Response>.Type = MetaFabSwift5API.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Get player
     
     - parameter playerId: (path) Any player id within the MetaFab ecosystem. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getPlayer(playerId: String, apiResponseQueue: DispatchQueue = MetaFabSwift5API.apiResponseQueue, completion: @escaping ((_ data: PublicPlayer?, _ error: Error?) -> Void)) -> RequestTask {
        return getPlayerWithRequestBuilder(playerId: playerId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get player
     - GET /v1/players/{playerId}
     - Returns a player object for the provided player id.
     - parameter playerId: (path) Any player id within the MetaFab ecosystem. 
     - returns: RequestBuilder<PublicPlayer> 
     */
    open class func getPlayerWithRequestBuilder(playerId: String) -> RequestBuilder<PublicPlayer> {
        var localVariablePath = "/v1/players/{playerId}"
        let playerIdPreEscape = "\(APIHelper.mapValueToPathItem(playerId))"
        let playerIdPostEscape = playerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{playerId}", with: playerIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = MetaFabSwift5API.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PublicPlayer>.Type = MetaFabSwift5API.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Get player data
     
     - parameter playerId: (path) Any player id within the MetaFab ecosystem. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getPlayerData(playerId: String, apiResponseQueue: DispatchQueue = MetaFabSwift5API.apiResponseQueue, completion: @escaping ((_ data: GetPlayerData200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getPlayerDataWithRequestBuilder(playerId: playerId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get player data
     - GET /v1/players/{playerId}/data
     - Returns the latest public and protected data as an object for the provided playerId.
     - parameter playerId: (path) Any player id within the MetaFab ecosystem. 
     - returns: RequestBuilder<GetPlayerData200Response> 
     */
    open class func getPlayerDataWithRequestBuilder(playerId: String) -> RequestBuilder<GetPlayerData200Response> {
        var localVariablePath = "/v1/players/{playerId}/data"
        let playerIdPreEscape = "\(APIHelper.mapValueToPathItem(playerId))"
        let playerIdPostEscape = playerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{playerId}", with: playerIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = MetaFabSwift5API.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetPlayerData200Response>.Type = MetaFabSwift5API.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Get players
     
     - parameter xAuthorization: (header) The &#x60;secretKey&#x60; of the authenticating game. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getPlayers(xAuthorization: String, apiResponseQueue: DispatchQueue = MetaFabSwift5API.apiResponseQueue, completion: @escaping ((_ data: [PublicPlayer]?, _ error: Error?) -> Void)) -> RequestTask {
        return getPlayersWithRequestBuilder(xAuthorization: xAuthorization).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get players
     - GET /v1/players
     - Returns all players for the authenticated game as an array of player objects.
     - parameter xAuthorization: (header) The &#x60;secretKey&#x60; of the authenticating game. 
     - returns: RequestBuilder<[PublicPlayer]> 
     */
    open class func getPlayersWithRequestBuilder(xAuthorization: String) -> RequestBuilder<[PublicPlayer]> {
        let localVariablePath = "/v1/players"
        let localVariableURLString = MetaFabSwift5API.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "X-Authorization": xAuthorization.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[PublicPlayer]>.Type = MetaFabSwift5API.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Set player data
     
     - parameter playerId: (path) Any player id within the MetaFab ecosystem. 
     - parameter xAuthorization: (header) The &#x60;secretKey&#x60; of a specific game or the &#x60;accessToken&#x60; of a specific player. 
     - parameter setPlayerDataRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func setPlayerData(playerId: String, xAuthorization: String, setPlayerDataRequest: SetPlayerDataRequest, apiResponseQueue: DispatchQueue = MetaFabSwift5API.apiResponseQueue, completion: @escaping ((_ data: GetPlayerData200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return setPlayerDataWithRequestBuilder(playerId: playerId, xAuthorization: xAuthorization, setPlayerDataRequest: setPlayerDataRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Set player data
     - POST /v1/players/{playerId}/data
     - Creates or updates public and/or protected data for the provided playerId. Data updates are performed using deep merging. This means that when you update any top level or nested properties specific to player public or protected data, you only need to include the properties you are making changes to. Any existing properties not included in request body arguments will be retained on the player data object.  Please note, When writing an array type for a player, arrays do not follow the deep merge approach. If you add or remove an item from an array, the entire array must be passed as an argument when updating the related property for player public or protected data.
     - parameter playerId: (path) Any player id within the MetaFab ecosystem. 
     - parameter xAuthorization: (header) The &#x60;secretKey&#x60; of a specific game or the &#x60;accessToken&#x60; of a specific player. 
     - parameter setPlayerDataRequest: (body)  
     - returns: RequestBuilder<GetPlayerData200Response> 
     */
    open class func setPlayerDataWithRequestBuilder(playerId: String, xAuthorization: String, setPlayerDataRequest: SetPlayerDataRequest) -> RequestBuilder<GetPlayerData200Response> {
        var localVariablePath = "/v1/players/{playerId}/data"
        let playerIdPreEscape = "\(APIHelper.mapValueToPathItem(playerId))"
        let playerIdPostEscape = playerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{playerId}", with: playerIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = MetaFabSwift5API.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: setPlayerDataRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "X-Authorization": xAuthorization.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetPlayerData200Response>.Type = MetaFabSwift5API.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Update player
     
     - parameter playerId: (path) Any player id within the MetaFab ecosystem. 
     - parameter xAuthorization: (header) The &#x60;accessToken&#x60; of the authenticating player. 
     - parameter updatePlayerRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updatePlayer(playerId: String, xAuthorization: String, updatePlayerRequest: UpdatePlayerRequest, apiResponseQueue: DispatchQueue = MetaFabSwift5API.apiResponseQueue, completion: @escaping ((_ data: PlayerModel?, _ error: Error?) -> Void)) -> RequestTask {
        return updatePlayerWithRequestBuilder(playerId: playerId, xAuthorization: xAuthorization, updatePlayerRequest: updatePlayerRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update player
     - PATCH /v1/players/{playerId}
     - Update various fields specific to a player. Such as changing its password and resetting its access token.
     - parameter playerId: (path) Any player id within the MetaFab ecosystem. 
     - parameter xAuthorization: (header) The &#x60;accessToken&#x60; of the authenticating player. 
     - parameter updatePlayerRequest: (body)  
     - returns: RequestBuilder<PlayerModel> 
     */
    open class func updatePlayerWithRequestBuilder(playerId: String, xAuthorization: String, updatePlayerRequest: UpdatePlayerRequest) -> RequestBuilder<PlayerModel> {
        var localVariablePath = "/v1/players/{playerId}"
        let playerIdPreEscape = "\(APIHelper.mapValueToPathItem(playerId))"
        let playerIdPostEscape = playerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{playerId}", with: playerIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = MetaFabSwift5API.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updatePlayerRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "X-Authorization": xAuthorization.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PlayerModel>.Type = MetaFabSwift5API.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}
