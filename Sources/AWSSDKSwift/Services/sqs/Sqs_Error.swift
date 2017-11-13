// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Sqs
public enum SqsError: AWSErrorType {
    case invalidMessageContents(message: String?)
    case unsupportedOperation(message: String?)
    case invalidIdFormat(message: String?)
    case receiptHandleIsInvalid(message: String?)
    case overLimit(message: String?)
    case tooManyEntriesInBatchRequest(message: String?)
    case emptyBatchRequest(message: String?)
    case batchEntryIdsNotDistinct(message: String?)
    case invalidBatchEntryId(message: String?)
    case queueDoesNotExist(message: String?)
    case purgeQueueInProgress(message: String?)
    case messageNotInflight(message: String?)
    case queueDeletedRecently(message: String?)
    case queueNameExists(message: String?)
    case invalidAttributeName(message: String?)
    case batchRequestTooLong(message: String?)
}

extension SqsError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InvalidMessageContents":
            self = .invalidMessageContents(message: message)
        case "UnsupportedOperation":
            self = .unsupportedOperation(message: message)
        case "InvalidIdFormat":
            self = .invalidIdFormat(message: message)
        case "ReceiptHandleIsInvalid":
            self = .receiptHandleIsInvalid(message: message)
        case "OverLimit":
            self = .overLimit(message: message)
        case "TooManyEntriesInBatchRequest":
            self = .tooManyEntriesInBatchRequest(message: message)
        case "EmptyBatchRequest":
            self = .emptyBatchRequest(message: message)
        case "BatchEntryIdsNotDistinct":
            self = .batchEntryIdsNotDistinct(message: message)
        case "InvalidBatchEntryId":
            self = .invalidBatchEntryId(message: message)
        case "QueueDoesNotExist":
            self = .queueDoesNotExist(message: message)
        case "PurgeQueueInProgress":
            self = .purgeQueueInProgress(message: message)
        case "MessageNotInflight":
            self = .messageNotInflight(message: message)
        case "QueueDeletedRecently":
            self = .queueDeletedRecently(message: message)
        case "QueueNameExists":
            self = .queueNameExists(message: message)
        case "InvalidAttributeName":
            self = .invalidAttributeName(message: message)
        case "BatchRequestTooLong":
            self = .batchRequestTooLong(message: message)
        default:
            return nil
        }
    }
}