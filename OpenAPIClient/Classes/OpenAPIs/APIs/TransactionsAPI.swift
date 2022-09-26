//
// TransactionsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class TransactionsAPI {

    /**
     Get transaction
     
     - parameter transactionId: (path) Any transaction id within the MetaFab ecosystem. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getTransaction(transactionId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: TransactionModel?, _ error: Error?) -> Void)) -> RequestTask {
        return getTransactionWithRequestBuilder(transactionId: transactionId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get transaction
     - GET /v1/transactions/{transactionId}
     - Returns an executed transaction object for the provided transactionId. Transactions are created by MetaFab when interacting with contracts, currencies, items and other MetaFab resources.
     - parameter transactionId: (path) Any transaction id within the MetaFab ecosystem. 
     - returns: RequestBuilder<TransactionModel> 
     */
    open class func getTransactionWithRequestBuilder(transactionId: String) -> RequestBuilder<TransactionModel> {
        var localVariablePath = "/v1/transactions/{transactionId}"
        let transactionIdPreEscape = "\(APIHelper.mapValueToPathItem(transactionId))"
        let transactionIdPostEscape = transactionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{transactionId}", with: transactionIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TransactionModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}
