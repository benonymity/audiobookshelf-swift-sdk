// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct LibraryItemMinified: Codable {
    /// The ID of the library item.
    public var id: String?
    /// The inode of the library item.
    public var ino: String?
    /// The ID of the library the item belongs to.
    public var libraryID: String?
    /// The ID of the folder the library item is in.
    public var folderID: String?
    /// The path of the library item on the server.
    public var path: String?
    /// The path, relative to the library folder, of the library item.
    public var relPath: String?
    /// Whether the library item is a single file in the root of the library folder.
    public var isFile: Bool?
    /// The time (in ms since POSIX epoch) when the library item was last modified on disk.
    public var mtimeMs: Int?
    /// The time (in ms since POSIX epoch) when the library item status was changed on disk.
    public var ctimeMs: Int?
    /// The time (in ms since POSIX epoch) when the library item was created on disk. Will be 0 if unknown.
    public var birthtimeMs: Int?
    /// The time (in ms since POSIX epoch) when the library item was added to the library.
    public var addedAt: Int?
    /// The time (in ms since POSIX epoch) when the library item was last updated. (Read Only)
    public var updatedAt: Int?
    /// Whether the library item was scanned and no longer exists.
    public var isMissing: Bool?
    /// Whether the library item was scanned and no longer has media files.
    public var isInvalid: Bool?
    /// What kind of media the library item contains. Will be book or podcast.
    public var mediaType: String?
    /// The media of the library item.
    public var media: [String: Medium]?
    /// The number of library files for the library item.
    public var numFiles: Int?
    /// The total size (in bytes) of the library item.
    public var size: Int?

    public enum Medium: Codable {
        case bookMinified(BookMinified)
        case podcastMinified(PodcastMinified)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(BookMinified.self) {
                self = .bookMinified(value)
            } else if let value = try? container.decode(PodcastMinified.self) {
                self = .podcastMinified(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (BookMinified, PodcastMinified)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .bookMinified(let value): try container.encode(value)
            case .podcastMinified(let value): try container.encode(value)
            }
        }
    }

    public init(id: String? = nil, ino: String? = nil, libraryID: String? = nil, folderID: String? = nil, path: String? = nil, relPath: String? = nil, isFile: Bool? = nil, mtimeMs: Int? = nil, ctimeMs: Int? = nil, birthtimeMs: Int? = nil, addedAt: Int? = nil, updatedAt: Int? = nil, isMissing: Bool? = nil, isInvalid: Bool? = nil, mediaType: String? = nil, media: [String: Medium]? = nil, numFiles: Int? = nil, size: Int? = nil) {
        self.id = id
        self.ino = ino
        self.libraryID = libraryID
        self.folderID = folderID
        self.path = path
        self.relPath = relPath
        self.isFile = isFile
        self.mtimeMs = mtimeMs
        self.ctimeMs = ctimeMs
        self.birthtimeMs = birthtimeMs
        self.addedAt = addedAt
        self.updatedAt = updatedAt
        self.isMissing = isMissing
        self.isInvalid = isInvalid
        self.mediaType = mediaType
        self.media = media
        self.numFiles = numFiles
        self.size = size
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decodeIfPresent(String.self, forKey: "id")
        self.ino = try values.decodeIfPresent(String.self, forKey: "ino")
        self.libraryID = try values.decodeIfPresent(String.self, forKey: "libraryId")
        self.folderID = try values.decodeIfPresent(String.self, forKey: "folderId")
        self.path = try values.decodeIfPresent(String.self, forKey: "path")
        self.relPath = try values.decodeIfPresent(String.self, forKey: "relPath")
        self.isFile = try values.decodeIfPresent(Bool.self, forKey: "isFile")
        self.mtimeMs = try values.decodeIfPresent(Int.self, forKey: "mtimeMs")
        self.ctimeMs = try values.decodeIfPresent(Int.self, forKey: "ctimeMs")
        self.birthtimeMs = try values.decodeIfPresent(Int.self, forKey: "birthtimeMs")
        self.addedAt = try values.decodeIfPresent(Int.self, forKey: "addedAt")
        self.updatedAt = try values.decodeIfPresent(Int.self, forKey: "updatedAt")
        self.isMissing = try values.decodeIfPresent(Bool.self, forKey: "isMissing")
        self.isInvalid = try values.decodeIfPresent(Bool.self, forKey: "isInvalid")
        self.mediaType = try values.decodeIfPresent(String.self, forKey: "mediaType")
        self.media = try values.decodeIfPresent([String: Medium].self, forKey: "media")
        self.numFiles = try values.decodeIfPresent(Int.self, forKey: "numFiles")
        self.size = try values.decodeIfPresent(Int.self, forKey: "size")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(ino, forKey: "ino")
        try values.encodeIfPresent(libraryID, forKey: "libraryId")
        try values.encodeIfPresent(folderID, forKey: "folderId")
        try values.encodeIfPresent(path, forKey: "path")
        try values.encodeIfPresent(relPath, forKey: "relPath")
        try values.encodeIfPresent(isFile, forKey: "isFile")
        try values.encodeIfPresent(mtimeMs, forKey: "mtimeMs")
        try values.encodeIfPresent(ctimeMs, forKey: "ctimeMs")
        try values.encodeIfPresent(birthtimeMs, forKey: "birthtimeMs")
        try values.encodeIfPresent(addedAt, forKey: "addedAt")
        try values.encodeIfPresent(updatedAt, forKey: "updatedAt")
        try values.encodeIfPresent(isMissing, forKey: "isMissing")
        try values.encodeIfPresent(isInvalid, forKey: "isInvalid")
        try values.encodeIfPresent(mediaType, forKey: "mediaType")
        try values.encodeIfPresent(media, forKey: "media")
        try values.encodeIfPresent(numFiles, forKey: "numFiles")
        try values.encodeIfPresent(size, forKey: "size")
    }
}