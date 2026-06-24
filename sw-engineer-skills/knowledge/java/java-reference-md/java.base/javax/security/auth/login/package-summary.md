Module [java.base](../../../../module-summary.md)

# Package javax.security.auth.login

---

package javax.security.auth.login

This package provides a pluggable authentication framework.

## Package Specification

* [**Java Security Standard Algorithm Names Specification**](../../../../../../specs/security/standard-names.md)

Since:
:   1.4

* Related Packages

  Module

  Package

  Description

  [java.base](../../../../module-summary.md)

  [javax.security.auth](../package-summary.md)

  This package provides a framework for authentication and
  authorization.

  [java.base](../../../../module-summary.md)

  [javax.security.auth.callback](../callback/package-summary.md)

  This package provides the classes necessary for services
  to interact with applications in order to retrieve
  information (authentication data including usernames
  or passwords, for example) or to display information
  (error and warning messages, for example).

  [java.security.jgss](../../../../../java.security.jgss/module-summary.md)

  [javax.security.auth.kerberos](../../../../../java.security.jgss/javax/security/auth/kerberos/package-summary.md)

  This package contains utility classes related to the Kerberos network
  authentication protocol.

  [java.base](../../../../module-summary.md)

  [javax.security.auth.spi](../spi/package-summary.md)

  This package provides the interface to be used for
  implementing pluggable authentication modules.

  [java.base](../../../../module-summary.md)

  [javax.security.auth.x500](../x500/package-summary.md)

  This package contains the classes that should be used to store
  X500 Principal and X500 Private Credentials in a
  *Subject*.
* All Classes and InterfacesInterfacesClassesException Classes

  Class

  Description

  [AccountException](AccountException.md "class in javax.security.auth.login")

  A generic account exception.

  [AccountExpiredException](AccountExpiredException.md "class in javax.security.auth.login")

  Signals that a user account has expired.

  [AccountLockedException](AccountLockedException.md "class in javax.security.auth.login")

  Signals that an account was locked.

  [AccountNotFoundException](AccountNotFoundException.md "class in javax.security.auth.login")

  Signals that an account was not found.

  [AppConfigurationEntry](AppConfigurationEntry.md "class in javax.security.auth.login")

  This class represents a single `LoginModule` entry
  configured for the application specified in the
  `getAppConfigurationEntry(String appName)`
  method in the `Configuration` class.

  [AppConfigurationEntry.LoginModuleControlFlag](AppConfigurationEntry.LoginModuleControlFlag.md "class in javax.security.auth.login")

  This class represents whether a `LoginModule`
  is REQUIRED, REQUISITE, SUFFICIENT or OPTIONAL.

  [Configuration](Configuration.md "class in javax.security.auth.login")

  A Configuration object is responsible for specifying which LoginModules
  should be used for a particular application, and in what order the
  LoginModules should be invoked.

  [Configuration.Parameters](Configuration.Parameters.md "interface in javax.security.auth.login")

  This represents a marker interface for Configuration parameters.

  [ConfigurationSpi](ConfigurationSpi.md "class in javax.security.auth.login")

  This class defines the *Service Provider Interface* (**SPI**)
  for the `Configuration` class.

  [CredentialException](CredentialException.md "class in javax.security.auth.login")

  A generic credential exception.

  [CredentialExpiredException](CredentialExpiredException.md "class in javax.security.auth.login")

  Signals that a `Credential` has expired.

  [CredentialNotFoundException](CredentialNotFoundException.md "class in javax.security.auth.login")

  Signals that a credential was not found.

  [FailedLoginException](FailedLoginException.md "class in javax.security.auth.login")

  Signals that user authentication failed.

  [LoginContext](LoginContext.md "class in javax.security.auth.login")

  The `LoginContext` class describes the basic methods used
  to authenticate Subjects and provides a way to develop an
  application independent of the underlying authentication technology.

  [LoginException](LoginException.md "class in javax.security.auth.login")

  This is the basic login exception.