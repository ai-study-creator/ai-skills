Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Class CaretEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

javax.swing.event.CaretEvent

All Implemented Interfaces:
:   `Serializable`

---

public abstract class CaretEvent
extends [EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

CaretEvent is used to notify interested parties that
the text caret has changed in the event source.

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

  `CaretEvent(Object source)`

  Creates a new CaretEvent object.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract int`

  `getDot()`

  Fetches the location of the caret.

  `abstract int`

  `getMark()`

  Fetches the location of other end of a logical
  selection.

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### CaretEvent

    public CaretEvent([Object](../../../../java.base/java/lang/Object.md "class in java.lang") source)

    Creates a new CaretEvent object.

    Parameters:
    :   `source` - the object responsible for the event
* ## Method Details

  + ### getDot

    public abstract int getDot()

    Fetches the location of the caret.

    Returns:
    :   the dot >= 0
  + ### getMark

    public abstract int getMark()

    Fetches the location of other end of a logical
    selection. If there is no selection, this
    will be the same as dot.

    Returns:
    :   the mark >= 0