Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JTable.AccessibleJTable.AccessibleJTableCell

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

javax.swing.JTable.AccessibleJTable.AccessibleJTableCell

All Implemented Interfaces:
:   `Accessible`, `AccessibleComponent`

Enclosing class:
:   `JTable.AccessibleJTable`

---

protected class JTable.AccessibleJTable.AccessibleJTableCell
extends [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")
implements [Accessible](../accessibility/Accessible.md "interface in javax.accessibility"), [AccessibleComponent](../accessibility/AccessibleComponent.md "interface in javax.accessibility")

The class provides an implementation of the Java Accessibility
API appropriate to table cells.

* ## Field Summary

  ### Fields inherited from class javax.accessibility.[AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

  `ACCESSIBLE_ACTION_PROPERTY, ACCESSIBLE_ACTIVE_DESCENDANT_PROPERTY, ACCESSIBLE_CARET_PROPERTY, ACCESSIBLE_CHILD_PROPERTY, ACCESSIBLE_COMPONENT_BOUNDS_CHANGED, ACCESSIBLE_DESCRIPTION_PROPERTY, ACCESSIBLE_HYPERTEXT_OFFSET, ACCESSIBLE_INVALIDATE_CHILDREN, ACCESSIBLE_NAME_PROPERTY, ACCESSIBLE_SELECTION_PROPERTY, ACCESSIBLE_STATE_PROPERTY, ACCESSIBLE_TABLE_CAPTION_CHANGED, ACCESSIBLE_TABLE_COLUMN_DESCRIPTION_CHANGED, ACCESSIBLE_TABLE_COLUMN_HEADER_CHANGED, ACCESSIBLE_TABLE_MODEL_CHANGED, ACCESSIBLE_TABLE_ROW_DESCRIPTION_CHANGED, ACCESSIBLE_TABLE_ROW_HEADER_CHANGED, ACCESSIBLE_TABLE_SUMMARY_CHANGED, ACCESSIBLE_TEXT_ATTRIBUTES_CHANGED, ACCESSIBLE_TEXT_PROPERTY, ACCESSIBLE_VALUE_PROPERTY, ACCESSIBLE_VISIBLE_DATA_PROPERTY, accessibleDescription, accessibleName, accessibleParent`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AccessibleJTableCell(JTable t,
  int r,
  int c,
  int i)`

  Constructs an `AccessibleJTableHeaderEntry`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addFocusListener(FocusListener l)`

  Adds the specified focus listener to receive focus events from this
  component.

  `void`

  `addPropertyChangeListener(PropertyChangeListener l)`

  Adds a `PropertyChangeListener` to the listener list.

  `boolean`

  `contains(Point p)`

  Checks whether the specified point is within this
  object's bounds, where the point's x and y coordinates
  are defined to be relative to the coordinate system of
  the object.

  `AccessibleAction`

  `getAccessibleAction()`

  Gets the `AccessibleAction` associated with this
  object if one exists.

  `Accessible`

  `getAccessibleAt(Point p)`

  Returns the `Accessible` child, if one exists, contained at the
  local coordinate `Point`.

  `Accessible`

  `getAccessibleChild(int i)`

  Returns the specified `Accessible` child of the
  object.

  `int`

  `getAccessibleChildrenCount()`

  Returns the number of accessible children in the object.

  `AccessibleComponent`

  `getAccessibleComponent()`

  Gets the `AccessibleComponent` associated with
  this object if one exists.

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the `AccessibleContext` associated with this
  component.

  `String`

  `getAccessibleDescription()`

  Gets the accessible description of this object.

  `int`

  `getAccessibleIndexInParent()`

  Gets the index of this object in its accessible parent.

  `String`

  `getAccessibleName()`

  Gets the accessible name of this object.

  `Accessible`

  `getAccessibleParent()`

  Gets the `Accessible` parent of this object.

  `AccessibleRole`

  `getAccessibleRole()`

  Gets the role of this object.

  `AccessibleSelection`

  `getAccessibleSelection()`

  Gets the `AccessibleSelection` associated with
  this object if one exists.

  `AccessibleStateSet`

  `getAccessibleStateSet()`

  Gets the state set of this object.

  `AccessibleText`

  `getAccessibleText()`

  Gets the `AccessibleText` associated with this
  object if one exists.

  `AccessibleValue`

  `getAccessibleValue()`

  Gets the `AccessibleValue` associated with
  this object if one exists.

  `Color`

  `getBackground()`

  Gets the background color of this object.

  `Rectangle`

  `getBounds()`

  Gets the bounds of this object in the form of a `Rectangle` object.

  `protected AccessibleContext`

  `getCurrentAccessibleContext()`

  Gets the AccessibleContext for the table cell renderer.

  `protected Component`

  `getCurrentComponent()`

  Gets the table cell renderer component.

  `Cursor`

  `getCursor()`

  Gets the `Cursor` of this object.

  `Font`

  `getFont()`

  Gets the `Font` of this object.

  `FontMetrics`

  `getFontMetrics(Font f)`

  Gets the `FontMetrics` of this object.

  `Color`

  `getForeground()`

  Gets the foreground color of this object.

  `Locale`

  `getLocale()`

  Gets the locale of the component.

  `Point`

  `getLocation()`

  Gets the location of the object relative to the parent
  in the form of a point specifying the object's
  top-left corner in the screen's coordinate space.

  `Point`

  `getLocationOnScreen()`

  Returns the location of the object on the screen.

  `Dimension`

  `getSize()`

  Returns the size of this object in the form of a `Dimension`
  object.

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

  Determines if this object is visible.

  `void`

  `removeFocusListener(FocusListener l)`

  Removes the specified focus listener so it no longer receives focus
  events from this component.

  `void`

  `removePropertyChangeListener(PropertyChangeListener l)`

  Removes a `PropertyChangeListener` from the
  listener list.

  `void`

  `requestFocus()`

  Requests focus for this object.

  `void`

  `setAccessibleDescription(String s)`

  Sets the accessible description of this object.

  `void`

  `setAccessibleName(String s)`

  Sets the localized accessible name of this object.

  `void`

  `setBackground(Color c)`

  Sets the background color of this object.

  `void`

  `setBounds(Rectangle r)`

  Sets the bounds of this object in the form of a `Rectangle` object.

  `void`

  `setCursor(Cursor c)`

  Sets the `Cursor` of this object.

  `void`

  `setEnabled(boolean b)`

  Sets the enabled state of the object.

  `void`

  `setFont(Font f)`

  Sets the `Font` of this object.

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

  + ### AccessibleJTableCell

    public AccessibleJTableCell([JTable](JTable.md "class in javax.swing") t,
    int r,
    int c,
    int i)

    Constructs an `AccessibleJTableHeaderEntry`.

    Parameters:
    :   `t` - a `JTable`
    :   `r` - an `int` specifying a row
    :   `c` - an `int` specifying a column
    :   `i` - an `int` specifying the index to this cell

    Since:
    :   1.4
* ## Method Details

  + ### getAccessibleContext

    public [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the `AccessibleContext` associated with this
    component. In the implementation of the Java Accessibility
    API for this class, return this object, which is its own
    `AccessibleContext`.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Returns:
    :   this object
  + ### getCurrentAccessibleContext

    protected [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") getCurrentAccessibleContext()

    Gets the AccessibleContext for the table cell renderer.

    Returns:
    :   the `AccessibleContext` for the table
        cell renderer if one exists;
        otherwise, returns `null`.

    Since:
    :   1.6
  + ### getCurrentComponent

    protected [Component](../../java/awt/Component.md "class in java.awt") getCurrentComponent()

    Gets the table cell renderer component.

    Returns:
    :   the table cell renderer component if one exists;
        otherwise, returns `null`.

    Since:
    :   1.6
  + ### getAccessibleName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getAccessibleName()

    Gets the accessible name of this object.

    Overrides:
    :   `getAccessibleName` in class `AccessibleContext`

    Returns:
    :   the localized name of the object; `null`
        if this object does not have a name

    See Also:
    :   - [`AccessibleContext.setAccessibleName(java.lang.String)`](../accessibility/AccessibleContext.md#setAccessibleName(java.lang.String))
  + ### setAccessibleName

    public void setAccessibleName([String](../../../java.base/java/lang/String.md "class in java.lang") s)

    Sets the localized accessible name of this object.

    Overrides:
    :   `setAccessibleName` in class `AccessibleContext`

    Parameters:
    :   `s` - the new localized name of the object

    See Also:
    :   - [`AccessibleContext.getAccessibleName()`](../accessibility/AccessibleContext.md#getAccessibleName())
        - [`AccessibleContext.addPropertyChangeListener(java.beans.PropertyChangeListener)`](../accessibility/AccessibleContext.md#addPropertyChangeListener(java.beans.PropertyChangeListener))
  + ### getAccessibleDescription

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getAccessibleDescription()

    Gets the accessible description of this object.

    Overrides:
    :   `getAccessibleDescription` in class `AccessibleContext`

    Returns:
    :   the localized description of the object;
        `null` if this object does not have
        a description

    See Also:
    :   - [`AccessibleContext.setAccessibleDescription(java.lang.String)`](../accessibility/AccessibleContext.md#setAccessibleDescription(java.lang.String))
  + ### setAccessibleDescription

    public void setAccessibleDescription([String](../../../java.base/java/lang/String.md "class in java.lang") s)

    Sets the accessible description of this object.

    Overrides:
    :   `setAccessibleDescription` in class `AccessibleContext`

    Parameters:
    :   `s` - the new localized description of the object

    See Also:
    :   - [`AccessibleContext.setAccessibleName(java.lang.String)`](../accessibility/AccessibleContext.md#setAccessibleName(java.lang.String))
        - [`AccessibleContext.addPropertyChangeListener(java.beans.PropertyChangeListener)`](../accessibility/AccessibleContext.md#addPropertyChangeListener(java.beans.PropertyChangeListener))
  + ### getAccessibleRole

    public [AccessibleRole](../accessibility/AccessibleRole.md "class in javax.accessibility") getAccessibleRole()

    Gets the role of this object.

    Specified by:
    :   `getAccessibleRole` in class `AccessibleContext`

    Returns:
    :   an instance of `AccessibleRole`
        describing the role of the object

    See Also:
    :   - [`AccessibleRole`](../accessibility/AccessibleRole.md "class in javax.accessibility")
  + ### getAccessibleStateSet

    public [AccessibleStateSet](../accessibility/AccessibleStateSet.md "class in javax.accessibility") getAccessibleStateSet()

    Gets the state set of this object.

    Specified by:
    :   `getAccessibleStateSet` in class `AccessibleContext`

    Returns:
    :   an instance of `AccessibleStateSet`
        containing the current state set of the object

    See Also:
    :   - [`AccessibleState`](../accessibility/AccessibleState.md "class in javax.accessibility")
  + ### getAccessibleParent

    public [Accessible](../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleParent()

    Gets the `Accessible` parent of this object.

    Overrides:
    :   `getAccessibleParent` in class `AccessibleContext`

    Returns:
    :   the Accessible parent of this object;
        `null` if this object does not
        have an `Accessible` parent
  + ### getAccessibleIndexInParent

    public int getAccessibleIndexInParent()

    Gets the index of this object in its accessible parent.

    Specified by:
    :   `getAccessibleIndexInParent` in class `AccessibleContext`

    Returns:
    :   the index of this object in its parent; -1 if this
        object does not have an accessible parent

    See Also:
    :   - [`getAccessibleParent()`](#getAccessibleParent())
  + ### getAccessibleChildrenCount

    public int getAccessibleChildrenCount()

    Returns the number of accessible children in the object.

    Specified by:
    :   `getAccessibleChildrenCount` in class `AccessibleContext`

    Returns:
    :   the number of accessible children in the object
  + ### getAccessibleChild

    public [Accessible](../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleChild(int i)

    Returns the specified `Accessible` child of the
    object.

    Specified by:
    :   `getAccessibleChild` in class `AccessibleContext`

    Parameters:
    :   `i` - zero-based index of child

    Returns:
    :   the `Accessible` child of the object

    See Also:
    :   - [`AccessibleContext.getAccessibleChildrenCount()`](../accessibility/AccessibleContext.md#getAccessibleChildrenCount())
  + ### getLocale

    public [Locale](../../../java.base/java/util/Locale.md "class in java.util") getLocale()

    Gets the locale of the component. If the component
    does not have a locale, then the locale of its parent
    is returned.

    Specified by:
    :   `getLocale` in class `AccessibleContext`

    Returns:
    :   this component's locale; if this component does
        not have a locale, the locale of its parent is returned

    Throws:
    :   `IllegalComponentStateException` - if the
        `Component` does not have its own locale
        and has not yet been added to a containment hierarchy
        such that the locale can be determined from the
        containing parent

    See Also:
    :   - [`Component.setLocale(java.util.Locale)`](../../java/awt/Component.md#setLocale(java.util.Locale))
  + ### addPropertyChangeListener

    public void addPropertyChangeListener([PropertyChangeListener](../../java/beans/PropertyChangeListener.md "interface in java.beans") l)

    Adds a `PropertyChangeListener` to the listener list.
    The listener is registered for all properties.

    Overrides:
    :   `addPropertyChangeListener` in class `AccessibleContext`

    Parameters:
    :   `l` - the `PropertyChangeListener`
        to be added

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

    Removes a `PropertyChangeListener` from the
    listener list. This removes a `PropertyChangeListener`
    that was registered for all properties.

    Overrides:
    :   `removePropertyChangeListener` in class `AccessibleContext`

    Parameters:
    :   `l` - the `PropertyChangeListener`
        to be removed
  + ### getAccessibleAction

    public [AccessibleAction](../accessibility/AccessibleAction.md "interface in javax.accessibility") getAccessibleAction()

    Gets the `AccessibleAction` associated with this
    object if one exists. Otherwise returns `null`.

    Overrides:
    :   `getAccessibleAction` in class `AccessibleContext`

    Returns:
    :   the `AccessibleAction`, or `null`

    See Also:
    :   - [`AccessibleAction`](../accessibility/AccessibleAction.md "interface in javax.accessibility")
  + ### getAccessibleComponent

    public [AccessibleComponent](../accessibility/AccessibleComponent.md "interface in javax.accessibility") getAccessibleComponent()

    Gets the `AccessibleComponent` associated with
    this object if one exists. Otherwise returns `null`.

    Overrides:
    :   `getAccessibleComponent` in class `AccessibleContext`

    Returns:
    :   the `AccessibleComponent`, or
        `null`

    See Also:
    :   - [`AccessibleComponent`](../accessibility/AccessibleComponent.md "interface in javax.accessibility")
  + ### getAccessibleSelection

    public [AccessibleSelection](../accessibility/AccessibleSelection.md "interface in javax.accessibility") getAccessibleSelection()

    Gets the `AccessibleSelection` associated with
    this object if one exists. Otherwise returns `null`.

    Overrides:
    :   `getAccessibleSelection` in class `AccessibleContext`

    Returns:
    :   the `AccessibleSelection`, or
        `null`

    See Also:
    :   - [`AccessibleSelection`](../accessibility/AccessibleSelection.md "interface in javax.accessibility")
  + ### getAccessibleText

    public [AccessibleText](../accessibility/AccessibleText.md "interface in javax.accessibility") getAccessibleText()

    Gets the `AccessibleText` associated with this
    object if one exists. Otherwise returns `null`.

    Overrides:
    :   `getAccessibleText` in class `AccessibleContext`

    Returns:
    :   the `AccessibleText`, or `null`

    See Also:
    :   - [`AccessibleText`](../accessibility/AccessibleText.md "interface in javax.accessibility")
  + ### getAccessibleValue

    public [AccessibleValue](../accessibility/AccessibleValue.md "interface in javax.accessibility") getAccessibleValue()

    Gets the `AccessibleValue` associated with
    this object if one exists. Otherwise returns `null`.

    Overrides:
    :   `getAccessibleValue` in class `AccessibleContext`

    Returns:
    :   the `AccessibleValue`, or `null`

    See Also:
    :   - [`AccessibleValue`](../accessibility/AccessibleValue.md "interface in javax.accessibility")
  + ### getBackground

    public [Color](../../java/awt/Color.md "class in java.awt") getBackground()

    Gets the background color of this object.

    Specified by:
    :   `getBackground` in interface `AccessibleComponent`

    Returns:
    :   the background color, if supported, of the object;
        otherwise, `null`

    See Also:
    :   - [`AccessibleComponent.setBackground(java.awt.Color)`](../accessibility/AccessibleComponent.md#setBackground(java.awt.Color))
  + ### setBackground

    public void setBackground([Color](../../java/awt/Color.md "class in java.awt") c)

    Sets the background color of this object.

    Specified by:
    :   `setBackground` in interface `AccessibleComponent`

    Parameters:
    :   `c` - the new `Color` for the background

    See Also:
    :   - [`AccessibleComponent.getBackground()`](../accessibility/AccessibleComponent.md#getBackground())
  + ### getForeground

    public [Color](../../java/awt/Color.md "class in java.awt") getForeground()

    Gets the foreground color of this object.

    Specified by:
    :   `getForeground` in interface `AccessibleComponent`

    Returns:
    :   the foreground color, if supported, of the object;
        otherwise, `null`

    See Also:
    :   - [`AccessibleComponent.setForeground(java.awt.Color)`](../accessibility/AccessibleComponent.md#setForeground(java.awt.Color))
  + ### setForeground

    public void setForeground([Color](../../java/awt/Color.md "class in java.awt") c)

    Sets the foreground color of this object.

    Specified by:
    :   `setForeground` in interface `AccessibleComponent`

    Parameters:
    :   `c` - the new `Color` for the foreground

    See Also:
    :   - [`AccessibleComponent.getForeground()`](../accessibility/AccessibleComponent.md#getForeground())
  + ### getCursor

    public [Cursor](../../java/awt/Cursor.md "class in java.awt") getCursor()

    Gets the `Cursor` of this object.

    Specified by:
    :   `getCursor` in interface `AccessibleComponent`

    Returns:
    :   the `Cursor`, if supported,
        of the object; otherwise, `null`

    See Also:
    :   - [`AccessibleComponent.setCursor(java.awt.Cursor)`](../accessibility/AccessibleComponent.md#setCursor(java.awt.Cursor))
  + ### setCursor

    public void setCursor([Cursor](../../java/awt/Cursor.md "class in java.awt") c)

    Sets the `Cursor` of this object.

    Specified by:
    :   `setCursor` in interface `AccessibleComponent`

    Parameters:
    :   `c` - the new `Cursor` for the object

    See Also:
    :   - [`AccessibleComponent.getCursor()`](../accessibility/AccessibleComponent.md#getCursor())
  + ### getFont

    public [Font](../../java/awt/Font.md "class in java.awt") getFont()

    Gets the `Font` of this object.

    Specified by:
    :   `getFont` in interface `AccessibleComponent`

    Returns:
    :   the `Font`,if supported,
        for the object; otherwise, `null`

    See Also:
    :   - [`AccessibleComponent.setFont(java.awt.Font)`](../accessibility/AccessibleComponent.md#setFont(java.awt.Font))
  + ### setFont

    public void setFont([Font](../../java/awt/Font.md "class in java.awt") f)

    Sets the `Font` of this object.

    Specified by:
    :   `setFont` in interface `AccessibleComponent`

    Parameters:
    :   `f` - the new `Font` for the object

    See Also:
    :   - [`AccessibleComponent.getFont()`](../accessibility/AccessibleComponent.md#getFont())
  + ### getFontMetrics

    public [FontMetrics](../../java/awt/FontMetrics.md "class in java.awt") getFontMetrics([Font](../../java/awt/Font.md "class in java.awt") f)

    Gets the `FontMetrics` of this object.

    Specified by:
    :   `getFontMetrics` in interface `AccessibleComponent`

    Parameters:
    :   `f` - the `Font`

    Returns:
    :   the `FontMetrics` object, if supported;
        otherwise `null`

    See Also:
    :   - [`getFont()`](#getFont())
  + ### isEnabled

    public boolean isEnabled()

    Determines if the object is enabled.

    Specified by:
    :   `isEnabled` in interface `AccessibleComponent`

    Returns:
    :   true if object is enabled; otherwise, false

    See Also:
    :   - [`AccessibleComponent.setEnabled(boolean)`](../accessibility/AccessibleComponent.md#setEnabled(boolean))
        - [`AccessibleContext.getAccessibleStateSet()`](../accessibility/AccessibleContext.md#getAccessibleStateSet())
        - [`AccessibleState.ENABLED`](../accessibility/AccessibleState.md#ENABLED)
        - [`AccessibleStateSet`](../accessibility/AccessibleStateSet.md "class in javax.accessibility")
  + ### setEnabled

    public void setEnabled(boolean b)

    Sets the enabled state of the object.

    Specified by:
    :   `setEnabled` in interface `AccessibleComponent`

    Parameters:
    :   `b` - if true, enables this object; otherwise, disables it

    See Also:
    :   - [`AccessibleComponent.isEnabled()`](../accessibility/AccessibleComponent.md#isEnabled())
  + ### isVisible

    public boolean isVisible()

    Determines if this object is visible. Note: this means that the
    object intends to be visible; however, it may not in fact be
    showing on the screen because one of the objects that this object
    is contained by is not visible. To determine if an object is
    showing on the screen, use `isShowing`.

    Specified by:
    :   `isVisible` in interface `AccessibleComponent`

    Returns:
    :   true if object is visible; otherwise, false

    See Also:
    :   - [`AccessibleComponent.setVisible(boolean)`](../accessibility/AccessibleComponent.md#setVisible(boolean))
        - [`AccessibleContext.getAccessibleStateSet()`](../accessibility/AccessibleContext.md#getAccessibleStateSet())
        - [`AccessibleState.VISIBLE`](../accessibility/AccessibleState.md#VISIBLE)
        - [`AccessibleStateSet`](../accessibility/AccessibleStateSet.md "class in javax.accessibility")
  + ### setVisible

    public void setVisible(boolean b)

    Sets the visible state of the object.

    Specified by:
    :   `setVisible` in interface `AccessibleComponent`

    Parameters:
    :   `b` - if true, shows this object; otherwise, hides it

    See Also:
    :   - [`AccessibleComponent.isVisible()`](../accessibility/AccessibleComponent.md#isVisible())
  + ### isShowing

    public boolean isShowing()

    Determines if the object is showing. This is determined
    by checking the visibility of the object and ancestors
    of the object. Note: this will return true even if the
    object is obscured by another (for example,
    it happens to be underneath a menu that was pulled down).

    Specified by:
    :   `isShowing` in interface `AccessibleComponent`

    Returns:
    :   true if the object is showing; otherwise, false
  + ### contains

    public boolean contains([Point](../../java/awt/Point.md "class in java.awt") p)

    Checks whether the specified point is within this
    object's bounds, where the point's x and y coordinates
    are defined to be relative to the coordinate system of
    the object.

    Specified by:
    :   `contains` in interface `AccessibleComponent`

    Parameters:
    :   `p` - the `Point` relative to the
        coordinate system of the object

    Returns:
    :   true if object contains `Point`;
        otherwise false

    See Also:
    :   - [`AccessibleComponent.getBounds()`](../accessibility/AccessibleComponent.md#getBounds())
  + ### getLocationOnScreen

    public [Point](../../java/awt/Point.md "class in java.awt") getLocationOnScreen()

    Returns the location of the object on the screen.

    Specified by:
    :   `getLocationOnScreen` in interface `AccessibleComponent`

    Returns:
    :   location of object on screen -- can be
        `null` if this object is not on the screen

    See Also:
    :   - [`AccessibleComponent.getBounds()`](../accessibility/AccessibleComponent.md#getBounds())
        - [`AccessibleComponent.getLocation()`](../accessibility/AccessibleComponent.md#getLocation())
  + ### getLocation

    public [Point](../../java/awt/Point.md "class in java.awt") getLocation()

    Gets the location of the object relative to the parent
    in the form of a point specifying the object's
    top-left corner in the screen's coordinate space.

    Specified by:
    :   `getLocation` in interface `AccessibleComponent`

    Returns:
    :   an instance of `Point` representing
        the top-left corner of the object's bounds in the
        coordinate space of the screen; `null` if
        this object or its parent are not on the screen

    See Also:
    :   - [`AccessibleComponent.getBounds()`](../accessibility/AccessibleComponent.md#getBounds())
        - [`AccessibleComponent.getLocationOnScreen()`](../accessibility/AccessibleComponent.md#getLocationOnScreen())
  + ### setLocation

    public void setLocation([Point](../../java/awt/Point.md "class in java.awt") p)

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

    Description copied from interface: `AccessibleComponent`

    Returns the `Accessible` child, if one exists, contained at the
    local coordinate `Point`.

    Specified by:
    :   `getAccessibleAt` in interface `AccessibleComponent`

    Parameters:
    :   `p` - The point relative to the coordinate system of this object

    Returns:
    :   the `Accessible`, if it exists, at the specified location;
        otherwise `null`
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