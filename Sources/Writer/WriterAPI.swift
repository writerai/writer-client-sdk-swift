// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

/// Defines the operations supported by the API.
///
/// This protocol defines all of the operations supported by the API. It is implemented by ``Client`` which can be used to make these API requests and handle their responses.
///
/// ## Topics
///
/// ### API calls
///
/// These methods allow you to make requests to the API.
///
///
/// ### Scoped API calls
///
/// These properties logically group other parts of the API.
///
/// - ``aiContentDetector``
/// - ``billing``
/// - ``coWrite``
/// - ``completions``
/// - ``content``
/// - ``downloadTheCustomizedModel``
/// - ``files``
/// - ``modelCustomization``
/// - ``models``
/// - ``snippet``
/// - ``styleguide``
/// - ``terminology``
/// - ``user``
/// - ``document``
///
public protocol WriterAPI {

    // MARK: - Scoped APIs
    /// Methods related to AI Content Detector
    var aiContentDetector: AIContentDetectorAPI { get }
    /// Methods related to Billing
    var billing: BillingAPI { get }
    /// Methods related to CoWrite
    var coWrite: CoWriteAPI { get }
    /// Methods related to Completions
    var completions: CompletionsAPI { get }
    /// Methods related to Content
    var content: ContentAPI { get }
    /// Methods related to Download the customized model
    var downloadTheCustomizedModel: DownloadTheCustomizedModelAPI { get }
    /// Methods related to Files
    var files: FilesAPI { get }
    /// Methods related to Model Customization
    var modelCustomization: ModelCustomizationAPI { get }
    /// Methods related to Model
    var models: ModelsAPI { get }
    /// Methods related to Snippets
    var snippet: SnippetAPI { get }
    /// Methods related to Styleguide
    var styleguide: StyleguideAPI { get }
    /// Methods related to Terminology
    var terminology: TerminologyAPI { get }
    /// Methods related to User
    var user: UserAPI { get }
    /// Methods related to document
    var document: DocumentAPI { get }
}

// MARK: - AIContentDetectorAPI

/// Methods related to AI Content Detector
///
/// ## Topics
///
/// ### API calls
///
/// - ``detectContent(request:)``
///
public protocol AIContentDetectorAPI {
    /// Content detector api
    /// 
    /// - Parameter request: A ``Operations/DetectContentRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/DetectContentResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``WriterError``
    func detectContent(request: Operations.DetectContentRequest) async throws -> Operations.DetectContentResponse
}

// MARK: - BillingAPI

/// Methods related to Billing
///
/// ## Topics
///
/// ### API calls
///
/// - ``getSubscriptionDetails()``
///
public protocol BillingAPI {
    /// Get your organization subscription details
    /// 
    /// - Returns: A ``Operations/GetSubscriptionDetailsResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``WriterError``
    func getSubscriptionDetails() async throws -> Operations.GetSubscriptionDetailsResponse
}

// MARK: - CoWriteAPI

/// Methods related to CoWrite
///
/// ## Topics
///
/// ### API calls
///
/// - ``generateContent(request:)``
/// - ``listTemplates(request:)``
///
public protocol CoWriteAPI {
    /// Generate content using predefined templates
    /// 
    /// - Parameter request: A ``Operations/GenerateContentRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/GenerateContentResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``WriterError``
    func generateContent(request: Operations.GenerateContentRequest) async throws -> Operations.GenerateContentResponse

    /// Get a list of your existing CoWrite templates
    /// 
    /// - Parameter request: A ``Operations/ListTemplatesRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/ListTemplatesResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``WriterError``
    func listTemplates(request: Operations.ListTemplatesRequest) async throws -> Operations.ListTemplatesResponse
}

// MARK: - CompletionsAPI

/// Methods related to Completions
///
/// ## Topics
///
/// ### API calls
///
/// - ``createCompletion(request:)``
/// - ``createModelCustomizationCompletion(request:)``
///
public protocol CompletionsAPI {
    /// Create completion for LLM model
    /// 
    /// - Parameter request: A ``Operations/CreateCompletionRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/CreateCompletionResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``WriterError``
    func createCompletion(request: Operations.CreateCompletionRequest) async throws -> Operations.CreateCompletionResponse

    /// Create completion for LLM customization model
    /// 
    /// - Parameter request: A ``Operations/CreateModelCustomizationCompletionRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/CreateModelCustomizationCompletionResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``WriterError``
    func createModelCustomizationCompletion(request: Operations.CreateModelCustomizationCompletionRequest) async throws -> Operations.CreateModelCustomizationCompletionResponse
}

