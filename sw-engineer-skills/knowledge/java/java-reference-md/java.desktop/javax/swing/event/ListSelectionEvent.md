Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Class ListSelectionEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

javax.swing.event.ListSelectionEvent

All Implemented Interfaces:
:   `Serializable`

---

public class ListSelectionEvent
extends [EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

An event that characterizes a change in selection. The change is limited to a
a single inclusive interval. The selection of at least one index within the
range will have changed. A decent `ListSelectionModel` implementation
will keep the range as small as possible. `ListSelectionListeners` will
generally query the source of the event for the new selected status of each
potentially changed row.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

See Also:
:   * [`ListSelectionModel`](../ListSelectionModel.md "interface in javax.swing")

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ListSelectionEvent(Object source,
  int firstIndex,
  int lastIndex,
  boolean isAdjusting)`

  Represents a change in selection status between `firstIndex` and
  `lastIndex`, inclusive.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getFirstIndex()`

  Returns the index of the first row whose selection may have changed.

  `int`

  `getLastIndex()`

  Returns the index of the last row whose selection may have changed.

  `boolean`

  `getValueIsAdjusting()`

  Returns whether or not this is one in a series of multiple events,
  where changes are still being made.

  `String`

  `toString()`

  Returns a `String` that displays and identifies this
  object's properties.

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ListSelectionEvent

    public ListSelectionEvent([Object](../../../../java.base/java/lang/Object.md "class in java.lang") source,
    int firstIndex,
    int lastIndex,
    boolean isAdjusting)

    Represents a change in selection status between `firstIndex` and
    `lastIndex`, inclusive. `firstIndex` is less than or equal to
    `lastIndex`. The selection of at least one index within the range will
    have changed.

    Parameters:
    :   `source` - the `Object` on which the event initially occurred
    :   `firstIndex` - the first index in the range, <= lastIndex
    :   `lastIndex` - the last index in the range, >= firstIndex
    :   `isAdjusting` - whether or not this is one in a series of
        multiple events, where changes are still being made
* ## Method Details

  + ### getFirstIndex

    public int getFirstIndex()

    Returns the index of the first row whose selection may have changed.
    `getFirstIndex() <= getLastIndex()`

    Returns:
    :   the first row whose selection value may have changed,
        where zero is the first row
  + ### getLastIndex

    public int getLastIndex()

    Returns the index of the last row whose selection may have changed.
    `getLastIndex() >= getFirstIndex()`

    Returns:
    :   the last row whose selection value may have changed,
        where zero is the first row
  + ### getValueIsAdjusting

    public boolean getValueIsAdjusting()

    Returns whether or not this is one in a series of multiple events,
    where changes are still being made. See the documentation for
    [`ListSelectionModel.setValueIsAdjusting(boolean)`](../ListSelectionModel.md#setValueIsAdjusting(boolean)) for
    more details on how this is used.

    Returns:
    :   `true` if this is one in a series of multiple events,
        where changes are still being made
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a `String` that displays and identifies this
    object's properties.

    Overrides:
    :   `toString` in class `EventObject`

    Returns:
    :   a String representation of this object