// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

extension Client: ModelsAPI { 
    public func listModels(request: Operations.ListModelsRequest) async throws -> Operations.ListModelsResponse {
        return try await makeRequest(
            configureRequest: { configuration in
                try configureListModelsRequest(with: configuration, request: request)
            },
            handleResponse: handleListModelsResponse
        )
    }
}

// MARK: - Request Configuration

private func configureListModelsRequest(with configuration: URLRequestConfiguration, request: Operations.ListModelsRequest) throws {
    configuration.path = "/llm/organization/{organizationId}/model"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

// MARK: - Response Handlers

private func handleListModelsResponse(response: WriterResponse) throws -> Operations.ListModelsResponse {
    var responseObject = Operations.ListModelsResponse(
        contentType: response.contentType,
        statusCode: response.statusCode,
        rawResponse: response.httpResponse
    )
    
    if responseObject.statusCode == 200 { 
        // res.headers = r.headers
        if response.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                responseObject.generationModelsResponse = try JSONDecoder().decode(Shared.GenerationModelsResponse.self, from: data)
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

