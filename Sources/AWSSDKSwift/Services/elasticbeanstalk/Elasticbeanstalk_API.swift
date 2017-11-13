// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**
AWS Elastic Beanstalk AWS Elastic Beanstalk makes it easy for you to create, deploy, and manage scalable, fault-tolerant applications running on the Amazon Web Services cloud. For more information about this product, go to the AWS Elastic Beanstalk details page. The location of the latest AWS Elastic Beanstalk WSDL is http://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl. To install the Software Development Kits (SDKs), Integrated Development Environment (IDE) Toolkits, and command line tools that enable you to access the API, go to Tools for Amazon Web Services.  Endpoints  For a list of region-specific endpoints that AWS Elastic Beanstalk supports, go to Regions and Endpoints in the Amazon Web Services Glossary.
*/
public struct Elasticbeanstalk {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "elasticbeanstalk",
            serviceProtocol: ServiceProtocol(type: .query),
            apiVersion: "2010-12-01",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [ElasticbeanstalkError.self]
        )
    }

    ///  Launches an environment for the specified application using the specified configuration.
    public func createEnvironment(_ input: CreateEnvironmentMessage) throws -> EnvironmentDescription {
        return try client.send(operation: "CreateEnvironment", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates the Amazon S3 storage location for the account. This location is used to store user log files.
    public func createStorageLocation() throws -> CreateStorageLocationResultMessage {
        return try client.send(operation: "CreateStorageLocation", path: "/", httpMethod: "POST")
    }

    ///  Retrieve a list of application versions.
    public func describeApplicationVersions(_ input: DescribeApplicationVersionsMessage) throws -> ApplicationVersionDescriptionsMessage {
        return try client.send(operation: "DescribeApplicationVersions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the version of the platform.
    public func describePlatformVersion(_ input: DescribePlatformVersionRequest) throws -> DescribePlatformVersionResult {
        return try client.send(operation: "DescribePlatformVersion", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an application version for the specified application. You can create an application version from a source bundle in Amazon S3, a commit in AWS CodeCommit, or the output of an AWS CodeBuild build as follows: Specify a commit in an AWS CodeCommit repository with SourceBuildInformation. Specify a build in an AWS CodeBuild with SourceBuildInformation and BuildConfiguration. Specify a source bundle in S3 with SourceBundle  Omit both SourceBuildInformation and SourceBundle to use the default sample application.  Once you create an application version with a specified Amazon S3 bucket and key location, you cannot change that Amazon S3 location. If you change the Amazon S3 location, you receive an exception when you attempt to launch an environment from the application version. 
    public func createApplicationVersion(_ input: CreateApplicationVersionMessage) throws -> ApplicationVersionDescriptionMessage {
        return try client.send(operation: "CreateApplicationVersion", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns AWS resources for this environment.
    public func describeEnvironmentResources(_ input: DescribeEnvironmentResourcesMessage) throws -> EnvironmentResourceDescriptionsMessage {
        return try client.send(operation: "DescribeEnvironmentResources", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrives detailed information about the health of instances in your AWS Elastic Beanstalk. This operation requires enhanced health reporting.
    public func describeInstancesHealth(_ input: DescribeInstancesHealthRequest) throws -> DescribeInstancesHealthResult {
        return try client.send(operation: "DescribeInstancesHealth", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified configuration template.  When you launch an environment using a configuration template, the environment gets a copy of the template. You can delete or modify the environment's copy of the template without affecting the running environment. 
    public func deleteConfigurationTemplate(_ input: DeleteConfigurationTemplateMessage) throws {
        _ = try client.send(operation: "DeleteConfigurationTemplate", path: "/", httpMethod: "POST", input: input)
    }

    ///  Create or update a group of environments that each run a separate component of a single application. Takes a list of version labels that specify application source bundles for each of the environments to create or update. The name of each environment and other required information must be included in the source bundles in an environment manifest named env.yaml. See Compose Environments for details.
    public func composeEnvironments(_ input: ComposeEnvironmentsMessage) throws -> EnvironmentDescriptionsMessage {
        return try client.send(operation: "ComposeEnvironments", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified application along with all associated versions and configurations. The application versions will not be deleted from your Amazon S3 bucket.  You cannot delete an application that has a running environment. 
    public func deleteApplication(_ input: DeleteApplicationMessage) throws {
        _ = try client.send(operation: "DeleteApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of the available solution stack names, with the public version first and then in reverse chronological order.
    public func listAvailableSolutionStacks() throws -> ListAvailableSolutionStacksResultMessage {
        return try client.send(operation: "ListAvailableSolutionStacks", path: "/", httpMethod: "POST")
    }

    ///  Applies a scheduled managed action immediately. A managed action can be applied only if its status is Scheduled. Get the status and action ID of a managed action with DescribeEnvironmentManagedActions.
    public func applyEnvironmentManagedAction(_ input: ApplyEnvironmentManagedActionRequest) throws -> ApplyEnvironmentManagedActionResult {
        return try client.send(operation: "ApplyEnvironmentManagedAction", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a description of the settings for the specified configuration set, that is, either a configuration template or the configuration set associated with a running environment. When describing the settings for the configuration set associated with a running environment, it is possible to receive two sets of setting descriptions. One is the deployed configuration set, and the other is a draft configuration of an environment that is either in the process of deployment or that failed to deploy. Related Topics    DeleteEnvironmentConfiguration   
    public func describeConfigurationSettings(_ input: DescribeConfigurationSettingsMessage) throws -> ConfigurationSettingsDescriptions {
        return try client.send(operation: "DescribeConfigurationSettings", path: "/", httpMethod: "POST", input: input)
    }

    ///  Terminates the specified environment.
    public func terminateEnvironment(_ input: TerminateEnvironmentMessage) throws -> EnvironmentDescription {
        return try client.send(operation: "TerminateEnvironment", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists an environment's completed and failed managed actions.
    public func describeEnvironmentManagedActionHistory(_ input: DescribeEnvironmentManagedActionHistoryRequest) throws -> DescribeEnvironmentManagedActionHistoryResult {
        return try client.send(operation: "DescribeEnvironmentManagedActionHistory", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the available platforms.
    public func listPlatformVersions(_ input: ListPlatformVersionsRequest) throws -> ListPlatformVersionsResult {
        return try client.send(operation: "ListPlatformVersions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the compiled information from a RequestEnvironmentInfo request. Related Topics    RequestEnvironmentInfo   
    public func retrieveEnvironmentInfo(_ input: RetrieveEnvironmentInfoMessage) throws -> RetrieveEnvironmentInfoResultMessage {
        return try client.send(operation: "RetrieveEnvironmentInfo", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes and recreates all of the AWS resources (for example: the Auto Scaling group, load balancer, etc.) for a specified environment and forces a restart.
    public func rebuildEnvironment(_ input: RebuildEnvironmentMessage) throws {
        _ = try client.send(operation: "RebuildEnvironment", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns list of event descriptions matching criteria up to the last 6 weeks.  This action returns the most recent 1,000 events from the specified NextToken. 
    public func describeEvents(_ input: DescribeEventsMessage) throws -> EventDescriptionsMessage {
        return try client.send(operation: "DescribeEvents", path: "/", httpMethod: "POST", input: input)
    }

    ///  Causes the environment to restart the application container server running on each Amazon EC2 instance.
    public func restartAppServer(_ input: RestartAppServerMessage) throws {
        _ = try client.send(operation: "RestartAppServer", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the environment description, deploys a new application version, updates the configuration settings to an entirely new configuration template, or updates select configuration option values in the running environment.  Attempting to update both the release and configuration is not allowed and AWS Elastic Beanstalk returns an InvalidParameterCombination error.   When updating the configuration settings to a new template or individual settings, a draft configuration is created and DescribeConfigurationSettings for this environment returns two setting descriptions with different DeploymentStatus values. 
    public func updateEnvironment(_ input: UpdateEnvironmentMessage) throws -> EnvironmentDescription {
        return try client.send(operation: "UpdateEnvironment", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the specified application to have the specified properties.  If a property (for example, description) is not provided, the value remains unchanged. To clear these properties, specify an empty string. 
    public func updateApplication(_ input: UpdateApplicationMessage) throws -> ApplicationDescriptionMessage {
        return try client.send(operation: "UpdateApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a configuration template. Templates are associated with a specific application and are used to deploy different versions of the application with the same configuration settings. Related Topics    DescribeConfigurationOptions     DescribeConfigurationSettings     ListAvailableSolutionStacks   
    public func createConfigurationTemplate(_ input: CreateConfigurationTemplateMessage) throws -> ConfigurationSettingsDescription {
        return try client.send(operation: "CreateConfigurationTemplate", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies lifecycle settings for an application.
    public func updateApplicationResourceLifecycle(_ input: UpdateApplicationResourceLifecycleMessage) throws -> ApplicationResourceLifecycleDescriptionMessage {
        return try client.send(operation: "UpdateApplicationResourceLifecycle", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the specified application version to have the specified properties.  If a property (for example, description) is not provided, the value remains unchanged. To clear properties, specify an empty string. 
    public func updateApplicationVersion(_ input: UpdateApplicationVersionMessage) throws -> ApplicationVersionDescriptionMessage {
        return try client.send(operation: "UpdateApplicationVersion", path: "/", httpMethod: "POST", input: input)
    }

    ///   Creates an application that has one configuration template named default and no application versions. 
    public func createApplication(_ input: CreateApplicationMessage) throws -> ApplicationDescriptionMessage {
        return try client.send(operation: "CreateApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Create a new version of your custom platform.
    public func createPlatformVersion(_ input: CreatePlatformVersionRequest) throws -> CreatePlatformVersionResult {
        return try client.send(operation: "CreatePlatformVersion", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the draft configuration associated with the running environment. Updating a running environment with any configuration changes creates a draft configuration set. You can get the draft configuration using DescribeConfigurationSettings while the update is in progress or if the update fails. The DeploymentStatus for the draft configuration indicates whether the deployment is in process or has failed. The draft configuration remains in existence until it is deleted with this action.
    public func deleteEnvironmentConfiguration(_ input: DeleteEnvironmentConfigurationMessage) throws {
        _ = try client.send(operation: "DeleteEnvironmentConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the specified configuration template to have the specified properties or configuration option values.  If a property (for example, ApplicationName) is not provided, its value remains unchanged. To clear such properties, specify an empty string.  Related Topics    DescribeConfigurationOptions   
    public func updateConfigurationTemplate(_ input: UpdateConfigurationTemplateMessage) throws -> ConfigurationSettingsDescription {
        return try client.send(operation: "UpdateConfigurationTemplate", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified version of a custom platform.
    public func deletePlatformVersion(_ input: DeletePlatformVersionRequest) throws -> DeletePlatformVersionResult {
        return try client.send(operation: "DeletePlatformVersion", path: "/", httpMethod: "POST", input: input)
    }

    ///  Initiates a request to compile the specified type of information of the deployed environment.  Setting the InfoType to tail compiles the last lines from the application server log files of every Amazon EC2 instance in your environment.   Setting the InfoType to bundle compresses the application server log files for every Amazon EC2 instance into a .zip file. Legacy and .NET containers do not support bundle logs.   Use RetrieveEnvironmentInfo to obtain the set of logs.  Related Topics    RetrieveEnvironmentInfo   
    public func requestEnvironmentInfo(_ input: RequestEnvironmentInfoMessage) throws {
        _ = try client.send(operation: "RequestEnvironmentInfo", path: "/", httpMethod: "POST", input: input)
    }

    ///  Checks if the specified CNAME is available.
    public func checkDNSAvailability(_ input: CheckDNSAvailabilityMessage) throws -> CheckDNSAvailabilityResultMessage {
        return try client.send(operation: "CheckDNSAvailability", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified version from the specified application.  You cannot delete an application version that is associated with a running environment. 
    public func deleteApplicationVersion(_ input: DeleteApplicationVersionMessage) throws {
        _ = try client.send(operation: "DeleteApplicationVersion", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns descriptions for existing environments.
    public func describeEnvironments(_ input: DescribeEnvironmentsMessage) throws -> EnvironmentDescriptionsMessage {
        return try client.send(operation: "DescribeEnvironments", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about the overall health of the specified environment. The DescribeEnvironmentHealth operation is only available with AWS Elastic Beanstalk Enhanced Health.
    public func describeEnvironmentHealth(_ input: DescribeEnvironmentHealthRequest) throws -> DescribeEnvironmentHealthResult {
        return try client.send(operation: "DescribeEnvironmentHealth", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists an environment's upcoming and in-progress managed actions.
    public func describeEnvironmentManagedActions(_ input: DescribeEnvironmentManagedActionsRequest) throws -> DescribeEnvironmentManagedActionsResult {
        return try client.send(operation: "DescribeEnvironmentManagedActions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the configuration options that are used in a particular configuration template or environment, or that a specified solution stack defines. The description includes the values the options, their default values, and an indication of the required action on a running environment if an option value is changed.
    public func describeConfigurationOptions(_ input: DescribeConfigurationOptionsMessage) throws -> ConfigurationOptionsDescription {
        return try client.send(operation: "DescribeConfigurationOptions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Takes a set of configuration settings and either a configuration template or environment, and determines whether those values are valid. This action returns a list of messages indicating any errors or warnings associated with the selection of option values.
    public func validateConfigurationSettings(_ input: ValidateConfigurationSettingsMessage) throws -> ConfigurationSettingsValidationMessages {
        return try client.send(operation: "ValidateConfigurationSettings", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the descriptions of existing applications.
    public func describeApplications(_ input: DescribeApplicationsMessage) throws -> ApplicationDescriptionsMessage {
        return try client.send(operation: "DescribeApplications", path: "/", httpMethod: "POST", input: input)
    }

    ///  Swaps the CNAMEs of two environments.
    public func swapEnvironmentCNAMEs(_ input: SwapEnvironmentCNAMEsMessage) throws {
        _ = try client.send(operation: "SwapEnvironmentCNAMEs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Cancels in-progress environment configuration update or application version deployment.
    public func abortEnvironmentUpdate(_ input: AbortEnvironmentUpdateMessage) throws {
        _ = try client.send(operation: "AbortEnvironmentUpdate", path: "/", httpMethod: "POST", input: input)
    }


}