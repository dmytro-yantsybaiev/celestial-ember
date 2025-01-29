// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Core",
    platforms: [
        .iOS(.v18),
    ],
    products: [
        .library(name: "Coordinator", targets: ["Coordinator"]),
        .library(name: "CoordinatorLive", targets: ["CoordinatorLive"]),
        .library(name: "Router", targets: ["Router"]),
    ],
    targets: [
        .target(name: "Coordinator", dependencies: ["Router"]),
        .target(name: "CoordinatorLive", dependencies: ["Coordinator"]),
        .target(name: "Router"),
        .testTarget(name: "CoreTests"),
    ],
    swiftLanguageModes: [
        .v6,
    ]
)
