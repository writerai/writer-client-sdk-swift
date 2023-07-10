// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

/// Describes common parameters which can be used when making API requests.
///
/// > Note: These parameters may be overridden by individual API operations
public struct GlobalParameters {
    public let organizationId: Int?

    /// Creates an object with the given parameters
    ///
    ///
    public init(
        organizationId: Int? = nil
    ) {
        self.organizationId = organizationId
    }
}

extension GlobalParameters: ParameterDefaults {
    public func defaultSerializedPathParameter(for key: String) throws -> String? {
        switch key {
        case "organizationId": return try organizationId.serialize(with: .path(explode: false))
        default: return nil
        }
    }

    public func defaultQueryParameter(for key: String) -> AnyValue? {
        switch key {
        default: return nil
        }
    }
}
