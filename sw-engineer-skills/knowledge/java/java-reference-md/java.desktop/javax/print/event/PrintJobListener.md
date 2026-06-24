Module [java.desktop](../../../module-summary.md)

Package [javax.print.event](package-summary.md)

# Interface PrintJobListener

All Known Implementing Classes:
:   `PrintJobAdapter`

---

public interface PrintJobListener

Implementations of this listener interface should be attached to a
[`DocPrintJob`](../DocPrintJob.md "interface in javax.print") to monitor the status of the
printer job. These callback methods may be invoked on the thread processing
the print job, or a service created notification thread. In either case the
client should not perform lengthy processing in these callbacks.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

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

  Called to notify the client that the job was canceled by a user or a
  program.

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

  Called to notify the client that an error has occurred that the user
  might be able to fix.

* ## Method Details

  + ### printDataTransferCompleted

    void printDataTransferCompleted([PrintJobEvent](PrintJobEvent.md "class in javax.print.event") pje)

    Called to notify the client that data has been successfully transferred
    to the print service, and the client may free local resources allocated
    for that data. The client should not assume that the data has been
    completely printed after receiving this event. If this event is not
    received the client should wait for a terminal event
    (completed/canceled/failed) before freeing the resources.

    Parameters:
    :   `pje` - the job generating this event
  + ### printJobCompleted

    void printJobCompleted([PrintJobEvent](PrintJobEvent.md "class in javax.print.event") pje)

    Called to notify the client that the job completed successfully.

    Parameters:
    :   `pje` - the job generating this event
  + ### printJobFailed

    void printJobFailed([PrintJobEvent](PrintJobEvent.md "class in javax.print.event") pje)

    Called to notify the client that the job failed to complete successfully
    and will have to be resubmitted.

    Parameters:
    :   `pje` - the job generating this event
  + ### printJobCanceled

    void printJobCanceled([PrintJobEvent](PrintJobEvent.md "class in javax.print.event") pje)

    Called to notify the client that the job was canceled by a user or a
    program.

    Parameters:
    :   `pje` - the job generating this event
  + ### printJobNoMoreEvents

    void printJobNoMoreEvents([PrintJobEvent](PrintJobEvent.md "class in javax.print.event") pje)

    Called to notify the client that no more events will be delivered. One
    cause of this event being generated is if the job has successfully
    completed, but the printing system is limited in capability and cannot
    verify this. This event is required to be delivered if none of the other
    terminal events (completed/failed/canceled) are delivered.

    Parameters:
    :   `pje` - the job generating this event
  + ### printJobRequiresAttention

    void printJobRequiresAttention([PrintJobEvent](PrintJobEvent.md "class in javax.print.event") pje)

    Called to notify the client that an error has occurred that the user
    might be able to fix. One example of an error that can generate this
    event is when the printer runs out of paper.

    Parameters:
    :   `pje` - the job generating this event