// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RouraIOSDK",
    platforms: [
        .iOS(.v18),
        .macOS(.v15),
        .tvOS(.v18),
        .visionOS(.v2),
        .watchOS(.v11)
    ],
    products: [
        // Bundle products (what apps will add)
        .library(name: "RouraIOAuth", targets: ["RouraIOAuth"]),
//        .library(name: "RouraIOCommerce", targets: ["RouraIOCommerce"]),
//        .library(name: "RouraIOCore", targets: ["RouraIOCore"]),
        .library(name: "RouraIOExperiments", targets: ["RouraIOExperiments"]),
//        .library(name: "RouraIOExtras", targets: ["RouraIOExtras"]),
    ],
    dependencies: [
        // Core
//        .package(url: "git@github.com:RouraIO/RIODesignSystem.git", from: "1.0.0"),
//        .package(url: "git@github.com:RouraIO/RIOFoundation.git", from: "1.0.0"),
//        .package(url: "git@github.com:RouraIO/RIOImageKit.git", from: "1.0.0"),
//        .package(url: "git@github.com:RouraIO/RIOLoggerKit.git", from: "1.0.0"),
//        .package(url: "git@github.com:RouraIO/RIONetworking.git", from: "1.0.0"),
//        .package(url: "git@github.com:RouraIO/RIOSwiftUI.git", from: "1.0.0"),

        // Features
        .package(url: "git@github.com:RouraIO/RIOAppleSignIn.git", from: "1.0.0"),
        .package(url: "git@github.com:RouraIO/RIOExperimentationKit.git", from: "1.0.0"),
        .package(url: "git@github.com:RouraIO/RIOGoogleSignIn.git", from: "1.0.1"),
//        .package(url: "git@github.com:RouraIO/RIOHapticsKit.git", from: "1.0.0"),
//        .package(url: "git@github.com:RouraIO/RIOPurchaseKit.git", from: "1.0.0"),
    ],
    targets: [
        // =====================================================
        // MARK: Bundle Targets (thin wrappers)
        // =====================================================

        .target(
            name: "RouraIOAuth",
            dependencies: [
                .product(name: "RIOAppleSignIn", package: "RIOAppleSignIn"),
                .product(name: "RIOGoogleSignIn", package: "RIOGoogleSignIn"),
            ]
        ),

//        .target(
//            name: "RouraIOCommerce",
//            dependencies: [
//                .product(name: "RIOPurchaseKit", package: "RIOPurchaseKit"),
//            ]
//        ),
//
//        .target(
//            name: "RouraIOCore",
//            dependencies: [
//                .product(name: "RIODesignSystem", package: "RIODesignSystem"),
//                .product(name: "RIOFoundation", package: "RIOFoundation"),
//                .product(name: "RIOImageKit", package: "RIOImageKit"),
//                .product(name: "RIOLoggerKit", package: "RIOLoggerKit"),
//                .product(name: "RIONetworking", package: "RIONetworking"),
//                .product(name: "RIOSwiftUI", package: "RIOSwiftUI"),
//            ]
//        ),

        .target(
            name: "RouraIOExperiments",
            dependencies: [
                .product(name: "RIOExperimentationKit", package: "RIOExperimentationKit"),
            ]
        ),

//        .target(
//            name: "RouraIOExtras",
//            dependencies: [
//                .product(name: "RIOHapticsKit", package: "RIOHapticsKit"),
//            ]
//        ),

        // =====================================================
        // MARK: Tests
        // =====================================================

//        .testTarget(
//            name: "RouraIOAuth+UnitTests",
//            dependencies: ["RouraIOAuth"]
//        ),
//
//        .testTarget(
//            name: "RouraIOCommerce+UnitTests",
//            dependencies: ["RouraIOCommerce"]
//        ),
//
//        .testTarget(
//            name: "RouraIOCore+UnitTests",
//            dependencies: ["RouraIOCore"]
//        ),

        .testTarget(
            name: "RouraIOExperiments+UnitTests",
            dependencies: ["RouraIOExperiments"]
        ),

//        .testTarget(
//            name: "RouraIOExtras+UnitTests",
//            dependencies: ["RouraIOExtras"]
//        ),
    ]
)
