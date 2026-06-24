// swift-tools-version:6.4

import PackageDescription

let package = Package(
    name: "Toolbox",
    platforms: [
        .iOS(.v26),
        .macOS(.v26)
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
