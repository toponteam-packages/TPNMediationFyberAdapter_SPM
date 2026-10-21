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
            checksum: "314e3f4976f91e0ab1e5b4dbed6d0d6e0760656d514d5f54d4ead4a2acf36d8e"
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
