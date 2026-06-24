Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class Choice.AccessibleAWTChoice

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility")

[java.awt.Component.AccessibleAWTComponent](Component.AccessibleAWTComponent.md "class in java.awt")

java.awt.Choice.AccessibleAWTChoice

All Implemented Interfaces:
:   `Serializable`, `AccessibleAction`, `AccessibleComponent`

Enclosing class:
:   `Choice`

---

protected class Choice.AccessibleAWTChoice
extends [Component.AccessibleAWTComponent](Component.AccessibleAWTComponent.md "class in java.awt")
implements [AccessibleAction](../../javax/accessibility/AccessibleAction.md "interface in javax.accessibility")

This class implements accessibility support for the
`Choice` class. It provides an implementation of the
Java Accessibility API appropriate to choice user-interface elements.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.awt.Choice.AccessibleAWTChoice)

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

  Constructor

  Description

  `AccessibleAWTChoice()`

  Constructor for `AccessibleAWTChoice`
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

  Returns the number of accessible actions available in this object
  If there are more than one, the first one is considered the "default"
  action of the object.

  `String`

  `getAccessibleActionDescription(int i)`

  Returns a description of the specified action of the object.

  `AccessibleRole`

  `getAccessibleRole()`

  Get the role of this object.

  ### Methods inherited from class java.awt.[Component.AccessibleAWTComponent](Component.AccessibleAWTComponent.md "class in java.awt")

  `addFocusListener, addPropertyChangeListener, contains, getAccessibleAt, getAccessibleChild, getAccessibleChildrenCount, getAccessibleComponent, getAccessibleDescription, getAccessibleIndexInParent, getAccessibleName, getAccessibleParent, getAccessibleStateSet, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocale, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, removePropertyChangeListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

  ### Methods inherited from class javax.accessibility.[AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility")

  `firePropertyChange, getAccessibleEditableText, getAccessibleIcon, getAccessibleRelationSet, getAccessibleSelection, getAccessibleTable, getAccessibleText, getAccessibleValue, setAccessibleDescription, setAccessibleName, setAccessibleParent`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AccessibleAWTChoice

    public AccessibleAWTChoice()

    Constructor for `AccessibleAWTChoice`
* ## Method Details

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
  + ### getAccessibleActionCount

    public int getAccessibleActionCount()

    Returns the number of accessible actions available in this object
    If there are more than one, the first one is considered the "default"
    action of the object.

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

    Perform the specified Action on the object

    Specified by:
    :   `doAccessibleAction` in interface `AccessibleAction`

    Parameters:
    :   `i` - zero-based index of actions

    Returns:
    :   true if the action was performed; otherwise false.

    See Also:
    :   - [`getAccessibleActionCount()`](#getAccessibleActionCount())