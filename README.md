<div align="center">
    <picture>
        <source srcset="https://user-images.githubusercontent.com/6267663/223574357-9a053550-02f9-49f1-b453-1b11db148d7b.svg" media="(prefers-color-scheme: dark)" width="500">
        <img src="https://user-images.githubusercontent.com/6267663/223574369-77805bfe-6d95-44e8-ac48-f9494101e1dc.svg" width="500">
    </picture>
    <h1>iOS SDK [Not Yet Published]</h1>
   <p>AI for everyone.</p>
   <a href="https://dev.writer.com/docs"><img src="https://img.shields.io/static/v1?label=Docs&message=API Ref&color=000000&style=for-the-badge" /></a>
  <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge" /></a>
  <a href="https://github.com/writerai/writer-client-sdk-swift/releases"><img src="https://img.shields.io/github/v/release/writerai/writer-client-sdk-swift?sort=semver&style=for-the-badge" /></a>
</div>

## Requirements

The SDK supports iOS 13 and later.

<!-- Start SDK Installation -->
## Installation

### Swift Package Manager

You can add `Writer` to your project directly in Xcode `(File > Add Packages...)` or by adding it to your project's Package.swift file:

```bash
dependencies: [
    .package(url: "", .upToNextMajor(from: "0.0.3"))
]
```

<!-- End SDK Installation -->

## Authentication

Writer authenticates your API requests using your account’s API keys. If you do not include your key when making an API request, or use one that is incorrect or outdated, Writer returns an error.

Your API keys are available in the account dashboard. We include randomly generated API keys in our code examples if you are not logged in. Replace these with your own or log in to see code examples populated with your own API keys.

<img width="1070" alt="writer-auth" src="https://user-images.githubusercontent.com/6267663/223578295-89087c24-c55a-48bf-b74a-5f057e21e14f.png">

If you cannot see your secret API keys in the Dashboard, this means you do not have access to them. Contact your Writer account owner and ask to be added to their team as a developer.

## Usage

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

## Documentation

You can find more extensive documentation in the [hosted documentation](https://writerai.github.io/writer-client-sdk-swift/documentation/writer).

## Maturity

This SDK is in beta, and there may be breaking changes between versions without a major version update. Therefore, we recommend pinning usage
to a specific package version. This way, you can install the same version each time without breaking changes unless you are intentionally
looking for the latest version.

## Contributions

While we value open-source contributions to this SDK, this library is generated programmatically.
Feel free to open a PR or a GitHub issue as a proof of concept and we'll do our best to include it in a future release!

### SDK Created by [Speakeasy](https://docs.speakeasyapi.dev/docs/using-speakeasy/client-sdks)
