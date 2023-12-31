// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

extension Client: SnippetAPI { 
    public func deleteSnippets(request: Operations.DeleteSnippetsRequest) async throws -> Operations.DeleteSnippetsResponse {
        return try await makeRequest(
            configureRequest: { configuration in
                try configureDeleteSnippetsRequest(with: configuration, request: request)
            },
            handleResponse: handleDeleteSnippetsResponse
        )
    }
    public func findSnippets(request: Operations.FindSnippetsRequest) async throws -> Operations.FindSnippetsResponse {
        return try await makeRequest(
            configureRequest: { configuration in
                try configureFindSnippetsRequest(with: configuration, request: request)
            },
            handleResponse: handleFindSnippetsResponse
        )
    }
    public func updateSnippets(request: Operations.UpdateSnippetsRequest) async throws -> Operations.UpdateSnippetsResponse {
        return try await makeRequest(
            configureRequest: { configuration in
                try configureUpdateSnippetsRequest(with: configuration, request: request)
            },
            handleResponse: handleUpdateSnippetsResponse
        )
    }
}

// MARK: - Request Configuration

private func configureDeleteSnippetsRequest(with configuration: URLRequestConfiguration, request: Operations.DeleteSnippetsRequest) throws {
    configuration.path = "/snippet/organization/{organizationId}/team/{teamId}"
    configuration.method = .delete
    configuration.pathParameterSerializable = request
    configuration.queryParameterSerializable = request
    configuration.headerParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureFindSnippetsRequest(with configuration: URLRequestConfiguration, request: Operations.FindSnippetsRequest) throws {
    configuration.path = "/snippet/organization/{organizationId}/team/{teamId}"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.queryParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureUpdateSnippetsRequest(with configuration: URLRequestConfiguration, request: Operations.UpdateSnippetsRequest) throws {
    configuration.path = "/snippet/organization/{organizationId}/team/{teamId}"
    configuration.method = .put
    configuration.pathParameterSerializable = request
    configuration.headerParameterSerializable = request
    configuration.contentType = "application/json"
    configuration.body = try jsonEncoder().encode(request.requestBody)
    configuration.telemetryHeader = .userAgent
}

// MARK: - Response Handlers

private func handleDeleteSnippetsResponse(response: WriterResponse) throws -> Operations.DeleteSnippetsResponse {
    var responseObject = Operations.DeleteSnippetsResponse(
        contentType: response.contentType,
        statusCode: response.statusCode,
        rawResponse: response.httpResponse
    )
    
    if responseObject.statusCode == 200 { 
        // res.headers = r.headers
        if response.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                responseObject.deleteResponse = try JSONDecoder().decode(Shared.DeleteResponse.self, from: data)
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

private func handleFindSnippetsResponse(response: WriterResponse) throws -> Operations.FindSnippetsResponse {
    var responseObject = Operations.FindSnippetsResponse(
        contentType: response.contentType,
        statusCode: response.statusCode,
        rawResponse: response.httpResponse
    )
    
    if responseObject.statusCode == 200 { 
        // res.headers = r.headers
        if response.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                responseObject.paginatedResultSnippetWithUser = try JSONDecoder().decode(Shared.PaginatedResultSnippetWithUser.self, from: data)
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

private func handleUpdateSnippetsResponse(response: WriterResponse) throws -> Operations.UpdateSnippetsResponse {
    var responseObject = Operations.UpdateSnippetsResponse(
        contentType: response.contentType,
        statusCode: response.statusCode,
        rawResponse: response.httpResponse
    )
    
    if responseObject.statusCode == 200 { 
        // res.headers = r.headers
        if response.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                responseObject.snippetWithUsers = try JSONDecoder().decode([Shared.SnippetWithUser].self, from: data)
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

