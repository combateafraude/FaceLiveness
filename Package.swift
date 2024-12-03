// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "FaceLiveness",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "FaceLiveness",
            targets: ["FaceLivenessSDK"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/iProov/ios.git",
            .exact("12.2.1")
        ),
        .package(
            url: "https://github.com/fingerprintjs/fingerprintjs-pro-ios.git",
            .exact("2.6.0")
        ),
        .package(
            url: "https://github.com/combateafraude/CafSolutions.git",
            .exact("1.0.0")
        )
    ],
    targets: [
        .binaryTarget(
            name: "FaceLiveness",
            path: "Sources/FaceLiveness.xcframework"
        ),
        .target(
            name: "FaceLivenessSDK",
            dependencies: [
                "FaceLiveness",
                .product(name: "CafSolutions", package: "CafSolutions"),
                .product(name: "iProov", package: "ios"),
                .product(name: "FingerprintPro", package: "fingerprintjs-pro-ios"),
            ],
            path: "./Sources"
        )
    ]
)
