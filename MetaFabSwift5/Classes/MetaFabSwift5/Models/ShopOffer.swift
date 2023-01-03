//
// ShopOffer.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ShopOffer: Codable, JSONEncodable, Hashable {

    /** The id of this offer. */
    public var id: Int?
    /** The address of the ERC1155 or MetaFab game items contract for input items required by this offer. */
    public var inputCollection: String?
    /** An array of item ids from the input collection that are required for this offer. */
    public var inputCollectionItemIds: [Int]?
    /** An array of amounts for each item id for the input collection that are required to use this offer. */
    public var inputCollectionItemAmounts: [Int]?
    /** The address of the ERC20 or MetaFab game currency for the currency required by this offer. */
    public var inputCurrency: String?
    /** The amount of currency required by this offer. */
    public var inputCurrencyAmount: Double?
    /** The address of the ERC1155 or MetaFab game items contract for output items given by this offer. */
    public var outputCollection: String?
    /** An array of item ids from the output collection that are given for this offer. */
    public var outputCollectionItemIds: [Int]?
    /** An array of amounts for each item id for the output collection that are given by this offer. */
    public var outputCollectionItemAmounts: [Int]?
    /** The address of the ERC20 or MetaFab game currency for the output currency given by this offer. */
    public var outputCurrency: String?
    /** The amount of currency given by this offer. */
    public var outputCurrencyAmount: Double?
    /** The number of times this offer has been used. */
    public var uses: Int?
    /** The maximum number of times this offer can be used. A value of `0` means there is no limit on how many times this offer can be used. */
    public var maxUses: Int?
    /** A unix timestamp in seconds that represents the last time this offer was set or updated. */
    public var lastUpdatedAt: Int?

    public init(id: Int? = nil, inputCollection: String? = nil, inputCollectionItemIds: [Int]? = nil, inputCollectionItemAmounts: [Int]? = nil, inputCurrency: String? = nil, inputCurrencyAmount: Double? = nil, outputCollection: String? = nil, outputCollectionItemIds: [Int]? = nil, outputCollectionItemAmounts: [Int]? = nil, outputCurrency: String? = nil, outputCurrencyAmount: Double? = nil, uses: Int? = nil, maxUses: Int? = nil, lastUpdatedAt: Int? = nil) {
        self.id = id
        self.inputCollection = inputCollection
        self.inputCollectionItemIds = inputCollectionItemIds
        self.inputCollectionItemAmounts = inputCollectionItemAmounts
        self.inputCurrency = inputCurrency
        self.inputCurrencyAmount = inputCurrencyAmount
        self.outputCollection = outputCollection
        self.outputCollectionItemIds = outputCollectionItemIds
        self.outputCollectionItemAmounts = outputCollectionItemAmounts
        self.outputCurrency = outputCurrency
        self.outputCurrencyAmount = outputCurrencyAmount
        self.uses = uses
        self.maxUses = maxUses
        self.lastUpdatedAt = lastUpdatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case inputCollection
        case inputCollectionItemIds
        case inputCollectionItemAmounts
        case inputCurrency
        case inputCurrencyAmount
        case outputCollection
        case outputCollectionItemIds
        case outputCollectionItemAmounts
        case outputCurrency
        case outputCurrencyAmount
        case uses
        case maxUses
        case lastUpdatedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(inputCollection, forKey: .inputCollection)
        try container.encodeIfPresent(inputCollectionItemIds, forKey: .inputCollectionItemIds)
        try container.encodeIfPresent(inputCollectionItemAmounts, forKey: .inputCollectionItemAmounts)
        try container.encodeIfPresent(inputCurrency, forKey: .inputCurrency)
        try container.encodeIfPresent(inputCurrencyAmount, forKey: .inputCurrencyAmount)
        try container.encodeIfPresent(outputCollection, forKey: .outputCollection)
        try container.encodeIfPresent(outputCollectionItemIds, forKey: .outputCollectionItemIds)
        try container.encodeIfPresent(outputCollectionItemAmounts, forKey: .outputCollectionItemAmounts)
        try container.encodeIfPresent(outputCurrency, forKey: .outputCurrency)
        try container.encodeIfPresent(outputCurrencyAmount, forKey: .outputCurrencyAmount)
        try container.encodeIfPresent(uses, forKey: .uses)
        try container.encodeIfPresent(maxUses, forKey: .maxUses)
        try container.encodeIfPresent(lastUpdatedAt, forKey: .lastUpdatedAt)
    }
}
