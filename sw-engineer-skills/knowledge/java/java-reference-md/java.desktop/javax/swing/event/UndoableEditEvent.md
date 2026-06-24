Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Class UndoableEditEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

javax.swing.event.UndoableEditEvent

All Implemented Interfaces:
:   `Serializable`

---

public class UndoableEditEvent
extends [EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

An event indicating that an operation which can be undone has occurred.

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

  `UndoableEditEvent(Object source,
  UndoableEdit edit)`

  Constructs an UndoableEditEvent object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `UndoableEdit`

  `getEdit()`

  Returns the edit value.

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UndoableEditEvent

    public UndoableEditEvent([Object](../../../../java.base/java/lang/Object.md "class in java.lang") source,
    [UndoableEdit](../undo/UndoableEdit.md "interface in javax.swing.undo") edit)

    Constructs an UndoableEditEvent object.

    Parameters:
    :   `source` - the Object that originated the event
        (typically `this`)
    :   `edit` - an UndoableEdit object
* ## Method Details

  + ### getEdit

    public [UndoableEdit](../undo/UndoableEdit.md "interface in javax.swing.undo") getEdit()

    Returns the edit value.

    Returns:
    :   the UndoableEdit object encapsulating the edit