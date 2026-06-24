Module [java.base](../../../module-summary.md)

Package [java.time.zone](package-summary.md)

# Class ZoneRulesException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../lang/RuntimeException.md "class in java.lang")

[java.time.DateTimeException](../DateTimeException.md "class in java.time")

java.time.zone.ZoneRulesException

All Implemented Interfaces:
:   `Serializable`

---

public class ZoneRulesException
extends [DateTimeException](../DateTimeException.md "class in java.time")

Thrown to indicate a problem with time-zone configuration.

This exception is used to indicate a problems with the configured
time-zone rules.

Since:
:   1.8

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.time.zone.ZoneRulesException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ZoneRulesException(String message)`

  Constructs a new date-time exception with the specified message.

  `ZoneRulesException(String message,
  Throwable cause)`

  Constructs a new date-time exception with the specified message and cause.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ZoneRulesException

    public ZoneRulesException([String](../../lang/String.md "class in java.lang") message)

    Constructs a new date-time exception with the specified message.

    Parameters:
    :   `message` - the message to use for this exception, may be null
  + ### ZoneRulesException

    public ZoneRulesException([String](../../lang/String.md "class in java.lang") message,
    [Throwable](../../lang/Throwable.md "class in java.lang") cause)

    Constructs a new date-time exception with the specified message and cause.

    Parameters:
    :   `message` - the message to use for this exception, may be null
    :   `cause` - the cause of the exception, may be null