# Hierarchy For Package javax.security.auth.login

Package Hierarchies:

* [All Packages](../../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../java/lang/Object.md "class in java.lang")
  + javax.security.auth.login.[AppConfigurationEntry](AppConfigurationEntry.md "class in javax.security.auth.login")
  + javax.security.auth.login.[AppConfigurationEntry.LoginModuleControlFlag](AppConfigurationEntry.LoginModuleControlFlag.md "class in javax.security.auth.login")
  + javax.security.auth.login.[Configuration](Configuration.md "class in javax.security.auth.login")
  + javax.security.auth.login.[ConfigurationSpi](ConfigurationSpi.md "class in javax.security.auth.login")
  + javax.security.auth.login.[LoginContext](LoginContext.md "class in javax.security.auth.login")
  + java.lang.[Throwable](../../../../java/lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../../../java/io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../../../java/lang/Exception.md "class in java.lang")
      * java.security.[GeneralSecurityException](../../../../java/security/GeneralSecurityException.md "class in java.security")
        + javax.security.auth.login.[LoginException](LoginException.md "class in javax.security.auth.login")
          - javax.security.auth.login.[AccountException](AccountException.md "class in javax.security.auth.login")
            * javax.security.auth.login.[AccountExpiredException](AccountExpiredException.md "class in javax.security.auth.login")
            * javax.security.auth.login.[AccountLockedException](AccountLockedException.md "class in javax.security.auth.login")
            * javax.security.auth.login.[AccountNotFoundException](AccountNotFoundException.md "class in javax.security.auth.login")
          - javax.security.auth.login.[CredentialException](CredentialException.md "class in javax.security.auth.login")
            * javax.security.auth.login.[CredentialExpiredException](CredentialExpiredException.md "class in javax.security.auth.login")
            * javax.security.auth.login.[CredentialNotFoundException](CredentialNotFoundException.md "class in javax.security.auth.login")
          - javax.security.auth.login.[FailedLoginException](FailedLoginException.md "class in javax.security.auth.login")

## Interface Hierarchy

* javax.security.auth.login.[Configuration.Parameters](Configuration.Parameters.md "interface in javax.security.auth.login")