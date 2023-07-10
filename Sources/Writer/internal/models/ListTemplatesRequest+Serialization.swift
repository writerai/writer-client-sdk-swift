// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

extension Operations.ListTemplatesRequest: Serializable {
    func serialize(with format: SerializableFormat) throws -> String {
        switch format {
        case .path:
            return try serializePathParameterSerializable(self, with: format)
        case .query, .header, .multipart, .form:
            throw SerializationError.invalidSerializationParameter(type: "Operations.ListTemplatesRequest", format: format.formatDescription)
        }
    }
}

extension Operations.ListTemplatesRequest: PathParameterSerializable {
    func serializedPathParameters(formatOverride: SerializableFormat?) throws -> [String: String] {
        return [
            "organizationId": try organizationId?.serialize(with: formatOverride ?? .path(explode: false)),
            "teamId": try teamId.serialize(with: formatOverride ?? .path(explode: false)),
            "templateId": try templateId.serialize(with: formatOverride ?? .path(explode: false)),
        ].compactMapValues { $0 }
    }
}