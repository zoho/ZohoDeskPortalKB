// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = Version("4.6.3")
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
        .package(url: "https://github.com/zoho/ZohoDeskPortalConfiguration.git", exact: version)
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ZohoDeskPortalKB", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalKB/\(version.description)/ZohoDeskPortalKB.zip", checksum: "b1a9b28093fe1304c77448451fb61736cedf3e85142cf0bff78d4dfa81a38214"),
        
        .target(name: "ZohoDeskPortalKBPackage",
            dependencies: [
                .product(name: "ZohoDeskPortalConfiguration", package: "ZohoDeskPortalConfiguration")
            ]
        )
    ]
)
