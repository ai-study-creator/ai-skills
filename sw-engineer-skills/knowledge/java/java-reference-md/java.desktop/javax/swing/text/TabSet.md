Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class TabSet

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.TabSet

All Implemented Interfaces:
:   `Serializable`

---

public class TabSet
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

A TabSet is comprised of many TabStops. It offers methods for locating the
closest TabStop to a given position and finding all the potential TabStops.
It is also immutable.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TabSet(TabStop[] tabs)`

  Creates and returns an instance of TabSet.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object o)`

  Indicates whether this `TabSet` is equal to another one.

  `TabStop`

  `getTab(int index)`

  Returns the TabStop at index `index`.

  `TabStop`

  `getTabAfter(float location)`

  Returns the Tab instance after `location`.

  `int`

  `getTabCount()`

  Returns the number of Tab instances the receiver contains.

  `int`

  `getTabIndex(TabStop tab)`

  Returns the index of the TabStop `tab`, or -1 if
  `tab` is not contained in the receiver.

  `int`

  `getTabIndexAfter(float location)`

  Returns the index of the Tab to be used after `location`.

  `int`

  `hashCode()`

  Returns a hashcode for this set of TabStops.

  `String`

  `toString()`

  Returns the string representation of the set of tabs.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### TabSet

    public TabSet([TabStop](TabStop.md "class in javax.swing.text")[] tabs)

    Creates and returns an instance of TabSet. The array of Tabs
    passed in must be sorted in ascending order.

    Parameters:
    :   `tabs` - the TabStops to initialize the TabSet
* ## Method Details

  + ### getTabCount

    public int getTabCount()

    Returns the number of Tab instances the receiver contains.

    Returns:
    :   the number of Tab instances the receiver contains
  + ### getTab

    public [TabStop](TabStop.md "class in javax.swing.text") getTab(int index)

    Returns the TabStop at index `index`. This will throw an
    IllegalArgumentException if `index` is outside the range
    of tabs.

    Parameters:
    :   `index` - which TapStop to return

    Returns:
    :   the TabStop at index `index`
  + ### getTabAfter

    public [TabStop](TabStop.md "class in javax.swing.text") getTabAfter(float location)

    Returns the Tab instance after `location`. This will
    return null if there are no tabs after `location`.

    Parameters:
    :   `location` - location to find a Tab after

    Returns:
    :   the Tab instance after `location`
  + ### getTabIndex

    public int getTabIndex([TabStop](TabStop.md "class in javax.swing.text") tab)

    Returns the index of the TabStop `tab`, or -1 if
    `tab` is not contained in the receiver.

    Parameters:
    :   `tab` - the TabStop to find

    Returns:
    :   the index of the TabStop `tab`, or -1 if
        `tab` is not contained in the receiver.
  + ### getTabIndexAfter

    public int getTabIndexAfter(float location)

    Returns the index of the Tab to be used after `location`.
    This will return -1 if there are no tabs after `location`.

    Parameters:
    :   `location` - location to find a Tab after

    Returns:
    :   the index of the Tab to be used after `location`
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") o)

    Indicates whether this `TabSet` is equal to another one.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `o` - the `TabSet` instance which this instance
        should be compared to.

    Returns:
    :   `true` if `o` is the instance of
        `TabSet`, has the same number of `TabStop`s
        and they are all equal, `false` otherwise.

    Since:
    :   1.5

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns a hashcode for this set of TabStops.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hashcode value for this set of TabStops.

    Since:
    :   1.5

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns the string representation of the set of tabs.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.