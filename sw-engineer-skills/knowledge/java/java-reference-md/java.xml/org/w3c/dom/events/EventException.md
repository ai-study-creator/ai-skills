Module [java.xml](../../../../module-summary.md)

Package [org.w3c.dom.events](package-summary.md)

# Class EventException

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

org.w3c.dom.events.EventException

All Implemented Interfaces:
:   `Serializable`

---

public class EventException
extends [RuntimeException](../../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

Event operations may throw an `EventException` as specified in
their method descriptions.

See also the [Document Object Model (DOM) Level 2 Events Specification](http://www.w3.org/TR/2000/REC-DOM-Level-2-Events-20001113).

Since:
:   1.5, DOM Level 2

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#org.w3c.dom.events.EventException)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `short`

  `code`

  `static final short`

  `UNSPECIFIED_EVENT_TYPE_ERR`

  If the `Event`'s type was not specified by initializing the
  event before the method was called.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `EventException(short code,
  String message)`
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### code

    public short code
  + ### UNSPECIFIED\_EVENT\_TYPE\_ERR

    public static final short UNSPECIFIED\_EVENT\_TYPE\_ERR

    If the `Event`'s type was not specified by initializing the
    event before the method was called. Specification of the Event's type
    as `null` or an empty string will also trigger this
    exception.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#org.w3c.dom.events.EventException.UNSPECIFIED_EVENT_TYPE_ERR)
* ## Constructor Details

  + ### EventException

    public EventException(short code,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") message)