# ``Writer``



`Writer` is a Swift library which provides functionality for making requests to the API using a modern, easy-to-use Swift API:

```swift
import Foundation
import Writer

let client = Client(security: .apiKey(""))
let response = try await client.aiContentDetector.detectContent(
    request: Operations.DetectContentRequest(
        contentDetectorRequest: Shared.ContentDetectorRequest(
            input: "provident"
        ), 
    )
)

if let res = response.contentDetectorResponses {
    // Handle response
}

```

### Getting started
- ``WriterAPI`` defines the available API operations, including operations which are logically grouped by name (for example under ``WriterAPI/aiContentDetector``).
- ``Client`` is the main object used when making requests to the API, and implements ``WriterAPI`` to provide this functionality.  Each available API method is exposed as an `async` function, which you can call and `await` its response and handle any errors that are thrown.
- API methods that require input data take a *request object* describing these parameters, and each method returns a *response object* containing information about the response. You can read more about these in <doc:Client#Request-and-response-objects>.
- Requests to the API must be authenticated. You can provide authentication credentials by initializing ``Client`` with a ``Shared/Security`` value.
- If an error occurs when making a request to the API, a ``WriterError`` error is thrown with more information about what went wrong.

## Topics

### Connecting to the API

- ``Client``
- ``GlobalParameters``
- ``Shared/Security``
- ``WriterError``

### API operations

- ``Writer/WriterAPI``
- ``AIContentDetectorAPI``
- ``BillingAPI``
- ``CoWriteAPI``
- ``CompletionsAPI``
- ``ContentAPI``
- ``DownloadTheCustomizedModelAPI``
- ``FilesAPI``
- ``ModelCustomizationAPI``
- ``ModelsAPI``
- ``SnippetAPI``
- ``StyleguideAPI``
- ``TerminologyAPI``
- ``UserAPI``
- ``DocumentAPI``

### Server configuration

### Shared models
- ``Shared/ApprovedTermExtension``
- ``Shared/ApprovedTermExtensionCreate``
- ``Shared/BriefDocument``
- ``Shared/BriefDocumentAccess``
- ``Shared/BriefDocuments``
- ``Shared/CompletionGenerationChoice``
- ``Shared/CompletionGenerationChoiceLogprobs``
- ``Shared/CompletionRequest``
- ``Shared/CompletionResponse``
- ``Shared/ContentDetectorRequest``
- ``Shared/ContentDetectorResponse``
- ``Shared/ContentDetectorResponseLabel``
- ``Shared/ContentIssue``
- ``Shared/ContentIssueService``
- ``Shared/ContentRequest``
- ``Shared/ContentSettings``
- ``Shared/CorrectionResponse``
- ``Shared/CreateCustomizationRequest``
- ``Shared/CreateTermsRequest``
- ``Shared/CreateTermsRequestFailHandling``
- ``Shared/CreateTermsResponse``
- ``Shared/CustomizationsResponse``
- ``Shared/DeleteResponse``
- ``Shared/Document``
- ``Shared/DocumentAccess``
- ``Shared/Draft``
- ``Shared/FailMessage``
- ``Shared/FailResponse``
- ``Shared/FullLinkedTerm``
- ``Shared/FullLinkedTermPos``
- ``Shared/FullTermWithUser``
- ``Shared/FullTermWithUserPos``
- ``Shared/FullTermWithUserType``
- ``Shared/GenerateTemplateRequest``
- ``Shared/GenerationModelInfoResponse``
- ``Shared/GenerationModelInfoResponseType``
- ``Shared/GenerationModelsResponse``
- ``Shared/HyperParameters``
- ``Shared/Input``
- ``Shared/InputType``
- ``Shared/LinkedTermCreate``
- ``Shared/MagicRequestInput``
- ``Shared/MetaData``
- ``Shared/MetaDataTier``
- ``Shared/ModelCustomization``
- ``Shared/ModelFile``
- ``Shared/ModelFilesResponse``
- ``Shared/PagePublicApiResponse``
- ``Shared/PagePublicApiResponseStatus``
- ``Shared/PageWithSectionResponse``
- ``Shared/PageWithSectionResponseStatus``
- ``Shared/PaginatedResultFullTermWithUser``
- ``Shared/PaginatedResultPagePublicApiResponse``
- ``Shared/PaginatedResultSnippetWithUser``
- ``Shared/PaginatedResultUserPublicResponse``
- ``Shared/Pagination``
- ``Shared/ProcessedContent``
- ``Shared/SectionInfo``
- ``Shared/SimpleUser``
- ``Shared/SnippetTagV2``
- ``Shared/SnippetUpdate``
- ``Shared/SnippetWithUser``
- ``Shared/SubscriptionPublicResponseApi``
- ``Shared/SubscriptionPublicResponseApiProductName``
- ``Shared/SubscriptionPublicResponseApiStatus``
- ``Shared/TemplateDetailsResponse``
- ``Shared/TermCreate``
- ``Shared/TermCreatePos``
- ``Shared/TermCreateType``
- ``Shared/TermExample``
- ``Shared/TermExampleType``
- ``Shared/TermExampleCreate``
- ``Shared/TermExampleCreateType``
- ``Shared/TerminologyUser``
- ``Shared/TermMistake``
- ``Shared/TermMistakePos``
- ``Shared/TermMistakeCreate``
- ``Shared/TermMistakeCreatePos``
- ``Shared/TermTagCreate``
- ``Shared/TermTagResponse``
- ``Shared/TermUpdate``
- ``Shared/TermUpdatePos``
- ``Shared/TermUpdateType``
- ``Shared/UpdateTermsRequestFailHandling``
- ``Shared/UpdateTermsRequestShared``
- ``Shared/UploadModelFileRequest``
- ``Shared/UploadModelFileRequestFile``
- ``Shared/Usage``
- ``Shared/UsageItem``
- ``Shared/UserPublicResponse``
- ``Shared/UserPublicResponseAccountStatus``