// MARK: - ContentAPI

/// Methods related to Content
///
/// ## Topics
///
/// ### API calls
///
/// - ``contentCheck(request:)``
/// - ``contentCorrect(request:)``
///
public protocol ContentAPI {
    /// Check your content against your preset styleguide.
    /// 
    /// - Parameter request: A ``Operations/ContentCheckRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/ContentCheckResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``WriterError``
    func contentCheck(request: Operations.ContentCheckRequest) async throws -> Operations.ContentCheckResponse

    /// Apply the style guide suggestions directly to your content.
    /// 
    /// - Parameter request: A ``Operations/ContentCorrectRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/ContentCorrectResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``WriterError``
    func contentCorrect(request: Operations.ContentCorrectRequest) async throws -> Operations.ContentCorrectResponse
}

// MARK: - DownloadTheCustomizedModelAPI

/// Methods related to Download the customized model
///
/// ## Topics
///
/// ### API calls
///
/// - ``fetchCustomizedModelFile(request:)``
///
public protocol DownloadTheCustomizedModelAPI {
    /// Download your fine-tuned model (available only for Palmyra Base and Palmyra Large)
    /// 
    /// - Parameter request: A ``Operations/FetchCustomizedModelFileRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/FetchCustomizedModelFileResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``WriterError``
    func fetchCustomizedModelFile(request: Operations.FetchCustomizedModelFileRequest) async throws -> Operations.FetchCustomizedModelFileResponse
}

// MARK: - FilesAPI

/// Methods related to Files
///
/// ## Topics
///
/// ### API calls
///
/// - ``deleteFile(request:)``
/// - ``getFile(request:)``
/// - ``listFiles(request:)``
/// - ``uploadFile(request:)``
///
public protocol FilesAPI {
    /// Delete file
    /// 
    /// - Parameter request: A ``Operations/DeleteFileRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/DeleteFileResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``WriterError``
    func deleteFile(request: Operations.DeleteFileRequest) async throws -> Operations.DeleteFileResponse

    /// Get file
    /// 
    /// - Parameter request: A ``Operations/GetFileRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/GetFileResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``WriterError``
    func getFile(request: Operations.GetFileRequest) async throws -> Operations.GetFileResponse

    /// List files
    /// 
    /// - Parameter request: A ``Operations/ListFilesRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/ListFilesResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``WriterError``
    func listFiles(request: Operations.ListFilesRequest) async throws -> Operations.ListFilesResponse

    /// Upload file
    /// 
    /// - Parameter request: A ``Operations/UploadFileRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/UploadFileResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``WriterError``
    func uploadFile(request: Operations.UploadFileRequest) async throws -> Operations.UploadFileResponse
}

// MARK: - ModelCustomizationAPI

/// Methods related to Model Customization
///
/// ## Topics
///
/// ### API calls
///
/// - ``createModelCustomization(request:)``
/// - ``deleteModelCustomization(request:)``
/// - ``getModelCustomization(request:)``
/// - ``listModelCustomizations(request:)``
///
public protocol ModelCustomizationAPI {
    /// Create model customization
    /// 
    /// - Parameter request: A ``Operations/CreateModelCustomizationRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/CreateModelCustomizationResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``WriterError``
    func createModelCustomization(request: Operations.CreateModelCustomizationRequest) async throws -> Operations.CreateModelCustomizationResponse

    /// Delete Model customization
    /// 
    /// - Parameter request: A ``Operations/DeleteModelCustomizationRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/DeleteModelCustomizationResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``WriterError``
    func deleteModelCustomization(request: Operations.DeleteModelCustomizationRequest) async throws -> Operations.DeleteModelCustomizationResponse

    /// Get model customization
    /// 
    /// - Parameter request: A ``Operations/GetModelCustomizationRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/GetModelCustomizationResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``WriterError``
    func getModelCustomization(request: Operations.GetModelCustomizationRequest) async throws -> Operations.GetModelCustomizationResponse

    /// List model customizations
    /// 
    /// - Parameter request: A ``Operations/ListModelCustomizationsRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/ListModelCustomizationsResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``WriterError``
    func listModelCustomizations(request: Operations.ListModelCustomizationsRequest) async throws -> Operations.ListModelCustomizationsResponse
}

// MARK: - ModelsAPI

/// Methods related to Model
///
/// ## Topics
///
/// ### API calls
///
/// - ``listModels(request:)``
///
public protocol ModelsAPI {
    /// List available LLM models
    /// 
    /// - Parameter request: A ``Operations/ListModelsRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/ListModelsResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``WriterError``
    func listModels(request: Operations.ListModelsRequest) async throws -> Operations.ListModelsResponse
}

