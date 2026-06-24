Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class Button.AccessibleAWTButton

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility")

[java.awt.Component.AccessibleAWTComponent](Component.AccessibleAWTComponent.md "class in java.awt")

java.awt.Button.AccessibleAWTButton

All Implemented Interfaces:
:   `Serializable`, `AccessibleAction`, `AccessibleComponent`, `AccessibleValue`

Enclosing class:
:   `Button`

---

protected class Button.AccessibleAWTButton
extends [Component.AccessibleAWTComponent](Component.AccessibleAWTComponent.md "class in java.awt")
implements [AccessibleAction](../../javax/accessibility/AccessibleAction.md "interface in javax.accessibility"), [AccessibleValue](../../javax/accessibility/AccessibleValue.md "interface in javax.accessibility")

This class implements accessibility support for the
`Button` class. It provides an implementation of the
Java Accessibility API appropriate to button user-interface elements.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.awt.Button.AccessibleAWTButton)

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.awt.[Component.AccessibleAWTComponent](Component.AccessibleAWTComponent.md "class in java.awt")

  `Component.AccessibleAWTComponent.AccessibleAWTComponentHandler, Component.AccessibleAWTComponent.AccessibleAWTFocusHandler`
* ## Field Summary

  ### Fields inherited from class java.awt.[Component.AccessibleAWTComponent](Component.AccessibleAWTComponent.md "class in java.awt")

  `accessibleAWTComponentHandler, accessibleAWTFocusHandler`

  ### Fields inherited from class javax.accessibility.[AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility")

  `ACCESSIBLE_ACTION_PROPERTY, ACCESSIBLE_ACTIVE_DESCENDANT_PROPERTY, ACCESSIBLE_CARET_PROPERTY, ACCESSIBLE_CHILD_PROPERTY, ACCESSIBLE_COMPONENT_BOUNDS_CHANGED, ACCESSIBLE_DESCRIPTION_PROPERTY, ACCESSIBLE_HYPERTEXT_OFFSET, ACCESSIBLE_INVALIDATE_CHILDREN, ACCESSIBLE_NAME_PROPERTY, ACCESSIBLE_SELECTION_PROPERTY, ACCESSIBLE_STATE_PROPERTY, ACCESSIBLE_TABLE_CAPTION_CHANGED, ACCESSIBLE_TABLE_COLUMN_DESCRIPTION_CHANGED, ACCESSIBLE_TABLE_COLUMN_HEADER_CHANGED, ACCESSIBLE_TABLE_MODEL_CHANGED, ACCESSIBLE_TABLE_ROW_DESCRIPTION_CHANGED, ACCESSIBLE_TABLE_ROW_HEADER_CHANGED, ACCESSIBLE_TABLE_SUMMARY_CHANGED, ACCESSIBLE_TEXT_ATTRIBUTES_CHANGED, ACCESSIBLE_TEXT_PROPERTY, ACCESSIBLE_VALUE_PROPERTY, ACCESSIBLE_VISIBLE_DATA_PROPERTY, accessibleDescription, accessibleName, accessibleParent`

  ### Fields inherited from interface javax.accessibility.[AccessibleAction](../../javax/accessibility/AccessibleAction.md "interface in javax.accessibility")

  `CLICK, DECREMENT, INCREMENT, TOGGLE_EXPAND, TOGGLE_POPUP`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AccessibleAWTButton()`

  Constructs an `AccessibleAWTButton`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `doAccessibleAction(int i)`

  Perform the specified Action on the object

  `AccessibleAction`

  `getAccessibleAction()`

  Get the AccessibleAction associated with this object.

  `int`

  `getAccessibleActionCount()`

  Returns the number of Actions available in this object.

  `String`

  `getAccessibleActionDescription(int i)`

  Return a description of the specified action of the object.

  `String`

  `getAccessibleName()`

  Get the accessible name of this object.

  `AccessibleRole`

  `getAccessibleRole()`

  Get the role of this object.

  `AccessibleValue`

  `getAccessibleValue()`

  Get the AccessibleValue associated with this object.

  `Number`

  `getCurrentAccessibleValue()`

  Get the value of this object as a Number.

  `Number`

  `getMaximumAccessibleValue()`

  Get the maximum value of this object as a Number.

  `Number`

  `getMinimumAccessibleValue()`

  Get the minimum value of this object as a Number.

  `boolean`

  `setCurrentAccessibleValue(Number n)`

  Set the value of this object as a Number.

  ### Methods inherited from class java.awt.[Component.AccessibleAWTComponent](Component.AccessibleAWTComponent.md "class in java.awt")

  `addFocusListener, addPropertyChangeListener, contains, getAccessibleAt, getAccessibleChild, getAccessibleChildrenCount, getAccessibleComponent, getAccessibleDescription, getAccessibleIndexInParent, getAccessibleParent, getAccessibleStateSet, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocale, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, removePropertyChangeListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

  ### Methods inherited from class javax.accessibility.[AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility")

  `firePropertyChange, getAccessibleEditableText, getAccessibleIcon, getAccessibleRelationSet, getAccessibleSelection, getAccessibleTable, getAccessibleText, setAccessibleDescription, setAccessibleName, setAccessibleParent`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AccessibleAWTButton

    protected AccessibleAWTButton()

    Constructs an `AccessibleAWTButton`.
