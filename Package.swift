// swift-tools-version: 5.9
import Foundation
import PackageDescription

let usingLocalIcons = FileManager.default.fileExists(atPath: "../ios-icons/Package.swift")
let iconsDependency: Package.Dependency = usingLocalIcons
    ? .package(path: "../ios-icons")
    : .package(url: "https://github.com/MapConductor/ios-icons", from: "0.1.0")

let package = Package(
    name: "ios-icons-weather",
    platforms: [.iOS("15.1")],
    products: [.library(name: "MapConductorIconsWeather", targets: ["MapConductorIconsWeather"])],
    dependencies: [iconsDependency],
    targets: [
        .target(
            name: "MapConductorIconsWeather",
            dependencies: [.product(name: "MapConductorIcons", package: "ios-icons")]
        ),
        .testTarget(
            name: "MapConductorIconsWeatherTests",
            dependencies: [
                "MapConductorIconsWeather",
                .product(name: "MapConductorIcons", package: "ios-icons"),
            ]
        ),
    ]
)
