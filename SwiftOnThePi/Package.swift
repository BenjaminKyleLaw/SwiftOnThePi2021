// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftOnThePi",
    products: [
        .library(
            name: "SwiftOnThePi",
            targets: ["SwiftOnThePi"]),
    ],
    dependencies: [
        .package(url: "https://github.com/uraimo/SwiftyGPIO.git", from: "1.1.14")
    ],
    targets: [
        .target(
            name: "SwiftOnThePi",
            dependencies: ["SwiftyGPIO"]),
        .testTarget(
            name: "SwiftOnThePiTests",
            dependencies: ["SwiftOnThePi"]),
    ]
)
