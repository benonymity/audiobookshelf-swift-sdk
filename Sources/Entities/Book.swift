// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct Book: Codable {
    /// The ID of the library item that contains the book.
    public var libraryItemID: String?
    public var metadata: BookMetadata?
    /// The absolute path on the server of the cover file. Will be null if there is no cover.
    public var coverPath: String?
    /// The book's tags.
    public var tags: [String]?
    public var audioFiles: [AudioFile]?
    public var chapters: [BookChapter]?
    /// Any parts missing from the book by track index.
    public var missingParts: [Int]?
    public var ebookFile: EbookFile?

    public init(libraryItemID: String? = nil, metadata: BookMetadata? = nil, coverPath: String? = nil, tags: [String]? = nil, audioFiles: [AudioFile]? = nil, chapters: [BookChapter]? = nil, missingParts: [Int]? = nil, ebookFile: EbookFile? = nil) {
        self.libraryItemID = libraryItemID
        self.metadata = metadata
        self.coverPath = coverPath
        self.tags = tags
        self.audioFiles = audioFiles
        self.chapters = chapters
        self.missingParts = missingParts
        self.ebookFile = ebookFile
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.libraryItemID = try values.decodeIfPresent(String.self, forKey: "libraryItemId")
        self.metadata = try values.decodeIfPresent(BookMetadata.self, forKey: "metadata")
        self.coverPath = try values.decodeIfPresent(String.self, forKey: "coverPath")
        self.tags = try values.decodeIfPresent([String].self, forKey: "tags")
        self.audioFiles = try values.decodeIfPresent([AudioFile].self, forKey: "audioFiles")
        self.chapters = try values.decodeIfPresent([BookChapter].self, forKey: "chapters")
        self.missingParts = try values.decodeIfPresent([Int].self, forKey: "missingParts")
        self.ebookFile = try values.decodeIfPresent(EbookFile.self, forKey: "ebookFile")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(libraryItemID, forKey: "libraryItemId")
        try values.encodeIfPresent(metadata, forKey: "metadata")
        try values.encodeIfPresent(coverPath, forKey: "coverPath")
        try values.encodeIfPresent(tags, forKey: "tags")
        try values.encodeIfPresent(audioFiles, forKey: "audioFiles")
        try values.encodeIfPresent(chapters, forKey: "chapters")
        try values.encodeIfPresent(missingParts, forKey: "missingParts")
        try values.encodeIfPresent(ebookFile, forKey: "ebookFile")
    }
}
