Module [java.desktop](../../module-summary.md)

Package [javax.accessibility](package-summary.md)

# Interface AccessibleValue

All Known Implementing Classes:
:   `AbstractButton.AccessibleAbstractButton`, `Button.AccessibleAWTButton`, `Checkbox.AccessibleAWTCheckbox`, `CheckboxMenuItem.AccessibleAWTCheckboxMenuItem`, `JButton.AccessibleJButton`, `JCheckBox.AccessibleJCheckBox`, `JCheckBoxMenuItem.AccessibleJCheckBoxMenuItem`, `JInternalFrame.AccessibleJInternalFrame`, `JInternalFrame.JDesktopIcon.AccessibleJDesktopIcon`, `JMenu.AccessibleJMenu`, `JMenuItem.AccessibleJMenuItem`, `JProgressBar.AccessibleJProgressBar`, `JRadioButton.AccessibleJRadioButton`, `JRadioButtonMenuItem.AccessibleJRadioButtonMenuItem`, `JScrollBar.AccessibleJScrollBar`, `JSlider.AccessibleJSlider`, `JSpinner.AccessibleJSpinner`, `JSplitPane.AccessibleJSplitPane`, `JToggleButton.AccessibleJToggleButton`, `Menu.AccessibleAWTMenu`, `MenuItem.AccessibleAWTMenuItem`, `PopupMenu.AccessibleAWTPopupMenu`, `Scrollbar.AccessibleAWTScrollBar`

---

public interface AccessibleValue

The `AccessibleValue` interface should be supported by any object that
supports a numerical value (e.g., a scroll bar). This interface provides the
standard mechanism for an assistive technology to determine and set the
numerical value as well as get the minimum and maximum values. Applications
can determine if an object supports the `AccessibleValue` interface by
first obtaining its `AccessibleContext` (see [`Accessible`](Accessible.md "interface in javax.accessibility")) and
then calling the [`AccessibleContext.getAccessibleValue()`](AccessibleContext.md#getAccessibleValue()) method. If the
return value is not `null`, the object supports this interface.

See Also:
:   * [`Accessible`](Accessible.md "interface in javax.accessibility")
    * [`Accessible.getAccessibleContext()`](Accessible.md#getAccessibleContext())
    * [`AccessibleContext`](AccessibleContext.md "class in javax.accessibility")
    * [`AccessibleContext.getAccessibleValue()`](AccessibleContext.md#getAccessibleValue())

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Number`

  `getCurrentAccessibleValue()`

  Get the value of this object as a `Number`.

  `Number`

  `getMaximumAccessibleValue()`

  Get the maximum value of this object as a `Number`.

  `Number`

  `getMinimumAccessibleValue()`

  Get the minimum value of this object as a `Number`.

  `boolean`

  `setCurrentAccessibleValue(Number n)`

  Set the value of this object as a `Number`.

* ## Method Details

  + ### getCurrentAccessibleValue

    [Number](../../../java.base/java/lang/Number.md "class in java.lang") getCurrentAccessibleValue()

    Get the value of this object as a `Number`. If the value has not
    been set, the return value will be `null`.

    Returns:
    :   value of the object

    See Also:
    :   - [`setCurrentAccessibleValue(java.lang.Number)`](#setCurrentAccessibleValue(java.lang.Number))
  + ### setCurrentAccessibleValue

    boolean setCurrentAccessibleValue([Number](../../../java.base/java/lang/Number.md "class in java.lang") n)

    Set the value of this object as a `Number`.

    Parameters:
    :   `n` - the number to use for the value

    Returns:
    :   `true` if the value was set; else `false`

    See Also:
    :   - [`getCurrentAccessibleValue()`](#getCurrentAccessibleValue())
  + ### getMinimumAccessibleValue

    [Number](../../../java.base/java/lang/Number.md "class in java.lang") getMinimumAccessibleValue()

    Get the minimum value of this object as a `Number`.

    Returns:
    :   minimum value of the object; `null` if this object does not
        have a minimum value

    See Also:
    :   - [`getMaximumAccessibleValue()`](#getMaximumAccessibleValue())
  + ### getMaximumAccessibleValue

    [Number](../../../java.base/java/lang/Number.md "class in java.lang") getMaximumAccessibleValue()

    Get the maximum value of this object as a `Number`.

    Returns:
    :   maximum value of the object; `null` if this object does not
        have a maximum value

    See Also:
    :   - [`getMinimumAccessibleValue()`](#getMinimumAccessibleValue())