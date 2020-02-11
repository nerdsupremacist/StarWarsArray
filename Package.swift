// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "StarWarsArray",
    products: [
        .library(
            name: "StarWarsArray",
            targets: ["StarWarsArray"]),
    ],
    targets: [
        .target(
            name: "StarWarsArray",
            dependencies: []),
        .testTarget(
            name: "StarWarsArrayTests",
            dependencies: ["StarWarsArray"]),
    ]
)
