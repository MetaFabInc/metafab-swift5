//
// AuthPlayer200ResponseAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AuthPlayer200ResponseAllOf: Codable, JSONEncodable, Hashable {

    /** This field has not had a description added. */
    public var walletDecryptKey: String?
    public var wallet: WalletModel?
    public var custodialWallet: WalletModel?

    public init(walletDecryptKey: String? = nil, wallet: WalletModel? = nil, custodialWallet: WalletModel? = nil) {
        self.walletDecryptKey = walletDecryptKey
        self.wallet = wallet
        self.custodialWallet = custodialWallet
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case walletDecryptKey
        case wallet
        case custodialWallet
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(walletDecryptKey, forKey: .walletDecryptKey)
        try container.encodeIfPresent(wallet, forKey: .wallet)
        try container.encodeIfPresent(custodialWallet, forKey: .custodialWallet)
    }
}

