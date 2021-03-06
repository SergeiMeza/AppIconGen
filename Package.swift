// swift-tools-version:4.2

import PackageDescription

let package = Package(
  name: "AppIconGen",
  products: [
    .library(
      name: "AppIconGen",
      targets: ["AppIconGen"]),
  ],
  dependencies: [
    .package(url: "https://github.com/twostraws/SwiftGD.git",
             from: "2.0.0"),
    .package(url: "https://github.com/kylef/Commander.git",
             from: "0.8.0"),
    .package(url: "https://github.com/onmyway133/SwiftHash.git",
             from: "2.0.2")
  ],
  targets: [
    .target(
      name: "AppIconGen",
      dependencies: ["AppIconGenCore", "Commander"]),
    .target(
      name: "AppIconGenCore",
      dependencies: ["SwiftGD", "SwiftHash"]),
    .testTarget(
      name: "AppIconGenTests",
      dependencies: ["AppIconGen"]),
    ]
)

