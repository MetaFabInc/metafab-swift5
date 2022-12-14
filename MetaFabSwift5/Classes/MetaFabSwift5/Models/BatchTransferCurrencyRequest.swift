//
// BatchTransferCurrencyRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BatchTransferCurrencyRequest: Codable, JSONEncodable, Hashable {

    /** An array of valid EVM based addresses to transfer currency to. */
    public var addresses: [String]?
    /** An array of wallet ids within the MetaFab ecosystem to transfer currency to. */
    public var walletIds: [String]?
    /** An array of currency amounts to transfer. Ordering corresponds to the ordering of provided `addresses` and/or `walletIds`. If both `addresses` and `walletIds` are provided, `addresses` are first in the order. */
    public var amounts: [Double]
    /** An optional array of uint256 numbers to reference each transfer in the batch. Ordering corresponds to the ordering of provided `addresses` or `walletIds`. If both `addresses` and `walletIds` are provided, `addresses` are first in the order. */
    public var references: [Double]?

    public init(addresses: [String]? = nil, walletIds: [String]? = nil, amounts: [Double], references: [Double]? = nil) {
        self.addresses = addresses
        self.walletIds = walletIds
        self.amounts = amounts
        self.references = references
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case addresses
        case walletIds
        case amounts
        case references
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(addresses, forKey: .addresses)
        try container.encodeIfPresent(walletIds, forKey: .walletIds)
        try container.encode(amounts, forKey: .amounts)
        try container.encodeIfPresent(references, forKey: .references)
    }
}

