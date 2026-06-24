Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Interface Adjustable

All Known Implementing Classes:
:   `JScrollBar`, `JScrollPane.ScrollBar`, `Scrollbar`, `ScrollPaneAdjustable`

---

public interface Adjustable

The interface for objects which have an adjustable numeric value
contained within a bounded range of values.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `HORIZONTAL`

  Indicates that the `Adjustable` has horizontal orientation.

  `static final int`

  `NO_ORIENTATION`

  Indicates that the `Adjustable` has no orientation.

  `static final int`

  `VERTICAL`

  Indicates that the `Adjustable` has vertical orientation.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `addAdjustmentListener(AdjustmentListener l)`

  Adds a listener to receive adjustment events when the value of
  the adjustable object changes.

  `int`

  `getBlockIncrement()`

  Gets the block value increment for the adjustable object.

  `int`

  `getMaximum()`

  Gets the maximum value of the adjustable object.

  `int`

  `getMinimum()`

  Gets the minimum value of the adjustable object.

  `int`

  `getOrientation()`

  Gets the orientation of the adjustable object.

  `int`

  `getUnitIncrement()`

  Gets the unit value increment for the adjustable object.

  `int`

  `getValue()`

  Gets the current value of the adjustable object.

  `int`

  `getVisibleAmount()`

  Gets the length of the proportional indicator.

  `void`

  `removeAdjustmentListener(AdjustmentListener l)`

  Removes an adjustment listener.

  `void`

  `setBlockIncrement(int b)`

  Sets the block value increment for the adjustable object.

  `void`

  `setMaximum(int max)`

  Sets the maximum value of the adjustable object.

  `void`

  `setMinimum(int min)`

  Sets the minimum value of the adjustable object.

  `void`

  `setUnitIncrement(int u)`

  Sets the unit value increment for the adjustable object.

  `void`

  `setValue(int v)`

  Sets the current value of the adjustable object.

  `void`

  `setVisibleAmount(int v)`

  Sets the length of the proportional indicator of the
  adjustable object.

* ## Field Details

  + ### HORIZONTAL

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    static final int HORIZONTAL

    Indicates that the `Adjustable` has horizontal orientation.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Adjustable.HORIZONTAL)
  + ### VERTICAL

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    static final int VERTICAL

    Indicates that the `Adjustable` has vertical orientation.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Adjustable.VERTICAL)
  + ### NO\_ORIENTATION

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    static final int NO\_ORIENTATION

    Indicates that the `Adjustable` has no orientation.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Adjustable.NO_ORIENTATION)
* ## Method Details

  + ### getOrientation

    int getOrientation()

    Gets the orientation of the adjustable object.

    Returns:
    :   the orientation of the adjustable object;
        either `HORIZONTAL`, `VERTICAL`,
        or `NO_ORIENTATION`
  + ### setMinimum

    void setMinimum(int min)

    Sets the minimum value of the adjustable object.

    Parameters:
    :   `min` - the minimum value
  + ### getMinimum

    int getMinimum()

    Gets the minimum value of the adjustable object.

    Returns:
    :   the minimum value of the adjustable object
  + ### setMaximum

    void setMaximum(int max)

    Sets the maximum value of the adjustable object.

    Parameters:
    :   `max` - the maximum value
  + ### getMaximum

    int getMaximum()

    Gets the maximum value of the adjustable object.

    Returns:
    :   the maximum value of the adjustable object
  + ### setUnitIncrement

    void setUnitIncrement(int u)

    Sets the unit value increment for the adjustable object.

    Parameters:
    :   `u` - the unit increment
  + ### getUnitIncrement

    int getUnitIncrement()

    Gets the unit value increment for the adjustable object.

    Returns:
    :   the unit value increment for the adjustable object
  + ### setBlockIncrement

    void setBlockIncrement(int b)

    Sets the block value increment for the adjustable object.

    Parameters:
    :   `b` - the block increment
  + ### getBlockIncrement

    int getBlockIncrement()

    Gets the block value increment for the adjustable object.

    Returns:
    :   the block value increment for the adjustable object
  + ### setVisibleAmount

    void setVisibleAmount(int v)

    Sets the length of the proportional indicator of the
    adjustable object.

    Parameters:
    :   `v` - the length of the indicator
  + ### getVisibleAmount

    int getVisibleAmount()

    Gets the length of the proportional indicator.

    Returns:
    :   the length of the proportional indicator
  + ### setValue

    void setValue(int v)

    Sets the current value of the adjustable object. If
    the value supplied is less than `minimum`
    or greater than `maximum` - `visibleAmount`,
    then one of those values is substituted, as appropriate.

    Calling this method does not fire an
    `AdjustmentEvent`.

    Parameters:
    :   `v` - the current value, between `minimum`
        and `maximum` - `visibleAmount`
  + ### getValue

    int getValue()

    Gets the current value of the adjustable object.

    Returns:
    :   the current value of the adjustable object
  + ### addAdjustmentListener

    void addAdjustmentListener([AdjustmentListener](event/AdjustmentListener.md "interface in java.awt.event") l)

    Adds a listener to receive adjustment events when the value of
    the adjustable object changes.

    Parameters:
    :   `l` - the listener to receive events

    See Also:
    :   - [`AdjustmentEvent`](event/AdjustmentEvent.md "class in java.awt.event")
  + ### removeAdjustmentListener

    void removeAdjustmentListener([AdjustmentListener](event/AdjustmentListener.md "interface in java.awt.event") l)

    Removes an adjustment listener.

    Parameters:
    :   `l` - the listener being removed

    See Also:
    :   - [`AdjustmentEvent`](event/AdjustmentEvent.md "class in java.awt.event")