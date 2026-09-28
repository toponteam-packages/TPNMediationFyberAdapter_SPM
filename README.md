# TopOn - iOS Fyber (DT Exchange) Mediation Adapter

The TopOn Fyber (DT Exchange) mediation adapter for iOS, distributed via Swift Package Manager.

## Requirements

- iOS 13.0+
- Xcode 15.0+
- TopOn iOS Core SDK (`TPNiOS`) 6.5.0+

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/toponteam-packages/TPNMediationFyberAdapter_SPM
   ```
3. Select **Exact Version** and enter the target version (e.g. `80407.2.1`).
4. Add the `TPNMediationFyberAdapter` product to your app target.
5. In your target's **Build Settings**, add `-ObjC` to **Other Linker Flags**.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/toponteam-packages/TPNMediationFyberAdapter_SPM.git",
        exact: "80407.2.1"
    )
]
```

## Included dependencies

- [`TPNiOS`](https://github.com/toponteam-packages/TPNiOS_SPM) (>= 6.5.0)
- [`DTExchangeSDK`](https://github.com/inner-active/DTExchangeSDK-iOS-SPM) (pinned to the version certified for this adapter release)

## More information

- [TopOn iOS Integration Guide](https://docs.toponad.com)
