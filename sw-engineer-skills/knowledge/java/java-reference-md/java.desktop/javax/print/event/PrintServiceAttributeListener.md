Module [java.desktop](../../../module-summary.md)

Package [javax.print.event](package-summary.md)

# Interface PrintServiceAttributeListener

---

public interface PrintServiceAttributeListener

Implementations of this listener interface are attached to a
[`PrintService`](../PrintService.md "interface in javax.print") to monitor the status of the
print service.

To monitor a particular job see [`PrintJobListener`](PrintJobListener.md "interface in javax.print.event") and
[`PrintJobAttributeListener`](PrintJobAttributeListener.md "interface in javax.print.event").

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `attributeUpdate(PrintServiceAttributeEvent psae)`

  Called to notify a listener of an event in the print service.

* ## Method Details

  + ### attributeUpdate

    void attributeUpdate([PrintServiceAttributeEvent](PrintServiceAttributeEvent.md "class in javax.print.event") psae)

    Called to notify a listener of an event in the print service. The service
    will call this method on an event notification thread. The client should
    not perform lengthy processing in this callback or subsequent event
    notifications may be blocked.

    Parameters:
    :   `psae` - the event being notified