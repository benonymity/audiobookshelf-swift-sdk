// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct LibraryFilterData: Codable {
    /// The authors of books in the library.
    public var authors: [AuthorMinified]?
    /// The genres of books in the library.
    public var genres: [String]?
    /// The tags in the library.
    public var tags: [String]?
    /// The series in the library. The series will only have their id and name.
    public var series: [SeriesItem]?
    /// The narrators of books in the library.
    public var narrators: [String]?
    /// The languages of books in the library.
    public var languages: [String]?

    public struct SeriesItem: Codable {
        public var id: String?
        public var name: String?

        public init(id: String? = nil, name: String? = nil) {
            self.id = id
            self.name = name
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.id = try values.decodeIfPresent(String.self, forKey: "id")
            self.name = try values.decodeIfPresent(String.self, forKey: "name")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encodeIfPresent(id, forKey: "id")
            try values.encodeIfPresent(name, forKey: "name")
        }
    }

    public init(authors: [AuthorMinified]? = nil, genres: [String]? = nil, tags: [String]? = nil, series: [SeriesItem]? = nil, narrators: [String]? = nil, languages: [String]? = nil) {
        self.authors = authors
        self.genres = genres
        self.tags = tags
        self.series = series
        self.narrators = narrators
        self.languages = languages
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.authors = try values.decodeIfPresent([AuthorMinified].self, forKey: "authors")
        self.genres = try values.decodeIfPresent([String].self, forKey: "genres")
        self.tags = try values.decodeIfPresent([String].self, forKey: "tags")
        self.series = try values.decodeIfPresent([SeriesItem].self, forKey: "series")
        self.narrators = try values.decodeIfPresent([String].self, forKey: "narrators")
        self.languages = try values.decodeIfPresent([String].self, forKey: "languages")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(authors, forKey: "authors")
        try values.encodeIfPresent(genres, forKey: "genres")
        try values.encodeIfPresent(tags, forKey: "tags")
        try values.encodeIfPresent(series, forKey: "series")
        try values.encodeIfPresent(narrators, forKey: "narrators")
        try values.encodeIfPresent(languages, forKey: "languages")
    }
}
