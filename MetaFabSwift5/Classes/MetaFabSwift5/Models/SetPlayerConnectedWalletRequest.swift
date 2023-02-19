//
// SetPlayerConnectedWalletRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SetPlayerConnectedWalletRequest: Codable, JSONEncodable, Hashable {

    public enum Chain: String, Codable, CaseIterable {
        case arbitrum = "ARBITRUM"
        case arbitrumgoerli = "ARBITRUMGOERLI"
        case arbitrumnova = "ARBITRUMNOVA"
        case avalanche = "AVALANCHE"
        case avalanchefuji = "AVALANCHEFUJI"
        case ethereum = "ETHEREUM"
        case fantom = "FANTOM"
        case fantomtest = "FANTOMTEST"
        case goerli = "GOERLI"
        case matic = "MATIC"
        case maticmumbai = "MATICMUMBAI"
        case thundercore = "THUNDERCORE"
        case thundercoretestnet = "THUNDERCORETESTNET"
    }
    /** The address of the external wallet to connect to the player. */
    public var address: String
    /** Any positive integer that hasn't been used previously to connect or disconnect this external wallet. Must be the same nonce used to generate the `signature`. */
    public var nonce: Int
    /** A signature string generated by signing a keccak256 hash generated with abiCoder encode arguments of `[ 'bytes32', 'address', 'bool', 'address', 'uint256' ]` and `[ keccak256(gameId), delegate wallet approved (player's custodial wallet address), true, external wallet address, any unused nonce number ]`. */
    public var signature: String
    /** The blockchain you want to support this wallet connection on. If you need to support multiple blockchains, make multiple requests using different `chain` arguments. Support for new blockchains are added over time. */
    public var chain: Chain

    public init(address: String, nonce: Int, signature: String, chain: Chain) {
        self.address = address
        self.nonce = nonce
        self.signature = signature
        self.chain = chain
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case address
        case nonce
        case signature
        case chain
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(address, forKey: .address)
        try container.encode(nonce, forKey: .nonce)
        try container.encode(signature, forKey: .signature)
        try container.encode(chain, forKey: .chain)
    }
}

