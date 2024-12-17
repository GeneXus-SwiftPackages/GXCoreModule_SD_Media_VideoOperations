// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_Media_VideoOperations",
	platforms: [.iOS("13.0"), .watchOS("9.0"), .tvOS("13.0"), .visionOS("1.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_Media_VideoOperations",
			targets: ["GXCoreModule_SD_Media_VideoOperationsWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", exact: "2.2.0-beta.25")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Media_VideoOperations-2.2.0-beta.25.xcframework.zip",
			checksum: "1b064314d6eb1c6b61b760d1ba97623ea1d4f3b3cb7fa8908dd152ac3d8c93ed"
		)
	]
)