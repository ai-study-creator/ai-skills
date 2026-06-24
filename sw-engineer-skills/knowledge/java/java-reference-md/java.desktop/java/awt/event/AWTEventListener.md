Module [java.desktop](../../../module-summary.md)

Package [java.awt.event](package-summary.md)

# Interface AWTEventListener

All Superinterfaces:
:   `EventListener`

All Known Implementing Classes:
:   `AWTEventListenerProxy`

---

public interface AWTEventListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

The listener interface for receiving notification of events
dispatched to objects that are instances of Component or
MenuComponent or their subclasses. Unlike the other EventListeners
in this package, AWTEventListeners passively observe events
being dispatched in the AWT, system-wide. Most applications
should never use this class; applications which might use
AWTEventListeners include event recorders for automated testing,
and facilities such as the Java Accessibility package.

The class that is interested in monitoring AWT events
implements this interface, and the object created with that
class is registered with the Toolkit, using the Toolkit's
`addAWTEventListener` method. When an event is
dispatched anywhere in the AWT, that object's
`eventDispatched` method is invoked.

Since:
:   1.2

See Also:
:   * [`AWTEvent`](../AWTEvent.md "class in java.awt")
    * [`Toolkit.addAWTEventListener(java.awt.event.AWTEventListener, long)`](../Toolkit.md#addAWTEventListener(java.awt.event.AWTEventListener,long))
    * [`Toolkit.removeAWTEventListener(java.awt.event.AWTEventListener)`](../Toolkit.md#removeAWTEventListener(java.awt.event.AWTEventListener))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `eventDispatched(AWTEvent event)`

  Invoked when an event is dispatched in the AWT.

* ## Method Details

  + ### eventDispatched

    void eventDispatched([AWTEvent](../AWTEvent.md "class in java.awt") event)

    Invoked when an event is dispatched in the AWT.

    Parameters:
    :   `event` - the event to be processed