//
// CreateContractRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CreateContractRequest: Codable, JSONEncodable, Hashable {

    public enum Chain: String, Codable, CaseIterable {
        case ethereum = "ETHEREUM"
        case goerli = "GOERLI"
        case matic = "MATIC"
        case mumbai = "MUMBAI"
    }
    /** The address of the existing contract. */
    public var address: String
    /** JSON of the abi. */
    public var abi: String
    /** The blockchain you want to deploy this currency on. Support for new blockchains are added over time. */
    public var chain: Chain

    public init(address: String, abi: String, chain: Chain) {
        self.address = address
        self.abi = abi
        self.chain = chain
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case address
        case abi
        case chain
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(address, forKey: .address)
        try container.encode(abi, forKey: .abi)
        try container.encode(chain, forKey: .chain)
    }
}
