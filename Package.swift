// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WebPKit",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "WebPKit",
            targets: ["WebPKit"]),
    ],
    dependencies: [
        .package(name: "libwebp", url: "https://github.com/SDWebImage/libwebp-Xcode", from: "1.1.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "WebPKit",
            dependencies: ["libwebp"],
            path: "Sources"),
        .testTarget(
            name: "WebPKitTests",
            dependencies: ["WebPKit","libwebp"]),
    ],
    swiftLanguageVersions: [
        .v5
    ]
)


