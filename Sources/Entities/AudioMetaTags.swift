// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// ID3 metadata tags pulled from the audio file on import. Only non-null tags will be returned in requests.
public struct AudioMetaTags: Codable {
    public var tagAlbum: String?
    public var tagArtist: String?
    public var tagGenre: String?
    public var tagTitle: String?
    public var tagSeries: String?
    public var tagSeriesPart: String?
    public var tagTrack: String?
    public var tagDisc: String?
    public var tagSubtitle: String?
    public var tagAlbumArtist: String?
    public var tagDate: String?
    public var tagComposer: String?
    public var tagPublisher: String?
    public var tagComment: String?
    public var tagDescription: String?
    public var tagEncoder: String?
    public var tagEncodedBy: String?
    public var tagIsbn: String?
    public var tagLanguage: String?
    public var tagASIN: String?
    public var tagOverdriveMediaMarker: String?
    public var tagOriginalYear: String?
    public var tagReleaseCountry: String?
    public var tagReleaseType: String?
    public var tagReleaseStatus: String?
    public var tagISRC: String?
    public var tagMusicBrainzTrackID: String?
    public var tagMusicBrainzAlbumID: String?
    public var tagMusicBrainzAlbumArtistID: String?
    public var tagMusicBrainzArtistID: String?