// MARK: - SnippetAPI

/// Methods related to Snippets
///
/// ## Topics
///
/// ### API calls
///
/// - ``deleteSnippets(request:)``
/// - ``findSnippets(request:)``
/// - ``updateSnippets(request:)``
///
public protocol SnippetAPI {
    /// Delete snippets
    /// 
    /// - Parameter request: A ``Operations/DeleteSnippetsRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/DeleteSnippetsResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``WriterError``
    func deleteSnippets(request: Operations.DeleteSnippetsRequest) async throws -> Operations.DeleteSnippetsResponse

    /// Find snippets
    /// 
    /// - Parameter request: A ``Operations/FindSnippetsRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/FindSnippetsResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``WriterError``
    func findSnippets(request: Operations.FindSnippetsRequest) async throws -> Operations.FindSnippetsResponse

    /// Update snippets
    /// 
    /// - Parameter request: A ``Operations/UpdateSnippetsRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/UpdateSnippetsResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``WriterError``
    func updateSnippets(request: Operations.UpdateSnippetsRequest) async throws -> Operations.UpdateSnippetsResponse
}

// MARK: - StyleguideAPI

/// Methods related to Styleguide
///
/// ## Topics
///
/// ### API calls
///
/// - ``pageDetails(request:)``
/// - ``listPages(request:)``
///
public protocol StyleguideAPI {
    /// Page details
    /// 
    /// - Parameter request: A ``Operations/PageDetailsRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/PageDetailsResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``WriterError``
    func pageDetails(request: Operations.PageDetailsRequest) async throws -> Operations.PageDetailsResponse

    /// List your styleguide pages
    /// 
    /// - Parameter request: A ``Operations/ListPagesRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/ListPagesResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``WriterError``
    func listPages(request: Operations.ListPagesRequest) async throws -> Operations.ListPagesResponse
}

// MARK: - TerminologyAPI

/// Methods related to Terminology
///
/// ## Topics
///
/// ### API calls
///
/// - ``addTerms(request:)``
/// - ``deleteTerms(request:)``
/// - ``findTerms(request:)``
/// - ``updateTerms(request:)``
///
public protocol TerminologyAPI {
    /// Add terms
    /// 
    /// - Parameter request: A ``Operations/AddTermsRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/AddTermsResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``WriterError``
    func addTerms(request: Operations.AddTermsRequest) async throws -> Operations.AddTermsResponse

    /// Delete terms
    /// 
    /// - Parameter request: A ``Operations/DeleteTermsRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/DeleteTermsResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``WriterError``
    func deleteTerms(request: Operations.DeleteTermsRequest) async throws -> Operations.DeleteTermsResponse

    /// Find terms
    /// 
    /// - Parameter request: A ``Operations/FindTermsRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/FindTermsResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``WriterError``
    func findTerms(request: Operations.FindTermsRequest) async throws -> Operations.FindTermsResponse

    /// Update terms
    /// 
    /// - Parameter request: A ``Operations/UpdateTermsRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/UpdateTermsResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``WriterError``
    func updateTerms(request: Operations.UpdateTermsRequest) async throws -> Operations.UpdateTermsResponse
}

// MARK: - UserAPI

/// Methods related to User
///
/// ## Topics
///
/// ### API calls
///
/// - ``listUsers(request:)``
///
public protocol UserAPI {
    /// List users
    /// 
    /// - Parameter request: A ``Operations/ListUsersRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/ListUsersResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``WriterError``
    func listUsers(request: Operations.ListUsersRequest) async throws -> Operations.ListUsersResponse
}

// MARK: - DocumentAPI

/// Methods related to document
///
/// ## Topics
///
/// ### API calls
///
/// - ``getDocumentDetails(request:)``
/// - ``listTeamDocuments(request:)``
///
public protocol DocumentAPI {
    /// Get document details
    /// 
    /// - Parameter request: A ``Operations/GetDocumentDetailsRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/GetDocumentDetailsResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``WriterError``
    func getDocumentDetails(request: Operations.GetDocumentDetailsRequest) async throws -> Operations.GetDocumentDetailsResponse

    /// List team documents
    /// 
    /// - Parameter request: A ``Operations/ListTeamDocumentsRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/ListTeamDocumentsResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``WriterError``
    func listTeamDocuments(request: Operations.ListTeamDocumentsRequest) async throws -> Operations.ListTeamDocumentsResponse
}