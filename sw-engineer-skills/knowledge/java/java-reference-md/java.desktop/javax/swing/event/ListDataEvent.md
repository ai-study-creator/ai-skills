Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Class ListDataEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

javax.swing.event.ListDataEvent

All Implemented Interfaces:
:   `Serializable`

---

public class ListDataEvent
extends [EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

Defines an event that encapsulates changes to a list.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `CONTENTS_CHANGED`

  Identifies one or more changes in the lists contents.

  `static final int`

  `INTERVAL_ADDED`

  Identifies the addition of one or more contiguous items to the list

  `static final int`

  `INTERVAL_REMOVED`

  Identifies the removal of one or more contiguous items from the list

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ListDataEvent(Object source,
  int type,
  int index0,
  int index1)`

  Constructs a ListDataEvent object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getIndex0()`

  Returns the lower index of the range.

  `int`

  `getIndex1()`

  Returns the upper index of the range.

  `int`

  `getType()`

  Returns the event type.

  `String`

  `toString()`

  Returns a string representation of this ListDataEvent.

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### CONTENTS\_CHANGED

    public static final int CONTENTS\_CHANGED

    Identifies one or more changes in the lists contents.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.event.ListDataEvent.CONTENTS_CHANGED)
  + ### INTERVAL\_ADDED

    public static final int INTERVAL\_ADDED

    Identifies the addition of one or more contiguous items to the list

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.event.ListDataEvent.INTERVAL_ADDED)
  + ### INTERVAL\_REMOVED

    public static final int INTERVAL\_REMOVED

    Identifies the removal of one or more contiguous items from the list

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.event.ListDataEvent.INTERVAL_REMOVED)
* ## Constructor Details

  + ### ListDataEvent

    public ListDataEvent([Object](../../../../java.base/java/lang/Object.md "class in java.lang") source,
    int type,
    int index0,
    int index1)

    Constructs a ListDataEvent object. If index0 is >
    index1, index0 and index1 will be swapped such that
    index0 will always be <= index1.

    Parameters:
    :   `source` - the source Object (typically `this`)
    :   `type` - an int specifying [`CONTENTS_CHANGED`](#CONTENTS_CHANGED),
        [`INTERVAL_ADDED`](#INTERVAL_ADDED), or [`INTERVAL_REMOVED`](#INTERVAL_REMOVED)
    :   `index0` - one end of the new interval
    :   `index1` - the other end of the new interval
* ## Method Details

  + ### getType

    public int getType()

    Returns the event type. The possible values are:
    - [`CONTENTS_CHANGED`](#CONTENTS_CHANGED)- [`INTERVAL_ADDED`](#INTERVAL_ADDED)- [`INTERVAL_REMOVED`](#INTERVAL_REMOVED)

    Returns:
    :   an int representing the type value
  + ### getIndex0

    public int getIndex0()

    Returns the lower index of the range. For a single
    element, this value is the same as that returned by [`getIndex1()`](#getIndex1()).

    Returns:
    :   an int representing the lower index value
  + ### getIndex1

    public int getIndex1()

    Returns the upper index of the range. For a single
    element, this value is the same as that returned by [`getIndex0()`](#getIndex0()).

    Returns:
    :   an int representing the upper index value
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this ListDataEvent. This method
    is intended to be used only for debugging purposes, and the
    content and format of the returned string may vary between
    implementations. The returned string may be empty but may not
    be `null`.

    Overrides:
    :   `toString` in class `EventObject`

    Returns:
    :   a string representation of this ListDataEvent.

    Since:
    :   1.4