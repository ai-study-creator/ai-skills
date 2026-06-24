Module [java.desktop](../../../module-summary.md)

Package [javax.print.event](package-summary.md)

# Class PrintJobAdapter

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.print.event.PrintJobAdapter

All Implemented Interfaces:
:   `PrintJobListener`

---

public abstract class PrintJobAdapter
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [PrintJobListener](PrintJobListener.md "interface in javax.print.event")

An abstract adapter class for receiving print job events. The methods in this
class are empty. This class exists as a convenience for creating listener
objects. Extend this class to create a [`PrintJobEvent`](PrintJobEvent.md "class in javax.print.event") listener and
override the methods for the events of interest. Unlike the
[`ComponentListener`](../../../java/awt/event/ComponentListener.md "interface in java.awt.event") interface, this
abstract interface provides empty methods so that you only need to define the
methods you need, rather than all of the methods.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `PrintJobAdapter()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `printDataTransferCompleted(PrintJobEvent pje)`

  Called to notify the client that data has been successfully transferred
  to the print service, and the client may free local resources allocated
  for that data.

  `void`

  `printJobCanceled(PrintJobEvent pje)`

  Called to notify the client that the job was canceled by user or program.

  `void`

  `printJobCompleted(PrintJobEvent pje)`

  Called to notify the client that the job completed successfully.

  `void`

  `printJobFailed(PrintJobEvent pje)`

  Called to notify the client that the job failed to complete successfully
  and will have to be resubmitted.

  `void`

  `printJobNoMoreEvents(PrintJobEvent pje)`

  Called to notify the client that no more events will be delivered.

  `void`

  `printJobRequiresAttention(PrintJobEvent pje)`

  Called to notify the client that some possibly user rectifiable problem
  occurs (eg printer out of paper).

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### PrintJobAdapter

    protected PrintJobAdapter()

    Constructor for subclasses to call.
* ## Method Details

  + ### printDataTransferCompleted

    public void printDataTransferCompleted([PrintJobEvent](PrintJobEvent.md "class in javax.print.event") pje)

    Called to notify the client that data has been successfully transferred
    to the print service, and the client may free local resources allocated
    for that data. The client should not assume that the data has been
    completely printed after receiving this event.

    Specified by:
    :   `printDataTransferCompleted` in interface `PrintJobListener`

    Parameters:
    :   `pje` - the event being notified
  + ### printJobCompleted

    public void printJobCompleted([PrintJobEvent](PrintJobEvent.md "class in javax.print.event") pje)

    Called to notify the client that the job completed successfully.

    Specified by:
    :   `printJobCompleted` in interface `PrintJobListener`

    Parameters:
    :   `pje` - the event being notified
  + ### printJobFailed

    public void printJobFailed([PrintJobEvent](PrintJobEvent.md "class in javax.print.event") pje)

    Called to notify the client that the job failed to complete successfully
    and will have to be resubmitted.

    Specified by:
    :   `printJobFailed` in interface `PrintJobListener`

    Parameters:
    :   `pje` - the event being notified
  + ### printJobCanceled

    public void printJobCanceled([PrintJobEvent](PrintJobEvent.md "class in javax.print.event") pje)

    Called to notify the client that the job was canceled by user or program.

    Specified by:
    :   `printJobCanceled` in interface `PrintJobListener`

    Parameters:
    :   `pje` - the event being notified
  + ### printJobNoMoreEvents

    public void printJobNoMoreEvents([PrintJobEvent](PrintJobEvent.md "class in javax.print.event") pje)

    Called to notify the client that no more events will be delivered. One
    cause of this event being generated is if the job has successfully
    completed, but the printing system is limited in capability and cannot
    verify this. This event is required to be delivered if none of the other
    terminal events (completed/failed/canceled) are delivered.

    Specified by:
    :   `printJobNoMoreEvents` in interface `PrintJobListener`

    Parameters:
    :   `pje` - the event being notified
  + ### printJobRequiresAttention

    public void printJobRequiresAttention([PrintJobEvent](PrintJobEvent.md "class in javax.print.event") pje)

    Called to notify the client that some possibly user rectifiable problem
    occurs (eg printer out of paper).

    Specified by:
    :   `printJobRequiresAttention` in interface `PrintJobListener`

    Parameters:
    :   `pje` - the event being notified