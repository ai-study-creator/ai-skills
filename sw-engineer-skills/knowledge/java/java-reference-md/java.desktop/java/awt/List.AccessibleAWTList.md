Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class List.AccessibleAWTList

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility")

[java.awt.Component.AccessibleAWTComponent](Component.AccessibleAWTComponent.md "class in java.awt")

java.awt.List.AccessibleAWTList

All Implemented Interfaces:
:   `ActionListener`, `ItemListener`, `Serializable`, `EventListener`, `AccessibleComponent`, `AccessibleSelection`

Enclosing class:
:   `List`

---

protected class List.AccessibleAWTList
extends [Component.AccessibleAWTComponent](Component.AccessibleAWTComponent.md "class in java.awt")
implements [AccessibleSelection](../../javax/accessibility/AccessibleSelection.md "interface in javax.accessibility"), [ItemListener](event/ItemListener.md "interface in java.awt.event"), [ActionListener](event/ActionListener.md "interface in java.awt.event")

This class implements accessibility support for the
`List` class. It provides an implementation of the
Java Accessibility API appropriate to list user-interface elements.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.awt.List.AccessibleAWTList)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `List.AccessibleAWTList.AccessibleAWTListChild`

  This class implements accessibility support for
  List children.

  ## Nested classes/interfaces inherited from class java.awt.[Component.AccessibleAWTComponent](Component.AccessibleAWTComponent.md "class in java.awt")

  `Component.AccessibleAWTComponent.AccessibleAWTComponentHandler, Component.AccessibleAWTComponent.AccessibleAWTFocusHandler`
* ## Field Summary

  ### Fields inherited from class java.awt.[Component.AccessibleAWTComponent](Component.AccessibleAWTComponent.md "class in java.awt")

  `accessibleAWTComponentHandler, accessibleAWTFocusHandler`

  ### Fields inherited from class javax.accessibility.[AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility")

  `ACCESSIBLE_ACTION_PROPERTY, ACCESSIBLE_ACTIVE_DESCENDANT_PROPERTY, ACCESSIBLE_CARET_PROPERTY, ACCESSIBLE_CHILD_PROPERTY, ACCESSIBLE_COMPONENT_BOUNDS_CHANGED, ACCESSIBLE_DESCRIPTION_PROPERTY, ACCESSIBLE_HYPERTEXT_OFFSET, ACCESSIBLE_INVALIDATE_CHILDREN, ACCESSIBLE_NAME_PROPERTY, ACCESSIBLE_SELECTION_PROPERTY, ACCESSIBLE_STATE_PROPERTY, ACCESSIBLE_TABLE_CAPTION_CHANGED, ACCESSIBLE_TABLE_COLUMN_DESCRIPTION_CHANGED, ACCESSIBLE_TABLE_COLUMN_HEADER_CHANGED, ACCESSIBLE_TABLE_MODEL_CHANGED, ACCESSIBLE_TABLE_ROW_DESCRIPTION_CHANGED, ACCESSIBLE_TABLE_ROW_HEADER_CHANGED, ACCESSIBLE_TABLE_SUMMARY_CHANGED, ACCESSIBLE_TEXT_ATTRIBUTES_CHANGED, ACCESSIBLE_TEXT_PROPERTY, ACCESSIBLE_VALUE_PROPERTY, ACCESSIBLE_VISIBLE_DATA_PROPERTY, accessibleDescription, accessibleName, accessibleParent`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AccessibleAWTList()`

  Constructs new `AccessibleAWTList`
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `actionPerformed(ActionEvent event)`

  Invoked when an action occurs.

  `void`

  `addAccessibleSelection(int i)`

  Adds the specified selected item in the object to the object's
  selection.

  `void`

  `clearAccessibleSelection()`

  Clears the selection in the object, so that nothing in the
  object is selected.

  `Accessible`

  `getAccessibleAt(Point p)`

  Returns the Accessible child contained at the local coordinate
  Point, if one exists.

  `Accessible`

  `getAccessibleChild(int i)`

  Return the nth Accessible child of the object.

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

  Returns an Accessible representing the specified selected item
  in the object.

  `int`

  `getAccessibleSelectionCount()`

  Returns the number of items currently selected.

  `AccessibleStateSet`

  `getAccessibleStateSet()`

  Get the state set of this object.

  `boolean`

  `isAccessibleChildSelected(int i)`

  Returns true if the current child of this object is selected.

  `void`

  `itemStateChanged(ItemEvent event)`

  Invoked when an item has been selected or deselected by the user.

  `void`

  `removeAccessibleSelection(int i)`

  Removes the specified selected item in the object from the object's
  selection.

  `void`

  `selectAllAccessibleSelection()`

  Causes every selected item in the object to be selected
  if the object supports multiple selections.

  ### Methods inherited from class java.awt.[Component.AccessibleAWTComponent](Component.AccessibleAWTComponent.md "class in java.awt")

  `addFocusListener, addPropertyChangeListener, contains, getAccessibleComponent, getAccessibleDescription, getAccessibleIndexInParent, getAccessibleName, getAccessibleParent, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocale, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, removePropertyChangeListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

  ### Methods inherited from class javax.accessibility.[AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility")

  `firePropertyChange, getAccessibleAction, getAccessibleEditableText, getAccessibleIcon, getAccessibleRelationSet, getAccessibleTable, getAccessibleText, getAccessibleValue, setAccessibleDescription, setAccessibleName, setAccessibleParent`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AccessibleAWTList

    public AccessibleAWTList()

    Constructs new `AccessibleAWTList`
