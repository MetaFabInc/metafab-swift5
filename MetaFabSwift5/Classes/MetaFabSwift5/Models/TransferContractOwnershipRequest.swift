//
// TransferContractOwnershipRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TransferContractOwnershipRequest: Codable, JSONEncodable, Hashable {

    /** A wallet address to assign as the new owner and administrator of the target smart contract. */
    public var ownerAddress: String

    public init(ownerAddress: String) {
        self.ownerAddress = ownerAddress
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case ownerAddress
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(ownerAddress, forKey: .ownerAddress)
    }
}
