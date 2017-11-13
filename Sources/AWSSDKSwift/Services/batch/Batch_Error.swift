// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Batch
public enum BatchError: AWSErrorType {
    case clientException(message: String?)
    case serverException(message: String?)
}

extension BatchError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ClientException":
            self = .clientException(message: message)
        case "ServerException":
            self = .serverException(message: message)
        default:
            return nil
        }
    }
}