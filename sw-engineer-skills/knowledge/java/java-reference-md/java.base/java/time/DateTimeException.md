Module [java.base](../../module-summary.md)

Package [java.time](package-summary.md)

# Class DateTimeException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../lang/RuntimeException.md "class in java.lang")

java.time.DateTimeException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `DateTimeParseException`, `UnsupportedTemporalTypeException`, `ZoneRulesException`

---

public class DateTimeException
extends [RuntimeException](../lang/RuntimeException.md "class in java.lang")

Exception used to indicate a problem while calculating a date-time.

This exception is used to indicate problems with creating, querying
and manipulating date-time objects.

Since:
:   1.8

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.time.DateTimeException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DateTimeException(String message)`

  Constructs a new date-time exception with the specified message.

  `DateTimeException(String message,
  Throwable cause)`

  Constructs a new date-time exception with the specified message and cause.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### DateTimeException

    public DateTimeException([String](../lang/String.md "class in java.lang") message)

    Constructs a new date-time exception with the specified message.

    Parameters:
    :   `message` - the message to use for this exception, may be null
  + ### DateTimeException

    public DateTimeException([String](../lang/String.md "class in java.lang") message,
    [Throwable](../lang/Throwable.md "class in java.lang") cause)

    Constructs a new date-time exception with the specified message and cause.

    Parameters:
    :   `message` - the message to use for this exception, may be null
    :   `cause` - the cause of the exception, may be null