* ## Method Details

  + ### actionPerformed

    public void actionPerformed([ActionEvent](event/ActionEvent.md "class in java.awt.event") event)

    Description copied from interface: `ActionListener`

    Invoked when an action occurs.

    Specified by:
    :   `actionPerformed` in interface `ActionListener`

    Parameters:
    :   `event` - the event to be processed
  + ### itemStateChanged

    public void itemStateChanged([ItemEvent](event/ItemEvent.md "class in java.awt.event") event)

    Description copied from interface: `ItemListener`

    Invoked when an item has been selected or deselected by the user.
    The code written for this method performs the operations
    that need to occur when an item is selected (or deselected).

    Specified by:
    :   `itemStateChanged` in interface `ItemListener`

    Parameters:
    :   `event` - the event to be processed
  + ### getAccessibleStateSet

    public [AccessibleStateSet](../../javax/accessibility/AccessibleStateSet.md "class in javax.accessibility") getAccessibleStateSet()

    Get the state set of this object.

    Overrides:
    :   `getAccessibleStateSet` in class `Component.AccessibleAWTComponent`

    Returns:
    :   an instance of AccessibleState containing the current state
        of the object

    See Also:
    :   - [`AccessibleState`](../../javax/accessibility/AccessibleState.md "class in javax.accessibility")
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
  + ### getAccessibleAt

    public [Accessible](../../javax/accessibility/Accessible.md "interface in javax.accessibility") getAccessibleAt([Point](Point.md "class in java.awt") p)

    Returns the Accessible child contained at the local coordinate
    Point, if one exists.

    Specified by:
    :   `getAccessibleAt` in interface `AccessibleComponent`

    Overrides:
    :   `getAccessibleAt` in class `Component.AccessibleAWTComponent`

    Parameters:
    :   `p` - the point defining the top-left corner of
        the `Accessible`, given in the
        coordinate space of the object's parent

    Returns:
    :   the Accessible at the specified location, if it exists
  + ### getAccessibleChildrenCount

    public int getAccessibleChildrenCount()

    Returns the number of accessible children in the object. If all
    of the children of this object implement Accessible, than this
    method should return the number of children of this object.

    Overrides:
    :   `getAccessibleChildrenCount` in class `Component.AccessibleAWTComponent`

    Returns:
    :   the number of accessible children in the object.
  + ### getAccessibleChild

    public [Accessible](../../javax/accessibility/Accessible.md "interface in javax.accessibility") getAccessibleChild(int i)

    Return the nth Accessible child of the object.

    Overrides:
    :   `getAccessibleChild` in class `Component.AccessibleAWTComponent`

    Parameters:
    :   `i` - zero-based index of child

    Returns:
    :   the nth Accessible child of the object

    See Also:
    :   - [`AccessibleContext.getAccessibleChildrenCount()`](../../javax/accessibility/AccessibleContext.md#getAccessibleChildrenCount())
  + ### getAccessibleSelection

    public [AccessibleSelection](../../javax/accessibility/AccessibleSelection.md "interface in javax.accessibility") getAccessibleSelection()

    Get the AccessibleSelection associated with this object. In the
    implementation of the Java Accessibility API for this class,
    return this object, which is responsible for implementing the
    AccessibleSelection interface on behalf of itself.

    Overrides:
    :   `getAccessibleSelection` in class `AccessibleContext`

    Returns:
    :   this object

    See Also:
    :   - [`AccessibleSelection`](../../javax/accessibility/AccessibleSelection.md "interface in javax.accessibility")
  + ### getAccessibleSelectionCount

    public int getAccessibleSelectionCount()

    Returns the number of items currently selected.
    If no items are selected, the return value will be 0.

    Specified by:
    :   `getAccessibleSelectionCount` in interface `AccessibleSelection`

    Returns:
    :   the number of items currently selected.
  + ### getAccessibleSelection

    public [Accessible](../../javax/accessibility/Accessible.md "interface in javax.accessibility") getAccessibleSelection(int i)

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
    :   - [`AccessibleSelection.getAccessibleSelectionCount()`](../../javax/accessibility/AccessibleSelection.md#getAccessibleSelectionCount())
  + ### isAccessibleChildSelected

    public boolean isAccessibleChildSelected(int i)

    Returns true if the current child of this object is selected.

    Specified by:
    :   `isAccessibleChildSelected` in interface `AccessibleSelection`

    Parameters:
    :   `i` - the zero-based index of the child in this Accessible
        object.

    Returns:
    :   `true` if the current child of this object is selected;
        else `false`

    See Also:
    :   - [`AccessibleContext.getAccessibleChild(int)`](../../javax/accessibility/AccessibleContext.md#getAccessibleChild(int))
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
    :   - [`AccessibleContext.getAccessibleChild(int)`](../../javax/accessibility/AccessibleContext.md#getAccessibleChild(int))
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
    :   - [`AccessibleContext.getAccessibleChild(int)`](../../javax/accessibility/AccessibleContext.md#getAccessibleChild(int))
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