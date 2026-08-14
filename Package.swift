// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "AXSwift",
    platforms: [
        .macOS(.v13),
    ],
    products: [
        .library(
            name: "AXSwift",
            targets: ["AXSwift"]),
    ],
    targets: [
        .target(
            name: "AXSwift",
            path: "Sources",
            exclude: ["Info.plist", "AXSwift.h"]),
        .executableTarget(name: "AXSwiftExample",
            dependencies: ["AXSwift"],
            path: "AXSwiftExample"),
        .executableTarget(name: "AXSwiftObserverExample",
            dependencies: ["AXSwift"],
            path: "AXSwiftObserverExample"),
    ]
)
