Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class CheckboxMenuItem.AccessibleAWTCheckboxMenuItem

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility")

[java.awt.MenuComponent.AccessibleAWTMenuComponent](MenuComponent.AccessibleAWTMenuComponent.md "class in java.awt")

[java.awt.MenuItem.AccessibleAWTMenuItem](MenuItem.AccessibleAWTMenuItem.md "class in java.awt")

java.awt.CheckboxMenuItem.AccessibleAWTCheckboxMenuItem

All Implemented Interfaces:
:   `Serializable`, `AccessibleAction`, `AccessibleComponent`, `AccessibleSelection`, `AccessibleValue`

Enclosing class:
:   `CheckboxMenuItem`

---

protected class CheckboxMenuItem.AccessibleAWTCheckboxMenuItem
extends [MenuItem.AccessibleAWTMenuItem](MenuItem.AccessibleAWTMenuItem.md "class in java.awt")
implements [AccessibleAction](../../javax/accessibility/AccessibleAction.md "interface in javax.accessibility"), [AccessibleValue](../../javax/accessibility/AccessibleValue.md "interface in javax.accessibility")

Inner class of CheckboxMenuItem used to provide default support for
accessibility. This class is not meant to be used directly by
application developers, but is instead meant only to be
subclassed by menu component developers.

This class implements accessibility support for the
`CheckboxMenuItem` class. It provides an implementation
of the Java Accessibility API appropriate to checkbox menu item
user-interface elements.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.awt.CheckboxMenuItem.AccessibleAWTCheckboxMenuItem)

