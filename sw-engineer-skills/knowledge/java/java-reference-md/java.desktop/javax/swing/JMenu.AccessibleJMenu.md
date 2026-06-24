Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JMenu.AccessibleJMenu

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

[java.awt.Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

[java.awt.Container.AccessibleAWTContainer](../../java/awt/Container.AccessibleAWTContainer.md "class in java.awt")

[javax.swing.JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")

[javax.swing.AbstractButton.AccessibleAbstractButton](AbstractButton.AccessibleAbstractButton.md "class in javax.swing")

[javax.swing.JMenuItem.AccessibleJMenuItem](JMenuItem.AccessibleJMenuItem.md "class in javax.swing")

javax.swing.JMenu.AccessibleJMenu

All Implemented Interfaces:
:   `Serializable`, `EventListener`, `AccessibleAction`, `AccessibleComponent`, `AccessibleExtendedComponent`, `AccessibleSelection`, `AccessibleText`, `AccessibleValue`, `ChangeListener`

Enclosing class:
:   `JMenu`

---

protected class JMenu.AccessibleJMenu
extends [JMenuItem.AccessibleJMenuItem](JMenuItem.AccessibleJMenuItem.md "class in javax.swing")
implements [AccessibleSelection](../accessibility/AccessibleSelection.md "interface in javax.accessibility")

This class implements accessibility support for the
`JMenu` class. It provides an implementation of the
Java Accessibility API appropriate to menu user-interface elements.

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

  ### Fields inherited from interface javax.accessibility.[AccessibleText](../accessibility/AccessibleText.md "interface in javax.accessibility")

  `CHARACTER, SENTENCE, WORD`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AccessibleJMenu()`

  Constructs an `AccessibleJMenu`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addAccessibleSelection(int i)`

  Selects the `i`th menu in the menu.

  `void`

  `clearAccessibleSelection()`

  Clears the selection in the object, so that nothing in the
  object is selected.

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

  Returns the currently selected sub-menu if one is selected,
  otherwise null (there can only be one selection, and it can
  only be a sub-menu, as otherwise menu items don't remain
  selected).

  `int`

  `getAccessibleSelectionCount()`

  Returns 1 if a sub-menu is currently selected in this menu.

  `boolean`

  `isAccessibleChildSelected(int i)`

  Returns true if the current child of this object is selected
  (that is, if this child is a popped-up submenu).

  `void`

  `removeAccessibleSelection(int i)`

  Removes the nth item from the selection.

  `void`

  `selectAllAccessibleSelection()`

  Normally causes every selected item in the object to be selected
  if the object supports multiple selections.

  ### Methods inherited from class javax.swing.[JMenuItem.AccessibleJMenuItem](JMenuItem.AccessibleJMenuItem.md "class in javax.swing")

  `stateChanged`

  ### Methods inherited from class javax.swing.[AbstractButton.AccessibleAbstractButton](AbstractButton.AccessibleAbstractButton.md "class in javax.swing")

  `doAccessibleAction, getAccessibleAction, getAccessibleActionCount, getAccessibleActionDescription, getAccessibleIcon, getAccessibleKeyBinding, getAccessibleName, getAccessibleRelationSet, getAccessibleStateSet, getAccessibleText, getAccessibleValue, getAfterIndex, getAtIndex, getBeforeIndex, getCaretPosition, getCharacterAttribute, getCharacterBounds, getCharCount, getCurrentAccessibleValue, getIndexAtPoint, getMaximumAccessibleValue, getMinimumAccessibleValue, getSelectedText, getSelectionEnd, getSelectionStart, getTitledBorderText, getToolTipText, setCurrentAccessibleValue`

  ### Methods inherited from class javax.swing.[JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")

  `addPropertyChangeListener, getAccessibleDescription, getBorderTitle, removePropertyChangeListener`

  ### Methods inherited from class java.awt.[Container.AccessibleAWTContainer](../../java/awt/Container.AccessibleAWTContainer.md "class in java.awt")

  `getAccessibleAt`

  ### Methods inherited from class java.awt.[Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

  `addFocusListener, contains, getAccessibleComponent, getAccessibleIndexInParent, getAccessibleParent, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocale, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

  ### Methods inherited from class javax.accessibility.[AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

  `firePropertyChange, getAccessibleEditableText, getAccessibleTable, setAccessibleDescription, setAccessibleName, setAccessibleParent`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.accessibility.[AccessibleComponent](../accessibility/AccessibleComponent.md "interface in javax.accessibility")

  `addFocusListener, contains, getAccessibleAt, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

* ## Constructor Details

  + ### AccessibleJMenu

    protected AccessibleJMenu()

    Constructs an `AccessibleJMenu`.
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
    :   `getAccessibleRole` in class `JMenuItem.AccessibleJMenuItem`

    Returns:
    :   an instance of AccessibleRole describing the role of the
        object

    See Also:
    :   - [`AccessibleRole`](../accessibility/AccessibleRole.md "class in javax.accessibility")
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

    Returns 1 if a sub-menu is currently selected in this menu.

    Specified by:
    :   `getAccessibleSelectionCount` in interface `AccessibleSelection`

    Returns:
    :   1 if a menu is currently selected, else 0
  + ### getAccessibleSelection

    public [Accessible](../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleSelection(int i)

    Returns the currently selected sub-menu if one is selected,
    otherwise null (there can only be one selection, and it can
    only be a sub-menu, as otherwise menu items don't remain
    selected).

    Specified by:
    :   `getAccessibleSelection` in interface `AccessibleSelection`

    Parameters:
    :   `i` - the zero-based index of selected children

    Returns:
    :   the i-th selected child

    See Also:
    :   - [`AccessibleSelection.getAccessibleSelectionCount()`](../accessibility/AccessibleSelection.md#getAccessibleSelectionCount())
  + ### isAccessibleChildSelected

    public boolean isAccessibleChildSelected(int i)

    Returns true if the current child of this object is selected
    (that is, if this child is a popped-up submenu).

    Specified by:
    :   `isAccessibleChildSelected` in interface `AccessibleSelection`

    Parameters:
    :   `i` - the zero-based index of the child in this Accessible
        object.

    Returns:
    :   `true` if the current child of this object is selected;
        else `false`

    See Also:
    :   - [`AccessibleContext.getAccessibleChild(int)`](../accessibility/AccessibleContext.md#getAccessibleChild(int))
  + ### addAccessibleSelection

    public void addAccessibleSelection(int i)

    Selects the `i`th menu in the menu.
    If that item is a submenu,
    it will pop up in response. If a different item is already
    popped up, this will force it to close. If this is a sub-menu
    that is already popped up (selected), this method has no
    effect.

    Specified by:
    :   `addAccessibleSelection` in interface `AccessibleSelection`

    Parameters:
    :   `i` - the index of the item to be selected

    See Also:
    :   - [`AbstractButton.AccessibleAbstractButton.getAccessibleStateSet()`](AbstractButton.AccessibleAbstractButton.md#getAccessibleStateSet())
  + ### removeAccessibleSelection

    public void removeAccessibleSelection(int i)

    Removes the nth item from the selection. In general, menus
    can only have one item within them selected at a time
    (e.g. one sub-menu popped open).

    Specified by:
    :   `removeAccessibleSelection` in interface `AccessibleSelection`

    Parameters:
    :   `i` - the zero-based index of the selected item

    See Also:
    :   - [`AccessibleContext.getAccessibleChild(int)`](../accessibility/AccessibleContext.md#getAccessibleChild(int))
  + ### clearAccessibleSelection

    public void clearAccessibleSelection()

    Clears the selection in the object, so that nothing in the
    object is selected. This will close any open sub-menu.

    Specified by:
    :   `clearAccessibleSelection` in interface `AccessibleSelection`
  + ### selectAllAccessibleSelection

    public void selectAllAccessibleSelection()

    Normally causes every selected item in the object to be selected
    if the object supports multiple selections. This method
    makes no sense in a menu bar, and so does nothing.

    Specified by:
    :   `selectAllAccessibleSelection` in interface `AccessibleSelection`