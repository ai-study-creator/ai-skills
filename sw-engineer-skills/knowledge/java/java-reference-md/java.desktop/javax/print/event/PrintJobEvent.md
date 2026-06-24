Module [java.desktop](../../../module-summary.md)

Package [javax.print.event](package-summary.md)

# Class PrintJobEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[javax.print.event.PrintEvent](PrintEvent.md "class in javax.print.event")

javax.print.event.PrintJobEvent

All Implemented Interfaces:
:   `Serializable`

---

public class PrintJobEvent
extends [PrintEvent](PrintEvent.md "class in javax.print.event")

Class `PrintJobEvent` encapsulates common events a print job reports to
let a listener know of progress in the processing of the [`DocPrintJob`](../DocPrintJob.md "interface in javax.print").

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.print.event.PrintJobEvent)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `DATA_TRANSFER_COMPLETE`

  The job is not necessarily printed yet, but the data has been transferred
  successfully from the client to the print service.

  `static final int`

  `JOB_CANCELED`

  The job was canceled by the
  [`PrintService`](../PrintService.md "interface in javax.print").

  `static final int`

  `JOB_COMPLETE`

  The document is completely printed.

  `static final int`

  `JOB_FAILED`

  The print service reports that the job cannot be completed.

  `static final int`

  `NO_MORE_EVENTS`

  Not all print services may be capable of delivering interesting events,
  or even telling when a job is complete.

  `static final int`

  `REQUIRES_ATTENTION`

  The print service indicates that a - possibly transient - problem may
  require external intervention before the print service can continue.

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PrintJobEvent(DocPrintJob source,
  int reason)`

  Constructs a `PrintJobEvent` object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getPrintEventType()`

  Gets the reason for this event.

  `DocPrintJob`

  `getPrintJob()`

  Determines the `DocPrintJob` to which this print job event
  pertains.

  ### Methods inherited from class javax.print.event.[PrintEvent](PrintEvent.md "class in javax.print.event")

  `toString`

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### JOB\_CANCELED

    public static final int JOB\_CANCELED

    The job was canceled by the
    [`PrintService`](../PrintService.md "interface in javax.print").

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.print.event.PrintJobEvent.JOB_CANCELED)
  + ### JOB\_COMPLETE

    public static final int JOB\_COMPLETE

    The document is completely printed.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.print.event.PrintJobEvent.JOB_COMPLETE)
  + ### JOB\_FAILED

    public static final int JOB\_FAILED

    The print service reports that the job cannot be completed. The
    application must resubmit the job.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.print.event.PrintJobEvent.JOB_FAILED)
  + ### REQUIRES\_ATTENTION

    public static final int REQUIRES\_ATTENTION

    The print service indicates that a - possibly transient - problem may
    require external intervention before the print service can continue. One
    example of an event that can generate this message is when the printer
    runs out of paper.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.print.event.PrintJobEvent.REQUIRES_ATTENTION)
  + ### NO\_MORE\_EVENTS

    public static final int NO\_MORE\_EVENTS

    Not all print services may be capable of delivering interesting events,
    or even telling when a job is complete. This message indicates the print
    job has no further information or communication with the print service.
    This message should always be delivered if a terminal event
    (completed/failed/canceled) is not delivered. For example, if messages
    such as `JOB_COMPLETE` have NOT been received before receiving this
    message, the only inference that should be drawn is that the print
    service does not support delivering such an event.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.print.event.PrintJobEvent.NO_MORE_EVENTS)
  + ### DATA\_TRANSFER\_COMPLETE

    public static final int DATA\_TRANSFER\_COMPLETE

    The job is not necessarily printed yet, but the data has been transferred
    successfully from the client to the print service. The client may free
    data resources.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.print.event.PrintJobEvent.DATA_TRANSFER_COMPLETE)
* ## Constructor Details

  + ### PrintJobEvent

    public PrintJobEvent([DocPrintJob](../DocPrintJob.md "interface in javax.print") source,
    int reason)

    Constructs a `PrintJobEvent` object.

    Parameters:
    :   `source` - a `DocPrintJob` object
    :   `reason` - an int specifying the reason

    Throws:
    :   `IllegalArgumentException` - if `source` is `null`
* ## Method Details

  + ### getPrintEventType

    public int getPrintEventType()

    Gets the reason for this event.

    Returns:
    :   reason int
  + ### getPrintJob

    public [DocPrintJob](../DocPrintJob.md "interface in javax.print") getPrintJob()

    Determines the `DocPrintJob` to which this print job event
    pertains.

    Returns:
    :   the `DocPrintJob` object that represents the print job that
        reports the events encapsulated by this `PrintJobEvent`