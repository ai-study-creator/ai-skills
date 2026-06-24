Module [java.desktop](../../../module-summary.md)

Package [javax.print.event](package-summary.md)

# Class PrintEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

javax.print.event.PrintEvent

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `PrintJobAttributeEvent`, `PrintJobEvent`, `PrintServiceAttributeEvent`

---

public class PrintEvent
extends [EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

Class `PrintEvent` is the super class of all Print Service API events.

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.print.event.PrintEvent)

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PrintEvent(Object source)`

  Constructs a `PrintEvent` object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `toString()`

  Returns a string representation of this `PrintEvent`.

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### PrintEvent

    public PrintEvent([Object](../../../../java.base/java/lang/Object.md "class in java.lang") source)

    Constructs a `PrintEvent` object.

    Parameters:
    :   `source` - is the source of the event

    Throws:
    :   `IllegalArgumentException` - if `source` is `null`
* ## Method Details

  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this `PrintEvent`.

    Overrides:
    :   `toString` in class `EventObject`

    Returns:
    :   a message describing the event