### Request objects
- ``Operations/AddTermsRequest``
- ``Operations/ContentCheckRequest``
- ``Operations/ContentCorrectRequest``
- ``Operations/CreateCompletionRequest``
- ``Operations/CreateModelCustomizationCompletionRequest``
- ``Operations/CreateModelCustomizationRequest``
- ``Operations/DeleteFileRequest``
- ``Operations/DeleteModelCustomizationRequest``
- ``Operations/DeleteSnippetsRequest``
- ``Operations/DeleteTermsRequest``
- ``Operations/DetectContentRequest``
- ``Operations/FetchCustomizedModelFileRequest``
- ``Operations/FindSnippetsRequest``
- ``Operations/FindTermsRequest``
- ``Operations/GenerateContentRequest``
- ``Operations/GetDocumentDetailsRequest``
- ``Operations/GetFileRequest``
- ``Operations/GetModelCustomizationRequest``
- ``Operations/ListFilesRequest``
- ``Operations/ListModelCustomizationsRequest``
- ``Operations/ListModelsRequest``
- ``Operations/ListPagesRequest``
- ``Operations/ListTeamDocumentsRequest``
- ``Operations/ListTemplatesRequest``
- ``Operations/ListUsersRequest``
- ``Operations/PageDetailsRequest``
- ``Operations/UpdateSnippetsRequest``
- ``Operations/UpdateTermsRequest``
- ``Operations/UploadFileRequest``

### Response objects
- ``Operations/AddTermsResponse``
- ``Operations/ContentCheckResponse``
- ``Operations/ContentCorrectResponse``
- ``Operations/CreateCompletionResponse``
- ``Operations/CreateModelCustomizationCompletionResponse``
- ``Operations/CreateModelCustomizationResponse``
- ``Operations/DeleteFileResponse``
- ``Operations/DeleteModelCustomizationResponse``
- ``Operations/DeleteSnippetsResponse``
- ``Operations/DeleteTermsResponse``
- ``Operations/DetectContentResponse``
- ``Operations/FetchCustomizedModelFileResponse``
- ``Operations/FindSnippetsResponse``
- ``Operations/FindTermsResponse``
- ``Operations/GenerateContentResponse``
- ``Operations/GetDocumentDetailsResponse``
- ``Operations/GetFileResponse``
- ``Operations/GetModelCustomizationResponse``
- ``Operations/GetSubscriptionDetailsResponse``
- ``Operations/ListFilesResponse``
- ``Operations/ListModelCustomizationsResponse``
- ``Operations/ListModelsResponse``
- ``Operations/ListPagesResponse``
- ``Operations/ListTeamDocumentsResponse``
- ``Operations/ListTemplatesResponse``
- ``Operations/ListUsersResponse``
- ``Operations/PageDetailsResponse``
- ``Operations/UpdateSnippetsResponse``
- ``Operations/UpdateTermsResponse``
- ``Operations/UploadFileResponse``

### Other models
- ``Operations/DeleteFile200ApplicationJSON``
- ``Operations/DeleteModelCustomization200ApplicationJSON``
- ``Operations/FindSnippetsSortField``
- ``Operations/FindSnippetsSortOrder``
- ``Operations/FindTermsPartOfSpeech``
- ``Operations/FindTermsSortField``
- ``Operations/FindTermsSortOrder``
- ``Operations/FindTermsType``
- ``Operations/ListPagesStatus``
- ``Operations/ListTeamDocumentsSortField``
- ``Operations/ListTeamDocumentsSortOrder``
- ``Operations/ListUsersSortField``
- ``Operations/ListUsersSortOrder``

### Type groupings
- ``Operations``
- ``Shared``

### Data types

- ``AnyValue``
- ``APIValue``

### Internal data types

- ``DateConvertible``
- ``DateOnly``
- ``DateTime``
- ``DecimalSerialized``
- ``DoubleConvertible``
