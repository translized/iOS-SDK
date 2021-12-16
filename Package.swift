// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "Translized",
  platforms: [
    .macOS(.v10_15), .iOS(.v10), .tvOS(.v14)
  ],
  products: [
    .library(
      name: "Translized",
      targets: ["Translized"]),
  ],
  targets: [
    .binaryTarget(
      name: "Translized",
      path: "./Translized.xcframework"
    )
  ]
)
