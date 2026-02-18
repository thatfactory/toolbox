[![swift-version](https://img.shields.io/badge/swift-6.2-ea7a50.svg?logo=swift&logoColor=white)](https://developer.apple.com/swift/)
[![xcode-version](https://img.shields.io/badge/xcode-26.2-50ace8.svg?logo=xcode&logoColor=white)](https://developer.apple.com/xcode/)
[![spm-ready](https://img.shields.io/badge/spm-ready-b68f6a.svg?logo=gitlfs&logoColor=white)](https://developer.apple.com/documentation/xcode/swift-packages)
[![platforms](https://img.shields.io/badge/platforms-iOS%2017+%20%7C%20macOS%2014+%20-lightgrey.svg?logo=apple&logoColor=white)](https://en.wikipedia.org/wiki/List_of_Apple_operating_systems)
[![license](https://img.shields.io/badge/license-MIT-67ac5b.svg?logo=googledocs&logoColor=white)](https://en.wikipedia.org/wiki/MIT_License)
[![ci](https://github.com/thatfactory/toolbox/actions/workflows/ci.yml/badge.svg)](https://github.com/thatfactory/toolbox/actions/workflows/ci.yml)
[![release](https://github.com/thatfactory/toolbox/actions/workflows/release.yml/badge.svg)](https://github.com/thatfactory/toolbox/actions/workflows/release.yml)

# Toolbox 🧰
A collection of useful Swift tools.

## Tools
Tool | Description
--- | ---
`CodableError` | Defines a `Codable` wrapper for Apple's `Error`.
`jsonDataFromFile(_:)` | Loads the contents of a JSON resource bundled with the app or test target. Returns a `Data` instance containing the raw bytes of the JSON file.

## Integration
### Xcode
Use Xcode's [built-in support for SPM](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app).

*or...*

### Package.swift
In your `Package.swift`, add `Toolbox` as a dependency:

```swift
dependencies: [
    .package(
        url: "https://github.com/thatfactory/toolbox",
        from: "0.1.0"
    )
]
```

Associate the dependency with your target:

```swift
targets: [
    .target(
        name: "YourTarget",
        dependencies: [
            .product(
                name: "Toolbox",
                package: "toolbox"
            )
        ]
    )
]
```

Run: `swift build`