* ## Method Details

  + ### getAccessibleName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getAccessibleName()

    Get the accessible name of this object.

    Overrides:
    :   `getAccessibleName` in class `Component.AccessibleAWTComponent`

    Returns:
    :   the localized name of the object -- can be null if this
        object does not have a name

    See Also:
    :   - [`AccessibleContext.setAccessibleName(java.lang.String)`](../../javax/accessibility/AccessibleContext.md#setAccessibleName(java.lang.String))
  + ### getAccessibleAction

    public [AccessibleAction](../../javax/accessibility/AccessibleAction.md "interface in javax.accessibility") getAccessibleAction()

    Get the AccessibleAction associated with this object. In the
    implementation of the Java Accessibility API for this class,
    return this object, which is responsible for implementing the
    AccessibleAction interface on behalf of itself.

    Overrides:
    :   `getAccessibleAction` in class `AccessibleContext`

    Returns:
    :   this object

    See Also:
    :   - [`AccessibleAction`](../../javax/accessibility/AccessibleAction.md "interface in javax.accessibility")
  + ### getAccessibleValue

    public [AccessibleValue](../../javax/accessibility/AccessibleValue.md "interface in javax.accessibility") getAccessibleValue()

    Get the AccessibleValue associated with this object. In the
    implementation of the Java Accessibility API for this class,
    return this object, which is responsible for implementing the
    AccessibleValue interface on behalf of itself.

    Overrides:
    :   `getAccessibleValue` in class `AccessibleContext`

    Returns:
    :   this object

    See Also:
    :   - [`AccessibleValue`](../../javax/accessibility/AccessibleValue.md "interface in javax.accessibility")
  + ### getAccessibleActionCount

    public int getAccessibleActionCount()

    Returns the number of Actions available in this object. The
    default behavior of a button is to have one action - toggle
    the button.

    Specified by:
    :   `getAccessibleActionCount` in interface `AccessibleAction`

    Returns:
    :   1, the number of Actions in this object
  + ### getAccessibleActionDescription

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getAccessibleActionDescription(int i)

    Return a description of the specified action of the object.

    Specified by:
    :   `getAccessibleActionDescription` in interface `AccessibleAction`

    Parameters:
    :   `i` - zero-based index of the actions

    Returns:
    :   a `String` description of the action

    See Also:
    :   - [`AccessibleAction.getAccessibleActionCount()`](../../javax/accessibility/AccessibleAction.md#getAccessibleActionCount())
  + ### doAccessibleAction

    public boolean doAccessibleAction(int i)

    Perform the specified Action on the object

    Specified by:
    :   `doAccessibleAction` in interface `AccessibleAction`

    Parameters:
    :   `i` - zero-based index of actions

    Returns:
    :   true if the action was performed; else false.

    See Also:
    :   - [`AccessibleAction.getAccessibleActionCount()`](../../javax/accessibility/AccessibleAction.md#getAccessibleActionCount())
  + ### getCurrentAccessibleValue

    public [Number](../../../java.base/java/lang/Number.md "class in java.lang") getCurrentAccessibleValue()

    Get the value of this object as a Number.

    Specified by:
    :   `getCurrentAccessibleValue` in interface `AccessibleValue`

    Returns:
    :   An Integer of 0 if this isn't selected or an Integer of 1 if
        this is selected.

    See Also:
    :   - [`AbstractButton.isSelected()`](../../javax/swing/AbstractButton.md#isSelected())
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
    :   - [`AccessibleValue.getCurrentAccessibleValue()`](../../javax/accessibility/AccessibleValue.md#getCurrentAccessibleValue())
  + ### getMinimumAccessibleValue

    public [Number](../../../java.base/java/lang/Number.md "class in java.lang") getMinimumAccessibleValue()

    Get the minimum value of this object as a Number.

    Specified by:
    :   `getMinimumAccessibleValue` in interface `AccessibleValue`

    Returns:
    :   An Integer of 0.

    See Also:
    :   - [`AccessibleValue.getMaximumAccessibleValue()`](../../javax/accessibility/AccessibleValue.md#getMaximumAccessibleValue())
  + ### getMaximumAccessibleValue

    public [Number](../../../java.base/java/lang/Number.md "class in java.lang") getMaximumAccessibleValue()

    Get the maximum value of this object as a Number.

    Specified by:
    :   `getMaximumAccessibleValue` in interface `AccessibleValue`

    Returns:
    :   An Integer of 0.

    See Also:
    :   - [`AccessibleValue.getMinimumAccessibleValue()`](../../javax/accessibility/AccessibleValue.md#getMinimumAccessibleValue())
  + ### getAccessibleRole

    public [AccessibleRole](../../javax/accessibility/AccessibleRole.md "class in javax.accessibility") getAccessibleRole()

    Get the role of this object.

    Overrides:
    :   `getAccessibleRole` in class `Component.AccessibleAWTComponent`

    Returns:
    :   an instance of AccessibleRole describing the role of the
        object

    See Also:
    :   - [`AccessibleRole`](../../javax/accessibility/AccessibleRole.md "class in javax.accessibility")