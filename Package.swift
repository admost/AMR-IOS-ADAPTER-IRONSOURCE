// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AMRAdapterIronsource",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "AMRAdapterIronsource",
            targets: ["AMRAdapterIronsource"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/admost/AMR-IOS-SDK.git", from: "1.5.84"),
        .package(url: "https://github.com/ironsource-mobile/Unity-Mediation-iAds-Swift-Package.git", from: "9.7.0")
    ],
    targets: [
        .target(
            name: "AMRAdapterIronsource",
            dependencies: [
                "AMRAdapterIronsourceLib",
                .product(name: "UnityMediationSDK", package: "Unity-Mediation-iAds-Swift-Package"),
                .product(name: "AMRSDK", package: "AMR-IOS-SDK")
            ],
            path: "AMRAdapterIronsource",
            exclude: ["Libs"],
            linkerSettings: [
                .linkedLibrary("c++")
            ]
        ),
        .binaryTarget(
            name: "AMRAdapterIronsourceLib",
            url: "https://github.com/admost/AMR-IOS-ADAPTER-IRONSOURCE/releases/download/9.7.0/AMRAdapterIronsource.xcframework.zip",
            checksum: "e5e6ea204577688813ade78a3909e190b7e5f9ad7b8292676f7ebb5232f82143"
        )
    ]
)
