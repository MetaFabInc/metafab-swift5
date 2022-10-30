//
// GetExchanges200ResponseInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetExchanges200ResponseInner: Codable, JSONEncodable, Hashable {

    /** This field has not had a description added. */
    public var id: String?
    /** This field has not had a description added. */
    public var gameId: String?
    /** This field has not had a description added. */
    public var contractId: String?
    /** This field has not had a description added. */
    public var updatedAt: String?
    /** This field has not had a description added. */
    public var createdAt: String?
    public var contract: ContractModel?

    public init(id: String? = nil, gameId: String? = nil, contractId: String? = nil, updatedAt: String? = nil, createdAt: String? = nil, contract: ContractModel? = nil) {
        self.id = id
        self.gameId = gameId
        self.contractId = contractId
        self.updatedAt = updatedAt
        self.createdAt = createdAt
        self.contract = contract
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case gameId
        case contractId
        case updatedAt
        case createdAt
        case contract
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(gameId, forKey: .gameId)
        try container.encodeIfPresent(contractId, forKey: .contractId)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(contract, forKey: .contract)
    }
}

