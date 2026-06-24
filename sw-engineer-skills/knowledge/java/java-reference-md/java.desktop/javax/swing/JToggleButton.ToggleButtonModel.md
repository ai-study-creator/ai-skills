Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JToggleButton.ToggleButtonModel

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.DefaultButtonModel](DefaultButtonModel.md "class in javax.swing")

javax.swing.JToggleButton.ToggleButtonModel

All Implemented Interfaces:
:   `ItemSelectable`, `Serializable`, `ButtonModel`

Enclosing class:
:   `JToggleButton`

---

public static class JToggleButton.ToggleButtonModel
extends [DefaultButtonModel](DefaultButtonModel.md "class in javax.swing")

The ToggleButton model

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../java/beans/XMLEncoder.md "class in java.beans").

* ## Field Summary

  ### Fields inherited from class javax.swing.[DefaultButtonModel](DefaultButtonModel.md "class in javax.swing")

  `actionCommand, ARMED, changeEvent, ENABLED, group, listenerList, mnemonic, PRESSED, ROLLOVER, SELECTED, stateMask`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ToggleButtonModel()`

  Creates a new ToggleButton Model
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `isSelected()`

  Checks if the button is selected.

  `void`

  `setPressed(boolean b)`

  Sets the pressed state of the toggle button.

  `void`

  `setSelected(boolean b)`

  Sets the selected state of the button.

  ### Methods inherited from class javax.swing.[DefaultButtonModel](DefaultButtonModel.md "class in javax.swing")

  `addActionListener, addChangeListener, addItemListener, fireActionPerformed, fireItemStateChanged, fireStateChanged, getActionCommand, getActionListeners, getChangeListeners, getGroup, getItemListeners, getListeners, getMnemonic, getSelectedObjects, isArmed, isEnabled, isPressed, isRollover, removeActionListener, removeChangeListener, removeItemListener, setActionCommand, setArmed, setEnabled, setGroup, setMnemonic, setRollover`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ToggleButtonModel

    public ToggleButtonModel()

    Creates a new ToggleButton Model
* ## Method Details

  + ### isSelected

    public boolean isSelected()

    Checks if the button is selected.

    Specified by:
    :   `isSelected` in interface `ButtonModel`

    Overrides:
    :   `isSelected` in class `DefaultButtonModel`

    Returns:
    :   `true` if the button is selected
  + ### setSelected

    public void setSelected(boolean b)

    Sets the selected state of the button.

    Specified by:
    :   `setSelected` in interface `ButtonModel`

    Overrides:
    :   `setSelected` in class `DefaultButtonModel`

    Parameters:
    :   `b` - true selects the toggle button,
        false deselects the toggle button.
  + ### setPressed

    public void setPressed(boolean b)

    Sets the pressed state of the toggle button.

    Specified by:
    :   `setPressed` in interface `ButtonModel`

    Overrides:
    :   `setPressed` in class `DefaultButtonModel`

    Parameters:
    :   `b` - whether or not the button should be pressed

    See Also:
    :   - [`ButtonModel.isPressed()`](ButtonModel.md#isPressed())