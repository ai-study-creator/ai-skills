Module [java.desktop](../../../module-summary.md)

Package [javax.print.event](package-summary.md)

# Interface PrintJobAttributeListener

---

public interface PrintJobAttributeListener

Implementations of this interface are attached to a
[`DocPrintJob`](../DocPrintJob.md "interface in javax.print") to monitor the status of
attribute changes associated with the print job.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `attributeUpdate(PrintJobAttributeEvent pjae)`

  Notifies the listener of a change in some print job attributes.

* ## Method Details

  + ### attributeUpdate

    void attributeUpdate([PrintJobAttributeEvent](PrintJobAttributeEvent.md "class in javax.print.event") pjae)

    Notifies the listener of a change in some print job attributes. One
    example of an occurrence triggering this event is if the
    [`JobState`](../attribute/standard/JobState.md "class in javax.print.attribute.standard") attribute
    changed from `PROCESSING` to `PROCESSING_STOPPED`.

    Parameters:
    :   `pjae` - the event being notified