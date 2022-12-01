//
// SetPlayerDataRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SetPlayerDataRequest: Codable, JSONEncodable, Hashable {

    /** protectedData can only be set if `X-Authorization` includes credentials for the game the target player is a part of. Expects an arbitrary object allowed to contain any set of properties and nested data within those properties, including arrays.  protectedData is great for storing sensitive player data like tracking experience points, off-chain inventories, save states, and more - things that players shouldn't have the ability to directly change themselves. */
    public var protectedData: AnyCodable?
    /** publicData can be set if `X-Authorization` includes credentials for the target player or game the player is a part of. Expects an arbitrary object allowed to contain any set of properties and nested data within those properties, including arrays.  publicData is great for storing player preferences like in-game settings, non-sensitive data and more. Anything that a player should have the ability to directly change themselves without client or server verification can be stored in publicData. */
    public var publicData: AnyCodable?

    public init(protectedData: AnyCodable? = nil, publicData: AnyCodable? = nil) {
        self.protectedData = protectedData
        self.publicData = publicData
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case protectedData
        case publicData
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(protectedData, forKey: .protectedData)
        try container.encodeIfPresent(publicData, forKey: .publicData)
    }
}

