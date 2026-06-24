<p align="center">
  <a href="https://developer.apple.com/swift/"><img alt="Swift" src="https://img.shields.io/badge/Swift-6.4-ea7a50.svg?logo=swift&logoColor=white"></a>
  <a href="https://developer.apple.com/xcode/"><img alt="Xcode" src="https://img.shields.io/badge/Xcode-27-50ace8.svg?logo=xcode&logoColor=white"></a>
  <a href="https://en.wikipedia.org/wiki/List_of_Apple_operating_systems"><img alt="Platforms" src="https://img.shields.io/badge/Platforms-iOS%2026%2B%20%7C%20macOS%2026%2B-lightgrey.svg?logo=apple&logoColor=white"></a>
  <a href="https://developer.apple.com/documentation/xcode/swift-packages"><img alt="SPM" src="https://img.shields.io/badge/SPM-ready-b68f6a.svg?logo=gitlfs&logoColor=white"></a>
  <a href="https://en.wikipedia.org/wiki/MIT_License"><img alt="License" src="https://img.shields.io/badge/License-MIT-67ac5b.svg?logo=googledocs&logoColor=white"></a>
  <a href="https://github.com/thatfactory/toolbox/actions/workflows/ci.yml"><img alt="CI" src="https://github.com/thatfactory/toolbox/actions/workflows/ci.yml/badge.svg"></a>
  <a href="https://github.com/thatfactory/toolbox/actions/workflows/release.yml"><img alt="Release" src="https://github.com/thatfactory/toolbox/actions/workflows/release.yml/badge.svg"></a>
</p>

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
        from: "0.1.1"
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
