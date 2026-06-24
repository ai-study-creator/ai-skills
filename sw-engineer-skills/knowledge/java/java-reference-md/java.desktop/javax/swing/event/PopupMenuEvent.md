Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Class PopupMenuEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

javax.swing.event.PopupMenuEvent

All Implemented Interfaces:
:   `Serializable`

---

public class PopupMenuEvent
extends [EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

PopupMenuEvent only contains the source of the event which is the JPopupMenu
sending the event

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PopupMenuEvent(Object source)`

  Constructs a PopupMenuEvent object.
* ## Method Summary

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### PopupMenuEvent

    public PopupMenuEvent([Object](../../../../java.base/java/lang/Object.md "class in java.lang") source)

    Constructs a PopupMenuEvent object.

    Parameters:
    :   `source` - the Object that originated the event
        (typically `this`)