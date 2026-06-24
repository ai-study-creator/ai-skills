Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class Component.AccessibleAWTComponent

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility")

java.awt.Component.AccessibleAWTComponent

All Implemented Interfaces:
:   `Serializable`, `AccessibleComponent`

Direct Known Subclasses:
:   `Box.Filler.AccessibleBoxFiller`, `Button.AccessibleAWTButton`, `Canvas.AccessibleAWTCanvas`, `Checkbox.AccessibleAWTCheckbox`, `Choice.AccessibleAWTChoice`, `Container.AccessibleAWTContainer`, `Label.AccessibleAWTLabel`, `List.AccessibleAWTList`, `List.AccessibleAWTList.AccessibleAWTListChild`, `Scrollbar.AccessibleAWTScrollBar`, `TextComponent.AccessibleAWTTextComponent`

Enclosing class:
:   `Component`

---

protected abstract class Component.AccessibleAWTComponent
extends [AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io"), [AccessibleComponent](../../javax/accessibility/AccessibleComponent.md "interface in javax.accessibility")

Inner class of Component used to provide default support for
accessibility. This class is not meant to be used directly by
application developers, but is instead meant only to be
subclassed by component developers.

The class used to obtain the accessible role for this object.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.awt.Component.AccessibleAWTComponent)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `Component.AccessibleAWTComponent.AccessibleAWTComponentHandler`

  Fire PropertyChange listener, if one is registered,
  when shown/hidden..

  `protected class`

  `Component.AccessibleAWTComponent.AccessibleAWTFocusHandler`

  Fire PropertyChange listener, if one is registered,
  when focus events happen
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected ComponentListener`

  `accessibleAWTComponentHandler`

  A component listener to track show/hide/resize events
  and convert them to PropertyChange events.

  `protected FocusListener`

  `accessibleAWTFocusHandler`

  A listener to track focus events
  and convert them to PropertyChange events.

  ### Fields inherited from class javax.accessibility.[AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility")

  `ACCESSIBLE_ACTION_PROPERTY, ACCESSIBLE_ACTIVE_DESCENDANT_PROPERTY, ACCESSIBLE_CARET_PROPERTY, ACCESSIBLE_CHILD_PROPERTY, ACCESSIBLE_COMPONENT_BOUNDS_CHANGED, ACCESSIBLE_DESCRIPTION_PROPERTY, ACCESSIBLE_HYPERTEXT_OFFSET, ACCESSIBLE_INVALIDATE_CHILDREN, ACCESSIBLE_NAME_PROPERTY, ACCESSIBLE_SELECTION_PROPERTY, ACCESSIBLE_STATE_PROPERTY, ACCESSIBLE_TABLE_CAPTION_CHANGED, ACCESSIBLE_TABLE_COLUMN_DESCRIPTION_CHANGED, ACCESSIBLE_TABLE_COLUMN_HEADER_CHANGED, ACCESSIBLE_TABLE_MODEL_CHANGED, ACCESSIBLE_TABLE_ROW_DESCRIPTION_CHANGED, ACCESSIBLE_TABLE_ROW_HEADER_CHANGED, ACCESSIBLE_TABLE_SUMMARY_CHANGED, ACCESSIBLE_TEXT_ATTRIBUTES_CHANGED, ACCESSIBLE_TEXT_PROPERTY, ACCESSIBLE_VALUE_PROPERTY, ACCESSIBLE_VISIBLE_DATA_PROPERTY, accessibleDescription, accessibleName, accessibleParent`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AccessibleAWTComponent()`

  Though the class is abstract, this should be called by
  all sub-classes.
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

  `addPropertyChangeListener(PropertyChangeListener listener)`

  Adds a `PropertyChangeListener` to the listener list.

  `boolean`

  `contains(Point p)`

  Checks whether the specified point is within this object's bounds,
  where the point's x and y coordinates are defined to be relative to
  the coordinate system of the object.

  `Accessible`

  `getAccessibleAt(Point p)`

  Returns the `Accessible` child,
  if one exists, contained at the local
  coordinate `Point`.

  `Accessible`

  `getAccessibleChild(int i)`

  Returns the nth `Accessible` child of the object.

  `int`

  `getAccessibleChildrenCount()`

  Returns the number of accessible children in the object.

  `AccessibleComponent`

  `getAccessibleComponent()`

  Gets the `AccessibleComponent` associated
  with this object if one exists.

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

  `AccessibleStateSet`

  `getAccessibleStateSet()`

  Gets the state of this object.

  `Color`

  `getBackground()`

  Gets the background color of this object.

  `Rectangle`

  `getBounds()`

  Gets the bounds of this object in the form of a Rectangle object.

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

  Returns the locale of this object.

  `Point`

  `getLocation()`

  Gets the location of the object relative to the parent in the form
  of a point specifying the object's top-left corner in the screen's
  coordinate space.

  `Point`

  `getLocationOnScreen()`

  Returns the location of the object on the screen.

  `Dimension`

  `getSize()`

  Returns the size of this object in the form of a
  `Dimension` object.

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

  `removeFocusListener(FocusListener l)`

  Removes the specified focus listener so it no longer receives focus
  events from this component.

  `void`

  `removePropertyChangeListener(PropertyChangeListener listener)`

  Remove a PropertyChangeListener from the listener list.

  `void`

  `requestFocus()`

  Requests focus for this object.

  `void`

  `setBackground(Color c)`

  Sets the background color of this object.

  `void`

  `setBounds(Rectangle r)`

  Sets the bounds of this object in the form of a
  `Rectangle` object.

  `void`

  `setCursor(Cursor cursor)`

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

  ### Methods inherited from class javax.accessibility.[AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility")

  `firePropertyChange, getAccessibleAction, getAccessibleEditableText, getAccessibleIcon, getAccessibleRelationSet, getAccessibleSelection, getAccessibleTable, getAccessibleText, getAccessibleValue, setAccessibleDescription, setAccessibleName, setAccessibleParent`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### accessibleAWTComponentHandler

    protected [ComponentListener](event/ComponentListener.md "interface in java.awt.event") accessibleAWTComponentHandler

    A component listener to track show/hide/resize events
    and convert them to PropertyChange events.
  + ### accessibleAWTFocusHandler

    protected [FocusListener](event/FocusListener.md "interface in java.awt.event") accessibleAWTFocusHandler

    A listener to track focus events
    and convert them to PropertyChange events.
