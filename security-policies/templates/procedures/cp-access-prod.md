### Production Access and Secrets Management

{{companyShortName}} leverages a combination of [{{ciSystem}} credentials
store], and [Amazon EC2 Systems Manager
Parameter
Store](https://aws.amazon.com/blogs/mt/the-right-way-to-store-secrets-using-parameter-store/)
to securely store production secrets.  Secrets are always encrypted; access to
secrets is always controlled and audited.

Details and usage are documented on the {{companyShortName}} Engineering Wiki.