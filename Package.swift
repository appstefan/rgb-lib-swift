// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RgbLib",
    platforms: [
        .macOS(.v12),
        .iOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "RgbLib",
            targets: ["rgb_libFFI", "RgbLib"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
//        .binaryTarget(name: "rgb_libFFI", path: "./rgb_libFFI.xcframework"),
        .binaryTarget(
           name: "rgb_libFFI",
           url: "https://github.com/appstefan/rgb-lib-swift/releases/download/0.1.3/rgb_libFFI.xcframework.zip",
           checksum: "6d4f87553f45be6ef6f010d31025e04172ff2fb2d5c4a373d985dc4e352b2c27"),
        .target(
            name: "RgbLib",
            dependencies: ["rgb_libFFI"]),
    ]
)
