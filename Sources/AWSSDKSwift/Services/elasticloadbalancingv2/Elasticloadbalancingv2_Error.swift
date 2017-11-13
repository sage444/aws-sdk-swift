// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Elasticloadbalancingv2
public enum Elasticloadbalancingv2Error: AWSErrorType {
    case loadBalancerNotFoundException(message: String?)
    case invalidConfigurationRequestException(message: String?)
    case subnetNotFoundException(message: String?)
    case invalidSubnetException(message: String?)
    case invalidTargetException(message: String?)
    case targetGroupNotFoundException(message: String?)
    case healthUnavailableException(message: String?)
    case sSLPolicyNotFoundException(message: String?)
    case resourceInUseException(message: String?)
    case listenerNotFoundException(message: String?)
    case ruleNotFoundException(message: String?)
    case duplicateLoadBalancerNameException(message: String?)
    case tooManyLoadBalancersException(message: String?)
    case invalidSecurityGroupException(message: String?)
    case invalidSchemeException(message: String?)
    case tooManyTagsException(message: String?)
    case duplicateTagKeysException(message: String?)
    case priorityInUseException(message: String?)
    case tooManyTargetGroupsException(message: String?)
    case tooManyRulesException(message: String?)
    case targetGroupAssociationLimitException(message: String?)
    case tooManyRegistrationsForTargetIdException(message: String?)
    case operationNotPermittedException(message: String?)
    case tooManyTargetsException(message: String?)
    case duplicateListenerException(message: String?)
    case tooManyListenersException(message: String?)
    case tooManyCertificatesException(message: String?)
    case incompatibleProtocolsException(message: String?)
    case certificateNotFoundException(message: String?)
    case unsupportedProtocolException(message: String?)
    case duplicateTargetGroupNameException(message: String?)
}

extension Elasticloadbalancingv2Error {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "LoadBalancerNotFoundException":
            self = .loadBalancerNotFoundException(message: message)
        case "InvalidConfigurationRequestException":
            self = .invalidConfigurationRequestException(message: message)
        case "SubnetNotFoundException":
            self = .subnetNotFoundException(message: message)
        case "InvalidSubnetException":
            self = .invalidSubnetException(message: message)
        case "InvalidTargetException":
            self = .invalidTargetException(message: message)
        case "TargetGroupNotFoundException":
            self = .targetGroupNotFoundException(message: message)
        case "HealthUnavailableException":
            self = .healthUnavailableException(message: message)
        case "SSLPolicyNotFoundException":
            self = .sSLPolicyNotFoundException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "ListenerNotFoundException":
            self = .listenerNotFoundException(message: message)
        case "RuleNotFoundException":
            self = .ruleNotFoundException(message: message)
        case "DuplicateLoadBalancerNameException":
            self = .duplicateLoadBalancerNameException(message: message)
        case "TooManyLoadBalancersException":
            self = .tooManyLoadBalancersException(message: message)
        case "InvalidSecurityGroupException":
            self = .invalidSecurityGroupException(message: message)
        case "InvalidSchemeException":
            self = .invalidSchemeException(message: message)
        case "TooManyTagsException":
            self = .tooManyTagsException(message: message)
        case "DuplicateTagKeysException":
            self = .duplicateTagKeysException(message: message)
        case "PriorityInUseException":
            self = .priorityInUseException(message: message)
        case "TooManyTargetGroupsException":
            self = .tooManyTargetGroupsException(message: message)
        case "TooManyRulesException":
            self = .tooManyRulesException(message: message)
        case "TargetGroupAssociationLimitException":
            self = .targetGroupAssociationLimitException(message: message)
        case "TooManyRegistrationsForTargetIdException":
            self = .tooManyRegistrationsForTargetIdException(message: message)
        case "OperationNotPermittedException":
            self = .operationNotPermittedException(message: message)
        case "TooManyTargetsException":
            self = .tooManyTargetsException(message: message)
        case "DuplicateListenerException":
            self = .duplicateListenerException(message: message)
        case "TooManyListenersException":
            self = .tooManyListenersException(message: message)
        case "TooManyCertificatesException":
            self = .tooManyCertificatesException(message: message)
        case "IncompatibleProtocolsException":
            self = .incompatibleProtocolsException(message: message)
        case "CertificateNotFoundException":
            self = .certificateNotFoundException(message: message)
        case "UnsupportedProtocolException":
            self = .unsupportedProtocolException(message: message)
        case "DuplicateTargetGroupNameException":
            self = .duplicateTargetGroupNameException(message: message)
        default:
            return nil
        }
    }
}