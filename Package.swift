// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WallCallBusiness",
    platforms: [
        .iOS(.v14) // 明确说明支持 iOS（这样 UIKit 才能用）
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "WallCallBusiness",
            targets: ["WallCallBusiness"]),
    ],
    dependencies: [
        // 在这里重新添加你之前的第三方依赖
        .package(url: "https://github.com/chenmtianlai/myNetTool.git", .upToNextMajor(from: "1.0.9")),
    ],
    targets: [
        .target(
            name: "WallCallBusiness",
            dependencies: [
                .product(name: "Package_net", package: "myNetTool"),
            ],
        ),
        .testTarget(
            name: "WallCallBusinessTests",
            dependencies: ["WallCallBusiness"]
        ),
    ]
)
