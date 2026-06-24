Module [java.desktop](../../../module-summary.md)

Package [java.awt.event](package-summary.md)

# Class AWTEventListenerProxy

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventListenerProxy](../../../../java.base/java/util/EventListenerProxy.md "class in java.util")<[AWTEventListener](AWTEventListener.md "interface in java.awt.event")>

java.awt.event.AWTEventListenerProxy

All Implemented Interfaces:
:   `AWTEventListener`, `EventListener`

---

public class AWTEventListenerProxy
extends [EventListenerProxy](../../../../java.base/java/util/EventListenerProxy.md "class in java.util")<[AWTEventListener](AWTEventListener.md "interface in java.awt.event")>
implements [AWTEventListener](AWTEventListener.md "interface in java.awt.event")

A class which extends the `EventListenerProxy`
specifically for adding an `AWTEventListener`
for a specific event mask.
Instances of this class can be added as `AWTEventListener`s
to a `Toolkit` object.

The `getAWTEventListeners` method of `Toolkit`
can return a mixture of `AWTEventListener`
and `AWTEventListenerProxy` objects.

Since:
:   1.4

See Also:
:   * [`Toolkit`](../Toolkit.md "class in java.awt")
    * [`EventListenerProxy`](../../../../java.base/java/util/EventListenerProxy.md "class in java.util")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AWTEventListenerProxy(long eventMask,
  AWTEventListener listener)`

  Constructor which binds the `AWTEventListener`
  to a specific event mask.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `eventDispatched(AWTEvent event)`

  Forwards the AWT event to the listener delegate.

  `long`

  `getEventMask()`

  Returns the event mask associated with the listener.

  ### Methods inherited from class java.util.[EventListenerProxy](../../../../java.base/java/util/EventListenerProxy.md "class in java.util")

  `getListener`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AWTEventListenerProxy

    public AWTEventListenerProxy(long eventMask,
    [AWTEventListener](AWTEventListener.md "interface in java.awt.event") listener)

    Constructor which binds the `AWTEventListener`
    to a specific event mask.

    Parameters:
    :   `eventMask` - the bitmap of event types to receive
    :   `listener` - the listener object
* ## Method Details

  + ### eventDispatched

    public void eventDispatched([AWTEvent](../AWTEvent.md "class in java.awt") event)

    Forwards the AWT event to the listener delegate.

    Specified by:
    :   `eventDispatched` in interface `AWTEventListener`

    Parameters:
    :   `event` - the AWT event
  + ### getEventMask

    public long getEventMask()

    Returns the event mask associated with the listener.

    Returns:
    :   the event mask associated with the listener