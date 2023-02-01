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

    /** This field has not had a description added. */
    public var walletDecryptKey: String?
    public var wallet: WalletModel?
    public var fundingWallet: WalletModel?

    public init(walletDecryptKey: String? = nil, wallet: WalletModel? = nil, fundingWallet: WalletModel? = nil) {
        self.walletDecryptKey = walletDecryptKey
        self.wallet = wallet
        self.fundingWallet = fundingWallet
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case walletDecryptKey
        case wallet
        case fundingWallet
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(walletDecryptKey, forKey: .walletDecryptKey)
        try container.encodeIfPresent(wallet, forKey: .wallet)
        try container.encodeIfPresent(fundingWallet, forKey: .fundingWallet)
    }
}