* ## Constructor Details

  + ### AccessibleAWTComponent

    protected AccessibleAWTComponent()

    Though the class is abstract, this should be called by
    all sub-classes.
* ## Method Details

  + ### addPropertyChangeListener

    public void addPropertyChangeListener([PropertyChangeListener](../beans/PropertyChangeListener.md "interface in java.beans") listener)

    Adds a `PropertyChangeListener` to the listener list.

    Overrides:
    :   `addPropertyChangeListener` in class `AccessibleContext`

    Parameters:
    :   `listener` - the property change listener to be added

    See Also:
    :   - [`AccessibleContext.ACCESSIBLE_NAME_PROPERTY`](../../javax/accessibility/AccessibleContext.md#ACCESSIBLE_NAME_PROPERTY)
        - [`AccessibleContext.ACCESSIBLE_DESCRIPTION_PROPERTY`](../../javax/accessibility/AccessibleContext.md#ACCESSIBLE_DESCRIPTION_PROPERTY)
        - [`AccessibleContext.ACCESSIBLE_STATE_PROPERTY`](../../javax/accessibility/AccessibleContext.md#ACCESSIBLE_STATE_PROPERTY)
        - [`AccessibleContext.ACCESSIBLE_VALUE_PROPERTY`](../../javax/accessibility/AccessibleContext.md#ACCESSIBLE_VALUE_PROPERTY)
        - [`AccessibleContext.ACCESSIBLE_SELECTION_PROPERTY`](../../javax/accessibility/AccessibleContext.md#ACCESSIBLE_SELECTION_PROPERTY)
        - [`AccessibleContext.ACCESSIBLE_TEXT_PROPERTY`](../../javax/accessibility/AccessibleContext.md#ACCESSIBLE_TEXT_PROPERTY)
        - [`AccessibleContext.ACCESSIBLE_VISIBLE_DATA_PROPERTY`](../../javax/accessibility/AccessibleContext.md#ACCESSIBLE_VISIBLE_DATA_PROPERTY)
  + ### removePropertyChangeListener

    public void removePropertyChangeListener([PropertyChangeListener](../beans/PropertyChangeListener.md "interface in java.beans") listener)

    Remove a PropertyChangeListener from the listener list.
    This removes a PropertyChangeListener that was registered
    for all properties.

    Overrides:
    :   `removePropertyChangeListener` in class `AccessibleContext`

    Parameters:
    :   `listener` - The PropertyChangeListener to be removed
  + ### getAccessibleName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getAccessibleName()

    Gets the accessible name of this object. This should almost never
    return `java.awt.Component.getName()`,
    as that generally isn't a localized name,
    and doesn't have meaning for the user. If the
    object is fundamentally a text object (e.g. a menu item), the
    accessible name should be the text of the object (e.g. "save").
    If the object has a tooltip, the tooltip text may also be an
    appropriate String to return.

    Overrides:
    :   `getAccessibleName` in class `AccessibleContext`

    Returns:
    :   the localized name of the object -- can be
        `null` if this
        object does not have a name

    See Also:
    :   - [`AccessibleContext.setAccessibleName(java.lang.String)`](../../javax/accessibility/AccessibleContext.md#setAccessibleName(java.lang.String))
  + ### getAccessibleDescription

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getAccessibleDescription()

    Gets the accessible description of this object. This should be
    a concise, localized description of what this object is - what
    is its meaning to the user. If the object has a tooltip, the
    tooltip text may be an appropriate string to return, assuming
    it contains a concise description of the object (instead of just
    the name of the object - e.g. a "Save" icon on a toolbar that
    had "save" as the tooltip text shouldn't return the tooltip
    text as the description, but something like "Saves the current
    text document" instead).

    Overrides:
    :   `getAccessibleDescription` in class `AccessibleContext`

    Returns:
    :   the localized description of the object -- can be
        `null` if this object does not have a description

    See Also:
    :   - [`AccessibleContext.setAccessibleDescription(java.lang.String)`](../../javax/accessibility/AccessibleContext.md#setAccessibleDescription(java.lang.String))
  + ### getAccessibleRole

    public [AccessibleRole](../../javax/accessibility/AccessibleRole.md "class in javax.accessibility") getAccessibleRole()

    Gets the role of this object.

    Specified by:
    :   `getAccessibleRole` in class `AccessibleContext`

    Returns:
    :   an instance of `AccessibleRole`
        describing the role of the object

    See Also:
    :   - [`AccessibleRole`](../../javax/accessibility/AccessibleRole.md "class in javax.accessibility")
  + ### getAccessibleStateSet

    public [AccessibleStateSet](../../javax/accessibility/AccessibleStateSet.md "class in javax.accessibility") getAccessibleStateSet()

    Gets the state of this object.

    Specified by:
    :   `getAccessibleStateSet` in class `AccessibleContext`

    Returns:
    :   an instance of `AccessibleStateSet`
        containing the current state set of the object

    See Also:
    :   - [`AccessibleState`](../../javax/accessibility/AccessibleState.md "class in javax.accessibility")
  + ### getAccessibleParent

    public [Accessible](../../javax/accessibility/Accessible.md "interface in javax.accessibility") getAccessibleParent()

    Gets the `Accessible` parent of this object.
    If the parent of this object implements `Accessible`,
    this method should simply return `getParent`.

    Overrides:
    :   `getAccessibleParent` in class `AccessibleContext`

    Returns:
    :   the `Accessible` parent of this
        object -- can be `null` if this
        object does not have an `Accessible` parent
  + ### getAccessibleIndexInParent

    public int getAccessibleIndexInParent()

    Gets the index of this object in its accessible parent.

    Specified by:
    :   `getAccessibleIndexInParent` in class `AccessibleContext`

    Returns:
    :   the index of this object in its parent; or -1 if this
        object does not have an accessible parent

    See Also:
    :   - [`getAccessibleParent()`](#getAccessibleParent())
  + ### getAccessibleChildrenCount

    public int getAccessibleChildrenCount()

    Returns the number of accessible children in the object. If all
    of the children of this object implement `Accessible`,
    then this method should return the number of children of this object.

    Specified by:
    :   `getAccessibleChildrenCount` in class `AccessibleContext`

    Returns:
    :   the number of accessible children in the object
  + ### getAccessibleChild

    public [Accessible](../../javax/accessibility/Accessible.md "interface in javax.accessibility") getAccessibleChild(int i)

    Returns the nth `Accessible` child of the object.

    Specified by:
    :   `getAccessibleChild` in class `AccessibleContext`

    Parameters:
    :   `i` - zero-based index of child

    Returns:
    :   the nth `Accessible` child of the object

    See Also:
    :   - [`AccessibleContext.getAccessibleChildrenCount()`](../../javax/accessibility/AccessibleContext.md#getAccessibleChildrenCount())
  + ### getLocale

    public [Locale](../../../java.base/java/util/Locale.md "class in java.util") getLocale()

    Returns the locale of this object.

    Specified by:
    :   `getLocale` in class `AccessibleContext`

    Returns:
    :   the locale of this object
  + ### getAccessibleComponent

    public [AccessibleComponent](../../javax/accessibility/AccessibleComponent.md "interface in javax.accessibility") getAccessibleComponent()

    Gets the `AccessibleComponent` associated
    with this object if one exists.
    Otherwise return `null`.

    Overrides:
    :   `getAccessibleComponent` in class `AccessibleContext`

    Returns:
    :   the component

    See Also:
    :   - [`AccessibleComponent`](../../javax/accessibility/AccessibleComponent.md "interface in javax.accessibility")
  + ### getBackground

    public [Color](Color.md "class in java.awt") getBackground()

    Gets the background color of this object.

    Specified by:
    :   `getBackground` in interface `AccessibleComponent`

    Returns:
    :   the background color, if supported, of the object;
        otherwise, `null`

    See Also:
    :   - [`AccessibleComponent.setBackground(java.awt.Color)`](../../javax/accessibility/AccessibleComponent.md#setBackground(java.awt.Color))
  + ### setBackground

    public void setBackground([Color](Color.md "class in java.awt") c)

    Sets the background color of this object.
    (For transparency, see `isOpaque`.)

    Specified by:
    :   `setBackground` in interface `AccessibleComponent`

    Parameters:
    :   `c` - the new `Color` for the background

    See Also:
    :   - [`Component.isOpaque()`](Component.md#isOpaque())
  + ### getForeground

    public [Color](Color.md "class in java.awt") getForeground()

    Gets the foreground color of this object.

    Specified by:
    :   `getForeground` in interface `AccessibleComponent`

    Returns:
    :   the foreground color, if supported, of the object;
        otherwise, `null`

    See Also:
    :   - [`AccessibleComponent.setForeground(java.awt.Color)`](../../javax/accessibility/AccessibleComponent.md#setForeground(java.awt.Color))
  + ### setForeground

    public void setForeground([Color](Color.md "class in java.awt") c)

    Sets the foreground color of this object.

    Specified by:
    :   `setForeground` in interface `AccessibleComponent`

    Parameters:
    :   `c` - the new `Color` for the foreground

    See Also:
    :   - [`AccessibleComponent.getForeground()`](../../javax/accessibility/AccessibleComponent.md#getForeground())
  + ### getCursor

    public [Cursor](Cursor.md "class in java.awt") getCursor()

    Gets the `Cursor` of this object.

    Specified by:
    :   `getCursor` in interface `AccessibleComponent`

    Returns:
    :   the `Cursor`, if supported,
        of the object; otherwise, `null`

    See Also:
    :   - [`AccessibleComponent.setCursor(java.awt.Cursor)`](../../javax/accessibility/AccessibleComponent.md#setCursor(java.awt.Cursor))
  + ### setCursor

    public void setCursor([Cursor](Cursor.md "class in java.awt") cursor)

    Sets the `Cursor` of this object.

    The method may have no visual effect if the Java platform
    implementation and/or the native system do not support
    changing the mouse cursor shape.

    Specified by:
    :   `setCursor` in interface `AccessibleComponent`

    Parameters:
    :   `cursor` - the new `Cursor` for the object

    See Also:
    :   - [`AccessibleComponent.getCursor()`](../../javax/accessibility/AccessibleComponent.md#getCursor())
  + ### getFont

    public [Font](Font.md "class in java.awt") getFont()

    Gets the `Font` of this object.

    Specified by:
    :   `getFont` in interface `AccessibleComponent`

    Returns:
    :   the `Font`, if supported,
        for the object; otherwise, `null`

    See Also:
    :   - [`AccessibleComponent.setFont(java.awt.Font)`](../../javax/accessibility/AccessibleComponent.md#setFont(java.awt.Font))
  + ### setFont

    public void setFont([Font](Font.md "class in java.awt") f)

    Sets the `Font` of this object.

    Specified by:
    :   `setFont` in interface `AccessibleComponent`

    Parameters:
    :   `f` - the new `Font` for the object

    See Also:
    :   - [`AccessibleComponent.getFont()`](../../javax/accessibility/AccessibleComponent.md#getFont())
  + ### getFontMetrics

    public [FontMetrics](FontMetrics.md "class in java.awt") getFontMetrics([Font](Font.md "class in java.awt") f)

    Gets the `FontMetrics` of this object.

    Specified by:
    :   `getFontMetrics` in interface `AccessibleComponent`

    Parameters:
    :   `f` - the `Font`

    Returns:
    :   the `FontMetrics`, if supported,
        the object; otherwise, `null`

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
    :   - [`AccessibleComponent.setEnabled(boolean)`](../../javax/accessibility/AccessibleComponent.md#setEnabled(boolean))
        - [`AccessibleContext.getAccessibleStateSet()`](../../javax/accessibility/AccessibleContext.md#getAccessibleStateSet())
        - [`AccessibleState.ENABLED`](../../javax/accessibility/AccessibleState.md#ENABLED)
        - [`AccessibleStateSet`](../../javax/accessibility/AccessibleStateSet.md "class in javax.accessibility")
  + ### setEnabled

    public void setEnabled(boolean b)

    Sets the enabled state of the object.

    Specified by:
    :   `setEnabled` in interface `AccessibleComponent`

    Parameters:
    :   `b` - if true, enables this object; otherwise, disables it

    See Also:
    :   - [`AccessibleComponent.isEnabled()`](../../javax/accessibility/AccessibleComponent.md#isEnabled())
  + ### isVisible

    public boolean isVisible()

    Determines if the object is visible. Note: this means that the
    object intends to be visible; however, it may not in fact be
    showing on the screen because one of the objects that this object
    is contained by is not visible. To determine if an object is
    showing on the screen, use `isShowing`.

    Specified by:
    :   `isVisible` in interface `AccessibleComponent`

    Returns:
    :   true if object is visible; otherwise, false

    See Also:
    :   - [`AccessibleComponent.setVisible(boolean)`](../../javax/accessibility/AccessibleComponent.md#setVisible(boolean))
        - [`AccessibleContext.getAccessibleStateSet()`](../../javax/accessibility/AccessibleContext.md#getAccessibleStateSet())
        - [`AccessibleState.VISIBLE`](../../javax/accessibility/AccessibleState.md#VISIBLE)
        - [`AccessibleStateSet`](../../javax/accessibility/AccessibleStateSet.md "class in javax.accessibility")
  + ### setVisible

    public void setVisible(boolean b)

    Sets the visible state of the object.

    Specified by:
    :   `setVisible` in interface `AccessibleComponent`

    Parameters:
    :   `b` - if true, shows this object; otherwise, hides it

    See Also:
    :   - [`AccessibleComponent.isVisible()`](../../javax/accessibility/AccessibleComponent.md#isVisible())
  + ### isShowing

    public boolean isShowing()

    Determines if the object is showing. This is determined by checking
    the visibility of the object and ancestors of the object. Note:
    this will return true even if the object is obscured by another
    (for example, it happens to be underneath a menu that was pulled
    down).

    Specified by:
    :   `isShowing` in interface `AccessibleComponent`

    Returns:
    :   true if object is showing; otherwise, false
  + ### contains

    public boolean contains([Point](Point.md "class in java.awt") p)

    Checks whether the specified point is within this object's bounds,
    where the point's x and y coordinates are defined to be relative to
    the coordinate system of the object.

    Specified by:
    :   `contains` in interface `AccessibleComponent`

    Parameters:
    :   `p` - the `Point` relative to the
        coordinate system of the object

    Returns:
    :   true if object contains `Point`; otherwise false

    See Also:
    :   - [`AccessibleComponent.getBounds()`](../../javax/accessibility/AccessibleComponent.md#getBounds())
  + ### getLocationOnScreen

    public [Point](Point.md "class in java.awt") getLocationOnScreen()

    Returns the location of the object on the screen.

    Specified by:
    :   `getLocationOnScreen` in interface `AccessibleComponent`

    Returns:
    :   location of object on screen -- can be
        `null` if this object is not on the screen

    See Also:
    :   - [`AccessibleComponent.getBounds()`](../../javax/accessibility/AccessibleComponent.md#getBounds())
        - [`AccessibleComponent.getLocation()`](../../javax/accessibility/AccessibleComponent.md#getLocation())
  + ### getLocation

    public [Point](Point.md "class in java.awt") getLocation()

    Gets the location of the object relative to the parent in the form
    of a point specifying the object's top-left corner in the screen's
    coordinate space.

    Specified by:
    :   `getLocation` in interface `AccessibleComponent`

    Returns:
    :   an instance of Point representing the top-left corner of
        the object's bounds in the coordinate space of the screen;
        `null` if this object or its parent are not on the screen

    See Also:
    :   - [`AccessibleComponent.getBounds()`](../../javax/accessibility/AccessibleComponent.md#getBounds())
        - [`AccessibleComponent.getLocationOnScreen()`](../../javax/accessibility/AccessibleComponent.md#getLocationOnScreen())
  + ### setLocation

    public void setLocation([Point](Point.md "class in java.awt") p)

    Sets the location of the object relative to the parent.

    Specified by:
    :   `setLocation` in interface `AccessibleComponent`

    Parameters:
    :   `p` - the coordinates of the object

    See Also:
    :   - [`AccessibleComponent.getLocation()`](../../javax/accessibility/AccessibleComponent.md#getLocation())
  + ### getBounds

    public [Rectangle](Rectangle.md "class in java.awt") getBounds()

    Gets the bounds of this object in the form of a Rectangle object.
    The bounds specify this object's width, height, and location
    relative to its parent.

    Specified by:
    :   `getBounds` in interface `AccessibleComponent`

    Returns:
    :   a rectangle indicating this component's bounds;
        `null` if this object is not on the screen

    See Also:
    :   - [`AccessibleComponent.contains(java.awt.Point)`](../../javax/accessibility/AccessibleComponent.md#contains(java.awt.Point))
  + ### setBounds

    public void setBounds([Rectangle](Rectangle.md "class in java.awt") r)

    Sets the bounds of this object in the form of a
    `Rectangle` object.
    The bounds specify this object's width, height, and location
    relative to its parent.

    Specified by:
    :   `setBounds` in interface `AccessibleComponent`

    Parameters:
    :   `r` - a rectangle indicating this component's bounds

    See Also:
    :   - [`AccessibleComponent.getBounds()`](../../javax/accessibility/AccessibleComponent.md#getBounds())
  + ### getSize

    public [Dimension](Dimension.md "class in java.awt") getSize()

    Returns the size of this object in the form of a
    `Dimension` object. The height field of the
    `Dimension` object contains this object's
    height, and the width field of the `Dimension`
    object contains this object's width.

    Specified by:
    :   `getSize` in interface `AccessibleComponent`

    Returns:
    :   a `Dimension` object that indicates
        the size of this component; `null` if
        this object is not on the screen

    See Also:
    :   - [`AccessibleComponent.setSize(java.awt.Dimension)`](../../javax/accessibility/AccessibleComponent.md#setSize(java.awt.Dimension))
  + ### setSize

    public void setSize([Dimension](Dimension.md "class in java.awt") d)

    Resizes this object so that it has width and height.

    Specified by:
    :   `setSize` in interface `AccessibleComponent`

    Parameters:
    :   `d` - the dimension specifying the new size of the object

    See Also:
    :   - [`AccessibleComponent.getSize()`](../../javax/accessibility/AccessibleComponent.md#getSize())
  + ### getAccessibleAt

    public [Accessible](../../javax/accessibility/Accessible.md "interface in javax.accessibility") getAccessibleAt([Point](Point.md "class in java.awt") p)

    Returns the `Accessible` child,
    if one exists, contained at the local
    coordinate `Point`. Otherwise returns
    `null`.

    Specified by:
    :   `getAccessibleAt` in interface `AccessibleComponent`

    Parameters:
    :   `p` - the point defining the top-left corner of
        the `Accessible`, given in the
        coordinate space of the object's parent

    Returns:
    :   the `Accessible`, if it exists,
        at the specified location; else `null`
  + ### isFocusTraversable

    public boolean isFocusTraversable()

    Returns whether this object can accept focus or not.

    Specified by:
    :   `isFocusTraversable` in interface `AccessibleComponent`

    Returns:
    :   true if object can accept focus; otherwise false

    See Also:
    :   - [`AccessibleContext.getAccessibleStateSet()`](../../javax/accessibility/AccessibleContext.md#getAccessibleStateSet())
        - [`AccessibleState.FOCUSABLE`](../../javax/accessibility/AccessibleState.md#FOCUSABLE)
        - [`AccessibleState.FOCUSED`](../../javax/accessibility/AccessibleState.md#FOCUSED)
        - [`AccessibleStateSet`](../../javax/accessibility/AccessibleStateSet.md "class in javax.accessibility")
  + ### requestFocus

    public void requestFocus()

    Requests focus for this object.

    Specified by:
    :   `requestFocus` in interface `AccessibleComponent`

    See Also:
    :   - [`AccessibleComponent.isFocusTraversable()`](../../javax/accessibility/AccessibleComponent.md#isFocusTraversable())
  + ### addFocusListener

    public void addFocusListener([FocusListener](event/FocusListener.md "interface in java.awt.event") l)

    Adds the specified focus listener to receive focus events from this
    component.

    Specified by:
    :   `addFocusListener` in interface `AccessibleComponent`

    Parameters:
    :   `l` - the focus listener

    See Also:
    :   - [`AccessibleComponent.removeFocusListener(java.awt.event.FocusListener)`](../../javax/accessibility/AccessibleComponent.md#removeFocusListener(java.awt.event.FocusListener))
  + ### removeFocusListener

    public void removeFocusListener([FocusListener](event/FocusListener.md "interface in java.awt.event") l)

    Removes the specified focus listener so it no longer receives focus
    events from this component.

    Specified by:
    :   `removeFocusListener` in interface `AccessibleComponent`

    Parameters:
    :   `l` - the focus listener

    See Also:
    :   - [`AccessibleComponent.addFocusListener(java.awt.event.FocusListener)`](../../javax/accessibility/AccessibleComponent.md#addFocusListener(java.awt.event.FocusListener))