// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HMDAAmazonS3",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "HMDAAmazonS3",
            targets: ["HMDAAmazonS3"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(name: "AWSSDKSwift", url: "https://github.com/swift-aws/aws-sdk-swift.git", from: "4.2.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "HMDAAmazonS3",
            dependencies: [
        .product(name: "S3", package: "AWSSDKSwift")
        ]),
        .testTarget(
            name: "HMDAAmazonS3Tests",
            dependencies: ["HMDAAmazonS3"]),
    ]
)
