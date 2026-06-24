Module [java.management](../../../module-summary.md)

Package [javax.management.remote](package-summary.md)

# Interface JMXAuthenticator

---

public interface JMXAuthenticator

Interface to define how remote credentials are converted into a
JAAS Subject. This interface is used by the RMI Connector Server,
and can be used by other connector servers.

The user-defined authenticator instance is passed to the
connector server in the environment map as the value of the
attribute [`JMXConnectorServer.AUTHENTICATOR`](JMXConnectorServer.md#AUTHENTICATOR). For connector
servers that use only this authentication system, if this attribute
is not present or its value is `null` then no user
authentication will be performed and full access to the methods
exported by the `MBeanServerConnection` object will be
allowed.

If authentication is successful then an authenticated
[`subject`](../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") filled in with its associated
[`principals`](../../../../java.base/java/security/Principal.md "interface in java.security") is returned. Authorization checks
will be then performed based on the given set of principals.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Subject`

  `authenticate(Object credentials)`

  Authenticates the `MBeanServerConnection` client
  with the given client credentials.

* ## Method Details

  + ### authenticate

    [Subject](../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") authenticate([Object](../../../../java.base/java/lang/Object.md "class in java.lang") credentials)

    Authenticates the `MBeanServerConnection` client
    with the given client credentials.

    Parameters:
    :   `credentials` - the user-defined credentials to be passed
        into the server in order to authenticate the user before
        creating the `MBeanServerConnection`. The actual
        type of this parameter, and whether it can be null, depends on
        the connector.

    Returns:
    :   the authenticated subject containing its associated principals.

    Throws:
    :   `SecurityException` - if the server cannot authenticate the user
        with the provided credentials.