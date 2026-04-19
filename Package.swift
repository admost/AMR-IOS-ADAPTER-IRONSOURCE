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
        .package(url: "https://github.com/ironsource-mobile/Unity-Mediation-iAds-Swift-Package.git", from: "9.3.0")
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
            url: "https://github.com/admost/AMR-IOS-ADAPTER-IRONSOURCE/releases/download/9.3.0/AMRAdapterIronsource.xcframework.zip",
            checksum: "f7f9518432259b7eab54945f4fea6e915058567b2da2eb9f35bd11e6220867cc"
        )
    ]
)
