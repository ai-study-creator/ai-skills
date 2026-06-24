Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Class MenuEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

javax.swing.event.MenuEvent

All Implemented Interfaces:
:   `Serializable`

---

public class MenuEvent
extends [EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

MenuEvent is used to notify interested parties that
the menu which is the event source has been posted,
selected, or canceled.

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

  `MenuEvent(Object source)`

  Constructs a MenuEvent object.
* ## Method Summary

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### MenuEvent

    public MenuEvent([Object](../../../../java.base/java/lang/Object.md "class in java.lang") source)

    Constructs a MenuEvent object.

    Parameters:
    :   `source` - the Object that originated the event
        (typically `this`)