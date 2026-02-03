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
//        .library(name: "RouraIOAuth", targets: ["RouraIOAuthTarget"]),
//        .library(name: "RouraIOCommerce", targets: ["RouraIOCommerceTarget"]),
//        .library(name: "RouraIOCore", targets: ["RouraIOCoreTarget"]),
        .library(name: "RouraIOExperiments", targets: ["RouraIOExperimentsTarget"]),
//        .library(name: "RouraIOExtras", targets: ["RouraIOExtrasTarget"]),
    ],
    dependencies: [
        // Core
//        .package(url: "https://github.com/RouraIO/RIODesignSystem.git", from: "1.0.0"),
//        .package(url: "https://github.com/RouraIO/RIOFoundation.git", from: "1.0.0"),
//        .package(url: "https://github.com/RouraIO/RIOImageKit.git", from: "1.0.0"),
//        .package(url: "https://github.com/RouraIO/RIOLoggerKit.git", from: "1.0.0"),
//        .package(url: "https://github.com/RouraIO/RIONetworking.git", from: "1.0.0"),
//        .package(url: "https://github.com/RouraIO/RIOSwiftUI.git", from: "1.0.0"),

        // Features
//        .package(url: "https://github.com/RouraIO/RIOAppleSignIn.git", from: "1.0.0"),
        .package(url: "https://github.com/RouraIO/RIOExperimentationKit.git", from: "1.0.0"),
//        .package(url: "https://github.com/RouraIO/RIOGoogleSignIn.git", from: "1.0.0"),
//        .package(url: "https://github.com/RouraIO/RIOHapticsKit.git", from: "1.0.0"),
//        .package(url: "https://github.com/RouraIO/RIOPurchaseKit.git", from: "1.0.0"),
    ],
    targets: [
        // =====================================================
        // MARK: Bundle Targets (thin wrappers)
        // =====================================================

//        .target(
//            name: "RouraIOAuthTarget",
//            dependencies: [
//                .product(name: "RIOAppleSignIn", package: "RIOAppleSignIn"),
//                .product(name: "RIOGoogleSignIn", package: "RIOGoogleSignIn"),
//            ]
//        ),
//
//        .target(
//            name: "RouraIOCommerceTarget",
//            dependencies: [
//                .product(name: "RIOPurchaseKit", package: "RIOPurchaseKit"),
//            ]
//        ),
//
//        .target(
//            name: "RouraIOCoreTarget",
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
            name: "RouraIOExperimentsTarget",
            dependencies: [
                .product(name: "RIOExperimentationKit", package: "RIOExperimentationKit"),
            ]
        ),

//        .target(
//            name: "RouraIOExtrasTarget",
//            dependencies: [
//                .product(name: "RIOHapticsKit", package: "RIOHapticsKit"),
//            ]
//        ),

        // =====================================================
        // MARK: Tests
        // =====================================================

//        .testTarget(
//            name: "RouraIOAuthTargetTests",
//            dependencies: ["RouraIOAuthTarget"]
//        ),
//
//        .testTarget(
//            name: "RouraIOCommerceTargetTests",
//            dependencies: ["RouraIOCommerceTarget"]
//        ),
//
//        .testTarget(
//            name: "RouraIOCoreTargetTests",
//            dependencies: ["RouraIOCoreTarget"]
//        ),

        .testTarget(
            name: "RouraIOExperimentsTarget+UnitTests",
            dependencies: ["RouraIOExperimentsTarget"]
        ),

//        .testTarget(
//            name: "RouraIOExtrasTargetTests",
//            dependencies: ["RouraIOExtrasTarget"]
//        ),
    ]
)
