Module [java.desktop](../../../module-summary.md)

Package [javax.print.event](package-summary.md)

# Class PrintServiceAttributeEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[javax.print.event.PrintEvent](PrintEvent.md "class in javax.print.event")

javax.print.event.PrintServiceAttributeEvent

All Implemented Interfaces:
:   `Serializable`

---

public class PrintServiceAttributeEvent
extends [PrintEvent](PrintEvent.md "class in javax.print.event")

Class `PrintServiceAttributeEvent` encapsulates an event a Print
Service instance reports to let the client know of changes in the print
service state.

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.print.event.PrintServiceAttributeEvent)

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PrintServiceAttributeEvent(PrintService source,
  PrintServiceAttributeSet attributes)`

  Constructs a `PrintServiceAttributeEvent` object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `PrintServiceAttributeSet`

  `getAttributes()`

  Determine the printing service attributes that changed and their new
  values.

  `PrintService`

  `getPrintService()`

  Returns the print service.

  ### Methods inherited from class javax.print.event.[PrintEvent](PrintEvent.md "class in javax.print.event")

  `toString`

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### PrintServiceAttributeEvent

    public PrintServiceAttributeEvent([PrintService](../PrintService.md "interface in javax.print") source,
    [PrintServiceAttributeSet](../attribute/PrintServiceAttributeSet.md "interface in javax.print.attribute") attributes)

    Constructs a `PrintServiceAttributeEvent` object.

    Parameters:
    :   `source` - the print job generating this event
    :   `attributes` - the attribute changes being reported

    Throws:
    :   `IllegalArgumentException` - if `source` is `null`
* ## Method Details

  + ### getPrintService

    public [PrintService](../PrintService.md "interface in javax.print") getPrintService()

    Returns the print service.

    Returns:
    :   `PrintService` object
  + ### getAttributes

    public [PrintServiceAttributeSet](../attribute/PrintServiceAttributeSet.md "interface in javax.print.attribute") getAttributes()

    Determine the printing service attributes that changed and their new
    values.

    Returns:
    :   attributes containing the new values for the service attributes
        that changed. The returned set may be unmodifiable.