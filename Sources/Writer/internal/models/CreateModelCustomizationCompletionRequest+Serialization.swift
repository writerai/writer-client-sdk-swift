// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

extension Operations.CreateModelCustomizationCompletionRequest: Serializable {
    func serialize(with format: SerializableFormat) throws -> String {
        switch format {
        case .path:
            return try serializePathParameterSerializable(self, with: format)
        case .query, .header, .multipart, .form:
            throw SerializationError.invalidSerializationParameter(type: "Operations.CreateModelCustomizationCompletionRequest", format: format.formatDescription)
        }
    }
}

extension Operations.CreateModelCustomizationCompletionRequest: PathParameterSerializable {
    func serializedPathParameters(formatOverride: SerializableFormat?) throws -> [String: String] {
        return [
            "customizationId": try customizationId.serialize(with: formatOverride ?? .path(explode: false)),
            "modelId": try modelId.serialize(with: formatOverride ?? .path(explode: false)),
            "organizationId": try organizationId?.serialize(with: formatOverride ?? .path(explode: false)),
        ].compactMapValues { $0 }
    }
}
