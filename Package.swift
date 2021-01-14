// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

// Dependencies can be hard to read.
// 📜 https://www.timc.dev/posts/understanding-swift-packages/

let package = Package(
    name: "kids-html",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(name: "Html", url: "https://github.com/pointfreeco/swift-html.git", from: "0.3.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "kids-html",
            dependencies: [
                .product(name: "Html", package: "Html")
            ]
        ),
        .testTarget(
            name: "kids-htmlTests",
            dependencies: ["kids-html"]
        )
    ]
)
