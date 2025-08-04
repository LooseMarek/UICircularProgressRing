// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "UICircularProgressRing",
    platforms: [
        .macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v2)
    ],
    products: [
        .library(
            name: "UICircularProgressRing",
            targets: ["UICircularProgressRing"]
        ),
        .library(
            name: "LegacyUICircularProgressRing",
            targets: ["LegacyUICircularProgressRing"]
        )
    ],
    dependencies: [
        .package(
          url: "https://github.com/pointfreeco/swift-snapshot-testing.git",
          from: "1.8.2"
        )
    ],
    targets: [
        .target(
            name: "UICircularProgressRing",
            dependencies: [],
            path: "Sources"
        ),
        .target(
            name: "LegacyUICircularProgressRing",
            dependencies: [],
            path: "Legacy"
        ),
        .testTarget(
            name: "UICircularProgressRingTests",
            dependencies: [
                "UICircularProgressRing"
            ],
            path: "Tests"
        ),
        .testTarget(
            name: "UICircularProgressRingSnapshotTests",
            dependencies: [
                "UICircularProgressRing",
                "SnapshotTesting"
            ],
            path: "SnapshotTests"
        )
    ]
)
