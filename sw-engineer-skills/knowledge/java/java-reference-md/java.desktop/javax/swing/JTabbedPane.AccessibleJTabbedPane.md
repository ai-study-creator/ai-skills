Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JTabbedPane.AccessibleJTabbedPane

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

[java.awt.Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

[java.awt.Container.AccessibleAWTContainer](../../java/awt/Container.AccessibleAWTContainer.md "class in java.awt")

[javax.swing.JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")

javax.swing.JTabbedPane.AccessibleJTabbedPane

All Implemented Interfaces:
:   `Serializable`, `EventListener`, `AccessibleComponent`, `AccessibleExtendedComponent`, `AccessibleSelection`, `ChangeListener`

Enclosing class:
:   `JTabbedPane`

---

protected class JTabbedPane.AccessibleJTabbedPane
extends [JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")
implements [AccessibleSelection](../accessibility/AccessibleSelection.md "interface in javax.accessibility"), [ChangeListener](event/ChangeListener.md "interface in javax.swing.event")

This class implements accessibility support for the
`JTabbedPane` class. It provides an implementation of the
Java Accessibility API appropriate to tabbed pane user-interface
elements.

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
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AccessibleJTabbedPane()`

  Constructs an AccessibleJTabbedPane
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addAccessibleSelection(int i)`

  Adds the specified `Accessible` child of the object to the object's
  selection.

  `void`

  `clearAccessibleSelection()`

  Clears the selection in the object, so that no children in the object are
  selected.

  `Accessible`

  `getAccessibleAt(Point p)`

  Returns the `Accessible` child contained at
  the local coordinate `Point`, if one exists.

  `Accessible`

  `getAccessibleChild(int i)`

  Return the specified Accessible child of the object.

  `int`

  `getAccessibleChildrenCount()`

  Returns the number of accessible children in the object.

  `String`

  `getAccessibleName()`

  Returns the accessible name of this object, or `null` if
  there is no accessible name.

  `AccessibleRole`

  `getAccessibleRole()`

  Get the role of this object.

  `AccessibleSelection`

  `getAccessibleSelection()`

  Gets the `AccessibleSelection` associated with
  this object.

  `Accessible`

  `getAccessibleSelection(int i)`

  Returns an `Accessible` representing the specified selected child
  of the object.

  `int`

  `getAccessibleSelectionCount()`

  Returns the number of `Accessible` children currently selected.

  `boolean`

  `isAccessibleChildSelected(int i)`

  Determines if the current child of this object is selected.

  `void`

  `removeAccessibleSelection(int i)`

  Removes the specified child of the object from the object's selection.

  `void`

  `selectAllAccessibleSelection()`

  Causes every child of the object to be selected if the object supports
  multiple selections.

  `void`

  `stateChanged(ChangeEvent e)`

  Invoked when the target of the listener has changed its state.

  ### Methods inherited from class javax.swing.[JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")

  `addPropertyChangeListener, getAccessibleDescription, getAccessibleKeyBinding, getAccessibleStateSet, getBorderTitle, getTitledBorderText, getToolTipText, removePropertyChangeListener`

  ### Methods inherited from class java.awt.[Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

  `addFocusListener, contains, getAccessibleComponent, getAccessibleIndexInParent, getAccessibleParent, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocale, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

  ### Methods inherited from class javax.accessibility.[AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

  `firePropertyChange, getAccessibleAction, getAccessibleEditableText, getAccessibleIcon, getAccessibleRelationSet, getAccessibleTable, getAccessibleText, getAccessibleValue, setAccessibleDescription, setAccessibleName, setAccessibleParent`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.accessibility.[AccessibleComponent](../accessibility/AccessibleComponent.md "interface in javax.accessibility")

  `addFocusListener, contains, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

* ## Constructor Details

  + ### AccessibleJTabbedPane

    public AccessibleJTabbedPane()

    Constructs an AccessibleJTabbedPane
* ## Method Details

  + ### getAccessibleName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getAccessibleName()

    Returns the accessible name of this object, or `null` if
    there is no accessible name.

    Overrides:
    :   `getAccessibleName` in class `JComponent.AccessibleJComponent`

    Returns:
    :   the accessible name of this object, or `null`.

    Since:
    :   1.6

    See Also:
    :   - [`AccessibleContext.setAccessibleName(java.lang.String)`](../accessibility/AccessibleContext.md#setAccessibleName(java.lang.String))
  + ### stateChanged

    public void stateChanged([ChangeEvent](event/ChangeEvent.md "class in javax.swing.event") e)

    Description copied from interface: `ChangeListener`

    Invoked when the target of the listener has changed its state.

    Specified by:
    :   `stateChanged` in interface `ChangeListener`

    Parameters:
    :   `e` - a ChangeEvent object
  + ### getAccessibleRole

    public [AccessibleRole](../accessibility/AccessibleRole.md "class in javax.accessibility") getAccessibleRole()

    Get the role of this object.

    Overrides:
    :   `getAccessibleRole` in class `JComponent.AccessibleJComponent`

    Returns:
    :   an instance of AccessibleRole describing the role of
        the object

    See Also:
    :   - [`AccessibleRole`](../accessibility/AccessibleRole.md "class in javax.accessibility")
  + ### getAccessibleChildrenCount

    public int getAccessibleChildrenCount()

    Returns the number of accessible children in the object.

    Overrides:
    :   `getAccessibleChildrenCount` in class `JComponent.AccessibleJComponent`

    Returns:
    :   the number of accessible children in the object.
  + ### getAccessibleChild

    public [Accessible](../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleChild(int i)

    Return the specified Accessible child of the object.

    Overrides:
    :   `getAccessibleChild` in class `JComponent.AccessibleJComponent`

    Parameters:
    :   `i` - zero-based index of child

    Returns:
    :   the Accessible child of the object

    Throws:
    :   `IllegalArgumentException` - if index is out of bounds

    See Also:
    :   - [`AccessibleContext.getAccessibleChildrenCount()`](../accessibility/AccessibleContext.md#getAccessibleChildrenCount())
  + ### getAccessibleSelection

    public [AccessibleSelection](../accessibility/AccessibleSelection.md "interface in javax.accessibility") getAccessibleSelection()

    Gets the `AccessibleSelection` associated with
    this object. In the implementation of the Java
    Accessibility API for this class,
    returns this object, which is responsible for implementing the
    `AccessibleSelection` interface on behalf of itself.

    Overrides:
    :   `getAccessibleSelection` in class `AccessibleContext`

    Returns:
    :   this object

    See Also:
    :   - [`AccessibleSelection`](../accessibility/AccessibleSelection.md "interface in javax.accessibility")
  + ### getAccessibleAt

    public [Accessible](../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleAt([Point](../../java/awt/Point.md "class in java.awt") p)

    Returns the `Accessible` child contained at
    the local coordinate `Point`, if one exists.
    Otherwise returns the currently selected tab.

    Specified by:
    :   `getAccessibleAt` in interface `AccessibleComponent`

    Overrides:
    :   `getAccessibleAt` in class `Container.AccessibleAWTContainer`

    Parameters:
    :   `p` - the point defining the top-left corner of the
        `Accessible`, given in the coordinate space
        of the object's parent

    Returns:
    :   the `Accessible` at the specified
        location, if it exists
  + ### getAccessibleSelectionCount

    public int getAccessibleSelectionCount()

    Description copied from interface: `AccessibleSelection`

    Returns the number of `Accessible` children currently selected. If
    no children are selected, the return value will be 0.

    Specified by:
    :   `getAccessibleSelectionCount` in interface `AccessibleSelection`

    Returns:
    :   the number of items currently selected
  + ### getAccessibleSelection

    public [Accessible](../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleSelection(int i)

    Description copied from interface: `AccessibleSelection`

    Returns an `Accessible` representing the specified selected child
    of the object. If there isn't a selection, or there are fewer children
    selected than the integer passed in, the return value will be
    `null`.

    Note that the index represents the i-th selected child, which is
    different from the i-th child.

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

    Description copied from interface: `AccessibleSelection`

    Determines if the current child of this object is selected.

    Specified by:
    :   `isAccessibleChildSelected` in interface `AccessibleSelection`

    Parameters:
    :   `i` - the zero-based index of the child in this `Accessible`
        object

    Returns:
    :   `true` if the current child of this object is selected;
        else `false`

    See Also:
    :   - [`AccessibleContext.getAccessibleChild(int)`](../accessibility/AccessibleContext.md#getAccessibleChild(int))
  + ### addAccessibleSelection

    public void addAccessibleSelection(int i)

    Description copied from interface: `AccessibleSelection`

    Adds the specified `Accessible` child of the object to the object's
    selection. If the object supports multiple selections, the specified
    child is added to any existing selection, otherwise it replaces any
    existing selection in the object. If the specified child is already
    selected, this method has no effect.

    Specified by:
    :   `addAccessibleSelection` in interface `AccessibleSelection`

    Parameters:
    :   `i` - the zero-based index of the child

    See Also:
    :   - [`AccessibleContext.getAccessibleChild(int)`](../accessibility/AccessibleContext.md#getAccessibleChild(int))
  + ### removeAccessibleSelection

    public void removeAccessibleSelection(int i)

    Description copied from interface: `AccessibleSelection`

    Removes the specified child of the object from the object's selection. If
    the specified item isn't currently selected, this method has no effect.

    Specified by:
    :   `removeAccessibleSelection` in interface `AccessibleSelection`

    Parameters:
    :   `i` - the zero-based index of the child

    See Also:
    :   - [`AccessibleContext.getAccessibleChild(int)`](../accessibility/AccessibleContext.md#getAccessibleChild(int))
  + ### clearAccessibleSelection

    public void clearAccessibleSelection()

    Description copied from interface: `AccessibleSelection`

    Clears the selection in the object, so that no children in the object are
    selected.

    Specified by:
    :   `clearAccessibleSelection` in interface `AccessibleSelection`
  + ### selectAllAccessibleSelection

    public void selectAllAccessibleSelection()

    Description copied from interface: `AccessibleSelection`

    Causes every child of the object to be selected if the object supports
    multiple selections.

    Specified by:
    :   `selectAllAccessibleSelection` in interface `AccessibleSelection`