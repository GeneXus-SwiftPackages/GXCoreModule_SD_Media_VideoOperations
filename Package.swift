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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", exact: "1.2.0-beta.22")
	],
	targets: [
		.target(name: "GXCoreModule_SD_Media_VideoOperationsWrapper",
				dependencies: [
					"GXCoreModule_SD_Media_VideoOperations",
					.product(name: "GXCoreBL", package: "GXCoreBL", condition: .when(platforms: [.iOS, .watchOS, .tvOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_Media_VideoOperations",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Media_VideoOperations-1.2.0-beta.22.xcframework.zip",
			checksum: "ea22a5dc17181d9eda27f3476f6e7092d42ebd4aedd8af7b4dc10a0b93631c0b"
		)
	]
)