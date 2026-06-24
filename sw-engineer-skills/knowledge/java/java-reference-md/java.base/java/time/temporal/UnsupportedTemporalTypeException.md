Module [java.base](../../../module-summary.md)

Package [java.time.temporal](package-summary.md)

# Class UnsupportedTemporalTypeException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../lang/RuntimeException.md "class in java.lang")

[java.time.DateTimeException](../DateTimeException.md "class in java.time")

java.time.temporal.UnsupportedTemporalTypeException

All Implemented Interfaces:
:   `Serializable`

---

public class UnsupportedTemporalTypeException
extends [DateTimeException](../DateTimeException.md "class in java.time")

UnsupportedTemporalTypeException indicates that a ChronoField or ChronoUnit is
not supported for a Temporal class.

Since:
:   1.8

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.time.temporal.UnsupportedTemporalTypeException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UnsupportedTemporalTypeException(String message)`

  Constructs a new UnsupportedTemporalTypeException with the specified message.

  `UnsupportedTemporalTypeException(String message,
  Throwable cause)`

  Constructs a new UnsupportedTemporalTypeException with the specified message and cause.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UnsupportedTemporalTypeException

    public UnsupportedTemporalTypeException([String](../../lang/String.md "class in java.lang") message)

    Constructs a new UnsupportedTemporalTypeException with the specified message.

    Parameters:
    :   `message` - the message to use for this exception, may be null
  + ### UnsupportedTemporalTypeException

    public UnsupportedTemporalTypeException([String](../../lang/String.md "class in java.lang") message,
    [Throwable](../../lang/Throwable.md "class in java.lang") cause)

    Constructs a new UnsupportedTemporalTypeException with the specified message and cause.

    Parameters:
    :   `message` - the message to use for this exception, may be null
    :   `cause` - the cause of the exception, may be null