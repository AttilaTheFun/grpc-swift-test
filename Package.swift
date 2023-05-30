// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "Dependencies",
    dependencies: [
        .package(url: "https://github.com/grpc/grpc-swift.git", from: "1.15.0")
    ]
)