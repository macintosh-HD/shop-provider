// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ShopProvider",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "ShopProvider",
            targets: ["ShopProvider"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
	.package(url: "https://github.com/vapor/vapor.git", from: "3.3.0"),
	.package(url: "https://github.com/vapor/fluent.git", from: "3.2.1"),

	.package(url: "https://github.com/macintosh-HD/rewe-provider.git", from: "1.0.0-beta.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "ShopProvider",
            dependencies: ["ReweProvider", "Fluent", "Vapor"]),
        .testTarget(
            name: "ShopProviderTests",
            dependencies: ["ShopProvider"]),
    ]
)
