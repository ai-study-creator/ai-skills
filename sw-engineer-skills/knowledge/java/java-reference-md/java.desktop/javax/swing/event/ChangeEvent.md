Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Class ChangeEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

javax.swing.event.ChangeEvent

All Implemented Interfaces:
:   `Serializable`

---

public class ChangeEvent
extends [EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

ChangeEvent is used to notify interested parties that
state has changed in the event source.

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

  `ChangeEvent(Object source)`

  Constructs a ChangeEvent object.
* ## Method Summary

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ChangeEvent

    public ChangeEvent([Object](../../../../java.base/java/lang/Object.md "class in java.lang") source)

    Constructs a ChangeEvent object.

    Parameters:
    :   `source` - the Object that is the source of the event
        (typically `this`)