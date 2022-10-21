//
// CreateCollectionItemRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CreateCollectionItemRequest: Codable, JSONEncodable, Hashable {

    /** A unique itemId to use for this item within the collection. If an existing itemId is used, the current metadata will be overriden. Any number may be used.  The terms `itemId` and `collectionItemId` are used interchangeably and equivalent to one another throughout MetaFab documentation. */
    public var id: Double
    /** The name of this item. */
    public var name: String
    /** A text description of this item. This is a great spot to include lore, game mechanics and more related to this item. */
    public var description: String
    /** A base64 string of the image for this item. Either `imageBase64` or `imageUrl` must be provided. Supported image formats are `jpg`, `jpeg`, `png`, `gif`. Recommended size of 1:1 aspect ratio and no more than 1500x1500 pixels. */
    public var imageBase64: Data?
    /** An external url that resolves to an image to use for this item. This can also be set to an ipfs:// uri. Recommended size of 1:1 aspect ratio and no more than 1500x1500 pixels. */
    public var imageUrl: String?
    /** An optional URL where players can go to learn more about this item specifically, or your game, or any other link. */
    public var externalUrl: String?
    /** An array of objects that conform with metadata standard. */
    public var attributes: [CreateCollectionItemRequestAttributesInner]?
    /** An arbitrary object of data attached to the top level metadata object. This is useful for including data or resource URLs specific to your game. Such as URLs that point to */
    public var data: AnyCodable?

    public init(id: Double, name: String, description: String, imageBase64: Data? = nil, imageUrl: String? = nil, externalUrl: String? = nil, attributes: [CreateCollectionItemRequestAttributesInner]? = nil, data: AnyCodable? = nil) {
        self.id = id
        self.name = name
        self.description = description
        self.imageBase64 = imageBase64
        self.imageUrl = imageUrl
        self.externalUrl = externalUrl
        self.attributes = attributes
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case description
        case imageBase64
        case imageUrl
        case externalUrl
        case attributes
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(description, forKey: .description)
        try container.encodeIfPresent(imageBase64, forKey: .imageBase64)
        try container.encodeIfPresent(imageUrl, forKey: .imageUrl)
        try container.encodeIfPresent(externalUrl, forKey: .externalUrl)
        try container.encodeIfPresent(attributes, forKey: .attributes)
        try container.encodeIfPresent(data, forKey: .data)
    }
}
