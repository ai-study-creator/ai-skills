Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Class RowSorterEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

javax.swing.event.RowSorterEvent

All Implemented Interfaces:
:   `Serializable`

---

public class RowSorterEvent
extends [EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

`RowSorterEvent` provides notification of changes to
a `RowSorter`. Two types of notification are possible:

* `Type.SORT_ORDER_CHANGED`: indicates the sort order has
  changed. This is typically followed by a notification of:* `Type.SORTED`: indicates the contents of the model have
    been transformed in some way. For example, the contents may have
    been sorted or filtered.

Since:
:   1.6

See Also:
:   * [`RowSorter`](../RowSorter.md "class in javax.swing")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static enum`

  `RowSorterEvent.Type`

  Enumeration of the types of `RowSorterEvent`s.
* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RowSorterEvent(RowSorter<?> source)`

  Creates a `RowSorterEvent` of type
  `SORT_ORDER_CHANGED`.

  `RowSorterEvent(RowSorter<?> source,
  RowSorterEvent.Type type,
  int[] previousRowIndexToModel)`

  Creates a `RowSorterEvent`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `convertPreviousRowIndexToModel(int index)`

  Returns the location of `index` in terms of the
  model prior to the sort.

  `int`

  `getPreviousRowCount()`

  Returns the number of rows before the sort.

  `RowSorter<?>`

  `getSource()`

  Returns the source of the event as a `RowSorter`.

  `RowSorterEvent.Type`

  `getType()`

  Returns the type of event.

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### RowSorterEvent

    public RowSorterEvent([RowSorter](../RowSorter.md "class in javax.swing")<?> source)

    Creates a `RowSorterEvent` of type
    `SORT_ORDER_CHANGED`.

    Parameters:
    :   `source` - the source of the change

    Throws:
    :   `IllegalArgumentException` - if `source` is
        `null`
  + ### RowSorterEvent

    public RowSorterEvent([RowSorter](../RowSorter.md "class in javax.swing")<?> source,
    [RowSorterEvent.Type](RowSorterEvent.Type.md "enum class in javax.swing.event") type,
    int[] previousRowIndexToModel)

    Creates a `RowSorterEvent`.

    Parameters:
    :   `source` - the source of the change
    :   `type` - the type of event
    :   `previousRowIndexToModel` - the mapping from model indices to
        view indices prior to the sort, may be `null`

    Throws:
    :   `IllegalArgumentException` - if source or `type` is
        `null`
* ## Method Details

  + ### getSource

    public [RowSorter](../RowSorter.md "class in javax.swing")<?> getSource()

    Returns the source of the event as a `RowSorter`.

    Overrides:
    :   `getSource` in class `EventObject`

    Returns:
    :   the source of the event as a `RowSorter`
  + ### getType

    public [RowSorterEvent.Type](RowSorterEvent.Type.md "enum class in javax.swing.event") getType()

    Returns the type of event.

    Returns:
    :   the type of event
  + ### convertPreviousRowIndexToModel

    public int convertPreviousRowIndexToModel(int index)

    Returns the location of `index` in terms of the
    model prior to the sort. This method is only useful for events
    of type `SORTED`. This method will return -1 if the
    index is not valid, or the locations prior to the sort have not
    been provided.

    Parameters:
    :   `index` - the index in terms of the view

    Returns:
    :   the index in terms of the model prior to the sort, or -1 if
        the location is not valid or the mapping was not provided.
  + ### getPreviousRowCount

    public int getPreviousRowCount()

    Returns the number of rows before the sort. This method is only
    useful for events of type `SORTED` and if the
    last locations have not been provided will return 0.

    Returns:
    :   the number of rows in terms of the view prior to the sort