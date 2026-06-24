Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JTree.AccessibleJTree.AccessibleJTreeNode

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

javax.swing.JTree.AccessibleJTree.AccessibleJTreeNode

All Implemented Interfaces:
:   `Accessible`, `AccessibleAction`, `AccessibleComponent`, `AccessibleSelection`

Enclosing class:
:   `JTree.AccessibleJTree`

---

protected class JTree.AccessibleJTree.AccessibleJTreeNode
extends [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")
implements [Accessible](../accessibility/Accessible.md "interface in javax.accessibility"), [AccessibleComponent](../accessibility/AccessibleComponent.md "interface in javax.accessibility"), [AccessibleSelection](../accessibility/AccessibleSelection.md "interface in javax.accessibility"), [AccessibleAction](../accessibility/AccessibleAction.md "interface in javax.accessibility")

This class implements accessibility support for the
`JTree` child. It provides an implementation of the
Java Accessibility API appropriate to tree nodes.

* ## Field Summary

  ### Fields inherited from class javax.accessibility.[AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

  `ACCESSIBLE_ACTION_PROPERTY, ACCESSIBLE_ACTIVE_DESCENDANT_PROPERTY, ACCESSIBLE_CARET_PROPERTY, ACCESSIBLE_CHILD_PROPERTY, ACCESSIBLE_COMPONENT_BOUNDS_CHANGED, ACCESSIBLE_DESCRIPTION_PROPERTY, ACCESSIBLE_HYPERTEXT_OFFSET, ACCESSIBLE_INVALIDATE_CHILDREN, ACCESSIBLE_NAME_PROPERTY, ACCESSIBLE_SELECTION_PROPERTY, ACCESSIBLE_STATE_PROPERTY, ACCESSIBLE_TABLE_CAPTION_CHANGED, ACCESSIBLE_TABLE_COLUMN_DESCRIPTION_CHANGED, ACCESSIBLE_TABLE_COLUMN_HEADER_CHANGED, ACCESSIBLE_TABLE_MODEL_CHANGED, ACCESSIBLE_TABLE_ROW_DESCRIPTION_CHANGED, ACCESSIBLE_TABLE_ROW_HEADER_CHANGED, ACCESSIBLE_TABLE_SUMMARY_CHANGED, ACCESSIBLE_TEXT_ATTRIBUTES_CHANGED, ACCESSIBLE_TEXT_PROPERTY, ACCESSIBLE_VALUE_PROPERTY, ACCESSIBLE_VISIBLE_DATA_PROPERTY, accessibleDescription, accessibleName`

  ### Fields inherited from interface javax.accessibility.[AccessibleAction](../accessibility/AccessibleAction.md "interface in javax.accessibility")

  `CLICK, DECREMENT, INCREMENT, TOGGLE_EXPAND, TOGGLE_POPUP`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AccessibleJTreeNode(JTree t,
  TreePath p,
  Accessible ap)`

  Constructs an AccessibleJTreeNode
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

  `addFocusListener(FocusListener l)`

  Adds the specified focus listener to receive focus events from this
  component.

  `void`

  `addPropertyChangeListener(PropertyChangeListener l)`

  Add a PropertyChangeListener to the listener list.

  `void`

  `clearAccessibleSelection()`

  Clears the selection in the object, so that nothing in the
  object is selected.

  `boolean`

  `contains(Point p)`

  Checks whether the specified point is within this object's bounds, where
  the point's x and y coordinates are defined to be relative to the
  coordinate system of the object.

  `boolean`

  `doAccessibleAction(int i)`

  Perform the specified Action on the tree node.

  `AccessibleAction`

  `getAccessibleAction()`

  Get the AccessibleAction associated with this object.

  `int`

  `getAccessibleActionCount()`

  Returns the number of accessible actions available in this
  tree node.

  `String`

  `getAccessibleActionDescription(int i)`

  Return a description of the specified action of the tree node.

  `Accessible`

  `getAccessibleAt(Point p)`

  Returns the `Accessible` child, if one exists,
  contained at the local coordinate `Point`.

  `Accessible`

  `getAccessibleChild(int i)`

  Return the specified Accessible child of the object.

  `int`

  `getAccessibleChildrenCount()`

  Returns the number of accessible children in the object.

  `AccessibleComponent`

  `getAccessibleComponent()`

  Get the AccessibleComponent associated with this object.

  `AccessibleContext`

  `getAccessibleContext()`

  Get the AccessibleContext associated with this tree node.

  `String`

  `getAccessibleDescription()`

  Get the accessible description of this object.

  `int`

  `getAccessibleIndexInParent()`

  Get the index of this object in its accessible parent.

  `String`

  `getAccessibleName()`

  Get the accessible name of this object.

  `Accessible`

  `getAccessibleParent()`

  Get the Accessible parent of this object.

  `AccessibleRole`

  `getAccessibleRole()`

  Get the role of this object.

  `AccessibleSelection`

  `getAccessibleSelection()`

  Get the AccessibleSelection associated with this object if one
  exists.

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

  `AccessibleText`

  `getAccessibleText()`

  Get the AccessibleText associated with this object if one
  exists.

  `AccessibleValue`

  `getAccessibleValue()`

  Get the AccessibleValue associated with this object if one
  exists.

  `Color`

  `getBackground()`

  Get the background color of this object.

  `Rectangle`

  `getBounds()`

  Gets the bounds of this object in the form of a `Rectangle` object.

  `Cursor`

  `getCursor()`

  Gets the cursor of this object.

  `Font`

  `getFont()`

  Gets the font of this object.

  `FontMetrics`

  `getFontMetrics(Font f)`

  Gets the `FontMetrics` of this object.

  `Color`

  `getForeground()`

  Get the foreground color of this object.

  `Locale`

  `getLocale()`

  Gets the locale of the component.

  `Point`

  `getLocation()`

  Gets the location of the object relative to the parent in the form of a
  point specifying the object's top-left corner in the screen's coordinate
  space.

  `protected Point`

  `getLocationInJTree()`

  Returns the relative location of the node

  `Point`

  `getLocationOnScreen()`

  Returns the location of the object on the screen.

  `Dimension`

  `getSize()`

  Returns the size of this object in the form of a `Dimension`
  object.

  `boolean`

  `isAccessibleChildSelected(int i)`

  Returns true if the current child of this object is selected.

  `boolean`

  `isEnabled()`

  Determines if the object is enabled.

  `boolean`

  `isFocusTraversable()`

  Returns whether this object can accept focus or not.

  `boolean`

  `isShowing()`

  Determines if the object is showing.

  `boolean`

  `isVisible()`

  Determines if the object is visible.

  `void`

  `removeAccessibleSelection(int i)`

  Removes the specified selected item in the object from the
  object's
  selection.

  `void`

  `removeFocusListener(FocusListener l)`

  Removes the specified focus listener so it no longer receives focus
  events from this component.

  `void`

  `removePropertyChangeListener(PropertyChangeListener l)`

  Remove a PropertyChangeListener from the listener list.

  `void`

  `requestFocus()`

  Requests focus for this object.

  `void`

  `selectAllAccessibleSelection()`

  Causes every selected item in the object to be selected
  if the object supports multiple selections.

  `void`

  `setAccessibleDescription(String s)`

  Set the accessible description of this object.

  `void`

  `setAccessibleName(String s)`

  Set the localized accessible name of this object.

  `void`

  `setBackground(Color c)`

  Set the background color of this object.

  `void`

  `setBounds(Rectangle r)`

  Sets the bounds of this object in the form of a `Rectangle` object.

  `void`

  `setCursor(Cursor c)`

  Sets the cursor of this object.

  `void`

  `setEnabled(boolean b)`

  Sets the enabled state of the object.

  `void`

  `setFont(Font f)`

  Sets the font of this object.

  `void`

  `setForeground(Color c)`

  Sets the foreground color of this object.

  `void`

  `setLocation(Point p)`

  Sets the location of the object relative to the parent.

  `void`

  `setSize(Dimension d)`

  Resizes this object so that it has width and height.

  `void`

  `setVisible(boolean b)`

  Sets the visible state of the object.

  ### Methods inherited from class javax.accessibility.[AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

  `firePropertyChange, getAccessibleEditableText, getAccessibleIcon, getAccessibleRelationSet, getAccessibleTable, setAccessibleParent`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AccessibleJTreeNode

    public AccessibleJTreeNode([JTree](JTree.md "class in javax.swing") t,
    [TreePath](tree/TreePath.md "class in javax.swing.tree") p,
    [Accessible](../accessibility/Accessible.md "interface in javax.accessibility") ap)

    Constructs an AccessibleJTreeNode

    Parameters:
    :   `t` - an instance of `JTree`
    :   `p` - an instance of `TreePath`
    :   `ap` - an instance of `Accessible`

    Since:
    :   1.4
* ## Method Details

  + ### getAccessibleContext

    public [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Get the AccessibleContext associated with this tree node.
    In the implementation of the Java Accessibility API for
    this class, return this object, which is its own
    AccessibleContext.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Returns:
    :   this object
  + ### getAccessibleName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getAccessibleName()

    Get the accessible name of this object.

    Overrides:
    :   `getAccessibleName` in class `AccessibleContext`

    Returns:
    :   the localized name of the object; null if this
        object does not have a name

    See Also:
    :   - [`AccessibleContext.setAccessibleName(java.lang.String)`](../accessibility/AccessibleContext.md#setAccessibleName(java.lang.String))
  + ### setAccessibleName

    public void setAccessibleName([String](../../../java.base/java/lang/String.md "class in java.lang") s)

    Set the localized accessible name of this object.

    Overrides:
    :   `setAccessibleName` in class `AccessibleContext`

    Parameters:
    :   `s` - the new localized name of the object.

    See Also:
    :   - [`AccessibleContext.getAccessibleName()`](../accessibility/AccessibleContext.md#getAccessibleName())
        - [`AccessibleContext.addPropertyChangeListener(java.beans.PropertyChangeListener)`](../accessibility/AccessibleContext.md#addPropertyChangeListener(java.beans.PropertyChangeListener))
  + ### getAccessibleDescription

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getAccessibleDescription()

    Get the accessible description of this object.

    Overrides:
    :   `getAccessibleDescription` in class `AccessibleContext`

    Returns:
    :   the localized description of the object; null if
        this object does not have a description

    See Also:
    :   - [`AccessibleContext.setAccessibleDescription(java.lang.String)`](../accessibility/AccessibleContext.md#setAccessibleDescription(java.lang.String))
  + ### setAccessibleDescription

    public void setAccessibleDescription([String](../../../java.base/java/lang/String.md "class in java.lang") s)

    Set the accessible description of this object.

    Overrides:
    :   `setAccessibleDescription` in class `AccessibleContext`

    Parameters:
    :   `s` - the new localized description of the object

    See Also:
    :   - [`AccessibleContext.setAccessibleName(java.lang.String)`](../accessibility/AccessibleContext.md#setAccessibleName(java.lang.String))
        - [`AccessibleContext.addPropertyChangeListener(java.beans.PropertyChangeListener)`](../accessibility/AccessibleContext.md#addPropertyChangeListener(java.beans.PropertyChangeListener))
  + ### getAccessibleRole

    public [AccessibleRole](../accessibility/AccessibleRole.md "class in javax.accessibility") getAccessibleRole()

    Get the role of this object.

    Specified by:
    :   `getAccessibleRole` in class `AccessibleContext`

    Returns:
    :   an instance of AccessibleRole describing the role of the object

    See Also:
    :   - [`AccessibleRole`](../accessibility/AccessibleRole.md "class in javax.accessibility")
  + ### getAccessibleStateSet

    public [AccessibleStateSet](../accessibility/AccessibleStateSet.md "class in javax.accessibility") getAccessibleStateSet()

    Get the state set of this object.

    Specified by:
    :   `getAccessibleStateSet` in class `AccessibleContext`

    Returns:
    :   an instance of AccessibleStateSet containing the
        current state set of the object

    See Also:
    :   - [`AccessibleState`](../accessibility/AccessibleState.md "class in javax.accessibility")
  + ### getAccessibleParent

    public [Accessible](../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleParent()

    Get the Accessible parent of this object.

    Overrides:
    :   `getAccessibleParent` in class `AccessibleContext`

    Returns:
    :   the Accessible parent of this object; null if this
        object does not have an Accessible parent
  + ### getAccessibleIndexInParent

    public int getAccessibleIndexInParent()

    Get the index of this object in its accessible parent.

    Specified by:
    :   `getAccessibleIndexInParent` in class `AccessibleContext`

    Returns:
    :   the index of this object in its parent; -1 if this
        object does not have an accessible parent.

    See Also:
    :   - [`getAccessibleParent()`](#getAccessibleParent())
  + ### getAccessibleChildrenCount

    public int getAccessibleChildrenCount()

    Returns the number of accessible children in the object.

    Specified by:
    :   `getAccessibleChildrenCount` in class `AccessibleContext`

    Returns:
    :   the number of accessible children in the object.
  + ### getAccessibleChild

    public [Accessible](../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleChild(int i)

    Return the specified Accessible child of the object.

    Specified by:
    :   `getAccessibleChild` in class `AccessibleContext`

    Parameters:
    :   `i` - zero-based index of child

    Returns:
    :   the Accessible child of the object

    See Also:
    :   - [`AccessibleContext.getAccessibleChildrenCount()`](../accessibility/AccessibleContext.md#getAccessibleChildrenCount())
  + ### getLocale

    public [Locale](../../../java.base/java/util/Locale.md "class in java.util") getLocale()

    Gets the locale of the component. If the component does not have
    a locale, then the locale of its parent is returned.

    Specified by:
    :   `getLocale` in class `AccessibleContext`

    Returns:
    :   This component's locale. If this component does not have
        a locale, the locale of its parent is returned.

    Throws:
    :   `IllegalComponentStateException` - If the Component does not have its own locale and has not yet
        been added to a containment hierarchy such that the locale can be
        determined from the containing parent.

    See Also:
    :   - [`Component.setLocale(java.util.Locale)`](../../java/awt/Component.md#setLocale(java.util.Locale))
  + ### addPropertyChangeListener

    public void addPropertyChangeListener([PropertyChangeListener](../../java/beans/PropertyChangeListener.md "interface in java.beans") l)

    Add a PropertyChangeListener to the listener list.
    The listener is registered for all properties.

    Overrides:
    :   `addPropertyChangeListener` in class `AccessibleContext`

    Parameters:
    :   `l` - The PropertyChangeListener to be added

    See Also:
    :   - [`AccessibleContext.ACCESSIBLE_NAME_PROPERTY`](../accessibility/AccessibleContext.md#ACCESSIBLE_NAME_PROPERTY)
        - [`AccessibleContext.ACCESSIBLE_DESCRIPTION_PROPERTY`](../accessibility/AccessibleContext.md#ACCESSIBLE_DESCRIPTION_PROPERTY)
        - [`AccessibleContext.ACCESSIBLE_STATE_PROPERTY`](../accessibility/AccessibleContext.md#ACCESSIBLE_STATE_PROPERTY)
        - [`AccessibleContext.ACCESSIBLE_VALUE_PROPERTY`](../accessibility/AccessibleContext.md#ACCESSIBLE_VALUE_PROPERTY)
        - [`AccessibleContext.ACCESSIBLE_SELECTION_PROPERTY`](../accessibility/AccessibleContext.md#ACCESSIBLE_SELECTION_PROPERTY)
        - [`AccessibleContext.ACCESSIBLE_TEXT_PROPERTY`](../accessibility/AccessibleContext.md#ACCESSIBLE_TEXT_PROPERTY)
        - [`AccessibleContext.ACCESSIBLE_VISIBLE_DATA_PROPERTY`](../accessibility/AccessibleContext.md#ACCESSIBLE_VISIBLE_DATA_PROPERTY)
  + ### removePropertyChangeListener

    public void removePropertyChangeListener([PropertyChangeListener](../../java/beans/PropertyChangeListener.md "interface in java.beans") l)

    Remove a PropertyChangeListener from the listener list.
    This removes a PropertyChangeListener that was registered
    for all properties.

    Overrides:
    :   `removePropertyChangeListener` in class `AccessibleContext`

    Parameters:
    :   `l` - The PropertyChangeListener to be removed
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
  + ### getAccessibleComponent

    public [AccessibleComponent](../accessibility/AccessibleComponent.md "interface in javax.accessibility") getAccessibleComponent()

    Get the AccessibleComponent associated with this object. In the
    implementation of the Java Accessibility API for this class,
    return this object, which is responsible for implementing the
    AccessibleComponent interface on behalf of itself.

    Overrides:
    :   `getAccessibleComponent` in class `AccessibleContext`

    Returns:
    :   this object

    See Also:
    :   - [`AccessibleComponent`](../accessibility/AccessibleComponent.md "interface in javax.accessibility")
  + ### getAccessibleSelection

    public [AccessibleSelection](../accessibility/AccessibleSelection.md "interface in javax.accessibility") getAccessibleSelection()

    Get the AccessibleSelection associated with this object if one
    exists. Otherwise return null.

    Overrides:
    :   `getAccessibleSelection` in class `AccessibleContext`

    Returns:
    :   the AccessibleSelection, or null

    See Also:
    :   - [`AccessibleSelection`](../accessibility/AccessibleSelection.md "interface in javax.accessibility")
  + ### getAccessibleText

    public [AccessibleText](../accessibility/AccessibleText.md "interface in javax.accessibility") getAccessibleText()

    Get the AccessibleText associated with this object if one
    exists. Otherwise return null.

    Overrides:
    :   `getAccessibleText` in class `AccessibleContext`

    Returns:
    :   the AccessibleText, or null

    See Also:
    :   - [`AccessibleText`](../accessibility/AccessibleText.md "interface in javax.accessibility")
  + ### getAccessibleValue

    public [AccessibleValue](../accessibility/AccessibleValue.md "interface in javax.accessibility") getAccessibleValue()

    Get the AccessibleValue associated with this object if one
    exists. Otherwise return null.

    Overrides:
    :   `getAccessibleValue` in class `AccessibleContext`

    Returns:
    :   the AccessibleValue, or null

    See Also:
    :   - [`AccessibleValue`](../accessibility/AccessibleValue.md "interface in javax.accessibility")
  + ### getBackground

    public [Color](../../java/awt/Color.md "class in java.awt") getBackground()

    Get the background color of this object.

    Specified by:
    :   `getBackground` in interface `AccessibleComponent`

    Returns:
    :   the background color, if supported, of the object;
        otherwise, null

    See Also:
    :   - [`AccessibleComponent.setBackground(java.awt.Color)`](../accessibility/AccessibleComponent.md#setBackground(java.awt.Color))
  + ### setBackground

    public void setBackground([Color](../../java/awt/Color.md "class in java.awt") c)

    Set the background color of this object.

    Specified by:
    :   `setBackground` in interface `AccessibleComponent`

    Parameters:
    :   `c` - the new Color for the background

    See Also:
    :   - [`AccessibleComponent.getBackground()`](../accessibility/AccessibleComponent.md#getBackground())
  + ### getForeground

    public [Color](../../java/awt/Color.md "class in java.awt") getForeground()

    Get the foreground color of this object.

    Specified by:
    :   `getForeground` in interface `AccessibleComponent`

    Returns:
    :   the foreground color, if supported, of the object;
        otherwise, null

    See Also:
    :   - [`AccessibleComponent.setForeground(java.awt.Color)`](../accessibility/AccessibleComponent.md#setForeground(java.awt.Color))
  + ### setForeground

    public void setForeground([Color](../../java/awt/Color.md "class in java.awt") c)

    Description copied from interface: `AccessibleComponent`

    Sets the foreground color of this object.

    Specified by:
    :   `setForeground` in interface `AccessibleComponent`

    Parameters:
    :   `c` - the new color for the foreground

    See Also:
    :   - [`AccessibleComponent.getForeground()`](../accessibility/AccessibleComponent.md#getForeground())
  + ### getCursor

    public [Cursor](../../java/awt/Cursor.md "class in java.awt") getCursor()

    Description copied from interface: `AccessibleComponent`

    Gets the cursor of this object.

    Specified by:
    :   `getCursor` in interface `AccessibleComponent`

    Returns:
    :   the cursor, if supported, of the object; otherwise, `null`

    See Also:
    :   - [`AccessibleComponent.setCursor(java.awt.Cursor)`](../accessibility/AccessibleComponent.md#setCursor(java.awt.Cursor))
  + ### setCursor

    public void setCursor([Cursor](../../java/awt/Cursor.md "class in java.awt") c)

    Description copied from interface: `AccessibleComponent`

    Sets the cursor of this object.

    Specified by:
    :   `setCursor` in interface `AccessibleComponent`

    Parameters:
    :   `c` - the new cursor for the object

    See Also:
    :   - [`AccessibleComponent.getCursor()`](../accessibility/AccessibleComponent.md#getCursor())
  + ### getFont

    public [Font](../../java/awt/Font.md "class in java.awt") getFont()

    Description copied from interface: `AccessibleComponent`

    Gets the font of this object.

    Specified by:
    :   `getFont` in interface `AccessibleComponent`

    Returns:
    :   the font, if supported, for the object; otherwise, `null`

    See Also:
    :   - [`AccessibleComponent.setFont(java.awt.Font)`](../accessibility/AccessibleComponent.md#setFont(java.awt.Font))
  + ### setFont

    public void setFont([Font](../../java/awt/Font.md "class in java.awt") f)

    Description copied from interface: `AccessibleComponent`

    Sets the font of this object.

    Specified by:
    :   `setFont` in interface `AccessibleComponent`

    Parameters:
    :   `f` - the new font for the object

    See Also:
    :   - [`AccessibleComponent.getFont()`](../accessibility/AccessibleComponent.md#getFont())
  + ### getFontMetrics

    public [FontMetrics](../../java/awt/FontMetrics.md "class in java.awt") getFontMetrics([Font](../../java/awt/Font.md "class in java.awt") f)

    Description copied from interface: `AccessibleComponent`

    Gets the `FontMetrics` of this object.

    Specified by:
    :   `getFontMetrics` in interface `AccessibleComponent`

    Parameters:
    :   `f` - the font for which font metrics is to be obtained

    Returns:
    :   the `FontMetrics`, if supported, the object; otherwise,
        `null`

    See Also:
    :   - [`AccessibleComponent.getFont()`](../accessibility/AccessibleComponent.md#getFont())
  + ### isEnabled

    public boolean isEnabled()

    Description copied from interface: `AccessibleComponent`

    Determines if the object is enabled. Objects that are enabled will also
    have the `AccessibleState.ENABLED` state set in their
    `AccessibleStateSets`.

    Specified by:
    :   `isEnabled` in interface `AccessibleComponent`

    Returns:
    :   `true` if object is enabled; otherwise, `false`

    See Also:
    :   - [`AccessibleComponent.setEnabled(boolean)`](../accessibility/AccessibleComponent.md#setEnabled(boolean))
        - [`AccessibleContext.getAccessibleStateSet()`](../accessibility/AccessibleContext.md#getAccessibleStateSet())
        - [`AccessibleState.ENABLED`](../accessibility/AccessibleState.md#ENABLED)
        - [`AccessibleStateSet`](../accessibility/AccessibleStateSet.md "class in javax.accessibility")
  + ### setEnabled

    public void setEnabled(boolean b)

    Description copied from interface: `AccessibleComponent`

    Sets the enabled state of the object.

    Specified by:
    :   `setEnabled` in interface `AccessibleComponent`

    Parameters:
    :   `b` - if `true`, enables this object; otherwise, disables it

    See Also:
    :   - [`AccessibleComponent.isEnabled()`](../accessibility/AccessibleComponent.md#isEnabled())
  + ### isVisible

    public boolean isVisible()

    Description copied from interface: `AccessibleComponent`

    Determines if the object is visible. Note: this means that the object
    intends to be visible; however, it may not be showing on the screen
    because one of the objects that this object is contained by is currently
    not visible. To determine if an object is showing on the screen, use
    [`AccessibleComponent.isShowing()`](../accessibility/AccessibleComponent.md#isShowing())

    Objects that are visible will also have the
    `AccessibleState.VISIBLE` state set in their
    `AccessibleStateSets`.

    Specified by:
    :   `isVisible` in interface `AccessibleComponent`

    Returns:
    :   `true` if object is visible; otherwise, `false`

    See Also:
    :   - [`AccessibleComponent.setVisible(boolean)`](../accessibility/AccessibleComponent.md#setVisible(boolean))
        - [`AccessibleContext.getAccessibleStateSet()`](../accessibility/AccessibleContext.md#getAccessibleStateSet())
        - [`AccessibleState.VISIBLE`](../accessibility/AccessibleState.md#VISIBLE)
        - [`AccessibleStateSet`](../accessibility/AccessibleStateSet.md "class in javax.accessibility")
  + ### setVisible

    public void setVisible(boolean b)

    Description copied from interface: `AccessibleComponent`

    Sets the visible state of the object.

    Specified by:
    :   `setVisible` in interface `AccessibleComponent`

    Parameters:
    :   `b` - if `true`, shows this object; otherwise, hides it

    See Also:
    :   - [`AccessibleComponent.isVisible()`](../accessibility/AccessibleComponent.md#isVisible())
  + ### isShowing

    public boolean isShowing()

    Description copied from interface: `AccessibleComponent`

    Determines if the object is showing. This is determined by checking the
    visibility of the object and its ancestors. Note: this will return
    `true` even if the object is obscured by another (for example, it
    is underneath a menu that was pulled down).

    Specified by:
    :   `isShowing` in interface `AccessibleComponent`

    Returns:
    :   `true` if object is showing; otherwise, `false`
  + ### contains

    public boolean contains([Point](../../java/awt/Point.md "class in java.awt") p)

    Description copied from interface: `AccessibleComponent`

    Checks whether the specified point is within this object's bounds, where
    the point's x and y coordinates are defined to be relative to the
    coordinate system of the object.

    Specified by:
    :   `contains` in interface `AccessibleComponent`

    Parameters:
    :   `p` - the point relative to the coordinate system of the object

    Returns:
    :   `true` if object contains point; otherwise `false`

    See Also:
    :   - [`AccessibleComponent.getBounds()`](../accessibility/AccessibleComponent.md#getBounds())
  + ### getLocationOnScreen

    public [Point](../../java/awt/Point.md "class in java.awt") getLocationOnScreen()

    Description copied from interface: `AccessibleComponent`

    Returns the location of the object on the screen.

    Specified by:
    :   `getLocationOnScreen` in interface `AccessibleComponent`

    Returns:
    :   the location of the object on screen; `null` if this object
        is not on the screen

    See Also:
    :   - [`AccessibleComponent.getBounds()`](../accessibility/AccessibleComponent.md#getBounds())
        - [`AccessibleComponent.getLocation()`](../accessibility/AccessibleComponent.md#getLocation())
  + ### getLocationInJTree

    protected [Point](../../java/awt/Point.md "class in java.awt") getLocationInJTree()

    Returns the relative location of the node

    Returns:
    :   the relative location of the node
  + ### getLocation

    public [Point](../../java/awt/Point.md "class in java.awt") getLocation()

    Description copied from interface: `AccessibleComponent`

    Gets the location of the object relative to the parent in the form of a
    point specifying the object's top-left corner in the screen's coordinate
    space.

    Specified by:
    :   `getLocation` in interface `AccessibleComponent`

    Returns:
    :   An instance of `Point` representing the top-left corner of
        the object's bounds in the coordinate space of the screen;
        `null` if this object or its parent are not on the screen

    See Also:
    :   - [`AccessibleComponent.getBounds()`](../accessibility/AccessibleComponent.md#getBounds())
        - [`AccessibleComponent.getLocationOnScreen()`](../accessibility/AccessibleComponent.md#getLocationOnScreen())
  + ### setLocation

    public void setLocation([Point](../../java/awt/Point.md "class in java.awt") p)

    Description copied from interface: `AccessibleComponent`

    Sets the location of the object relative to the parent.

    Specified by:
    :   `setLocation` in interface `AccessibleComponent`

    Parameters:
    :   `p` - the new position for the top-left corner

    See Also:
    :   - [`AccessibleComponent.getLocation()`](../accessibility/AccessibleComponent.md#getLocation())
  + ### getBounds

    public [Rectangle](../../java/awt/Rectangle.md "class in java.awt") getBounds()

    Description copied from interface: `AccessibleComponent`

    Gets the bounds of this object in the form of a `Rectangle` object.
    The bounds specify this object's width, height, and location relative to
    its parent.

    Specified by:
    :   `getBounds` in interface `AccessibleComponent`

    Returns:
    :   A rectangle indicating this component's bounds; `null` if
        this object is not on the screen.

    See Also:
    :   - [`AccessibleComponent.contains(java.awt.Point)`](../accessibility/AccessibleComponent.md#contains(java.awt.Point))
  + ### setBounds

    public void setBounds([Rectangle](../../java/awt/Rectangle.md "class in java.awt") r)

    Description copied from interface: `AccessibleComponent`

    Sets the bounds of this object in the form of a `Rectangle` object.
    The bounds specify this object's width, height, and location relative to
    its parent.

    Specified by:
    :   `setBounds` in interface `AccessibleComponent`

    Parameters:
    :   `r` - rectangle indicating this component's bounds

    See Also:
    :   - [`AccessibleComponent.getBounds()`](../accessibility/AccessibleComponent.md#getBounds())
  + ### getSize

    public [Dimension](../../java/awt/Dimension.md "class in java.awt") getSize()

    Description copied from interface: `AccessibleComponent`

    Returns the size of this object in the form of a `Dimension`
    object. The `height` field of the `Dimension` object contains
    this object's height, and the `width` field of the
    `Dimension` object contains this object's width.

    Specified by:
    :   `getSize` in interface `AccessibleComponent`

    Returns:
    :   A `Dimension` object that indicates the size of this
        component; `null` if this object is not on the screen

    See Also:
    :   - [`AccessibleComponent.setSize(java.awt.Dimension)`](../accessibility/AccessibleComponent.md#setSize(java.awt.Dimension))
  + ### setSize

    public void setSize([Dimension](../../java/awt/Dimension.md "class in java.awt") d)

    Description copied from interface: `AccessibleComponent`

    Resizes this object so that it has width and height.

    Specified by:
    :   `setSize` in interface `AccessibleComponent`

    Parameters:
    :   `d` - The dimension specifying the new size of the object

    See Also:
    :   - [`AccessibleComponent.getSize()`](../accessibility/AccessibleComponent.md#getSize())
  + ### getAccessibleAt

    public [Accessible](../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleAt([Point](../../java/awt/Point.md "class in java.awt") p)

    Returns the `Accessible` child, if one exists,
    contained at the local coordinate `Point`.
    Otherwise returns `null`.

    Specified by:
    :   `getAccessibleAt` in interface `AccessibleComponent`

    Parameters:
    :   `p` - point in local coordinates of this
        `Accessible`

    Returns:
    :   the `Accessible`, if it exists,
        at the specified location; else `null`
  + ### isFocusTraversable

    public boolean isFocusTraversable()

    Description copied from interface: `AccessibleComponent`

    Returns whether this object can accept focus or not. Objects that can
    accept focus will also have the `AccessibleState.FOCUSABLE` state
    set in their `AccessibleStateSets`.

    Specified by:
    :   `isFocusTraversable` in interface `AccessibleComponent`

    Returns:
    :   `true` if object can accept focus; otherwise `false`

    See Also:
    :   - [`AccessibleContext.getAccessibleStateSet()`](../accessibility/AccessibleContext.md#getAccessibleStateSet())
        - [`AccessibleState.FOCUSABLE`](../accessibility/AccessibleState.md#FOCUSABLE)
        - [`AccessibleState.FOCUSED`](../accessibility/AccessibleState.md#FOCUSED)
        - [`AccessibleStateSet`](../accessibility/AccessibleStateSet.md "class in javax.accessibility")
  + ### requestFocus

    public void requestFocus()

    Description copied from interface: `AccessibleComponent`

    Requests focus for this object. If this object cannot accept focus,
    nothing will happen. Otherwise, the object will attempt to take focus.

    Specified by:
    :   `requestFocus` in interface `AccessibleComponent`

    See Also:
    :   - [`AccessibleComponent.isFocusTraversable()`](../accessibility/AccessibleComponent.md#isFocusTraversable())
  + ### addFocusListener

    public void addFocusListener([FocusListener](../../java/awt/event/FocusListener.md "interface in java.awt.event") l)

    Description copied from interface: `AccessibleComponent`

    Adds the specified focus listener to receive focus events from this
    component.

    Specified by:
    :   `addFocusListener` in interface `AccessibleComponent`

    Parameters:
    :   `l` - the focus listener

    See Also:
    :   - [`AccessibleComponent.removeFocusListener(java.awt.event.FocusListener)`](../accessibility/AccessibleComponent.md#removeFocusListener(java.awt.event.FocusListener))
  + ### removeFocusListener

    public void removeFocusListener([FocusListener](../../java/awt/event/FocusListener.md "interface in java.awt.event") l)

    Description copied from interface: `AccessibleComponent`

    Removes the specified focus listener so it no longer receives focus
    events from this component.

    Specified by:
    :   `removeFocusListener` in interface `AccessibleComponent`

    Parameters:
    :   `l` - the focus listener

    See Also:
    :   - [`AccessibleComponent.addFocusListener(java.awt.event.FocusListener)`](../accessibility/AccessibleComponent.md#addFocusListener(java.awt.event.FocusListener))
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
    :   `i` - the zero-based index of the child in this Accessible
        object.

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

    Removes the specified selected item in the object from the
    object's
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
  + ### getAccessibleActionCount

    public int getAccessibleActionCount()

    Returns the number of accessible actions available in this
    tree node. If this node is not a leaf, there is at least
    one action (toggle expand), in addition to any available
    on the object behind the TreeCellRenderer.

    Specified by:
    :   `getAccessibleActionCount` in interface `AccessibleAction`

    Returns:
    :   the number of Actions in this object
  + ### getAccessibleActionDescription

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getAccessibleActionDescription(int i)

    Return a description of the specified action of the tree node.
    If this node is not a leaf, there is at least one action
    description (toggle expand), in addition to any available
    on the object behind the TreeCellRenderer.

    Specified by:
    :   `getAccessibleActionDescription` in interface `AccessibleAction`

    Parameters:
    :   `i` - zero-based index of the actions

    Returns:
    :   a description of the action

    See Also:
    :   - [`AccessibleAction.getAccessibleActionCount()`](../accessibility/AccessibleAction.md#getAccessibleActionCount())
  + ### doAccessibleAction

    public boolean doAccessibleAction(int i)

    Perform the specified Action on the tree node. If this node
    is not a leaf, there is at least one action which can be
    done (toggle expand), in addition to any available on the
    object behind the TreeCellRenderer.

    Specified by:
    :   `doAccessibleAction` in interface `AccessibleAction`

    Parameters:
    :   `i` - zero-based index of actions

    Returns:
    :   true if the action was performed; else false.

    See Also:
    :   - [`AccessibleAction.getAccessibleActionCount()`](../accessibility/AccessibleAction.md#getAccessibleActionCount())