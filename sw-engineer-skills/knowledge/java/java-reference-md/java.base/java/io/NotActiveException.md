Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class NotActiveException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.io.IOException](IOException.md "class in java.io")

[java.io.ObjectStreamException](ObjectStreamException.md "class in java.io")

java.io.NotActiveException

All Implemented Interfaces:
:   `Serializable`

---

public class NotActiveException
extends [ObjectStreamException](ObjectStreamException.md "class in java.io")

Thrown when serialization or deserialization is not active.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.io.NotActiveException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NotActiveException()`

  Constructor to create a new NotActiveException without a reason.

  `NotActiveException(String reason)`

  Constructor to create a new NotActiveException with the reason given.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NotActiveException

    public NotActiveException([String](../lang/String.md "class in java.lang") reason)

    Constructor to create a new NotActiveException with the reason given.

    Parameters:
    :   `reason` - a String describing the reason for the exception.
  + ### NotActiveException

    public NotActiveException()

    Constructor to create a new NotActiveException without a reason.