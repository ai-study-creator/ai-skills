Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class InvalidObjectException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.io.IOException](IOException.md "class in java.io")

[java.io.ObjectStreamException](ObjectStreamException.md "class in java.io")

java.io.InvalidObjectException

All Implemented Interfaces:
:   `Serializable`

---

public class InvalidObjectException
extends [ObjectStreamException](ObjectStreamException.md "class in java.io")

Indicates that one or more deserialized objects failed validation
tests. The argument should provide the reason for the failure.

Since:
:   1.1, 1.1

See Also:
:   * [`ObjectInputValidation`](ObjectInputValidation.md "interface in java.io")
    * [Serialized Form](../../../serialized-form.md#java.io.InvalidObjectException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InvalidObjectException(String reason)`

  Constructs an `InvalidObjectException`.

  `InvalidObjectException(String reason,
  Throwable cause)`

  Constructs an `InvalidObjectException` with the given
  reason and cause.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InvalidObjectException

    public InvalidObjectException([String](../lang/String.md "class in java.lang") reason)

    Constructs an `InvalidObjectException`.

    Parameters:
    :   `reason` - Detailed message explaining the reason for the failure.

    See Also:
    :   - [`ObjectInputValidation`](ObjectInputValidation.md "interface in java.io")
  + ### InvalidObjectException

    public InvalidObjectException([String](../lang/String.md "class in java.lang") reason,
    [Throwable](../lang/Throwable.md "class in java.lang") cause)

    Constructs an `InvalidObjectException` with the given
    reason and cause.

    Parameters:
    :   `reason` - Detailed message explaining the reason for the failure.
    :   `cause` - the cause

    Since:
    :   19

    See Also:
    :   - [`ObjectInputValidation`](ObjectInputValidation.md "interface in java.io")