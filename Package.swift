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
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkFyberAdapter/8.4.7.2.1/AnyThinkFyberAdapter-8.4.7.2.1.zip",
            checksum: "752704d04a34f28134a9eeffe8a278d503aa19c66e1d1853dfbb04aee312fa66"
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
