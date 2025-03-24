// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_Media_VideoOperations",
	platforms: [.iOS("15.0"), .watchOS("10.0"), .tvOS("18.0"), .visionOS("2.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_Media_VideoOperations",
			targets: ["GXCoreModule_SD_Media_VideoOperationsWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", exact: "3.1.0-beta.10")
	],
	targets: [
		.target(name: "GXCoreModule_SD_Media_VideoOperationsWrapper",
				dependencies: [
					"GXCoreModule_SD_Media_VideoOperations",
					.product(name: "GXCoreBL", package: "GXCoreBL", condition: .when(platforms: [.iOS, .watchOS, .tvOS, .visionOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_Media_VideoOperations",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Media_VideoOperations-3.1.0-beta.10.xcframework.zip",
			checksum: "7fce84cb0382780f1824822ece8d588933f81a96b4095274f0d0f8da2064dcd3"
		)
	]
)