    public init(tagAlbum: String? = nil, tagArtist: String? = nil, tagGenre: String? = nil, tagTitle: String? = nil, tagSeries: String? = nil, tagSeriesPart: String? = nil, tagTrack: String? = nil, tagDisc: String? = nil, tagSubtitle: String? = nil, tagAlbumArtist: String? = nil, tagDate: String? = nil, tagComposer: String? = nil, tagPublisher: String? = nil, tagComment: String? = nil, tagDescription: String? = nil, tagEncoder: String? = nil, tagEncodedBy: String? = nil, tagIsbn: String? = nil, tagLanguage: String? = nil, tagASIN: String? = nil, tagOverdriveMediaMarker: String? = nil, tagOriginalYear: String? = nil, tagReleaseCountry: String? = nil, tagReleaseType: String? = nil, tagReleaseStatus: String? = nil, tagISRC: String? = nil, tagMusicBrainzTrackID: String? = nil, tagMusicBrainzAlbumID: String? = nil, tagMusicBrainzAlbumArtistID: String? = nil, tagMusicBrainzArtistID: String? = nil) {
        self.tagAlbum = tagAlbum
        self.tagArtist = tagArtist
        self.tagGenre = tagGenre
        self.tagTitle = tagTitle
        self.tagSeries = tagSeries
        self.tagSeriesPart = tagSeriesPart
        self.tagTrack = tagTrack
        self.tagDisc = tagDisc
        self.tagSubtitle = tagSubtitle
        self.tagAlbumArtist = tagAlbumArtist
        self.tagDate = tagDate
        self.tagComposer = tagComposer
        self.tagPublisher = tagPublisher
        self.tagComment = tagComment
        self.tagDescription = tagDescription
        self.tagEncoder = tagEncoder
        self.tagEncodedBy = tagEncodedBy
        self.tagIsbn = tagIsbn
        self.tagLanguage = tagLanguage
        self.tagASIN = tagASIN
        self.tagOverdriveMediaMarker = tagOverdriveMediaMarker
        self.tagOriginalYear = tagOriginalYear
        self.tagReleaseCountry = tagReleaseCountry
        self.tagReleaseType = tagReleaseType
        self.tagReleaseStatus = tagReleaseStatus
        self.tagISRC = tagISRC
        self.tagMusicBrainzTrackID = tagMusicBrainzTrackID
        self.tagMusicBrainzAlbumID = tagMusicBrainzAlbumID
        self.tagMusicBrainzAlbumArtistID = tagMusicBrainzAlbumArtistID
        self.tagMusicBrainzArtistID = tagMusicBrainzArtistID
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.tagAlbum = try values.decodeIfPresent(String.self, forKey: "tagAlbum")
        self.tagArtist = try values.decodeIfPresent(String.self, forKey: "tagArtist")
        self.tagGenre = try values.decodeIfPresent(String.self, forKey: "tagGenre")
        self.tagTitle = try values.decodeIfPresent(String.self, forKey: "tagTitle")
        self.tagSeries = try values.decodeIfPresent(String.self, forKey: "tagSeries")
        self.tagSeriesPart = try values.decodeIfPresent(String.self, forKey: "tagSeriesPart")
        self.tagTrack = try values.decodeIfPresent(String.self, forKey: "tagTrack")
        self.tagDisc = try values.decodeIfPresent(String.self, forKey: "tagDisc")
        self.tagSubtitle = try values.decodeIfPresent(String.self, forKey: "tagSubtitle")
        self.tagAlbumArtist = try values.decodeIfPresent(String.self, forKey: "tagAlbumArtist")
        self.tagDate = try values.decodeIfPresent(String.self, forKey: "tagDate")
        self.tagComposer = try values.decodeIfPresent(String.self, forKey: "tagComposer")
        self.tagPublisher = try values.decodeIfPresent(String.self, forKey: "tagPublisher")
        self.tagComment = try values.decodeIfPresent(String.self, forKey: "tagComment")
        self.tagDescription = try values.decodeIfPresent(String.self, forKey: "tagDescription")
        self.tagEncoder = try values.decodeIfPresent(String.self, forKey: "tagEncoder")
        self.tagEncodedBy = try values.decodeIfPresent(String.self, forKey: "tagEncodedBy")
        self.tagIsbn = try values.decodeIfPresent(String.self, forKey: "tagIsbn")
        self.tagLanguage = try values.decodeIfPresent(String.self, forKey: "tagLanguage")
        self.tagASIN = try values.decodeIfPresent(String.self, forKey: "tagASIN")
        self.tagOverdriveMediaMarker = try values.decodeIfPresent(String.self, forKey: "tagOverdriveMediaMarker")
        self.tagOriginalYear = try values.decodeIfPresent(String.self, forKey: "tagOriginalYear")
        self.tagReleaseCountry = try values.decodeIfPresent(String.self, forKey: "tagReleaseCountry")
        self.tagReleaseType = try values.decodeIfPresent(String.self, forKey: "tagReleaseType")
        self.tagReleaseStatus = try values.decodeIfPresent(String.self, forKey: "tagReleaseStatus")
        self.tagISRC = try values.decodeIfPresent(String.self, forKey: "tagISRC")
        self.tagMusicBrainzTrackID = try values.decodeIfPresent(String.self, forKey: "tagMusicBrainzTrackId")
        self.tagMusicBrainzAlbumID = try values.decodeIfPresent(String.self, forKey: "tagMusicBrainzAlbumId")
        self.tagMusicBrainzAlbumArtistID = try values.decodeIfPresent(String.self, forKey: "tagMusicBrainzAlbumArtistId")
        self.tagMusicBrainzArtistID = try values.decodeIfPresent(String.self, forKey: "tagMusicBrainzArtistId")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(tagAlbum, forKey: "tagAlbum")
        try values.encodeIfPresent(tagArtist, forKey: "tagArtist")
        try values.encodeIfPresent(tagGenre, forKey: "tagGenre")
        try values.encodeIfPresent(tagTitle, forKey: "tagTitle")
        try values.encodeIfPresent(tagSeries, forKey: "tagSeries")
        try values.encodeIfPresent(tagSeriesPart, forKey: "tagSeriesPart")
        try values.encodeIfPresent(tagTrack, forKey: "tagTrack")
        try values.encodeIfPresent(tagDisc, forKey: "tagDisc")
        try values.encodeIfPresent(tagSubtitle, forKey: "tagSubtitle")
        try values.encodeIfPresent(tagAlbumArtist, forKey: "tagAlbumArtist")
        try values.encodeIfPresent(tagDate, forKey: "tagDate")
        try values.encodeIfPresent(tagComposer, forKey: "tagComposer")
        try values.encodeIfPresent(tagPublisher, forKey: "tagPublisher")
        try values.encodeIfPresent(tagComment, forKey: "tagComment")
        try values.encodeIfPresent(tagDescription, forKey: "tagDescription")
        try values.encodeIfPresent(tagEncoder, forKey: "tagEncoder")
        try values.encodeIfPresent(tagEncodedBy, forKey: "tagEncodedBy")
        try values.encodeIfPresent(tagIsbn, forKey: "tagIsbn")
        try values.encodeIfPresent(tagLanguage, forKey: "tagLanguage")
        try values.encodeIfPresent(tagASIN, forKey: "tagASIN")
        try values.encodeIfPresent(tagOverdriveMediaMarker, forKey: "tagOverdriveMediaMarker")
        try values.encodeIfPresent(tagOriginalYear, forKey: "tagOriginalYear")
        try values.encodeIfPresent(tagReleaseCountry, forKey: "tagReleaseCountry")
        try values.encodeIfPresent(tagReleaseType, forKey: "tagReleaseType")
        try values.encodeIfPresent(tagReleaseStatus, forKey: "tagReleaseStatus")
        try values.encodeIfPresent(tagISRC, forKey: "tagISRC")
        try values.encodeIfPresent(tagMusicBrainzTrackID, forKey: "tagMusicBrainzTrackId")
        try values.encodeIfPresent(tagMusicBrainzAlbumID, forKey: "tagMusicBrainzAlbumId")
        try values.encodeIfPresent(tagMusicBrainzAlbumArtistID, forKey: "tagMusicBrainzAlbumArtistId")
        try values.encodeIfPresent(tagMusicBrainzArtistID, forKey: "tagMusicBrainzArtistId")
    }
}
