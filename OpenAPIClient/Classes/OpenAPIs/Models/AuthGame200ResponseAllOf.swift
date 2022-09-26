//
// AuthGame200ResponseAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AuthGame200ResponseAllOf: Codable, JSONEncodable, Hashable {

    public var wallet: WalletModel?

    public init(wallet: WalletModel? = nil) {
        self.wallet = wallet
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case wallet
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(wallet, forKey: .wallet)
    }
}
