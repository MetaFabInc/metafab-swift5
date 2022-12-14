//
// BatchMintCollectionItemsRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BatchMintCollectionItemsRequest: Codable, JSONEncodable, Hashable {

    /** A valid EVM based address to create (mint) the items for. For example, `0x39cb70F972E0EE920088AeF97Dbe5c6251a9c25D`. */
    public var address: String?
    /** An array of unique itemIds to create (mint). */
    public var itemIds: [Int]
    /** An array of the quantities of each of the unique itemIds provided to create (mint). The quantity of each itemId in itemIds should be at the same index as the specific itemId in the itemIds array. For example, quantities[2] defines the quantity to mint for itemIds[2], etc. */
    public var quantities: [Int]
    /** Any wallet id within the MetaFab ecosystem to create (mint) the items for. */
    public var walletId: String?

    public init(address: String? = nil, itemIds: [Int], quantities: [Int], walletId: String? = nil) {
        self.address = address
        self.itemIds = itemIds
        self.quantities = quantities
        self.walletId = walletId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case address
        case itemIds
        case quantities
        case walletId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(address, forKey: .address)
        try container.encode(itemIds, forKey: .itemIds)
        try container.encode(quantities, forKey: .quantities)
        try container.encodeIfPresent(walletId, forKey: .walletId)
    }
}

