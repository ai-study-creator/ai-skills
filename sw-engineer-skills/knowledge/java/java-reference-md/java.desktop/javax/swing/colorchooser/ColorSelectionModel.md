Module [java.desktop](../../../module-summary.md)

Package [javax.swing.colorchooser](package-summary.md)

# Interface ColorSelectionModel

All Known Implementing Classes:
:   `DefaultColorSelectionModel`

---

public interface ColorSelectionModel

A model that supports selecting a `Color`.

See Also:
:   * [`Color`](../../../java/awt/Color.md "class in java.awt")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `addChangeListener(ChangeListener listener)`

  Adds `listener` as a listener to changes in the model.

  `Color`

  `getSelectedColor()`

  Returns the selected `Color` which should be
  non-`null`.

  `void`

  `removeChangeListener(ChangeListener listener)`

  Removes `listener` as a listener to changes in the model.

  `void`

  `setSelectedColor(Color color)`

  Sets the selected color to `color`.

* ## Method Details

  + ### getSelectedColor

    [Color](../../../java/awt/Color.md "class in java.awt") getSelectedColor()

    Returns the selected `Color` which should be
    non-`null`.

    Returns:
    :   the selected `Color`

    See Also:
    :   - [`setSelectedColor(java.awt.Color)`](#setSelectedColor(java.awt.Color))
  + ### setSelectedColor

    void setSelectedColor([Color](../../../java/awt/Color.md "class in java.awt") color)

    Sets the selected color to `color`.
    Note that setting the color to `null`
    is undefined and may have unpredictable results.
    This method fires a state changed event if it sets the
    current color to a new non-`null` color.

    Parameters:
    :   `color` - the new `Color`

    See Also:
    :   - [`getSelectedColor()`](#getSelectedColor())
        - [`addChangeListener(javax.swing.event.ChangeListener)`](#addChangeListener(javax.swing.event.ChangeListener))
  + ### addChangeListener

    void addChangeListener([ChangeListener](../event/ChangeListener.md "interface in javax.swing.event") listener)

    Adds `listener` as a listener to changes in the model.

    Parameters:
    :   `listener` - the `ChangeListener` to be added
  + ### removeChangeListener

    void removeChangeListener([ChangeListener](../event/ChangeListener.md "interface in javax.swing.event") listener)

    Removes `listener` as a listener to changes in the model.

    Parameters:
    :   `listener` - the `ChangeListener` to be removed