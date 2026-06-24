Module [java.desktop](../../../module-summary.md)

# Package javax.print.event

---

package javax.print.event

Package `javax.print.event` contains event classes and listener
interfaces.

They may be used to monitor both print services (such as printers going
on-line & off-line), and the progress of a specific print job.

Please note: In the `javax.print` APIs, a `null` reference
parameter to methods is incorrect unless explicitly documented on the method
as having a meaningful interpretation. Usage to the contrary is incorrect
coding and may result in a run time exception either immediately or at some
later time. `IllegalArgumentException` and `NullPointerException`
are examples of typical and acceptable run time exceptions for such cases.

Since:
:   1.4

* Related Packages

  Package

  Description

  [javax.print](../package-summary.md)

  Provides the principal classes and interfaces for the Java Print
  Service API.

  [javax.print.attribute](../attribute/package-summary.md)

  Provides classes and interfaces that describe the types of Java Print
  Service attributes and how they can be collected into attribute sets.
* All Classes and InterfacesInterfacesClasses

  Class

  Description

  [PrintEvent](PrintEvent.md "class in javax.print.event")

  Class `PrintEvent` is the super class of all Print Service API events.

  [PrintJobAdapter](PrintJobAdapter.md "class in javax.print.event")

  An abstract adapter class for receiving print job events.

  [PrintJobAttributeEvent](PrintJobAttributeEvent.md "class in javax.print.event")

  Class `PrintJobAttributeEvent` encapsulates an event a
  `PrintService` reports to let the client know that one or more printing
  attributes for a `PrintJob` have changed.

  [PrintJobAttributeListener](PrintJobAttributeListener.md "interface in javax.print.event")

  Implementations of this interface are attached to a
  [`DocPrintJob`](../DocPrintJob.md "interface in javax.print") to monitor the status of
  attribute changes associated with the print job.

  [PrintJobEvent](PrintJobEvent.md "class in javax.print.event")

  Class `PrintJobEvent` encapsulates common events a print job reports to
  let a listener know of progress in the processing of the [`DocPrintJob`](../DocPrintJob.md "interface in javax.print").

  [PrintJobListener](PrintJobListener.md "interface in javax.print.event")

  Implementations of this listener interface should be attached to a
  [`DocPrintJob`](../DocPrintJob.md "interface in javax.print") to monitor the status of the
  printer job.

  [PrintServiceAttributeEvent](PrintServiceAttributeEvent.md "class in javax.print.event")

  Class `PrintServiceAttributeEvent` encapsulates an event a Print
  Service instance reports to let the client know of changes in the print
  service state.

  [PrintServiceAttributeListener](PrintServiceAttributeListener.md "interface in javax.print.event")

  Implementations of this listener interface are attached to a
  [`PrintService`](../PrintService.md "interface in javax.print") to monitor the status of the
  print service.