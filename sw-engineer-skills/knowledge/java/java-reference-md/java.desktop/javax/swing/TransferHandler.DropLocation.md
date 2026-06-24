Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class TransferHandler.DropLocation

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.TransferHandler.DropLocation

Direct Known Subclasses:
:   `JList.DropLocation`, `JTable.DropLocation`, `JTextComponent.DropLocation`, `JTree.DropLocation`

Enclosing class:
:   `TransferHandler`

---

public static class TransferHandler.DropLocation
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

Represents a location where dropped data should be inserted.
This is a base class that only encapsulates a point.
Components supporting drop may provide subclasses of this
containing more information.

Developers typically shouldn't create instances of, or extend, this
class. Instead, these are something provided by the DnD
implementation by `TransferSupport` instances and by
components with a `getDropLocation()` method.

Since:
:   1.6

See Also:
:   * [`TransferHandler.TransferSupport.getDropLocation()`](TransferHandler.TransferSupport.md#getDropLocation())

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `DropLocation(Point dropPoint)`

  Constructs a drop location for the given point.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final Point`

  `getDropPoint()`

  Returns the drop point, representing the mouse's
  current location within the component.

  `String`

  `toString()`

  Returns a string representation of this drop location.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### DropLocation

    protected DropLocation([Point](../../java/awt/Point.md "class in java.awt") dropPoint)

    Constructs a drop location for the given point.

    Parameters:
    :   `dropPoint` - the drop point, representing the mouse's
        current location within the component.

    Throws:
    :   `IllegalArgumentException` - if the point
        is `null`
* ## Method Details

  + ### getDropPoint

    public final [Point](../../java/awt/Point.md "class in java.awt") getDropPoint()

    Returns the drop point, representing the mouse's
    current location within the component.

    Returns:
    :   the drop point.
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this drop location.
    This method is intended to be used for debugging purposes,
    and the content and format of the returned string may vary
    between implementations.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this drop location