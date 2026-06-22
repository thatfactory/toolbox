// swift-tools-version:6.4

import PackageDescription

let package = Package(
    name: "Toolbox",
    platforms: [
        .iOS(.v27),
        .macOS(.v27)
    ],
    products: [
        .library(
            name: "Toolbox",
            targets: ["Toolbox"]
        )
    ],
    targets: [
        .target(
            name: "Toolbox"
        ),
        .testTarget(
            name: "ToolboxTests",
            dependencies: ["Toolbox"]
        )
    ]
)
