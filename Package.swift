// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TPNMediationFyberAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "TPNMediationFyberAdapter",
            targets: ["TPNMediationFyberAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/toponteam-packages/TPNiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/inner-active/DTExchangeSDK-iOS-SPM.git", exact: "8.4.7")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkFyberAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkFyberAdapter/8.4.7.2.9/AnyThinkFyberAdapter-8.4.7.2.9.zip",
            checksum: "3bc6da1bd7fab9a85f3d48ba375913a3311de3906612cb423183c683e279bffc"
        ),
        .target(
            name: "TPNMediationFyberAdapterTarget",
            dependencies: [
                "AnyThinkFyberAdapter",
                .product(name: "TPNiOS", package: "TPNiOS_SPM"),
                .product(name: "DTExchangeSDK", package: "DTExchangeSDK-iOS-SPM")
            ],
            path: "Sources/TPNMediationFyberAdapterTarget"
        )
    ]
)
