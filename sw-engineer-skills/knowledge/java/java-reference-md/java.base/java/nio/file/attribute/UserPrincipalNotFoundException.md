Module [java.base](../../../../module-summary.md)

Package [java.nio.file.attribute](package-summary.md)

# Class UserPrincipalNotFoundException

[java.lang.Object](../../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../lang/Exception.md "class in java.lang")

[java.io.IOException](../../../io/IOException.md "class in java.io")

java.nio.file.attribute.UserPrincipalNotFoundException

All Implemented Interfaces:
:   `Serializable`

---

public class UserPrincipalNotFoundException
extends [IOException](../../../io/IOException.md "class in java.io")

Checked exception thrown when a lookup of [`UserPrincipal`](UserPrincipal.md "interface in java.nio.file.attribute") fails because
the principal does not exist.

Since:
:   1.7

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#java.nio.file.attribute.UserPrincipalNotFoundException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UserPrincipalNotFoundException(String name)`

  Constructs an instance of this class.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getName()`

  Returns the user principal name if this exception was created with the
  user principal name that was not found, otherwise `null`.

  ### Methods inherited from class java.lang.[Throwable](../../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UserPrincipalNotFoundException

    public UserPrincipalNotFoundException([String](../../../lang/String.md "class in java.lang") name)

    Constructs an instance of this class.

    Parameters:
    :   `name` - the principal name; may be `null`
* ## Method Details

  + ### getName

    public [String](../../../lang/String.md "class in java.lang") getName()

    Returns the user principal name if this exception was created with the
    user principal name that was not found, otherwise `null`.

    Returns:
    :   the user principal name or `null`