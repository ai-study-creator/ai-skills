Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JTree.AccessibleJTree

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

[java.awt.Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

[java.awt.Container.AccessibleAWTContainer](../../java/awt/Container.AccessibleAWTContainer.md "class in java.awt")

[javax.swing.JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")

javax.swing.JTree.AccessibleJTree

All Implemented Interfaces:
:   `Serializable`, `EventListener`, `AccessibleComponent`, `AccessibleExtendedComponent`, `AccessibleSelection`, `TreeExpansionListener`, `TreeModelListener`, `TreeSelectionListener`

Enclosing class:
:   `JTree`

---

protected class JTree.AccessibleJTree
extends [JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")
implements [AccessibleSelection](../accessibility/AccessibleSelection.md "interface in javax.accessibility"), [TreeSelectionListener](event/TreeSelectionListener.md "interface in javax.swing.event"), [TreeModelListener](event/TreeModelListener.md "interface in javax.swing.event"), [TreeExpansionListener](event/TreeExpansionListener.md "interface in javax.swing.event")

This class implements accessibility support for the
`JTree` class. It provides an implementation of the
Java Accessibility API appropriate to tree user-interface elements.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../java/beans/XMLEncoder.md "class in java.beans").

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `JTree.AccessibleJTree.AccessibleJTreeNode`

  This class implements accessibility support for the
  `JTree` child.

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

  `AccessibleJTree()`

  Constructs `AccessibleJTree`
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addAccessibleSelection(int i)`

  Adds the specified selected item in the object to the object's
  selection.

  `void`

  `clearAccessibleSelection()`

  Clears the selection in the object, so that nothing in the
  object is selected.

  `void`

  `fireVisibleDataPropertyChange()`

  Fire a visible data property change notification.

  `Accessible`

  `getAccessibleAt(Point p)`

  Returns the `Accessible` child, if one exists,
  contained at the local coordinate `Point`.

  `Accessible`

  `getAccessibleChild(int i)`

  Return the nth Accessible child of the object.

  `int`

  `getAccessibleChildrenCount()`

  Returns the number of top-level children nodes of this
  JTree.

  `int`

  `getAccessibleIndexInParent()`

  Get the index of this object in its accessible parent.

  `AccessibleRole`

  `getAccessibleRole()`

  Get the role of this object.

  `AccessibleSelection`

  `getAccessibleSelection()`

  Get the AccessibleSelection associated with this object.

  `Accessible`

  `getAccessibleSelection(int i)`

  Returns an Accessible representing the specified selected item
  in the object.

  `int`

  `getAccessibleSelectionCount()`

  Returns the number of items currently selected.

  `boolean`

  `isAccessibleChildSelected(int i)`

  Returns true if the current child of this object is selected.

  `void`

  `removeAccessibleSelection(int i)`

  Removes the specified selected item in the object from the object's
  selection.

  `void`

  `selectAllAccessibleSelection()`

  Causes every selected item in the object to be selected
  if the object supports multiple selections.

  `void`

  `treeCollapsed(TreeExpansionEvent e)`

  Tree Collapsed notification.

  `void`

  `treeExpanded(TreeExpansionEvent e)`

  Tree Model Expansion notification.

  `void`

  `treeNodesChanged(TreeModelEvent e)`

  Tree Model Node change notification.

  `void`

  `treeNodesInserted(TreeModelEvent e)`

  Tree Model Node change notification.

  `void`

  `treeNodesRemoved(TreeModelEvent e)`

  Tree Model Node change notification.

  `void`

  `treeStructureChanged(TreeModelEvent e)`

  Tree Model structure change change notification.

  `void`

  `valueChanged(TreeSelectionEvent e)`

  Tree Selection Listener value change method.

  ### Methods inherited from class javax.swing.[JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")

  `addPropertyChangeListener, getAccessibleDescription, getAccessibleKeyBinding, getAccessibleName, getAccessibleStateSet, getBorderTitle, getTitledBorderText, getToolTipText, removePropertyChangeListener`

  ### Methods inherited from class java.awt.[Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

  `addFocusListener, contains, getAccessibleComponent, getAccessibleParent, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocale, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

  ### Methods inherited from class javax.accessibility.[AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

  `firePropertyChange, getAccessibleAction, getAccessibleEditableText, getAccessibleIcon, getAccessibleRelationSet, getAccessibleTable, getAccessibleText, getAccessibleValue, setAccessibleDescription, setAccessibleName, setAccessibleParent`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.accessibility.[AccessibleComponent](../accessibility/AccessibleComponent.md "interface in javax.accessibility")

  `addFocusListener, contains, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

* ## Constructor Details

  + ### AccessibleJTree

    public AccessibleJTree()

    Constructs `AccessibleJTree`
* ## Method Details

  + ### valueChanged

    public void valueChanged([TreeSelectionEvent](event/TreeSelectionEvent.md "class in javax.swing.event") e)

    Tree Selection Listener value change method. Used to fire the
    property change

    Specified by:
    :   `valueChanged` in interface `TreeSelectionListener`

    Parameters:
    :   `e` - ListSelectionEvent
  + ### fireVisibleDataPropertyChange

    public void fireVisibleDataPropertyChange()

    Fire a visible data property change notification.
    A 'visible' data property is one that represents
    something about the way the component appears on the
    display, where that appearance isn't bound to any other
    property. It notifies screen readers that the visual
    appearance of the component has changed, so they can
    notify the user.
  + ### treeNodesChanged

    public void treeNodesChanged([TreeModelEvent](event/TreeModelEvent.md "class in javax.swing.event") e)

    Tree Model Node change notification.

    Specified by:
    :   `treeNodesChanged` in interface `TreeModelListener`

    Parameters:
    :   `e` - a Tree Model event
  + ### treeNodesInserted

    public void treeNodesInserted([TreeModelEvent](event/TreeModelEvent.md "class in javax.swing.event") e)

    Tree Model Node change notification.

    Specified by:
    :   `treeNodesInserted` in interface `TreeModelListener`

    Parameters:
    :   `e` - a Tree node insertion event
  + ### treeNodesRemoved

    public void treeNodesRemoved([TreeModelEvent](event/TreeModelEvent.md "class in javax.swing.event") e)

    Tree Model Node change notification.

    Specified by:
    :   `treeNodesRemoved` in interface `TreeModelListener`

    Parameters:
    :   `e` - a Tree node(s) removal event
  + ### treeStructureChanged

    public void treeStructureChanged([TreeModelEvent](event/TreeModelEvent.md "class in javax.swing.event") e)

    Tree Model structure change change notification.

    Specified by:
    :   `treeStructureChanged` in interface `TreeModelListener`

    Parameters:
    :   `e` - a Tree Model event
  + ### treeCollapsed

    public void treeCollapsed([TreeExpansionEvent](event/TreeExpansionEvent.md "class in javax.swing.event") e)

    Tree Collapsed notification.

    Specified by:
    :   `treeCollapsed` in interface `TreeExpansionListener`

    Parameters:
    :   `e` - a TreeExpansionEvent
  + ### treeExpanded

    public void treeExpanded([TreeExpansionEvent](event/TreeExpansionEvent.md "class in javax.swing.event") e)

    Tree Model Expansion notification.

    Specified by:
    :   `treeExpanded` in interface `TreeExpansionListener`

    Parameters:
    :   `e` - a Tree node insertion event
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
  + ### getAccessibleAt

    public [Accessible](../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleAt([Point](../../java/awt/Point.md "class in java.awt") p)

    Returns the `Accessible` child, if one exists,
    contained at the local coordinate `Point`.
    Otherwise returns `null`.

    Specified by:
    :   `getAccessibleAt` in interface `AccessibleComponent`

    Overrides:
    :   `getAccessibleAt` in class `Container.AccessibleAWTContainer`

    Parameters:
    :   `p` - point in local coordinates of this `Accessible`

    Returns:
    :   the `Accessible`, if it exists,
        at the specified location; else `null`
  + ### getAccessibleChildrenCount

    public int getAccessibleChildrenCount()

    Returns the number of top-level children nodes of this
    JTree. Each of these nodes may in turn have children nodes.

    Overrides:
    :   `getAccessibleChildrenCount` in class `JComponent.AccessibleJComponent`

    Returns:
    :   the number of accessible children nodes in the tree.
  + ### getAccessibleChild

    public [Accessible](../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleChild(int i)

    Return the nth Accessible child of the object.

    Overrides:
    :   `getAccessibleChild` in class `JComponent.AccessibleJComponent`

    Parameters:
    :   `i` - zero-based index of child

    Returns:
    :   the nth Accessible child of the object

    See Also:
    :   - [`AccessibleContext.getAccessibleChildrenCount()`](../accessibility/AccessibleContext.md#getAccessibleChildrenCount())
  + ### getAccessibleIndexInParent

    public int getAccessibleIndexInParent()

    Get the index of this object in its accessible parent.

    Overrides:
    :   `getAccessibleIndexInParent` in class `Component.AccessibleAWTComponent`

    Returns:
    :   the index of this object in its parent. Since a JTree
        top-level object does not have an accessible parent.

    See Also:
    :   - [`Component.AccessibleAWTComponent.getAccessibleParent()`](../../java/awt/Component.AccessibleAWTComponent.md#getAccessibleParent())
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

    Returns the number of items currently selected.
    If no items are selected, the return value will be 0.

    Specified by:
    :   `getAccessibleSelectionCount` in interface `AccessibleSelection`

    Returns:
    :   the number of items currently selected.
  + ### getAccessibleSelection

    public [Accessible](../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleSelection(int i)

    Returns an Accessible representing the specified selected item
    in the object. If there isn't a selection, or there are
    fewer items selected than the integer passed in, the return
    value will be null.

    Specified by:
    :   `getAccessibleSelection` in interface `AccessibleSelection`

    Parameters:
    :   `i` - the zero-based index of selected items

    Returns:
    :   an Accessible containing the selected item

    See Also:
    :   - [`AccessibleSelection.getAccessibleSelectionCount()`](../accessibility/AccessibleSelection.md#getAccessibleSelectionCount())
  + ### isAccessibleChildSelected

    public boolean isAccessibleChildSelected(int i)

    Returns true if the current child of this object is selected.

    Specified by:
    :   `isAccessibleChildSelected` in interface `AccessibleSelection`

    Parameters:
    :   `i` - the zero-based index of the child in this Accessible object.

    Returns:
    :   `true` if the current child of this object is selected;
        else `false`

    See Also:
    :   - [`AccessibleContext.getAccessibleChild(int)`](../accessibility/AccessibleContext.md#getAccessibleChild(int))
  + ### addAccessibleSelection

    public void addAccessibleSelection(int i)

    Adds the specified selected item in the object to the object's
    selection. If the object supports multiple selections,
    the specified item is added to any existing selection, otherwise
    it replaces any existing selection in the object. If the
    specified item is already selected, this method has no effect.

    Specified by:
    :   `addAccessibleSelection` in interface `AccessibleSelection`

    Parameters:
    :   `i` - the zero-based index of selectable items

    See Also:
    :   - [`AccessibleContext.getAccessibleChild(int)`](../accessibility/AccessibleContext.md#getAccessibleChild(int))
  + ### removeAccessibleSelection

    public void removeAccessibleSelection(int i)

    Removes the specified selected item in the object from the object's
    selection. If the specified item isn't currently selected, this
    method has no effect.

    Specified by:
    :   `removeAccessibleSelection` in interface `AccessibleSelection`

    Parameters:
    :   `i` - the zero-based index of selectable items

    See Also:
    :   - [`AccessibleContext.getAccessibleChild(int)`](../accessibility/AccessibleContext.md#getAccessibleChild(int))
  + ### clearAccessibleSelection

    public void clearAccessibleSelection()

    Clears the selection in the object, so that nothing in the
    object is selected.

    Specified by:
    :   `clearAccessibleSelection` in interface `AccessibleSelection`
  + ### selectAllAccessibleSelection

    public void selectAllAccessibleSelection()

    Causes every selected item in the object to be selected
    if the object supports multiple selections.

    Specified by:
    :   `selectAllAccessibleSelection` in interface `AccessibleSelection`