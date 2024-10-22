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
            .exact("12.0.0")
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
            url: "https://github.com/combateafraude/iOS/releases/download/FaceLiveness-6.0.0/FaceLiveness.xcframework.zip",
            checksum: "29d5843ceaece83105de4a9847ce5fe3eeb7977cbaedfc8ff09019b1506bc7d5"
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
