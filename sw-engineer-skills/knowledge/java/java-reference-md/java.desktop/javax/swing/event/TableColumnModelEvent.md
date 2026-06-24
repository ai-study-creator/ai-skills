Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Class TableColumnModelEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

javax.swing.event.TableColumnModelEvent

All Implemented Interfaces:
:   `Serializable`

---

public class TableColumnModelEvent
extends [EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

**TableColumnModelEvent** is used to notify listeners that a table
column model has changed, such as a column was added, removed, or
moved.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

See Also:
:   * [`TableColumnModelListener`](TableColumnModelListener.md "interface in javax.swing.event")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected int`

  `fromIndex`

  The index of the column from where it was moved or removed

  `protected int`

  `toIndex`

  The index of the column to where it was moved or added

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TableColumnModelEvent(TableColumnModel source,
  int from,
  int to)`

  Constructs a `TableColumnModelEvent` object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getFromIndex()`

  Returns the fromIndex.

  `int`

  `getToIndex()`

  Returns the toIndex.

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### fromIndex

    protected int fromIndex

    The index of the column from where it was moved or removed
  + ### toIndex

    protected int toIndex

    The index of the column to where it was moved or added
* ## Constructor Details

  + ### TableColumnModelEvent

    public TableColumnModelEvent([TableColumnModel](../table/TableColumnModel.md "interface in javax.swing.table") source,
    int from,
    int to)

    Constructs a `TableColumnModelEvent` object.

    Parameters:
    :   `source` - the `TableColumnModel` that originated the event
    :   `from` - an int specifying the index from where the column was
        moved or removed
    :   `to` - an int specifying the index to where the column was
        moved or added

    See Also:
    :   - [`getFromIndex()`](#getFromIndex())
        - [`getToIndex()`](#getToIndex())
* ## Method Details

  + ### getFromIndex

    public int getFromIndex()

    Returns the fromIndex. Valid for removed or moved events

    Returns:
    :   int value for index from which the column was moved or removed
  + ### getToIndex

    public int getToIndex()

    Returns the toIndex. Valid for add and moved events

    Returns:
    :   int value of column's new index