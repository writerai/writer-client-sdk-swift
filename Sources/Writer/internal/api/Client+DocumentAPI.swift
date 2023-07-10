// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

extension Client: DocumentAPI { 
    public func getDocumentDetails(request: Operations.GetDocumentDetailsRequest) async throws -> Operations.GetDocumentDetailsResponse {
        return try await makeRequest(
            configureRequest: { configuration in
                try configureGetDocumentDetailsRequest(with: configuration, request: request)
            },
            handleResponse: handleGetDocumentDetailsResponse
        )
    }
    public func listTeamDocuments(request: Operations.ListTeamDocumentsRequest) async throws -> Operations.ListTeamDocumentsResponse {
        return try await makeRequest(
            configureRequest: { configuration in
                try configureListTeamDocumentsRequest(with: configuration, request: request)
            },
            handleResponse: handleListTeamDocumentsResponse
        )
    }
}

// MARK: - Request Configuration

private func configureGetDocumentDetailsRequest(with configuration: URLRequestConfiguration, request: Operations.GetDocumentDetailsRequest) throws {
    configuration.path = "/organization/{organizationId}/team/{teamId}/document/{documentId}"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureListTeamDocumentsRequest(with configuration: URLRequestConfiguration, request: Operations.ListTeamDocumentsRequest) throws {
    configuration.path = "/organization/{organizationId}/team/{teamId}/document"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.queryParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

// MARK: - Response Handlers

private func handleGetDocumentDetailsResponse(response: WriterResponse) throws -> Operations.GetDocumentDetailsResponse {
    var responseObject = Operations.GetDocumentDetailsResponse(
        contentType: response.contentType,
        statusCode: response.statusCode,
        rawResponse: response.httpResponse
    )
    
    if responseObject.statusCode == 200 { 
        // res.headers = r.headers
        if response.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                responseObject.document = try JSONDecoder().decode(Shared.Document.self, from: data)
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if [400, 401, 403, 404, 500].contains(responseObject.statusCode) { 
        // res.headers = r.headers
        if response.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                responseObject.failResponse = try JSONDecoder().decode(Shared.FailResponse.self, from: data)
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return responseObject
}

private func handleListTeamDocumentsResponse(response: WriterResponse) throws -> Operations.ListTeamDocumentsResponse {
    var responseObject = Operations.ListTeamDocumentsResponse(
        contentType: response.contentType,
        statusCode: response.statusCode,
        rawResponse: response.httpResponse
    )
    
    if responseObject.statusCode == 200 { 
        // res.headers = r.headers
        if response.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                responseObject.briefDocuments = try JSONDecoder().decode(Shared.BriefDocuments.self, from: data)
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if [400, 401, 403, 404, 500].contains(responseObject.statusCode) { 
        // res.headers = r.headers
        if response.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                responseObject.failResponse = try JSONDecoder().decode(Shared.FailResponse.self, from: data)
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return responseObject
}

