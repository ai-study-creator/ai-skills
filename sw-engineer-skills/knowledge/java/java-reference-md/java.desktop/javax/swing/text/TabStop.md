Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class TabStop

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.TabStop

All Implemented Interfaces:
:   `Serializable`

---

public class TabStop
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

This class encapsulates a single tab stop (basically as tab stops
are thought of by RTF). A tab stop is at a specified distance from the
left margin, aligns text in a specified way, and has a specified leader.
TabStops are immutable, and usually contained in TabSets.

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

  `ALIGN_BAR`

  Align bar

  `static final int`

  `ALIGN_CENTER`

  Characters following tab are positioned such that all following
  characters up to next tab/newline are centered around the tabs
  location.

  `static final int`

  `ALIGN_DECIMAL`

  Characters following tab are aligned such that next
  decimal/tab/newline is at the tab location, very similar to
  RIGHT\_TAB, just includes decimal as additional character to look for.

  `static final int`

  `ALIGN_LEFT`

  Character following tab is positioned at location.

  `static final int`

  `ALIGN_RIGHT`

  Characters following tab are positioned such that all following
  characters up to next tab/newline end at location.

  `static final int`

  `LEAD_DOTS`

  Lead dots

  `static final int`

  `LEAD_EQUALS`

  Lead equals

  `static final int`

  `LEAD_HYPHENS`

  Lead hyphens

  `static final int`

  `LEAD_NONE`

  Lead none

  `static final int`

  `LEAD_THICKLINE`

  Lead thickline

  `static final int`

  `LEAD_UNDERLINE`

  Lead underline
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TabStop(float pos)`

  Creates a tab at position `pos` with a default alignment
  and default leader.

  `TabStop(float pos,
  int align,
  int leader)`

  Creates a tab with the specified position `pos`,
  alignment `align` and leader `leader`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object other)`

  Returns true if the tabs are equal.

  `int`

  `getAlignment()`

  Returns the alignment, as an integer, of the tab.

  `int`

  `getLeader()`

  Returns the leader of the tab.

  `float`

  `getPosition()`

  Returns the position, as a float, of the tab.

  `int`

  `hashCode()`

  Returns the hashCode for the object.

  `String`

  `toString()`

  Returns a string representation of the object.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### ALIGN\_LEFT

    public static final int ALIGN\_LEFT

    Character following tab is positioned at location.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.text.TabStop.ALIGN_LEFT)
  + ### ALIGN\_RIGHT

    public static final int ALIGN\_RIGHT

    Characters following tab are positioned such that all following
    characters up to next tab/newline end at location.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.text.TabStop.ALIGN_RIGHT)
  + ### ALIGN\_CENTER

    public static final int ALIGN\_CENTER

    Characters following tab are positioned such that all following
    characters up to next tab/newline are centered around the tabs
    location.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.text.TabStop.ALIGN_CENTER)
  + ### ALIGN\_DECIMAL

    public static final int ALIGN\_DECIMAL

    Characters following tab are aligned such that next
    decimal/tab/newline is at the tab location, very similar to
    RIGHT\_TAB, just includes decimal as additional character to look for.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.text.TabStop.ALIGN_DECIMAL)
  + ### ALIGN\_BAR

    public static final int ALIGN\_BAR

    Align bar

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.text.TabStop.ALIGN_BAR)
  + ### LEAD\_NONE

    public static final int LEAD\_NONE

    Lead none

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.text.TabStop.LEAD_NONE)
  + ### LEAD\_DOTS

    public static final int LEAD\_DOTS

    Lead dots

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.text.TabStop.LEAD_DOTS)
  + ### LEAD\_HYPHENS

    public static final int LEAD\_HYPHENS

    Lead hyphens

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.text.TabStop.LEAD_HYPHENS)
  + ### LEAD\_UNDERLINE

    public static final int LEAD\_UNDERLINE

    Lead underline

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.text.TabStop.LEAD_UNDERLINE)
  + ### LEAD\_THICKLINE

    public static final int LEAD\_THICKLINE

    Lead thickline

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.text.TabStop.LEAD_THICKLINE)
  + ### LEAD\_EQUALS

    public static final int LEAD\_EQUALS

    Lead equals

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.text.TabStop.LEAD_EQUALS)
* ## Constructor Details

  + ### TabStop

    public TabStop(float pos)

    Creates a tab at position `pos` with a default alignment
    and default leader.

    Parameters:
    :   `pos` - position of the tab
  + ### TabStop

    public TabStop(float pos,
    int align,
    int leader)

    Creates a tab with the specified position `pos`,
    alignment `align` and leader `leader`.

    Parameters:
    :   `pos` - position of the tab
    :   `align` - alignment of the tab
    :   `leader` - leader of the tab
* ## Method Details

  + ### getPosition

    public float getPosition()

    Returns the position, as a float, of the tab.

    Returns:
    :   the position of the tab
  + ### getAlignment

    public int getAlignment()

    Returns the alignment, as an integer, of the tab.

    Returns:
    :   the alignment of the tab
  + ### getLeader

    public int getLeader()

    Returns the leader of the tab.

    Returns:
    :   the leader of the tab
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") other)

    Returns true if the tabs are equal.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `other` - the reference object with which to compare.

    Returns:
    :   true if the tabs are equal, otherwise false

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns the hashCode for the object. This must be defined
    here to ensure 100% pure.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   the hashCode for the object

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Description copied from class: `Object`

    Returns a string representation of the object.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.