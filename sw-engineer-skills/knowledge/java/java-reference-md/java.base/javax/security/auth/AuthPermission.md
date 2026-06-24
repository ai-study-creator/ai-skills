Module [java.base](../../../module-summary.md)

Package [javax.security.auth](package-summary.md)

# Class AuthPermission

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

[java.security.Permission](../../../java/security/Permission.md "class in java.security")

[java.security.BasicPermission](../../../java/security/BasicPermission.md "class in java.security")

javax.security.auth.AuthPermission

All Implemented Interfaces:
:   `Serializable`, `Guard`

---

public final class AuthPermission
extends [BasicPermission](../../../java/security/BasicPermission.md "class in java.security")

This class is for authentication permissions. An `AuthPermission`
contains a name (also referred to as a "target name") but no actions
list; you either have the named permission or you don't.

The target name is the name of a security configuration parameter
(see below). Currently, the `AuthPermission` object is used to
guard access to the [`Subject`](Subject.md "class in javax.security.auth"),
[`LoginContext`](login/LoginContext.md "class in javax.security.auth.login"), and
[`Configuration`](login/Configuration.md "class in javax.security.auth.login") objects.

The standard target names for an Authentication Permission are:

```
      doAs -                  allow the caller to invoke the
                              Subject.doAs methods.

      doAsPrivileged -        allow the caller to invoke the
                              Subject.doAsPrivileged methods.

      getSubject -            allow for the retrieval of the
                              Subject(s) associated with the
                              current Thread.

      getSubjectFromDomainCombiner -  allow for the retrieval of the
                              Subject associated with the
                              a SubjectDomainCombiner.

      setReadOnly -           allow the caller to set a Subject
                              to be read-only.

      modifyPrincipals -      allow the caller to modify the Set
                              of Principals associated with a
                              Subject

      modifyPublicCredentials - allow the caller to modify the
                              Set of public credentials
                              associated with a Subject

      modifyPrivateCredentials - allow the caller to modify the
                              Set of private credentials
                              associated with a Subject

      refreshCredential -     allow code to invoke the refresh
                              method on a credential which implements
                              the Refreshable interface.

      destroyCredential -     allow code to invoke the destroy
                              method on a credential object
                              which implements the Destroyable
                              interface.

      createLoginContext.{name} -  allow code to instantiate a
                              LoginContext with the
                              specified name.  name
                              is used as the index into the installed login
                              Configuration
                              (that returned by
                              Configuration.getConfiguration()).
                              name can be wildcarded (set to '*')
                              to allow for any name.

      getLoginConfiguration - allow for the retrieval of the system-wide
                              login Configuration.

      createLoginConfiguration.{type} - allow code to obtain a Configuration
                              object via
                              Configuration.getInstance.

      setLoginConfiguration - allow for the setting of the system-wide
                              login Configuration.

      refreshLoginConfiguration - allow for the refreshing of the system-wide
                              login Configuration.
```

Please note that granting this permission with the "modifyPrincipals",
"modifyPublicCredentials" or "modifyPrivateCredentials" target allows
a JAAS login module to populate principal or credential objects into
the Subject. Although reading information inside the private credentials
set requires a [`PrivateCredentialPermission`](PrivateCredentialPermission.md "class in javax.security.auth") of the credential type to
be granted, reading information inside the principals set and the public
credentials set requires no additional permission. These objects can contain
potentially sensitive information. For example, login modules that read
local user information or perform a Kerberos login are able to add
potentially sensitive information such as user ids, groups and domain names
to the principals set.

The following target name has been deprecated in favor of
`createLoginContext.{name}`.

```
      createLoginContext -    allow code to instantiate a
                              LoginContext.
```

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.security.auth.AuthPermission)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AuthPermission(String name)`

  Creates a new AuthPermission with the specified name.

  `AuthPermission(String name,
  String actions)`

  Creates a new AuthPermission object with the specified name.
* ## Method Summary

  ### Methods inherited from class java.security.[BasicPermission](../../../java/security/BasicPermission.md "class in java.security")

  `equals, getActions, hashCode, implies, newPermissionCollection`

  ### Methods inherited from class java.security.[Permission](../../../java/security/Permission.md "class in java.security")

  `checkGuard, getName, toString`

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AuthPermission

    public AuthPermission([String](../../../java/lang/String.md "class in java.lang") name)

    Creates a new AuthPermission with the specified name.
    The name is the symbolic name of the AuthPermission.

    Parameters:
    :   `name` - the name of the AuthPermission

    Throws:
    :   `NullPointerException` - if `name` is `null`.
    :   `IllegalArgumentException` - if `name` is empty.
  + ### AuthPermission

    public AuthPermission([String](../../../java/lang/String.md "class in java.lang") name,
    [String](../../../java/lang/String.md "class in java.lang") actions)

    Creates a new AuthPermission object with the specified name.
    The name is the symbolic name of the AuthPermission, and the
    actions String is currently unused and should be null.

    Parameters:
    :   `name` - the name of the AuthPermission
    :   `actions` - should be null.

    Throws:
    :   `NullPointerException` - if `name` is `null`.
    :   `IllegalArgumentException` - if `name` is empty.