Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class PrivilegedActionException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

java.security.PrivilegedActionException

All Implemented Interfaces:
:   `Serializable`

---

public class PrivilegedActionException
extends [Exception](../lang/Exception.md "class in java.lang")

This exception is thrown by
`doPrivileged(PrivilegedExceptionAction)` and
`doPrivileged(PrivilegedExceptionAction,
AccessControlContext context)` to indicate
that the action being performed threw a checked exception. The exception
thrown by the action can be obtained by calling the
`getException` method. In effect, an
`PrivilegedActionException` is a "wrapper"
for an exception thrown by a privileged action.

Since:
:   1.2

See Also:
:   * [`PrivilegedExceptionAction`](PrivilegedExceptionAction.md "interface in java.security")
    * [`AccessController.doPrivileged(PrivilegedExceptionAction)`](AccessController.md#doPrivileged(java.security.PrivilegedExceptionAction))
    * [`AccessController.doPrivileged(PrivilegedExceptionAction,AccessControlContext)`](AccessController.md#doPrivileged(java.security.PrivilegedExceptionAction,java.security.AccessControlContext))
    * [Serialized Form](../../../serialized-form.md#java.security.PrivilegedActionException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PrivilegedActionException(Exception exception)`

  Constructs a new `PrivilegedActionException` "wrapping"
  the specific Exception.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Exception`

  `getException()`

  Returns the exception thrown by the privileged computation that
  resulted in this `PrivilegedActionException`.

  `String`

  `toString()`

  Returns a short description of this throwable.

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### PrivilegedActionException

    public PrivilegedActionException([Exception](../lang/Exception.md "class in java.lang") exception)

    Constructs a new `PrivilegedActionException` "wrapping"
    the specific Exception.

    Parameters:
    :   `exception` - The exception thrown
* ## Method Details

  + ### getException

    public [Exception](../lang/Exception.md "class in java.lang") getException()

    Returns the exception thrown by the privileged computation that
    resulted in this `PrivilegedActionException`.

    Returns:
    :   the exception thrown by the privileged computation that
        resulted in this `PrivilegedActionException`.

    See Also:
    :   - [`PrivilegedExceptionAction`](PrivilegedExceptionAction.md "interface in java.security")
        - [`AccessController.doPrivileged(PrivilegedExceptionAction)`](AccessController.md#doPrivileged(java.security.PrivilegedExceptionAction))
        - [`AccessController.doPrivileged(PrivilegedExceptionAction, AccessControlContext)`](AccessController.md#doPrivileged(java.security.PrivilegedExceptionAction,java.security.AccessControlContext))
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Description copied from class: `Throwable`

    Returns a short description of this throwable.
    The result is the concatenation of:
    - the [name](../lang/Class.md#getName()) of the class of this object- ": " (a colon and a space)- the result of invoking this object's [`Throwable.getLocalizedMessage()`](../lang/Throwable.md#getLocalizedMessage())
          methodIf `getLocalizedMessage` returns `null`, then just
    the class name is returned.

    Overrides:
    :   `toString` in class `Throwable`

    Returns:
    :   a string representation of this throwable.