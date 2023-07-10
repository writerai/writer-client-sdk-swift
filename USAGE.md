<!-- Start SDK Example Usage -->
```swift
import Foundation
import Writer

let client = Client(security: .apiKey(""))
let response = try await client.aiContentDetector.detectContent(
    request: Operations.DetectContentRequest(
        contentDetectorRequest: Shared.ContentDetectorRequest(
            input: "corrupti"
        ), 
    )
)

if let res = response.contentDetectorResponses {
    // Handle response
}

```
<!-- End SDK Example Usage -->