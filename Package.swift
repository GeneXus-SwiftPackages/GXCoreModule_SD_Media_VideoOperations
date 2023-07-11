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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", exact: "1.0.0-beta.20230711141624")
	],
	targets: [
		.target(name: "GXCoreModule_SD_Media_VideoOperationsWrapper",
				dependencies: [
					"GXCoreModule_SD_Media_VideoOperations",
					.product(name: "GXCoreBL", package: "GXCoreBL", condition: .when(platforms: [.watchOS, .tvOS, .iOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_Media_VideoOperations",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Media_VideoOperations-1.0.0-beta.20230711141624.xcframework.zip",
			checksum: "14e7f2b873ff16fc7591655f8eb078802da82e7d04d876672b464121e1f99d7b"
		)
	]
)