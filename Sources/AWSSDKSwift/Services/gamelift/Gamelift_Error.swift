// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Gamelift
public enum GameliftError: AWSErrorType {
    case unauthorizedException(message: String?)
    case invalidRequestException(message: String?)
    case notFoundException(message: String?)
    case internalServiceException(message: String?)
    case terminalRoutingStrategyException(message: String?)
    case invalidFleetStatusException(message: String?)
    case conflictException(message: String?)
    case invalidGameSessionStatusException(message: String?)
    case limitExceededException(message: String?)
    case gameSessionFullException(message: String?)
    case fleetCapacityExceededException(message: String?)
    case idempotentParameterMismatchException(message: String?)
}

extension GameliftError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "UnauthorizedException":
            self = .unauthorizedException(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "InternalServiceException":
            self = .internalServiceException(message: message)
        case "TerminalRoutingStrategyException":
            self = .terminalRoutingStrategyException(message: message)
        case "InvalidFleetStatusException":
            self = .invalidFleetStatusException(message: message)
        case "ConflictException":
            self = .conflictException(message: message)
        case "InvalidGameSessionStatusException":
            self = .invalidGameSessionStatusException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "GameSessionFullException":
            self = .gameSessionFullException(message: message)
        case "FleetCapacityExceededException":
            self = .fleetCapacityExceededException(message: message)
        case "IdempotentParameterMismatchException":
            self = .idempotentParameterMismatchException(message: message)
        default:
            return nil
        }
    }
}