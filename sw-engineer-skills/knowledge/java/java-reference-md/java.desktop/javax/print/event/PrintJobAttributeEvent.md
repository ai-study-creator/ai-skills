Module [java.desktop](../../../module-summary.md)

Package [javax.print.event](package-summary.md)

# Class PrintJobAttributeEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[javax.print.event.PrintEvent](PrintEvent.md "class in javax.print.event")

javax.print.event.PrintJobAttributeEvent

All Implemented Interfaces:
:   `Serializable`

---

public class PrintJobAttributeEvent
extends [PrintEvent](PrintEvent.md "class in javax.print.event")

Class `PrintJobAttributeEvent` encapsulates an event a
`PrintService` reports to let the client know that one or more printing
attributes for a `PrintJob` have changed.

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.print.event.PrintJobAttributeEvent)

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PrintJobAttributeEvent(DocPrintJob source,
  PrintJobAttributeSet attributes)`

  Constructs a `PrintJobAttributeEvent` object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `PrintJobAttributeSet`

  `getAttributes()`

  Determine the printing attributes that changed and their new values.

  `DocPrintJob`

  `getPrintJob()`

  Determine the `PrintJob` to which this print job event pertains.

  ### Methods inherited from class javax.print.event.[PrintEvent](PrintEvent.md "class in javax.print.event")

  `toString`

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### PrintJobAttributeEvent

    public PrintJobAttributeEvent([DocPrintJob](../DocPrintJob.md "interface in javax.print") source,
    [PrintJobAttributeSet](../attribute/PrintJobAttributeSet.md "interface in javax.print.attribute") attributes)

    Constructs a `PrintJobAttributeEvent` object.

    Parameters:
    :   `source` - the print job generating this event
    :   `attributes` - the attribute changes being reported

    Throws:
    :   `IllegalArgumentException` - if `source` is `null`
* ## Method Details

  + ### getPrintJob

    public [DocPrintJob](../DocPrintJob.md "interface in javax.print") getPrintJob()

    Determine the `PrintJob` to which this print job event pertains.

    Returns:
    :   `PrintJob` object
  + ### getAttributes

    public [PrintJobAttributeSet](../attribute/PrintJobAttributeSet.md "interface in javax.print.attribute") getAttributes()

    Determine the printing attributes that changed and their new values.

    Returns:
    :   attributes containing the new values for the print job attributes
        that changed. The returned set may not be modifiable.