//
// CreateExchangeRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CreateExchangeRequest: Codable, JSONEncodable, Hashable {

    public enum Chain: String, Codable, CaseIterable {
        case ethereum = "ETHEREUM"
        case goerli = "GOERLI"
        case matic = "MATIC"
        case mumbai = "MUMBAI"
        case arbitrum = "ARBITRUM"
        case arbitrumgoerli = "ARBITRUMGOERLI"
    }
    /** The blockchain you want to deploy this exchange on. Support for new blockchains are added over time. */
    public var chain: Chain

    public init(chain: Chain) {
        self.chain = chain
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case chain
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(chain, forKey: .chain)
    }
}

