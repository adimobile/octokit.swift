// swift-tools-version:5.5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OctoKit",

    products: [
        .library(
            name: "OctoKit",
            targets: ["OctoKit"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/nerdishbynature/RequestKit.git", from: "3.3.0"),
        .package(url: "https://github.com/adimobile/SwiftFormat", branch: "main")
    ],
    targets: [
        .target(
            name: "OctoKit",
            dependencies: ["RequestKit"],
            path: "OctoKit"
        ),
        .testTarget(
            name: "OctoKitTests",
            dependencies: ["OctoKit"]
        ),
    ]
)
