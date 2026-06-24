Module [java.desktop](../../../module-summary.md)

Package [java.awt.dnd](package-summary.md)

# Class DropTargetEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

java.awt.dnd.DropTargetEvent

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `DropTargetDragEvent`, `DropTargetDropEvent`

---

public class DropTargetEvent
extends [EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

The `DropTargetEvent` is the base
class for both the `DropTargetDragEvent`
and the `DropTargetDropEvent`.
It encapsulates the current state of the Drag and
Drop operations, in particular the current
`DropTargetContext`.

Since:
:   1.2

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.awt.dnd.DropTargetEvent)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected DropTargetContext`

  `context`

  The `DropTargetContext` associated with this
  `DropTargetEvent`.

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DropTargetEvent(DropTargetContext dtc)`

  Construct a `DropTargetEvent` object with
  the specified `DropTargetContext`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `DropTargetContext`

  `getDropTargetContext()`

  This method returns the `DropTargetContext`
  associated with this `DropTargetEvent`.

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### context

    protected [DropTargetContext](DropTargetContext.md "class in java.awt.dnd") context

    The `DropTargetContext` associated with this
    `DropTargetEvent`.
* ## Constructor Details

  + ### DropTargetEvent

    public DropTargetEvent([DropTargetContext](DropTargetContext.md "class in java.awt.dnd") dtc)

    Construct a `DropTargetEvent` object with
    the specified `DropTargetContext`.

    Parameters:
    :   `dtc` - The `DropTargetContext`

    Throws:
    :   `NullPointerException` - if `dtc` equals `null`.

    See Also:
    :   - [`EventObject.getSource()`](../../../../java.base/java/util/EventObject.md#getSource())
        - [`getDropTargetContext()`](#getDropTargetContext())
* ## Method Details

  + ### getDropTargetContext

    public [DropTargetContext](DropTargetContext.md "class in java.awt.dnd") getDropTargetContext()

    This method returns the `DropTargetContext`
    associated with this `DropTargetEvent`.

    Returns:
    :   the `DropTargetContext`