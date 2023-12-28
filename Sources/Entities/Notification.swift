// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct Notification: Codable {
    /// The ID of the notification.
    public var id: String?
    /// The ID of the library the notification is associated with.
    public var libraryID: String?
    /// The name of the event the notification will fire on.
    public var eventName: String?
    /// The Apprise URLs to use for the notification.
    public var urls: [String]?
    /// The template for the notification title.
    public var titleTemplate: String?
    /// The template for the notification body.
    public var bodyTemplate: String?
    /// Whether the notification is enabled.
    public var isEnabled: Bool?
    /// The notification's type.
    public var type: String?
    /// The time (in ms since POSIX epoch) when the notification was last fired. Will be null if the notification has not fired.
    public var lastFiredAt: Int?
    /// Whether the last notification attempt failed.
    public var isLastAttemptFailed: Bool?
    /// The number of consecutive times the notification has failed.
    public var numConsecutiveFailedAttempts: Int?
    /// The number of times the notification has fired.
    public var numTimesFired: Int?
    /// The time (in ms since POSIX epoch) when the notification was created.
    public var createdAt: Int?

    public init(id: String? = nil, libraryID: String? = nil, eventName: String? = nil, urls: [String]? = nil, titleTemplate: String? = nil, bodyTemplate: String? = nil, isEnabled: Bool? = nil, type: String? = nil, lastFiredAt: Int? = nil, isLastAttemptFailed: Bool? = nil, numConsecutiveFailedAttempts: Int? = nil, numTimesFired: Int? = nil, createdAt: Int? = nil) {
        self.id = id
        self.libraryID = libraryID
        self.eventName = eventName
        self.urls = urls
        self.titleTemplate = titleTemplate
        self.bodyTemplate = bodyTemplate
        self.isEnabled = isEnabled
        self.type = type
        self.lastFiredAt = lastFiredAt
        self.isLastAttemptFailed = isLastAttemptFailed
        self.numConsecutiveFailedAttempts = numConsecutiveFailedAttempts
        self.numTimesFired = numTimesFired
        self.createdAt = createdAt
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decodeIfPresent(String.self, forKey: "id")
        self.libraryID = try values.decodeIfPresent(String.self, forKey: "libraryId")
        self.eventName = try values.decodeIfPresent(String.self, forKey: "eventName")
        self.urls = try values.decodeIfPresent([String].self, forKey: "urls")
        self.titleTemplate = try values.decodeIfPresent(String.self, forKey: "titleTemplate")
        self.bodyTemplate = try values.decodeIfPresent(String.self, forKey: "bodyTemplate")
        self.isEnabled = try values.decodeIfPresent(Bool.self, forKey: "enabled")
        self.type = try values.decodeIfPresent(String.self, forKey: "type")
        self.lastFiredAt = try values.decodeIfPresent(Int.self, forKey: "lastFiredAt")
        self.isLastAttemptFailed = try values.decodeIfPresent(Bool.self, forKey: "lastAttemptFailed")
        self.numConsecutiveFailedAttempts = try values.decodeIfPresent(Int.self, forKey: "numConsecutiveFailedAttempts")
        self.numTimesFired = try values.decodeIfPresent(Int.self, forKey: "numTimesFired")
        self.createdAt = try values.decodeIfPresent(Int.self, forKey: "createdAt")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(libraryID, forKey: "libraryId")
        try values.encodeIfPresent(eventName, forKey: "eventName")
        try values.encodeIfPresent(urls, forKey: "urls")
        try values.encodeIfPresent(titleTemplate, forKey: "titleTemplate")
        try values.encodeIfPresent(bodyTemplate, forKey: "bodyTemplate")
        try values.encodeIfPresent(isEnabled, forKey: "enabled")
        try values.encodeIfPresent(type, forKey: "type")
        try values.encodeIfPresent(lastFiredAt, forKey: "lastFiredAt")
        try values.encodeIfPresent(isLastAttemptFailed, forKey: "lastAttemptFailed")
        try values.encodeIfPresent(numConsecutiveFailedAttempts, forKey: "numConsecutiveFailedAttempts")
        try values.encodeIfPresent(numTimesFired, forKey: "numTimesFired")
        try values.encodeIfPresent(createdAt, forKey: "createdAt")
    }
}