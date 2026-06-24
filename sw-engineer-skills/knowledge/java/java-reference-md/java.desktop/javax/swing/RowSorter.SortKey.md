Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class RowSorter.SortKey

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.RowSorter.SortKey

Enclosing class:
:   `RowSorter<M>`

---

public static class RowSorter.SortKey
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

SortKey describes the sort order for a particular column. The
column index is in terms of the underlying model, which may differ
from that of the view.

Since:
:   1.6

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SortKey(int column,
  SortOrder sortOrder)`

  Creates a `SortKey` for the specified column with
  the specified sort order.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object o)`

  Returns true if this object equals the specified object.

  `final int`

  `getColumn()`

  Returns the index of the column.

  `final SortOrder`

  `getSortOrder()`

  Returns the sort order of the column.

  `int`

  `hashCode()`

  Returns the hash code for this `SortKey`.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SortKey

    public SortKey(int column,
    [SortOrder](SortOrder.md "enum class in javax.swing") sortOrder)

    Creates a `SortKey` for the specified column with
    the specified sort order.

    Parameters:
    :   `column` - index of the column, in terms of the model
    :   `sortOrder` - the sorter order

    Throws:
    :   `IllegalArgumentException` - if `sortOrder` is
        `null`
* ## Method Details

  + ### getColumn

    public final int getColumn()

    Returns the index of the column.

    Returns:
    :   index of column
  + ### getSortOrder

    public final [SortOrder](SortOrder.md "enum class in javax.swing") getSortOrder()

    Returns the sort order of the column.

    Returns:
    :   the sort order of the column
  + ### hashCode

    public int hashCode()

    Returns the hash code for this `SortKey`.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   hash code

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](../../../java.base/java/lang/Object.md "class in java.lang") o)

    Returns true if this object equals the specified object.
    If the specified object is a `SortKey` and
    references the same column and sort order, the two objects
    are equal.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `o` - the object to compare to

    Returns:
    :   true if `o` is equal to this `SortKey`

    See Also:
    :   - [`Object.hashCode()`](../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../java.base/java/util/HashMap.md "class in java.util")