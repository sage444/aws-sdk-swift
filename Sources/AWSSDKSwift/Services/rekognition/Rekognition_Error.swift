// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Rekognition
public enum RekognitionError: AWSErrorType {
    case invalidS3ObjectException(message: String?)
    case invalidParameterException(message: String?)
    case imageTooLargeException(message: String?)
    case accessDeniedException(message: String?)
    case internalServerError(message: String?)
    case throttlingException(message: String?)
    case provisionedThroughputExceededException(message: String?)
    case resourceNotFoundException(message: String?)
    case invalidImageFormatException(message: String?)
    case invalidPaginationTokenException(message: String?)
    case resourceAlreadyExistsException(message: String?)
}

extension RekognitionError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InvalidS3ObjectException":
            self = .invalidS3ObjectException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "ImageTooLargeException":
            self = .imageTooLargeException(message: message)
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "InternalServerError":
            self = .internalServerError(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        case "ProvisionedThroughputExceededException":
            self = .provisionedThroughputExceededException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "InvalidImageFormatException":
            self = .invalidImageFormatException(message: message)
        case "InvalidPaginationTokenException":
            self = .invalidPaginationTokenException(message: message)
        case "ResourceAlreadyExistsException":
            self = .resourceAlreadyExistsException(message: message)
        default:
            return nil
        }
    }
}