// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

extension Operations.FindTermsRequest: Serializable {
    func serialize(with format: SerializableFormat) throws -> String {
        switch format {
        case .path:
            return try serializePathParameterSerializable(self, with: format)
        case .query:
            return try serializeQueryParameterSerializable(self, with: format)
        case .header, .multipart, .form:
            throw SerializationError.invalidSerializationParameter(type: "Operations.FindTermsRequest", format: format.formatDescription)
        }
    }

    func serializeQueryParameters(with format: SerializableFormat) throws -> [QueryParameter] {
        return try serializedQueryParameters(with: nil, formatOverride: format)
    }
}

extension Operations.FindTermsRequest: PathParameterSerializable {
    func serializedPathParameters(formatOverride: SerializableFormat?) throws -> [String: String] {
        return [
            "organizationId": try organizationId?.serialize(with: formatOverride ?? .path(explode: false)),
            "teamId": try teamId.serialize(with: formatOverride ?? .path(explode: false)),
        ].compactMapValues { $0 }
    }
}

extension Operations.FindTermsRequest: QueryParameterSerializable {
    func serializedQueryParameters(with parameterDefaults: ParameterDefaults?, formatOverride: SerializableFormat?) throws -> [QueryParameter] {
        let builder = QueryParameterBuilder()
        try builder.addQueryParameters(from: limit, named: "limit", format: formatOverride ?? .query(style: .form, explode: true), parameterDefaults: parameterDefaults)
        try builder.addQueryParameters(from: offset, named: "offset", format: formatOverride ?? .query(style: .form, explode: true), parameterDefaults: parameterDefaults)
        try builder.addQueryParameters(from: partOfSpeech, named: "partOfSpeech", format: formatOverride ?? .query(style: .form, explode: true), parameterDefaults: parameterDefaults)
        try builder.addQueryParameters(from: sortField, named: "sortField", format: formatOverride ?? .query(style: .form, explode: true), parameterDefaults: parameterDefaults)
        try builder.addQueryParameters(from: sortOrder, named: "sortOrder", format: formatOverride ?? .query(style: .form, explode: true), parameterDefaults: parameterDefaults)
        try builder.addQueryParameters(from: tags, named: "tags", format: formatOverride ?? .query(style: .form, explode: true), parameterDefaults: parameterDefaults)
        try builder.addQueryParameters(from: term, named: "term", format: formatOverride ?? .query(style: .form, explode: true), parameterDefaults: parameterDefaults)
        try builder.addQueryParameters(from: type, named: "type", format: formatOverride ?? .query(style: .form, explode: true), parameterDefaults: parameterDefaults)
        return builder.build()
    }
}