//
// GrantCurrencyRoleRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GrantCurrencyRoleRequest: Codable, JSONEncodable, Hashable {

    /** A valid MetaFab role or bytes string representing a role, such as `minter` or `0xc9eb32e43bf5ecbceacf00b32281dfc5d6d700a0db676ea26ccf938a385ac3b7` */
    public var role: String
    /** A valid EVM based address to grant the role to. */
    public var address: String?
    /** A wallet id within the MetaFab ecosystem to grant the role to. */
    public var walletId: String?

    public init(role: String, address: String? = nil, walletId: String? = nil) {
        self.role = role
        self.address = address
        self.walletId = walletId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case role
        case address
        case walletId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(role, forKey: .role)
        try container.encodeIfPresent(address, forKey: .address)
        try container.encodeIfPresent(walletId, forKey: .walletId)
    }
}

