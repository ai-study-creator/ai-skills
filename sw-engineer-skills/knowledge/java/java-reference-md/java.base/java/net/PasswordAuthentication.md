Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class PasswordAuthentication

[java.lang.Object](../lang/Object.md "class in java.lang")

java.net.PasswordAuthentication

---

public final class PasswordAuthentication
extends [Object](../lang/Object.md "class in java.lang")

The class PasswordAuthentication is a data holder that is used by
Authenticator. It is simply a repository for a user name and a password.

Since:
:   1.2

See Also:
:   * [`Authenticator`](Authenticator.md "class in java.net")
    * [`Authenticator.getPasswordAuthentication()`](Authenticator.md#getPasswordAuthentication())

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PasswordAuthentication(String userName,
  char[] password)`

  Creates a new `PasswordAuthentication` object from the given
  user name and password.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `char[]`

  `getPassword()`

  Returns the user password.

  `String`

  `getUserName()`

  Returns the user name.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### PasswordAuthentication

    public PasswordAuthentication([String](../lang/String.md "class in java.lang") userName,
    char[] password)

    Creates a new `PasswordAuthentication` object from the given
    user name and password.

    Note that the given user password is cloned before it is stored in
    the new `PasswordAuthentication` object.

    Parameters:
    :   `userName` - the user name
    :   `password` - the user's password
* ## Method Details

  + ### getUserName

    public [String](../lang/String.md "class in java.lang") getUserName()

    Returns the user name.

    Returns:
    :   the user name
  + ### getPassword

    public char[] getPassword()

    Returns the user password.

    Note that this method returns a reference to the password. It is
    the caller's responsibility to zero out the password information after
    it is no longer needed.

    Returns:
    :   the password