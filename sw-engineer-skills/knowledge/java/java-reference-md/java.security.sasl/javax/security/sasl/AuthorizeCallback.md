Module [java.security.sasl](../../../module-summary.md)

Package [javax.security.sasl](package-summary.md)

# Class AuthorizeCallback

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.security.sasl.AuthorizeCallback

All Implemented Interfaces:
:   `Serializable`, `Callback`

---

public class AuthorizeCallback
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Callback](../../../../java.base/javax/security/auth/callback/Callback.md "interface in javax.security.auth.callback"), [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

This callback is used by `SaslServer` to determine whether
one entity (identified by an authenticated authentication id)
can act on
behalf of another entity (identified by an authorization id).

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.security.sasl.AuthorizeCallback)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AuthorizeCallback(String authnID,
  String authzID)`

  Constructs an instance of `AuthorizeCallback`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getAuthenticationID()`

  Returns the authentication id to check.

  `String`

  `getAuthorizationID()`

  Returns the authorization id to check.

  `String`

  `getAuthorizedID()`

  Returns the id of the authorized user.

  `boolean`

  `isAuthorized()`

  Determines whether the authentication id is allowed to
  act on behalf of the authorization id.

  `void`

  `setAuthorized(boolean ok)`

  Sets whether the authorization is allowed.

  `void`

  `setAuthorizedID(String id)`

  Sets the id of the authorized entity.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AuthorizeCallback

    public AuthorizeCallback([String](../../../../java.base/java/lang/String.md "class in java.lang") authnID,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") authzID)

    Constructs an instance of `AuthorizeCallback`.

    Parameters:
    :   `authnID` - The (authenticated) authentication id.
    :   `authzID` - The authorization id.
* ## Method Details

  + ### getAuthenticationID

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getAuthenticationID()

    Returns the authentication id to check.

    Returns:
    :   The authentication id to check.
  + ### getAuthorizationID

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getAuthorizationID()

    Returns the authorization id to check.

    Returns:
    :   The authentication id to check.
  + ### isAuthorized

    public boolean isAuthorized()

    Determines whether the authentication id is allowed to
    act on behalf of the authorization id.

    Returns:
    :   `true` if authorization is allowed; `false` otherwise

    See Also:
    :   - [`setAuthorized(boolean)`](#setAuthorized(boolean))
        - [`getAuthorizedID()`](#getAuthorizedID())
  + ### setAuthorized

    public void setAuthorized(boolean ok)

    Sets whether the authorization is allowed.

    Parameters:
    :   `ok` - `true` if authorization is allowed; `false` otherwise

    See Also:
    :   - [`isAuthorized()`](#isAuthorized())
        - [`setAuthorizedID(java.lang.String)`](#setAuthorizedID(java.lang.String))
  + ### getAuthorizedID

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getAuthorizedID()

    Returns the id of the authorized user.

    Returns:
    :   The id of the authorized user. `null` means the
        authorization failed.

    See Also:
    :   - [`setAuthorized(boolean)`](#setAuthorized(boolean))
        - [`setAuthorizedID(java.lang.String)`](#setAuthorizedID(java.lang.String))
  + ### setAuthorizedID

    public void setAuthorizedID([String](../../../../java.base/java/lang/String.md "class in java.lang") id)

    Sets the id of the authorized entity. Called by handler only when the id
    is different from getAuthorizationID(). For example, the id
    might need to be canonicalized for the environment in which it
    will be used.

    Parameters:
    :   `id` - The id of the authorized user.

    See Also:
    :   - [`setAuthorized(boolean)`](#setAuthorized(boolean))
        - [`getAuthorizedID()`](#getAuthorizedID())