// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.6.7"
let package = Package(
    name: "ZohoDeskPortalKB",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZohoDeskPortalKB",
            targets: ["ZohoDeskPortalKB", "ZohoDeskPortalKBPackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/zoho/ZohoDeskPortalConfiguration.git", exact: "4.6.7")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ZohoDeskPortalKB", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalKB/\(version)/ZohoDeskPortalKB.zip", checksum: "838634374ab40e69a395132e5870ce06369f37bffd17fad27e4688fc4e9344e6"),

        .target(name: "ZohoDeskPortalKBPackage",
            dependencies: [
                .product(name: "ZohoDeskPortalConfiguration", package: "ZohoDeskPortalConfiguration")
            ]
        )
    ]
)
