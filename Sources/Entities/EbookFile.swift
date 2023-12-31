// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct EbookFile: Codable {
    /// The inode of the ebook file.
    public var ino: String?
    public var metadata: FileMetadata?
    /// The ebook format of the ebook file.
    public var ebookFormat: String?
    /// The time (in ms since POSIX epoch) when the library file was added.
    public var addedAt: Int?
    /// The time (in ms since POSIX epoch) when the library file was last updated.
    public var updatedAt: Int?

    public init(ino: String? = nil, metadata: FileMetadata? = nil, ebookFormat: String? = nil, addedAt: Int? = nil, updatedAt: Int? = nil) {
        self.ino = ino
        self.metadata = metadata
        self.ebookFormat = ebookFormat
        self.addedAt = addedAt
        self.updatedAt = updatedAt
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.ino = try values.decodeIfPresent(String.self, forKey: "ino")
        self.metadata = try values.decodeIfPresent(FileMetadata.self, forKey: "metadata")
        self.ebookFormat = try values.decodeIfPresent(String.self, forKey: "ebookFormat")
        self.addedAt = try values.decodeIfPresent(Int.self, forKey: "addedAt")
        self.updatedAt = try values.decodeIfPresent(Int.self, forKey: "updatedAt")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(ino, forKey: "ino")
        try values.encodeIfPresent(metadata, forKey: "metadata")
        try values.encodeIfPresent(ebookFormat, forKey: "ebookFormat")
        try values.encodeIfPresent(addedAt, forKey: "addedAt")
        try values.encodeIfPresent(updatedAt, forKey: "updatedAt")
    }
}
