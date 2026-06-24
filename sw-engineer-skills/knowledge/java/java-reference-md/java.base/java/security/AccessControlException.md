Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class AccessControlException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../lang/RuntimeException.md "class in java.lang")

[java.lang.SecurityException](../lang/SecurityException.md "class in java.lang")

java.security.AccessControlException

All Implemented Interfaces:
:   `Serializable`

---

[@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")([since](../lang/Deprecated.md#since())="17",
[forRemoval](../lang/Deprecated.md#forRemoval())=true)
public class AccessControlException
extends [SecurityException](../lang/SecurityException.md "class in java.lang")

Deprecated, for removal: This API element is subject to removal in a future version.

This class is only useful in conjunction with
[the Security Manager](../lang/SecurityManager.md "class in java.lang"), which is deprecated
and subject to removal in a future release. Consequently, this class
is also deprecated and subject to removal. There is no replacement for
the Security Manager or this class.

This exception is thrown by the `AccessController` to indicate
that a requested access (to a critical system resource such as the
file system or the network) is denied.

The reason to deny access can vary. For example, the requested
permission might be of an incorrect type, contain an invalid
value, or request access that is not allowed according to the
security policy. Such information should be given whenever
possible at the time the exception is thrown.

Since:
:   1.2

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.security.AccessControlException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AccessControlException(String s)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Constructs an `AccessControlException` with the
  specified, detailed message.

  `AccessControlException(String s,
  Permission p)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Constructs an `AccessControlException` with the
  specified, detailed message, and the requested permission that caused
  the exception.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `Permission`

  `getPermission()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Gets the `Permission` object associated with this exception, or
  `null` if there was no corresponding `Permission` object.

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AccessControlException

    public AccessControlException([String](../lang/String.md "class in java.lang") s)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Constructs an `AccessControlException` with the
    specified, detailed message.

    Parameters:
    :   `s` - the detail message.
  + ### AccessControlException

    public AccessControlException([String](../lang/String.md "class in java.lang") s,
    [Permission](Permission.md "class in java.security") p)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Constructs an `AccessControlException` with the
    specified, detailed message, and the requested permission that caused
    the exception.

    Parameters:
    :   `s` - the detail message.
    :   `p` - the permission that caused the exception.
* ## Method Details

  + ### getPermission

    public [Permission](Permission.md "class in java.security") getPermission()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Gets the `Permission` object associated with this exception, or
    `null` if there was no corresponding `Permission` object.

    Returns:
    :   the Permission object.