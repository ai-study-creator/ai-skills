Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class IOError

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Error](../lang/Error.md "class in java.lang")

java.io.IOError

All Implemented Interfaces:
:   `Serializable`

---

public class IOError
extends [Error](../lang/Error.md "class in java.lang")

Thrown when a serious I/O error has occurred.

Since:
:   1.6

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.io.IOError)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IOError(Throwable cause)`

  Constructs a new instance of IOError with the specified cause.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### IOError

    public IOError([Throwable](../lang/Throwable.md "class in java.lang") cause)

    Constructs a new instance of IOError with the specified cause. The
    IOError is created with the detail message of
    `(cause==null ? null : cause.toString())` (which typically
    contains the class and detail message of cause).

    Parameters:
    :   `cause` - The cause of this error, or `null` if the cause
        is not known