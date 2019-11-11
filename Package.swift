// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ApsEnvironment",
    products: [
        .library(name: "ApsEnvironment", targets: ["ApsEnvironment"]),
    ],
    targets: [
        .target(name: "ApsEnvironment", dependencies: []),
    ]
)
