// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct StreamProgress: Codable {
    /// The ID of the stream the progress is for.
    public var stream: String?
    /// A human-readable percentage of transcode completion.
    public var percent: String?
    /// The segment ranges that have been transcoded.
    public var chunks: [String]?
    /// The total number of segments of the stream.
    public var numSegments: Int?

    public init(stream: String? = nil, percent: String? = nil, chunks: [String]? = nil, numSegments: Int? = nil) {
        self.stream = stream
        self.percent = percent
        self.chunks = chunks
        self.numSegments = numSegments
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.stream = try values.decodeIfPresent(String.self, forKey: "stream")
        self.percent = try values.decodeIfPresent(String.self, forKey: "percent")
        self.chunks = try values.decodeIfPresent([String].self, forKey: "chunks")
        self.numSegments = try values.decodeIfPresent(Int.self, forKey: "numSegments")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(stream, forKey: "stream")
        try values.encodeIfPresent(percent, forKey: "percent")
        try values.encodeIfPresent(chunks, forKey: "chunks")
        try values.encodeIfPresent(numSegments, forKey: "numSegments")
    }
}