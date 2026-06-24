Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JSlider.AccessibleJSlider

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

[java.awt.Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

[java.awt.Container.AccessibleAWTContainer](../../java/awt/Container.AccessibleAWTContainer.md "class in java.awt")

[javax.swing.JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")

javax.swing.JSlider.AccessibleJSlider

All Implemented Interfaces:
:   `Serializable`, `EventListener`, `AccessibleAction`, `AccessibleComponent`, `AccessibleExtendedComponent`, `AccessibleValue`, `ChangeListener`

Enclosing class:
:   `JSlider`

---

protected class JSlider.AccessibleJSlider
extends [JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")
implements [AccessibleValue](../accessibility/AccessibleValue.md "interface in javax.accessibility"), [ChangeListener](event/ChangeListener.md "interface in javax.swing.event"), [AccessibleAction](../accessibility/AccessibleAction.md "interface in javax.accessibility")

This class implements accessibility support for the
`JSlider` class. It provides an implementation of the
Java Accessibility API appropriate to slider user-interface elements.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../java/beans/XMLEncoder.md "class in java.beans").

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.[JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")

  `JComponent.AccessibleJComponent.AccessibleContainerHandler, JComponent.AccessibleJComponent.AccessibleFocusHandler`

  ## Nested classes/interfaces inherited from class java.awt.[Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

  `Component.AccessibleAWTComponent.AccessibleAWTComponentHandler, Component.AccessibleAWTComponent.AccessibleAWTFocusHandler`
* ## Field Summary

  ### Fields inherited from class javax.swing.[JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")

  `accessibleFocusHandler`

  ### Fields inherited from class java.awt.[Container.AccessibleAWTContainer](../../java/awt/Container.AccessibleAWTContainer.md "class in java.awt")

  `accessibleContainerHandler`

  ### Fields inherited from class java.awt.[Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

  `accessibleAWTComponentHandler, accessibleAWTFocusHandler`

  ### Fields inherited from class javax.accessibility.[AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

  `ACCESSIBLE_ACTION_PROPERTY, ACCESSIBLE_ACTIVE_DESCENDANT_PROPERTY, ACCESSIBLE_CARET_PROPERTY, ACCESSIBLE_CHILD_PROPERTY, ACCESSIBLE_COMPONENT_BOUNDS_CHANGED, ACCESSIBLE_DESCRIPTION_PROPERTY, ACCESSIBLE_HYPERTEXT_OFFSET, ACCESSIBLE_INVALIDATE_CHILDREN, ACCESSIBLE_NAME_PROPERTY, ACCESSIBLE_SELECTION_PROPERTY, ACCESSIBLE_STATE_PROPERTY, ACCESSIBLE_TABLE_CAPTION_CHANGED, ACCESSIBLE_TABLE_COLUMN_DESCRIPTION_CHANGED, ACCESSIBLE_TABLE_COLUMN_HEADER_CHANGED, ACCESSIBLE_TABLE_MODEL_CHANGED, ACCESSIBLE_TABLE_ROW_DESCRIPTION_CHANGED, ACCESSIBLE_TABLE_ROW_HEADER_CHANGED, ACCESSIBLE_TABLE_SUMMARY_CHANGED, ACCESSIBLE_TEXT_ATTRIBUTES_CHANGED, ACCESSIBLE_TEXT_PROPERTY, ACCESSIBLE_VALUE_PROPERTY, ACCESSIBLE_VISIBLE_DATA_PROPERTY, accessibleDescription, accessibleName, accessibleParent`

  ### Fields inherited from interface javax.accessibility.[AccessibleAction](../accessibility/AccessibleAction.md "interface in javax.accessibility")

  `CLICK, DECREMENT, INCREMENT, TOGGLE_EXPAND, TOGGLE_POPUP`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AccessibleJSlider()`

  constructs an AccessibleJSlider
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `doAccessibleAction(int i)`

  Performs the specified Action on the object

  `AccessibleAction`

  `getAccessibleAction()`

  Gets the AccessibleAction associated with this object that supports
  one or more actions.

  `int`

  `getAccessibleActionCount()`

  Returns the number of accessible actions available in this object
  If there are more than one, the first one is considered the "default"
  action of the object.

  `String`

  `getAccessibleActionDescription(int i)`

  Returns a description of the specified action of the object.

  `AccessibleRole`

  `getAccessibleRole()`

  Get the role of this object.

  `AccessibleStateSet`

  `getAccessibleStateSet()`

  Get the state set of this object.

  `AccessibleValue`

  `getAccessibleValue()`

  Get the AccessibleValue associated with this object.

  `Number`

  `getCurrentAccessibleValue()`

  Get the accessible value of this object.

  `Number`

  `getMaximumAccessibleValue()`

  Get the maximum accessible value of this object.

  `Number`

  `getMinimumAccessibleValue()`

  Get the minimum accessible value of this object.

  `boolean`

  `setCurrentAccessibleValue(Number n)`

  Set the value of this object as a Number.

  `void`

  `stateChanged(ChangeEvent e)`

  Invoked when the target of the listener has changed its state.

  ### Methods inherited from class javax.swing.[JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")

  `addPropertyChangeListener, getAccessibleChild, getAccessibleChildrenCount, getAccessibleDescription, getAccessibleKeyBinding, getAccessibleName, getBorderTitle, getTitledBorderText, getToolTipText, removePropertyChangeListener`

  ### Methods inherited from class java.awt.[Container.AccessibleAWTContainer](../../java/awt/Container.AccessibleAWTContainer.md "class in java.awt")

  `getAccessibleAt`

  ### Methods inherited from class java.awt.[Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

  `addFocusListener, contains, getAccessibleComponent, getAccessibleIndexInParent, getAccessibleParent, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocale, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

  ### Methods inherited from class javax.accessibility.[AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

  `firePropertyChange, getAccessibleEditableText, getAccessibleIcon, getAccessibleRelationSet, getAccessibleSelection, getAccessibleTable, getAccessibleText, setAccessibleDescription, setAccessibleName, setAccessibleParent`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.accessibility.[AccessibleComponent](../accessibility/AccessibleComponent.md "interface in javax.accessibility")

  `addFocusListener, contains, getAccessibleAt, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

* ## Constructor Details

  + ### AccessibleJSlider

    protected AccessibleJSlider()

    constructs an AccessibleJSlider
* ## Method Details

  + ### getAccessibleStateSet

    public [AccessibleStateSet](../accessibility/AccessibleStateSet.md "class in javax.accessibility") getAccessibleStateSet()

    Get the state set of this object.

    Overrides:
    :   `getAccessibleStateSet` in class `JComponent.AccessibleJComponent`

    Returns:
    :   an instance of AccessibleState containing the current state
        of the object

    See Also:
    :   - [`AccessibleState`](../accessibility/AccessibleState.md "class in javax.accessibility")
  + ### stateChanged

    public void stateChanged([ChangeEvent](event/ChangeEvent.md "class in javax.swing.event") e)

    Invoked when the target of the listener has changed its state.

    Specified by:
    :   `stateChanged` in interface `ChangeListener`

    Parameters:
    :   `e` - a `ChangeEvent` object. Must not be `null`

    Throws:
    :   `NullPointerException` - if the parameter is `null`
  + ### getAccessibleRole

    public [AccessibleRole](../accessibility/AccessibleRole.md "class in javax.accessibility") getAccessibleRole()

    Get the role of this object.

    Overrides:
    :   `getAccessibleRole` in class `JComponent.AccessibleJComponent`

    Returns:
    :   an instance of AccessibleRole describing the role of the object

    See Also:
    :   - [`AccessibleRole`](../accessibility/AccessibleRole.md "class in javax.accessibility")
  + ### getAccessibleValue

    public [AccessibleValue](../accessibility/AccessibleValue.md "interface in javax.accessibility") getAccessibleValue()

    Get the AccessibleValue associated with this object. In the
    implementation of the Java Accessibility API for this class,
    return this object, which is responsible for implementing the
    AccessibleValue interface on behalf of itself.

    Overrides:
    :   `getAccessibleValue` in class `AccessibleContext`

    Returns:
    :   this object

    See Also:
    :   - [`AccessibleValue`](../accessibility/AccessibleValue.md "interface in javax.accessibility")
  + ### getCurrentAccessibleValue

    public [Number](../../../java.base/java/lang/Number.md "class in java.lang") getCurrentAccessibleValue()

    Get the accessible value of this object.

    Specified by:
    :   `getCurrentAccessibleValue` in interface `AccessibleValue`

    Returns:
    :   The current value of this object.

    See Also:
    :   - [`AccessibleValue.setCurrentAccessibleValue(java.lang.Number)`](../accessibility/AccessibleValue.md#setCurrentAccessibleValue(java.lang.Number))
  + ### setCurrentAccessibleValue

    public boolean setCurrentAccessibleValue([Number](../../../java.base/java/lang/Number.md "class in java.lang") n)

    Set the value of this object as a Number.

    Specified by:
    :   `setCurrentAccessibleValue` in interface `AccessibleValue`

    Parameters:
    :   `n` - the number to use for the value

    Returns:
    :   True if the value was set.

    See Also:
    :   - [`AccessibleValue.getCurrentAccessibleValue()`](../accessibility/AccessibleValue.md#getCurrentAccessibleValue())
  + ### getMinimumAccessibleValue

    public [Number](../../../java.base/java/lang/Number.md "class in java.lang") getMinimumAccessibleValue()

    Get the minimum accessible value of this object.

    Specified by:
    :   `getMinimumAccessibleValue` in interface `AccessibleValue`

    Returns:
    :   The minimum value of this object.

    See Also:
    :   - [`AccessibleValue.getMaximumAccessibleValue()`](../accessibility/AccessibleValue.md#getMaximumAccessibleValue())
  + ### getMaximumAccessibleValue

    public [Number](../../../java.base/java/lang/Number.md "class in java.lang") getMaximumAccessibleValue()

    Get the maximum accessible value of this object.

    Specified by:
    :   `getMaximumAccessibleValue` in interface `AccessibleValue`

    Returns:
    :   The maximum value of this object.

    See Also:
    :   - [`AccessibleValue.getMinimumAccessibleValue()`](../accessibility/AccessibleValue.md#getMinimumAccessibleValue())
  + ### getAccessibleAction

    public [AccessibleAction](../accessibility/AccessibleAction.md "interface in javax.accessibility") getAccessibleAction()

    Gets the AccessibleAction associated with this object that supports
    one or more actions.

    Overrides:
    :   `getAccessibleAction` in class `AccessibleContext`

    Returns:
    :   AccessibleAction if supported by object; else return null

    See Also:
    :   - [`AccessibleAction`](../accessibility/AccessibleAction.md "interface in javax.accessibility")
  + ### getAccessibleActionCount

    public int getAccessibleActionCount()

    Returns the number of accessible actions available in this object
    If there are more than one, the first one is considered the "default"
    action of the object.
    Two actions are supported: AccessibleAction.INCREMENT which
    increments the slider value and AccessibleAction.DECREMENT
    which decrements the slider value

    Specified by:
    :   `getAccessibleActionCount` in interface `AccessibleAction`

    Returns:
    :   the zero-based number of Actions in this object
  + ### getAccessibleActionDescription

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getAccessibleActionDescription(int i)

    Returns a description of the specified action of the object.

    Specified by:
    :   `getAccessibleActionDescription` in interface `AccessibleAction`

    Parameters:
    :   `i` - zero-based index of the actions

    Returns:
    :   a String description of the action

    See Also:
    :   - [`getAccessibleActionCount()`](#getAccessibleActionCount())
  + ### doAccessibleAction

    public boolean doAccessibleAction(int i)

    Performs the specified Action on the object

    Specified by:
    :   `doAccessibleAction` in interface `AccessibleAction`

    Parameters:
    :   `i` - zero-based index of actions. The first action
        (index 0) is AccessibleAction.INCREMENT and the second
        action (index 1) is AccessibleAction.DECREMENT.

    Returns:
    :   true if the action was performed, otherwise false

    See Also:
    :   - [`getAccessibleActionCount()`](#getAccessibleActionCount())