//
// AuthGame200ResponseAllOf1.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AuthGame200ResponseAllOf1: Codable, JSONEncodable, Hashable {

    public var fundingWallet: WalletModel?

    public init(fundingWallet: WalletModel? = nil) {
        self.fundingWallet = fundingWallet
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case fundingWallet
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(fundingWallet, forKey: .fundingWallet)
    }
}

