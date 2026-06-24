Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Class LDAPCertStoreParameters

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.cert.LDAPCertStoreParameters

All Implemented Interfaces:
:   `Cloneable`, `CertStoreParameters`

---

public class LDAPCertStoreParameters
extends [Object](../../lang/Object.md "class in java.lang")
implements [CertStoreParameters](CertStoreParameters.md "interface in java.security.cert")

Parameters used as input for the LDAP `CertStore` algorithm.

This class is used to provide necessary configuration parameters (server
name and port number) to implementations of the LDAP `CertStore`
algorithm. However, if you are retrieving certificates or CRLs from
an ldap URI as specified by RFC 5280, use the
[`URICertStoreParameters`](URICertStoreParameters.md "class in java.security.cert")
instead, as the URI may contain additional information such as the
distinguished name that will help the LDAP CertStore find the specific
certificates and CRLs.

**Concurrent Access**

Unless otherwise specified, the methods defined in this class are not
thread-safe. Multiple threads that need to access a single
object concurrently should synchronize amongst themselves and
provide the necessary locking. Multiple threads each manipulating
separate objects need not synchronize.

Since:
:   1.4

See Also:
:   * [`CertStore`](CertStore.md "class in java.security.cert")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `LDAPCertStoreParameters()`

  Creates an instance of `LDAPCertStoreParameters` with the
  default parameter values (server name "localhost", port 389).

  `LDAPCertStoreParameters(String serverName)`

  Creates an instance of `LDAPCertStoreParameters` with the
  specified server name and a default port of 389.

  `LDAPCertStoreParameters(String serverName,
  int port)`

  Creates an instance of `LDAPCertStoreParameters` with the
  specified parameter values.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Returns a copy of this object.

  `int`

  `getPort()`

  Returns the port number of the LDAP server.

  `String`

  `getServerName()`

  Returns the DNS name of the LDAP server.

  `String`

  `toString()`

  Returns a formatted string describing the parameters.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### LDAPCertStoreParameters

    public LDAPCertStoreParameters([String](../../lang/String.md "class in java.lang") serverName,
    int port)

    Creates an instance of `LDAPCertStoreParameters` with the
    specified parameter values.

    Parameters:
    :   `serverName` - the DNS name of the LDAP server
    :   `port` - the port number of the LDAP server

    Throws:
    :   `NullPointerException` - if `serverName` is
        `null`
  + ### LDAPCertStoreParameters

    public LDAPCertStoreParameters([String](../../lang/String.md "class in java.lang") serverName)

    Creates an instance of `LDAPCertStoreParameters` with the
    specified server name and a default port of 389.

    Parameters:
    :   `serverName` - the DNS name of the LDAP server

    Throws:
    :   `NullPointerException` - if `serverName` is
        `null`
  + ### LDAPCertStoreParameters

    public LDAPCertStoreParameters()

    Creates an instance of `LDAPCertStoreParameters` with the
    default parameter values (server name "localhost", port 389).
* ## Method Details

  + ### getServerName

    public [String](../../lang/String.md "class in java.lang") getServerName()

    Returns the DNS name of the LDAP server.

    Returns:
    :   the name (not `null`)
  + ### getPort

    public int getPort()

    Returns the port number of the LDAP server.

    Returns:
    :   the port number
  + ### clone

    public [Object](../../lang/Object.md "class in java.lang") clone()

    Returns a copy of this object. Changes to the copy will not affect
    the original and vice versa.

    Note: this method currently performs a shallow copy of the object
    (simply calls `Object.clone()`). This may be changed in a
    future revision to perform a deep copy if new parameters are added
    that should not be shared.

    Specified by:
    :   `clone` in interface `CertStoreParameters`

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   the copy

    See Also:
    :   - [`Cloneable`](../../lang/Cloneable.md "interface in java.lang")
  + ### toString

    public [String](../../lang/String.md "class in java.lang") toString()

    Returns a formatted string describing the parameters.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a formatted string describing the parameters