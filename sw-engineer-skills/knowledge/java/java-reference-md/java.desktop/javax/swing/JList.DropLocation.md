Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JList.DropLocation

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.TransferHandler.DropLocation](TransferHandler.DropLocation.md "class in javax.swing")

javax.swing.JList.DropLocation

Enclosing class:
:   `JList<E>`

---

public static final class JList.DropLocation
extends [TransferHandler.DropLocation](TransferHandler.DropLocation.md "class in javax.swing")

A subclass of `TransferHandler.DropLocation` representing
a drop location for a `JList`.

Since:
:   1.6

See Also:
:   * [`JList.getDropLocation()`](JList.md#getDropLocation())

* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getIndex()`

  Returns the index where dropped data should be placed in the
  list.

  `boolean`

  `isInsert()`

  Returns whether or not this location represents an insert
  location.

  `String`

  `toString()`

  Returns a string representation of this drop location.

  ### Methods inherited from class javax.swing.[TransferHandler.DropLocation](TransferHandler.DropLocation.md "class in javax.swing")

  `getDropPoint`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Method Details

  + ### getIndex

    public int getIndex()

    Returns the index where dropped data should be placed in the
    list. Interpretation of the value depends on the drop mode set on
    the associated component. If the drop mode is either
    `DropMode.USE_SELECTION` or `DropMode.ON`,
    the return value is an index of a row in the list. If the drop mode is
    `DropMode.INSERT`, the return value refers to the index
    where the data should be inserted. If the drop mode is
    `DropMode.ON_OR_INSERT`, the value of
    `isInsert()` indicates whether the index is an index
    of a row, or an insert index.

    `-1` indicates that the drop occurred over empty space,
    and no index could be calculated.

    Returns:
    :   the drop index
  + ### isInsert

    public boolean isInsert()

    Returns whether or not this location represents an insert
    location.

    Returns:
    :   whether or not this is an insert location
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this drop location.
    This method is intended to be used for debugging purposes,
    and the content and format of the returned string may vary
    between implementations.

    Overrides:
    :   `toString` in class `TransferHandler.DropLocation`

    Returns:
    :   a string representation of this drop location