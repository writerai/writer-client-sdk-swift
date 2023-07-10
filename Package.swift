// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "Writer",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "Writer",
            targets: ["Writer"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Writer",
            dependencies: []
        )
  ]
)
