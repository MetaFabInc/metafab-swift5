//
// WalletsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class WalletsAPI {

    /**
     Create wallet signature
     
     - parameter walletId: (path) Any wallet id within the MetaFab platform. 
     - parameter xWalletDecryptKey: (header) The &#x60;walletDecryptKey&#x60; for the provided &#x60;walletId&#x60;. 
     - parameter createWalletSignatureRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createWalletSignature(walletId: String, xWalletDecryptKey: String, createWalletSignatureRequest: CreateWalletSignatureRequest, apiResponseQueue: DispatchQueue = MetaFabSwift5API.apiResponseQueue, completion: @escaping ((_ data: String?, _ error: Error?) -> Void)) -> RequestTask {
        return createWalletSignatureWithRequestBuilder(walletId: walletId, xWalletDecryptKey: xWalletDecryptKey, createWalletSignatureRequest: createWalletSignatureRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create wallet signature
     - POST /v1/wallets/{walletId}/signatures
     - Creates a wallet signature from a plaintext message using the wallet for the provided walletId and walletDecryptKey. Wallet signatures cannot be generated for EOA wallets.
     - parameter walletId: (path) Any wallet id within the MetaFab platform. 
     - parameter xWalletDecryptKey: (header) The &#x60;walletDecryptKey&#x60; for the provided &#x60;walletId&#x60;. 
     - parameter createWalletSignatureRequest: (body)  
     - returns: RequestBuilder<String> 
     */
    open class func createWalletSignatureWithRequestBuilder(walletId: String, xWalletDecryptKey: String, createWalletSignatureRequest: CreateWalletSignatureRequest) -> RequestBuilder<String> {
        var localVariablePath = "/v1/wallets/{walletId}/signatures"
        let walletIdPreEscape = "\(APIHelper.mapValueToPathItem(walletId))"
        let walletIdPostEscape = walletIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{walletId}", with: walletIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = MetaFabSwift5API.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createWalletSignatureRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "X-Wallet-Decrypt-Key": xWalletDecryptKey.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<String>.Type = MetaFabSwift5API.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Get wallet
     
     - parameter walletId: (path) Any wallet id within the MetaFab platform. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getWallet(walletId: String, apiResponseQueue: DispatchQueue = MetaFabSwift5API.apiResponseQueue, completion: @escaping ((_ data: WalletModel?, _ error: Error?) -> Void)) -> RequestTask {
        return getWalletWithRequestBuilder(walletId: walletId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get wallet
     - GET /v1/wallets/{walletId}
     - Returns a wallet object for the provided walletId.
     - parameter walletId: (path) Any wallet id within the MetaFab platform. 
     - returns: RequestBuilder<WalletModel> 
     */
    open class func getWalletWithRequestBuilder(walletId: String) -> RequestBuilder<WalletModel> {
        var localVariablePath = "/v1/wallets/{walletId}"
        let walletIdPreEscape = "\(APIHelper.mapValueToPathItem(walletId))"
        let walletIdPostEscape = walletIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{walletId}", with: walletIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = MetaFabSwift5API.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<WalletModel>.Type = MetaFabSwift5API.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Get wallet balances
     
     - parameter walletId: (path) Any wallet id within the MetaFab platform. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getWalletBalances(walletId: String, apiResponseQueue: DispatchQueue = MetaFabSwift5API.apiResponseQueue, completion: @escaping ((_ data: [String: Double]?, _ error: Error?) -> Void)) -> RequestTask {
        return getWalletBalancesWithRequestBuilder(walletId: walletId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get wallet balances
     - GET /v1/wallets/{walletId}/balances
     - Returns the current native token balance for all chains supported by MetaFab for the provided walletId. This includes balances like Eth, Matic and other native tokens from chains MetaFab supports.
     - parameter walletId: (path) Any wallet id within the MetaFab platform. 
     - returns: RequestBuilder<[String: Double]> 
     */
    open class func getWalletBalancesWithRequestBuilder(walletId: String) -> RequestBuilder<[String: Double]> {
        var localVariablePath = "/v1/wallets/{walletId}/balances"
        let walletIdPreEscape = "\(APIHelper.mapValueToPathItem(walletId))"
        let walletIdPostEscape = walletIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{walletId}", with: walletIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = MetaFabSwift5API.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[String: Double]>.Type = MetaFabSwift5API.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Get wallet transactions
     
     - parameter walletId: (path) Any wallet id within the MetaFab platform. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getWalletTransactions(walletId: String, apiResponseQueue: DispatchQueue = MetaFabSwift5API.apiResponseQueue, completion: @escaping ((_ data: [TransactionModel]?, _ error: Error?) -> Void)) -> RequestTask {
        return getWalletTransactionsWithRequestBuilder(walletId: walletId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get wallet transactions
     - GET /v1/wallets/{walletId}/transactions
     - Returns an array of MetaFab initiated transactions performed by the provided walletId. Transactions returned are ordered chronologically from newest to oldest.
     - parameter walletId: (path) Any wallet id within the MetaFab platform. 
     - returns: RequestBuilder<[TransactionModel]> 
     */
    open class func getWalletTransactionsWithRequestBuilder(walletId: String) -> RequestBuilder<[TransactionModel]> {
        var localVariablePath = "/v1/wallets/{walletId}/transactions"
        let walletIdPreEscape = "\(APIHelper.mapValueToPathItem(walletId))"
        let walletIdPostEscape = walletIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{walletId}", with: walletIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = MetaFabSwift5API.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[TransactionModel]>.Type = MetaFabSwift5API.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}
