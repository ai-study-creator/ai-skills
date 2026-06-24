Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Class SSLPermission

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

[java.security.Permission](../../../java/security/Permission.md "class in java.security")

[java.security.BasicPermission](../../../java/security/BasicPermission.md "class in java.security")

javax.net.ssl.SSLPermission

All Implemented Interfaces:
:   `Serializable`, `Guard`

---

public final class SSLPermission
extends [BasicPermission](../../../java/security/BasicPermission.md "class in java.security")

This class is for various network permissions.
An SSLPermission contains a name (also referred to as a "target name") but
no actions list; you either have the named permission
or you don't.

The target name is the name of the network permission (see below). The naming
convention follows the hierarchical property naming convention.
Also, an asterisk
may appear at the end of the name, following a ".", or by itself, to
signify a wildcard match. For example: "foo.\*" and "\*" signify a wildcard
match, while "\*foo" and "a\*b" do not.

The following table lists all the possible SSLPermission target names,
and for each provides a description of what the permission allows
and a discussion of the risks of granting code the permission.

permission name, what it allows, and associated risks

| Permission Target Name | What the Permission Allows | Risks of Allowing this Permission |
| --- | --- | --- |
| setHostnameVerifier | The ability to set a callback which can decide whether to allow a mismatch between the host being connected to by an HttpsURLConnection and the common name field in server certificate. | Malicious code can set a verifier that monitors host names visited by HttpsURLConnection requests or that allows server certificates with invalid common names. |
| getSSLSessionContext | The ability to get the SSLSessionContext of an SSLSession. | Malicious code may monitor sessions which have been established with SSL peers or might invalidate sessions to slow down performance. |
| setDefaultSSLContext | The ability to set the default SSL context | Malicious code can set a context that monitors the opening of connections or the plaintext data that is transmitted. |

Since:
:   1.4

See Also:
:   * [`BasicPermission`](../../../java/security/BasicPermission.md "class in java.security")
    * [`Permission`](../../../java/security/Permission.md "class in java.security")
    * [`Permissions`](../../../java/security/Permissions.md "class in java.security")
    * [`PermissionCollection`](../../../java/security/PermissionCollection.md "class in java.security")
    * [`SecurityManager`](../../../java/lang/SecurityManager.md "class in java.lang")
    * [Serialized Form](../../../../serialized-form.md#javax.net.ssl.SSLPermission)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SSLPermission(String name)`

  Creates a new SSLPermission with the specified name.

  `SSLPermission(String name,
  String actions)`

  Creates a new SSLPermission object with the specified name.
* ## Method Summary

  ### Methods inherited from class java.security.[BasicPermission](../../../java/security/BasicPermission.md "class in java.security")

  `equals, getActions, hashCode, implies, newPermissionCollection`

  ### Methods inherited from class java.security.[Permission](../../../java/security/Permission.md "class in java.security")

  `checkGuard, getName, toString`

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SSLPermission

    public SSLPermission([String](../../../java/lang/String.md "class in java.lang") name)

    Creates a new SSLPermission with the specified name.
    The name is the symbolic name of the SSLPermission, such as
    "setDefaultAuthenticator", etc. An asterisk
    may appear at the end of the name, following a ".", or by itself, to
    signify a wildcard match.

    Parameters:
    :   `name` - the name of the SSLPermission.

    Throws:
    :   `NullPointerException` - if `name` is null.
    :   `IllegalArgumentException` - if `name` is empty.
  + ### SSLPermission

    public SSLPermission([String](../../../java/lang/String.md "class in java.lang") name,
    [String](../../../java/lang/String.md "class in java.lang") actions)

    Creates a new SSLPermission object with the specified name.
    The name is the symbolic name of the SSLPermission, and the
    actions String is currently unused and should be null.

    Parameters:
    :   `name` - the name of the SSLPermission.
    :   `actions` - ignored.

    Throws:
    :   `NullPointerException` - if `name` is null.
    :   `IllegalArgumentException` - if `name` is empty.