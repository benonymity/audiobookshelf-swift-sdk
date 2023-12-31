// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct DeviceInfo: Codable {
    /// Unique identifier.
    public var id: UUID?
    /// User identifier.
    public var userID: UUID?
    /// Device identifier, as provided in the request.
    public var deviceID: String?
    /// The IP address that the request came from.
    public var ipAddress: String?
    /// The browser name, taken from the user agent.
    public var browserName: String?
    /// The browser version, taken from the user agent.
    public var browserVersion: String?
    /// The name of OS, taken from the user agent.
    public var osName: String?
    /// The version of the OS, taken from the user agent.
    public var osVersion: String?
    /// The device name, constructed automatically from other attributes.
    public var deviceName: String?
    /// The device name, constructed automatically from other attributes.
    public var deviceType: String?
    /// The client device's manufacturer, as provided in the request.
    public var manufacturer: String?
    /// The client device's model, as provided in the request.
    public var model: String?
    /// For an Android device, the Android SDK version of the client, as provided in the request.
    public var sdkVersion: String?
    /// Name of the client, as provided in the request.
    public var clientName: String?
    /// Version of the client, as provided in the request.
    public var clientVersion: String?

    public init(id: UUID? = nil, userID: UUID? = nil, deviceID: String? = nil, ipAddress: String? = nil, browserName: String? = nil, browserVersion: String? = nil, osName: String? = nil, osVersion: String? = nil, deviceName: String? = nil, deviceType: String? = nil, manufacturer: String? = nil, model: String? = nil, sdkVersion: String? = nil, clientName: String? = nil, clientVersion: String? = nil) {
        self.id = id
        self.userID = userID
        self.deviceID = deviceID
        self.ipAddress = ipAddress
        self.browserName = browserName
        self.browserVersion = browserVersion
        self.osName = osName
        self.osVersion = osVersion
        self.deviceName = deviceName
        self.deviceType = deviceType
        self.manufacturer = manufacturer
        self.model = model
        self.sdkVersion = sdkVersion
        self.clientName = clientName
        self.clientVersion = clientVersion
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decodeIfPresent(UUID.self, forKey: "id")
        self.userID = try values.decodeIfPresent(UUID.self, forKey: "userId")
        self.deviceID = try values.decodeIfPresent(String.self, forKey: "deviceId")
        self.ipAddress = try values.decodeIfPresent(String.self, forKey: "ipAddress")
        self.browserName = try values.decodeIfPresent(String.self, forKey: "browserName")
        self.browserVersion = try values.decodeIfPresent(String.self, forKey: "browserVersion")
        self.osName = try values.decodeIfPresent(String.self, forKey: "osName")
        self.osVersion = try values.decodeIfPresent(String.self, forKey: "osVersion")
        self.deviceName = try values.decodeIfPresent(String.self, forKey: "deviceName")
        self.deviceType = try values.decodeIfPresent(String.self, forKey: "deviceType")
        self.manufacturer = try values.decodeIfPresent(String.self, forKey: "manufacturer")
        self.model = try values.decodeIfPresent(String.self, forKey: "model")
        self.sdkVersion = try values.decodeIfPresent(String.self, forKey: "sdkVersion")
        self.clientName = try values.decodeIfPresent(String.self, forKey: "clientName")
        self.clientVersion = try values.decodeIfPresent(String.self, forKey: "clientVersion")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(userID, forKey: "userId")
        try values.encodeIfPresent(deviceID, forKey: "deviceId")
        try values.encodeIfPresent(ipAddress, forKey: "ipAddress")
        try values.encodeIfPresent(browserName, forKey: "browserName")
        try values.encodeIfPresent(browserVersion, forKey: "browserVersion")
        try values.encodeIfPresent(osName, forKey: "osName")
        try values.encodeIfPresent(osVersion, forKey: "osVersion")
        try values.encodeIfPresent(deviceName, forKey: "deviceName")
        try values.encodeIfPresent(deviceType, forKey: "deviceType")
        try values.encodeIfPresent(manufacturer, forKey: "manufacturer")
        try values.encodeIfPresent(model, forKey: "model")
        try values.encodeIfPresent(sdkVersion, forKey: "sdkVersion")
        try values.encodeIfPresent(clientName, forKey: "clientName")
        try values.encodeIfPresent(clientVersion, forKey: "clientVersion")
    }
}
