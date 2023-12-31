// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

extension Operations.ListTeamDocumentsRequest: Serializable {
    func serialize(with format: SerializableFormat) throws -> String {
        switch format {
        case .path:
            return try serializePathParameterSerializable(self, with: format)
        case .query:
            return try serializeQueryParameterSerializable(self, with: format)
        case .header, .multipart, .form:
            throw SerializationError.invalidSerializationParameter(type: "Operations.ListTeamDocumentsRequest", format: format.formatDescription)
        }
    }

    func serializeQueryParameters(with format: SerializableFormat) throws -> [QueryParameter] {
        return try serializedQueryParameters(with: nil, formatOverride: format)
    }
}

extension Operations.ListTeamDocumentsRequest: PathParameterSerializable {
    func serializedPathParameters(formatOverride: SerializableFormat?) throws -> [String: String] {
        return [
            "organizationId": try organizationId?.serialize(with: formatOverride ?? .path(explode: false)),
            "teamId": try teamId.serialize(with: formatOverride ?? .path(explode: false)),
        ].compactMapValues { $0 }
    }
}

extension Operations.ListTeamDocumentsRequest: QueryParameterSerializable {
    func serializedQueryParameters(with parameterDefaults: ParameterDefaults?, formatOverride: SerializableFormat?) throws -> [QueryParameter] {
        let builder = QueryParameterBuilder()
        try builder.addQueryParameters(from: limit, named: "limit", format: formatOverride ?? .query(style: .form, explode: true), parameterDefaults: parameterDefaults)
        try builder.addQueryParameters(from: offset, named: "offset", format: formatOverride ?? .query(style: .form, explode: true), parameterDefaults: parameterDefaults)
        try builder.addQueryParameters(from: search, named: "search", format: formatOverride ?? .query(style: .form, explode: true), parameterDefaults: parameterDefaults)
        try builder.addQueryParameters(from: sortField, named: "sortField", format: formatOverride ?? .query(style: .form, explode: true), parameterDefaults: parameterDefaults)
        try builder.addQueryParameters(from: sortOrder, named: "sortOrder", format: formatOverride ?? .query(style: .form, explode: true), parameterDefaults: parameterDefaults)
        return builder.build()
    }
}