* ## Field Summary

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

  `AccessibleAWTCheckboxMenuItem()`

  Constructs an `AccessibleAWTCheckboxMenuItem`.
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

  ### Methods inherited from class java.awt.[MenuItem.AccessibleAWTMenuItem](MenuItem.AccessibleAWTMenuItem.md "class in java.awt")

  `getAccessibleName`

  ### Methods inherited from class java.awt.[MenuComponent.AccessibleAWTMenuComponent](MenuComponent.AccessibleAWTMenuComponent.md "class in java.awt")

  `addAccessibleSelection, addFocusListener, clearAccessibleSelection, contains, getAccessibleAt, getAccessibleChild, getAccessibleChildrenCount, getAccessibleComponent, getAccessibleDescription, getAccessibleIndexInParent, getAccessibleParent, getAccessibleSelection, getAccessibleSelection, getAccessibleSelectionCount, getAccessibleStateSet, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocale, getLocation, getLocationOnScreen, getSize, isAccessibleChildSelected, isEnabled, isFocusTraversable, isShowing, isVisible, removeAccessibleSelection, removeFocusListener, requestFocus, selectAllAccessibleSelection, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

  ### Methods inherited from class javax.accessibility.[AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility")

  `addPropertyChangeListener, firePropertyChange, getAccessibleEditableText, getAccessibleIcon, getAccessibleRelationSet, getAccessibleTable, getAccessibleText, removePropertyChangeListener, setAccessibleDescription, setAccessibleName, setAccessibleParent`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AccessibleAWTCheckboxMenuItem

    protected AccessibleAWTCheckboxMenuItem()

    Constructs an `AccessibleAWTCheckboxMenuItem`.
* ## Method Details

  + ### getAccessibleAction

    public [AccessibleAction](../../javax/accessibility/AccessibleAction.md "interface in javax.accessibility") getAccessibleAction()

    Get the AccessibleAction associated with this object. In the
    implementation of the Java Accessibility API for this class,
    return this object, which is responsible for implementing the
    AccessibleAction interface on behalf of itself.

    Overrides:
    :   `getAccessibleAction` in class `MenuItem.AccessibleAWTMenuItem`

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
    :   `getAccessibleValue` in class `MenuItem.AccessibleAWTMenuItem`

    Returns:
    :   this object

    See Also:
    :   - [`AccessibleValue`](../../javax/accessibility/AccessibleValue.md "interface in javax.accessibility")
  + ### getAccessibleActionCount

    public int getAccessibleActionCount()

    Returns the number of Actions available in this object.
    If there is more than one, the first one is the "default"
    action.

    Specified by:
    :   `getAccessibleActionCount` in interface `AccessibleAction`

    Overrides:
    :   `getAccessibleActionCount` in class `MenuItem.AccessibleAWTMenuItem`

    Returns:
    :   the number of Actions in this object
  + ### getAccessibleActionDescription

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getAccessibleActionDescription(int i)

    Return a description of the specified action of the object.

    Specified by:
    :   `getAccessibleActionDescription` in interface `AccessibleAction`

    Overrides:
    :   `getAccessibleActionDescription` in class `MenuItem.AccessibleAWTMenuItem`

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

    Overrides:
    :   `doAccessibleAction` in class `MenuItem.AccessibleAWTMenuItem`

    Parameters:
    :   `i` - zero-based index of actions

    Returns:
    :   true if the action was performed; otherwise false.

    See Also:
    :   - [`AccessibleAction.getAccessibleActionCount()`](../../javax/accessibility/AccessibleAction.md#getAccessibleActionCount())
  + ### getCurrentAccessibleValue

    public [Number](../../../java.base/java/lang/Number.md "class in java.lang") getCurrentAccessibleValue()

    Get the value of this object as a Number. If the value has not been
    set, the return value will be null.

    Specified by:
    :   `getCurrentAccessibleValue` in interface `AccessibleValue`

    Overrides:
    :   `getCurrentAccessibleValue` in class `MenuItem.AccessibleAWTMenuItem`

    Returns:
    :   value of the object

    See Also:
    :   - [`setCurrentAccessibleValue(java.lang.Number)`](#setCurrentAccessibleValue(java.lang.Number))
  + ### setCurrentAccessibleValue

    public boolean setCurrentAccessibleValue([Number](../../../java.base/java/lang/Number.md "class in java.lang") n)

    Set the value of this object as a Number.

    Specified by:
    :   `setCurrentAccessibleValue` in interface `AccessibleValue`

    Overrides:
    :   `setCurrentAccessibleValue` in class `MenuItem.AccessibleAWTMenuItem`

    Parameters:
    :   `n` - the number to use for the value

    Returns:
    :   true if the value was set; otherwise false

    See Also:
    :   - [`getCurrentAccessibleValue()`](#getCurrentAccessibleValue())
  + ### getMinimumAccessibleValue

    public [Number](../../../java.base/java/lang/Number.md "class in java.lang") getMinimumAccessibleValue()

    Get the minimum value of this object as a Number.

    Specified by:
    :   `getMinimumAccessibleValue` in interface `AccessibleValue`

    Overrides:
    :   `getMinimumAccessibleValue` in class `MenuItem.AccessibleAWTMenuItem`

    Returns:
    :   Minimum value of the object; null if this object does not
        have a minimum value

    See Also:
    :   - [`getMaximumAccessibleValue()`](#getMaximumAccessibleValue())
  + ### getMaximumAccessibleValue

    public [Number](../../../java.base/java/lang/Number.md "class in java.lang") getMaximumAccessibleValue()

    Get the maximum value of this object as a Number.

    Specified by:
    :   `getMaximumAccessibleValue` in interface `AccessibleValue`

    Overrides:
    :   `getMaximumAccessibleValue` in class `MenuItem.AccessibleAWTMenuItem`

    Returns:
    :   Maximum value of the object; null if this object does not
        have a maximum value

    See Also:
    :   - [`getMinimumAccessibleValue()`](#getMinimumAccessibleValue())
  + ### getAccessibleRole

    public [AccessibleRole](../../javax/accessibility/AccessibleRole.md "class in javax.accessibility") getAccessibleRole()

    Get the role of this object.

    Overrides:
    :   `getAccessibleRole` in class `MenuItem.AccessibleAWTMenuItem`

    Returns:
    :   an instance of AccessibleRole describing the role of the
        object

    See Also:
    :   - [`AccessibleRole`](../../javax/accessibility/AccessibleRole.md "class in javax.accessibility")