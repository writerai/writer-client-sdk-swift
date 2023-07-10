// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

extension Operations.ListPagesStatus: Serializable {
    func serialize(with format: SerializableFormat) throws -> String {
        return try rawValue.serialize(with: format)
    }

    func serializeQueryParameters(with format: SerializableFormat) throws -> [QueryParameter] {
        return [QueryParameter(key: [], serialized: try serialize(with: format))]
    }
}
