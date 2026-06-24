Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JComboBox.AccessibleJComboBox

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

[java.awt.Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

[java.awt.Container.AccessibleAWTContainer](../../java/awt/Container.AccessibleAWTContainer.md "class in java.awt")

[javax.swing.JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")

javax.swing.JComboBox.AccessibleJComboBox

All Implemented Interfaces:
:   `Serializable`, `AccessibleAction`, `AccessibleComponent`, `AccessibleExtendedComponent`, `AccessibleSelection`

Enclosing class:
:   `JComboBox<E>`

---

protected class JComboBox.AccessibleJComboBox
extends [JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")
implements [AccessibleAction](../accessibility/AccessibleAction.md "interface in javax.accessibility"), [AccessibleSelection](../accessibility/AccessibleSelection.md "interface in javax.accessibility")

This class implements accessibility support for the
`JComboBox` class. It provides an implementation of the
Java Accessibility API appropriate to Combo Box user-interface elements.

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

  Constructor

  Description

  `AccessibleJComboBox()`

  Returns an AccessibleJComboBox instance
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addAccessibleSelection(int i)`

  Adds the specified Accessible child of the object to the object's
  selection.

  `void`

  `clearAccessibleSelection()`

  Clears the selection in the object, so that no children in the
  object are selected.

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

  `Accessible`

  `getAccessibleChild(int i)`

  Returns the nth Accessible child of the object.

  `int`

  `getAccessibleChildrenCount()`

  Returns the number of accessible children in the object.

  `AccessibleRole`

  `getAccessibleRole()`

  Get the role of this object.

  `AccessibleSelection`

  `getAccessibleSelection()`

  Get the AccessibleSelection associated with this object.

  `Accessible`

  `getAccessibleSelection(int i)`

  Returns an Accessible representing the specified selected child
  in the popup.

  `int`

  `getAccessibleSelectionCount()`

  Returns the number of Accessible children currently selected.

  `AccessibleStateSet`

  `getAccessibleStateSet()`

  Gets the state set of this object.

  `boolean`

  `isAccessibleChildSelected(int i)`

  Determines if the current child of this object is selected.

  `void`

  `removeAccessibleSelection(int i)`

  Removes the specified child of the object from the object's
  selection.

  `void`

  `selectAllAccessibleSelection()`

  Causes every child of the object to be selected
  if the object supports multiple selections.

  ### Methods inherited from class javax.swing.[JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")

  `addPropertyChangeListener, getAccessibleDescription, getAccessibleKeyBinding, getAccessibleName, getBorderTitle, getTitledBorderText, getToolTipText, removePropertyChangeListener`

  ### Methods inherited from class java.awt.[Container.AccessibleAWTContainer](../../java/awt/Container.AccessibleAWTContainer.md "class in java.awt")

  `getAccessibleAt`

  ### Methods inherited from class java.awt.[Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

  `addFocusListener, contains, getAccessibleComponent, getAccessibleIndexInParent, getAccessibleParent, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocale, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

  ### Methods inherited from class javax.accessibility.[AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

  `firePropertyChange, getAccessibleEditableText, getAccessibleIcon, getAccessibleRelationSet, getAccessibleTable, getAccessibleText, getAccessibleValue, setAccessibleDescription, setAccessibleName, setAccessibleParent`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.accessibility.[AccessibleComponent](../accessibility/AccessibleComponent.md "interface in javax.accessibility")

  `addFocusListener, contains, getAccessibleAt, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

* ## Constructor Details

  + ### AccessibleJComboBox

    public AccessibleJComboBox()

    Returns an AccessibleJComboBox instance

    Since:
    :   1.4
* ## Method Details

  + ### getAccessibleChildrenCount

    public int getAccessibleChildrenCount()

    Returns the number of accessible children in the object. If all
    of the children of this object implement Accessible, than this
    method should return the number of children of this object.

    Overrides:
    :   `getAccessibleChildrenCount` in class `JComponent.AccessibleJComponent`

    Returns:
    :   the number of accessible children in the object.
  + ### getAccessibleChild

    public [Accessible](../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleChild(int i)

    Returns the nth Accessible child of the object.
    The child at index zero represents the popup.
    If the combo box is editable, the child at index one
    represents the editor.

    Overrides:
    :   `getAccessibleChild` in class `JComponent.AccessibleJComponent`

    Parameters:
    :   `i` - zero-based index of child

    Returns:
    :   the nth Accessible child of the object

    See Also:
    :   - [`AccessibleContext.getAccessibleChildrenCount()`](../accessibility/AccessibleContext.md#getAccessibleChildrenCount())
  + ### getAccessibleRole

    public [AccessibleRole](../accessibility/AccessibleRole.md "class in javax.accessibility") getAccessibleRole()

    Get the role of this object.

    Overrides:
    :   `getAccessibleRole` in class `JComponent.AccessibleJComponent`

    Returns:
    :   an instance of AccessibleRole describing the role of the
        object

    See Also:
    :   - [`AccessibleRole`](../accessibility/AccessibleRole.md "class in javax.accessibility")
  + ### getAccessibleStateSet

    public [AccessibleStateSet](../accessibility/AccessibleStateSet.md "class in javax.accessibility") getAccessibleStateSet()

    Gets the state set of this object. The AccessibleStateSet of
    an object is composed of a set of unique AccessibleStates.
    A change in the AccessibleStateSet of an object will cause a
    PropertyChangeEvent to be fired for the ACCESSIBLE\_STATE\_PROPERTY
    property.

    Overrides:
    :   `getAccessibleStateSet` in class `JComponent.AccessibleJComponent`

    Returns:
    :   an instance of AccessibleStateSet containing the
        current state set of the object

    See Also:
    :   - [`AccessibleStateSet`](../accessibility/AccessibleStateSet.md "class in javax.accessibility")
        - [`AccessibleState`](../accessibility/AccessibleState.md "class in javax.accessibility")
        - [`JComponent.AccessibleJComponent.addPropertyChangeListener(java.beans.PropertyChangeListener)`](JComponent.AccessibleJComponent.md#addPropertyChangeListener(java.beans.PropertyChangeListener))
  + ### getAccessibleAction

    public [AccessibleAction](../accessibility/AccessibleAction.md "interface in javax.accessibility") getAccessibleAction()

    Get the AccessibleAction associated with this object. In the
    implementation of the Java Accessibility API for this class,
    return this object, which is responsible for implementing the
    AccessibleAction interface on behalf of itself.

    Overrides:
    :   `getAccessibleAction` in class `AccessibleContext`

    Returns:
    :   this object

    See Also:
    :   - [`AccessibleAction`](../accessibility/AccessibleAction.md "interface in javax.accessibility")
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
    :   - [`AccessibleAction.getAccessibleActionCount()`](../accessibility/AccessibleAction.md#getAccessibleActionCount())
  + ### getAccessibleActionCount

    public int getAccessibleActionCount()

    Returns the number of Actions available in this object. The
    default behavior of a combo box is to have one action.

    Specified by:
    :   `getAccessibleActionCount` in interface `AccessibleAction`

    Returns:
    :   1, the number of Actions in this object
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
    :   - [`AccessibleAction.getAccessibleActionCount()`](../accessibility/AccessibleAction.md#getAccessibleActionCount())
  + ### getAccessibleSelection

    public [AccessibleSelection](../accessibility/AccessibleSelection.md "interface in javax.accessibility") getAccessibleSelection()

    Get the AccessibleSelection associated with this object. In the
    implementation of the Java Accessibility API for this class,
    return this object, which is responsible for implementing the
    AccessibleSelection interface on behalf of itself.

    Overrides:
    :   `getAccessibleSelection` in class `AccessibleContext`

    Returns:
    :   this object

    See Also:
    :   - [`AccessibleSelection`](../accessibility/AccessibleSelection.md "interface in javax.accessibility")
  + ### getAccessibleSelectionCount

    public int getAccessibleSelectionCount()

    Returns the number of Accessible children currently selected.
    If no children are selected, the return value will be 0.

    Specified by:
    :   `getAccessibleSelectionCount` in interface `AccessibleSelection`

    Returns:
    :   the number of items currently selected.

    Since:
    :   1.3
  + ### getAccessibleSelection

    public [Accessible](../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleSelection(int i)

    Returns an Accessible representing the specified selected child
    in the popup. If there isn't a selection, or there are
    fewer children selected than the integer passed in, the return
    value will be null.

    Note that the index represents the i-th selected child, which
    is different from the i-th child.

    Specified by:
    :   `getAccessibleSelection` in interface `AccessibleSelection`

    Parameters:
    :   `i` - the zero-based index of selected children

    Returns:
    :   the i-th selected child

    Since:
    :   1.3

    See Also:
    :   - [`getAccessibleSelectionCount()`](#getAccessibleSelectionCount())
  + ### isAccessibleChildSelected

    public boolean isAccessibleChildSelected(int i)

    Determines if the current child of this object is selected.

    Specified by:
    :   `isAccessibleChildSelected` in interface `AccessibleSelection`

    Parameters:
    :   `i` - the zero-based index of the child in this Accessible
        object.

    Returns:
    :   true if the current child of this object is selected;
        else false

    Since:
    :   1.3

    See Also:
    :   - [`AccessibleContext.getAccessibleChild(int)`](../accessibility/AccessibleContext.md#getAccessibleChild(int))
  + ### addAccessibleSelection

    public void addAccessibleSelection(int i)

    Adds the specified Accessible child of the object to the object's
    selection. If the object supports multiple selections,
    the specified child is added to any existing selection, otherwise
    it replaces any existing selection in the object. If the
    specified child is already selected, this method has no effect.

    Specified by:
    :   `addAccessibleSelection` in interface `AccessibleSelection`

    Parameters:
    :   `i` - the zero-based index of the child

    Since:
    :   1.3

    See Also:
    :   - [`AccessibleContext.getAccessibleChild(int)`](../accessibility/AccessibleContext.md#getAccessibleChild(int))
  + ### removeAccessibleSelection

    public void removeAccessibleSelection(int i)

    Removes the specified child of the object from the object's
    selection. If the specified item isn't currently selected, this
    method has no effect.

    Specified by:
    :   `removeAccessibleSelection` in interface `AccessibleSelection`

    Parameters:
    :   `i` - the zero-based index of the child

    Since:
    :   1.3

    See Also:
    :   - [`AccessibleContext.getAccessibleChild(int)`](../accessibility/AccessibleContext.md#getAccessibleChild(int))
  + ### clearAccessibleSelection

    public void clearAccessibleSelection()

    Clears the selection in the object, so that no children in the
    object are selected.

    Specified by:
    :   `clearAccessibleSelection` in interface `AccessibleSelection`

    Since:
    :   1.3
  + ### selectAllAccessibleSelection

    public void selectAllAccessibleSelection()

    Causes every child of the object to be selected
    if the object supports multiple selections.

    Specified by:
    :   `selectAllAccessibleSelection` in interface `AccessibleSelection`

    Since:
    :   1.3