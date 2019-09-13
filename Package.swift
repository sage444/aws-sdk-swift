// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "AWSSDKSwift",
    products: [
        .executable(name: "aws-sdk-swift-codegen", targets: ["CodeGenerator"]),
        .library(name: "AWSSDKSwift", targets: [
            "SQS", "STS", "S3", "CognitoIdentity", "S3Middleware"
            ]),
        
        .library(name: "CognitoIdentity", targets: ["CognitoIdentity"]),
        .library(name: "S3", targets: ["S3"]),
        .library(name: "SQS", targets: ["SQS"]),
        .library(name: "STS", targets: ["STS"]),
    ],
    dependencies: [
        .package(url: "https://github.com/sage444/aws-sdk-swift-core.git", .branch("master")),
//        .package(url: "https://github.com/swift-aws/aws-sdk-swift-core.git", .branch("master")),
        .package(url: "https://github.com/IBM-Swift/SwiftyJSON.git", .upToNextMajor(from: "17.0.2"))
    ],
    targets: [
        .target(name: "CodeGenerator", dependencies: ["AWSSDKSwiftCore", "SwiftyJSON"]),
        
        .target(name: "CognitoIdentity", dependencies: ["AWSSDKSwiftCore"], path: "./Sources/AWSSDKSwift/Services/CognitoIdentity"),
        .target(name: "S3", dependencies: ["AWSSDKSwiftCore", "S3Middleware"], path: "./Sources/AWSSDKSwift/Services/S3"),
        .target(name: "SQS", dependencies: ["AWSSDKSwiftCore"], path: "./Sources/AWSSDKSwift/Services/SQS"),
        .target(name: "STS", dependencies: ["AWSSDKSwiftCore"], path: "./Sources/AWSSDKSwift/Services/STS"),
        .target(name: "S3Middleware", dependencies: ["AWSSDKSwiftCore"], path: "./Sources/AWSSDKSwift/Middlewares/S3"),
    ]
)
