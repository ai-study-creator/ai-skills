Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class SecurityException

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Exception](Exception.md "class in java.lang")

[java.lang.RuntimeException](RuntimeException.md "class in java.lang")

java.lang.SecurityException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `AccessControlException`, `RMISecurityException`

---

public class SecurityException
extends [RuntimeException](RuntimeException.md "class in java.lang")

Thrown by the security manager to indicate a security violation.

Since:
:   1.0

See Also:
:   * [`SecurityManager`](SecurityManager.md "class in java.lang")
    * [Serialized Form](../../../serialized-form.md#java.lang.SecurityException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SecurityException()`

  Constructs a `SecurityException` with no detail message.

  `SecurityException(String s)`

  Constructs a `SecurityException` with the specified
  detail message.

  `SecurityException(String message,
  Throwable cause)`

  Creates a `SecurityException` with the specified
  detail message and cause.

  `SecurityException(Throwable cause)`

  Creates a `SecurityException` with the specified cause
  and a detail message of `(cause==null ? null : cause.toString())`
  (which typically contains the class and detail message of
  `cause`).
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SecurityException

    public SecurityException()

    Constructs a `SecurityException` with no detail message.
  + ### SecurityException

    public SecurityException([String](String.md "class in java.lang") s)

    Constructs a `SecurityException` with the specified
    detail message.

    Parameters:
    :   `s` - the detail message.
  + ### SecurityException

    public SecurityException([String](String.md "class in java.lang") message,
    [Throwable](Throwable.md "class in java.lang") cause)

    Creates a `SecurityException` with the specified
    detail message and cause.

    Parameters:
    :   `message` - the detail message (which is saved for later retrieval
        by the [`Throwable.getMessage()`](Throwable.md#getMessage()) method).
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](Throwable.md#getCause()) method). (A `null` value is permitted,
        and indicates that the cause is nonexistent or unknown.)

    Since:
    :   1.5
  + ### SecurityException

    public SecurityException([Throwable](Throwable.md "class in java.lang") cause)

    Creates a `SecurityException` with the specified cause
    and a detail message of `(cause==null ? null : cause.toString())`
    (which typically contains the class and detail message of
    `cause`).

    Parameters:
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](Throwable.md#getCause()) method). (A `null` value is permitted,
        and indicates that the cause is nonexistent or unknown.)

    Since:
    :   1.5