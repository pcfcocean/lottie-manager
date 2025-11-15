// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "LottieManager",
    products: [
        .library(
            name: "LottieManager",
            type: .dynamic,
            targets: ["LottieManager"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/airbnb/lottie-spm.git", from: "4.5.1"),
        .package(
            name: "SnapKit",
            url: "https://github.com/SnapKit/SnapKit.git",
            from: "5.0.1"
        )
    ],
    targets: [
        .target(
            name: "LottieManager",
            dependencies: [
                .product(name: "Lottie", package: "lottie-spm"),
                .byName(name: "SnapKit")
            ]
        )
    ]
)
