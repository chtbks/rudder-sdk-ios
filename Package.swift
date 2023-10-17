// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Rudder",
    platforms: [
        .iOS("12.0"), .tvOS("11.0"), .macOS("10.13"), .watchOS("7.0")
    ],
    products: [
        .library(
            name: "RudderSDK",
            targets: ["RudderSDK"]
        )
    ],
    targets: [
        .target(
            name: "RudderSDK",
            path: "Sources",
            sources: ["Classes/"]
        ),
        .testTarget(
            name: "RudderTests",
            dependencies: ["RudderSDK"]
        )
    ]
)
