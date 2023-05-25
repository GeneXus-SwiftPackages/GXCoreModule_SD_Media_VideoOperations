// swift-tools-version: 5.7
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_Media_VideoOperations",
	platforms: [.iOS("12.0"), .watchOS("5.0"), .tvOS("12.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_Media_VideoOperations",
			targets: ["GXCoreModule_SD_Media_VideoOperationsWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", branch: "beta")
	],
	targets: [
		.target(name: "GXCoreModule_SD_Media_VideoOperationsWrapper",
				dependencies: [
					"GXCoreModule_SD_Media_VideoOperations",
					.product(name: "GXCoreBL", package: "GXCoreBL", condition: .when(platforms: [.iOS, .tvOS, .watchOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_Media_VideoOperations",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Media_VideoOperations-1.0.0-beta+20230525143554.xcframework.zip",
			checksum: "a6d3d8d576d26e83f0467d453a40457c84c8aaf98fdc8a8ac42bbc5171685e41"
		)
	]
)