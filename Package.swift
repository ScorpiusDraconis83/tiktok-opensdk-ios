// swift-tools-version:5.5
/*
 * Copyright 2022 TikTok Pte. Ltd.
 *
 * This source code is licensed under the license found in the
 * LICENSE file in the root directory of this source tree.
 */

import PackageDescription

let package = Package(
    name: "TikTokOpenSDK",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "TikTokOpenAuthSDK",
            targets: ["TikTokOpenAuthSDK"]
        ),
        .library(
            name: "TikTokOpenSDKCore",
            targets: ["TikTokOpenSDKCore"]
        ),
        .library(
            name: "TikTokOpenShareSDK",
            targets: ["TikTokOpenShareSDK"]
        )
    ],
    targets: [
        .target(
            name: "TikTokOpenAuthSDK",
            dependencies: ["TikTokOpenSDKCore"],
            resources: [.copy("TikTokOpenAuthSDK/Resources/PrivacyInfo.xcprivacy"),]
        ),
        .testTarget(
            name: "TikTokOpenAuthSDKTests",
            dependencies: ["TikTokOpenAuthSDK"]
        ),
        .target(
            name: "TikTokOpenSDKCore",
            resources: [.copy("Resources/PrivacyInfo.xcprivacy"),]
        ),
        .target(
            name: "TikTokOpenShareSDK",
            dependencies: ["TikTokOpenSDKCore"],
            resources: [.copy("Resources/PrivacyInfo.xcprivacy"),]
        ),
        .testTarget(
            name: "TikTokOpenShareSDKTests",
            dependencies: ["TikTokOpenShareSDK"]
        )
    ]
)
