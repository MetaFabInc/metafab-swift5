//
// UpdateGame200ResponseAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UpdateGame200ResponseAllOf: Codable, JSONEncodable, Hashable {

    /** This field has not had a description added. */
    public var walletDecryptKey: String?

    public init(walletDecryptKey: String? = nil) {
        self.walletDecryptKey = walletDecryptKey
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case walletDecryptKey
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(walletDecryptKey, forKey: .walletDecryptKey)
    }
}

