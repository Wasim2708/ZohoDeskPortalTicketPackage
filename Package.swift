// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZohoDeskPortalTicketPackage",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZohoDeskPortalTicketPackage",
            targets: ["ZohoDeskPortalTicketPackage", "ZohoDeskPortalTicket"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Wasim2708/ZohoDeskPortalUIKitPackage.git", exact: "1.0.2"),
        .package(url: "https://github.com/Wasim2708/ZohoDeskPortalAPIKit.git", exact: "1.0.2"),
        .package(url: "https://github.com/Wasim2708/ZohoDeskPortalConfiguration.git", exact: "1.0.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ZohoDeskPortalTicketPackage",
            dependencies: [
                .product(name: "ZohoDeskPortalUIKitPackage", package: "ZohoDeskPortalUIKitPackage"),
                .product(name: "ZohoDeskPortalAPIKit", package: "ZohoDeskPortalAPIKit"),
                .product(name: "ZohoDeskPortalConfiguration", package: "ZohoDeskPortalConfiguration")
            ]),
        .binaryTarget(name: "ZohoDeskPortalTicket", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalTicket/4.0.0-beta.2/ZohoDeskPortalTicket.zip", checksum: "2ee70c938eb6faa801134d1fbe98416039a2089c548715b57de763fd153eb3dc")
    ]
)
