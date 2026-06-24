Module [java.desktop](../../../module-summary.md)

Package [javax.swing.table](package-summary.md)

# Class JTableHeader.AccessibleJTableHeader.AccessibleJTableHeaderEntry

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleContext](../../accessibility/AccessibleContext.md "class in javax.accessibility")

javax.swing.table.JTableHeader.AccessibleJTableHeader.AccessibleJTableHeaderEntry

All Implemented Interfaces:
:   `Accessible`, `AccessibleComponent`

Enclosing class:
:   `JTableHeader.AccessibleJTableHeader`

---

protected class JTableHeader.AccessibleJTableHeader.AccessibleJTableHeaderEntry
extends [AccessibleContext](../../accessibility/AccessibleContext.md "class in javax.accessibility")
implements [Accessible](../../accessibility/Accessible.md "interface in javax.accessibility"), [AccessibleComponent](../../accessibility/AccessibleComponent.md "interface in javax.accessibility")

This class provides an implementation of the Java Accessibility
API appropriate for JTableHeader entries.

* ## Field Summary

  ### Fields inherited from class javax.accessibility.[AccessibleContext](../../accessibility/AccessibleContext.md "class in javax.accessibility")

  `ACCESSIBLE_ACTION_PROPERTY, ACCESSIBLE_ACTIVE_DESCENDANT_PROPERTY, ACCESSIBLE_CARET_PROPERTY, ACCESSIBLE_CHILD_PROPERTY, ACCESSIBLE_COMPONENT_BOUNDS_CHANGED, ACCESSIBLE_DESCRIPTION_PROPERTY, ACCESSIBLE_HYPERTEXT_OFFSET, ACCESSIBLE_INVALIDATE_CHILDREN, ACCESSIBLE_NAME_PROPERTY, ACCESSIBLE_SELECTION_PROPERTY, ACCESSIBLE_STATE_PROPERTY, ACCESSIBLE_TABLE_CAPTION_CHANGED, ACCESSIBLE_TABLE_COLUMN_DESCRIPTION_CHANGED, ACCESSIBLE_TABLE_COLUMN_HEADER_CHANGED, ACCESSIBLE_TABLE_MODEL_CHANGED, ACCESSIBLE_TABLE_ROW_DESCRIPTION_CHANGED, ACCESSIBLE_TABLE_ROW_HEADER_CHANGED, ACCESSIBLE_TABLE_SUMMARY_CHANGED, ACCESSIBLE_TEXT_ATTRIBUTES_CHANGED, ACCESSIBLE_TEXT_PROPERTY, ACCESSIBLE_VALUE_PROPERTY, ACCESSIBLE_VISIBLE_DATA_PROPERTY, accessibleDescription, accessibleName, accessibleParent`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AccessibleJTableHeaderEntry(int c,
  JTableHeader p,
  JTable t)`

  Constructs an AccessibleJTableHeaderEntry
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

  Checks whether the specified point is within this object's bounds, where
  the point's x and y coordinates are defined to be relative to the
  coordinate system of the object.

  `AccessibleAction`

  `getAccessibleAction()`

  Gets the `AccessibleAction` associated with this object that
  supports one or more actions.

  `Accessible`

  `getAccessibleAt(Point p)`

  Returns the `Accessible` child, if one exists, contained at the
  local coordinate `Point`.

  `Accessible`

  `getAccessibleChild(int i)`

  Returns the specified `Accessible` child of the object.

  `int`

  `getAccessibleChildrenCount()`

  Returns the number of accessible children of the object.

  `AccessibleComponent`

  `getAccessibleComponent()`

  Get the AccessibleComponent associated with this object.

  `AccessibleContext`

  `getAccessibleContext()`

  Get the AccessibleContext associated with this object.

  `String`

  `getAccessibleDescription()`

  Gets the `accessibleDescription` property of this object.

  `int`

  `getAccessibleIndexInParent()`

  Gets the 0-based index of this object in its accessible parent.

  `String`

  `getAccessibleName()`

  Gets the `accessibleName` property of this object.

  `AccessibleRole`

  `getAccessibleRole()`

  Gets the role of this object.

  `AccessibleSelection`

  `getAccessibleSelection()`

  Gets the `AccessibleSelection` associated with this object which
  allows its `Accessible` children to be selected.

  `AccessibleStateSet`

  `getAccessibleStateSet()`

  Gets the state set of this object.

  `AccessibleText`

  `getAccessibleText()`

  Gets the `AccessibleText` associated with this object presenting
  text on the display.

  `AccessibleValue`

  `getAccessibleValue()`

  Gets the `AccessibleValue` associated with this object that
  supports a `Numerical` value.

  `Color`

  `getBackground()`

  Gets the background color of this object.

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

  Gets the foreground color of this object.

  `Locale`

  `getLocale()`

  Gets the locale of the component.

  `Point`

  `getLocation()`

  Gets the location of the object relative to the parent in the form of a
  point specifying the object's top-left corner in the screen's coordinate
  space.

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

  Determines if the object is visible.

  `void`

  `removeFocusListener(FocusListener l)`

  Removes the specified focus listener so it no longer receives focus
  events from this component.

  `void`

  `removePropertyChangeListener(PropertyChangeListener l)`

  Removes a `PropertyChangeListener` from the listener list.

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

  ### Methods inherited from class javax.accessibility.[AccessibleContext](../../accessibility/AccessibleContext.md "class in javax.accessibility")

  `firePropertyChange, getAccessibleEditableText, getAccessibleIcon, getAccessibleParent, getAccessibleRelationSet, getAccessibleTable, setAccessibleParent`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AccessibleJTableHeaderEntry

    public AccessibleJTableHeaderEntry(int c,
    [JTableHeader](JTableHeader.md "class in javax.swing.table") p,
    [JTable](../JTable.md "class in javax.swing") t)

    Constructs an AccessibleJTableHeaderEntry

    Parameters:
    :   `c` - the column index
    :   `p` - the parent `JTableHeader`
    :   `t` - the table `JTable`

    Since:
    :   1.4
* ## Method Details

  + ### getAccessibleContext

    public [AccessibleContext](../../accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Get the AccessibleContext associated with this object.
    In the implementation of the Java Accessibility API
    for this class, returns this object, which serves as
    its own AccessibleContext.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Returns:
    :   this object
  + ### getAccessibleName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getAccessibleName()

    Description copied from class: `AccessibleContext`

    Gets the `accessibleName` property of this object. The
    `accessibleName` property of an object is a localized
    `String` that designates the purpose of the object. For example,
    the `accessibleName` property of a label or button might be the
    text of the label or button itself. In the case of an object that doesn't
    display its name, the `accessibleName` should still be set. For
    example, in the case of a text field used to enter the name of a city,
    the `accessibleName` for the `en_US` locale could be 'city.'

    Overrides:
    :   `getAccessibleName` in class `AccessibleContext`

    Returns:
    :   the localized name of the object; `null` if this object
        does not have a name

    See Also:
    :   - [`AccessibleContext.setAccessibleName(java.lang.String)`](../../accessibility/AccessibleContext.md#setAccessibleName(java.lang.String))
  + ### setAccessibleName

    public void setAccessibleName([String](../../../../java.base/java/lang/String.md "class in java.lang") s)

    Description copied from class: `AccessibleContext`

    Sets the localized accessible name of this object. Changing the name will
    cause a `PropertyChangeEvent` to be fired for the
    `ACCESSIBLE_NAME_PROPERTY` property.

    Overrides:
    :   `setAccessibleName` in class `AccessibleContext`

    Parameters:
    :   `s` - the new localized name of the object

    See Also:
    :   - [`AccessibleContext.getAccessibleName()`](../../accessibility/AccessibleContext.md#getAccessibleName())
        - [`AccessibleContext.addPropertyChangeListener(java.beans.PropertyChangeListener)`](../../accessibility/AccessibleContext.md#addPropertyChangeListener(java.beans.PropertyChangeListener))
  + ### getAccessibleDescription

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getAccessibleDescription()

    Description copied from class: `AccessibleContext`

    Gets the `accessibleDescription` property of this object. The
    `accessibleDescription` property of this object is a short
    localized phrase describing the purpose of the object. For example, in
    the case of a 'Cancel' button, the `accessibleDescription` could be
    'Ignore changes and close dialog box.'

    Overrides:
    :   `getAccessibleDescription` in class `AccessibleContext`

    Returns:
    :   the localized description of the object; `null` if this
        object does not have a description

    See Also:
    :   - [`AccessibleContext.setAccessibleDescription(java.lang.String)`](../../accessibility/AccessibleContext.md#setAccessibleDescription(java.lang.String))
  + ### setAccessibleDescription

    public void setAccessibleDescription([String](../../../../java.base/java/lang/String.md "class in java.lang") s)

    Description copied from class: `AccessibleContext`

    Sets the accessible description of this object. Changing the name will
    cause a `PropertyChangeEvent` to be fired for the
    `ACCESSIBLE_DESCRIPTION_PROPERTY` property.

    Overrides:
    :   `setAccessibleDescription` in class `AccessibleContext`

    Parameters:
    :   `s` - the new localized description of the object

    See Also:
    :   - [`AccessibleContext.setAccessibleName(java.lang.String)`](../../accessibility/AccessibleContext.md#setAccessibleName(java.lang.String))
        - [`AccessibleContext.addPropertyChangeListener(java.beans.PropertyChangeListener)`](../../accessibility/AccessibleContext.md#addPropertyChangeListener(java.beans.PropertyChangeListener))
  + ### getAccessibleRole

    public [AccessibleRole](../../accessibility/AccessibleRole.md "class in javax.accessibility") getAccessibleRole()

    Description copied from class: `AccessibleContext`

    Gets the role of this object. The role of the object is the generic
    purpose or use of the class of this object. For example, the role of a
    push button is `AccessibleRole.PUSH_BUTTON`. The roles in
    `AccessibleRole` are provided so component developers can pick from
    a set of predefined roles. This enables assistive technologies to provide
    a consistent interface to various tweaked subclasses of components (e.g.,
    use `AccessibleRole.PUSH_BUTTON` for all components that act like a
    push button) as well as distinguish between subclasses that behave
    differently (e.g., `AccessibleRole.CHECK_BOX` for check boxes and
    `AccessibleRole.RADIO_BUTTON` for radio buttons).

    Note that the `AccessibleRole` class is also extensible, so custom
    component developers can define their own `AccessibleRole`'s if the
    set of predefined roles is inadequate.

    Specified by:
    :   `getAccessibleRole` in class `AccessibleContext`

    Returns:
    :   an instance of `AccessibleRole` describing the role of the
        object

    See Also:
    :   - [`AccessibleRole`](../../accessibility/AccessibleRole.md "class in javax.accessibility")
  + ### getAccessibleStateSet

    public [AccessibleStateSet](../../accessibility/AccessibleStateSet.md "class in javax.accessibility") getAccessibleStateSet()

    Description copied from class: `AccessibleContext`

    Gets the state set of this object. The `AccessibleStateSet` of an
    object is composed of a set of unique `AccessibleStates`. A change
    in the `AccessibleStateSet` of an object will cause a
    `PropertyChangeEvent` to be fired for the
    `ACCESSIBLE_STATE_PROPERTY` property.

    Specified by:
    :   `getAccessibleStateSet` in class `AccessibleContext`

    Returns:
    :   an instance of `AccessibleStateSet` containing the current
        state set of the object

    See Also:
    :   - [`AccessibleStateSet`](../../accessibility/AccessibleStateSet.md "class in javax.accessibility")
        - [`AccessibleState`](../../accessibility/AccessibleState.md "class in javax.accessibility")
        - [`AccessibleContext.addPropertyChangeListener(java.beans.PropertyChangeListener)`](../../accessibility/AccessibleContext.md#addPropertyChangeListener(java.beans.PropertyChangeListener))
  + ### getAccessibleIndexInParent

    public int getAccessibleIndexInParent()

    Description copied from class: `AccessibleContext`

    Gets the 0-based index of this object in its accessible parent.

    Specified by:
    :   `getAccessibleIndexInParent` in class `AccessibleContext`

    Returns:
    :   the 0-based index of this object in its parent; -1 if this object
        does not have an accessible parent.

    See Also:
    :   - [`AccessibleContext.getAccessibleParent()`](../../accessibility/AccessibleContext.md#getAccessibleParent())
        - [`AccessibleContext.getAccessibleChildrenCount()`](../../accessibility/AccessibleContext.md#getAccessibleChildrenCount())
        - [`AccessibleContext.getAccessibleChild(int)`](../../accessibility/AccessibleContext.md#getAccessibleChild(int))
  + ### getAccessibleChildrenCount

    public int getAccessibleChildrenCount()

    Description copied from class: `AccessibleContext`

    Returns the number of accessible children of the object.

    Specified by:
    :   `getAccessibleChildrenCount` in class `AccessibleContext`

    Returns:
    :   the number of accessible children of the object.
  + ### getAccessibleChild

    public [Accessible](../../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleChild(int i)

    Description copied from class: `AccessibleContext`

    Returns the specified `Accessible` child of the object. The
    `Accessible` children of an `Accessible` object are
    zero-based, so the first child of an `Accessible` child is at index
    0, the second child is at index 1, and so on.

    Specified by:
    :   `getAccessibleChild` in class `AccessibleContext`

    Parameters:
    :   `i` - zero-based index of child

    Returns:
    :   the `Accessible` child of the object

    See Also:
    :   - [`AccessibleContext.getAccessibleChildrenCount()`](../../accessibility/AccessibleContext.md#getAccessibleChildrenCount())
  + ### getLocale

    public [Locale](../../../../java.base/java/util/Locale.md "class in java.util") getLocale()

    Description copied from class: `AccessibleContext`

    Gets the locale of the component. If the component does not have a
    locale, then the locale of its parent is returned.

    Specified by:
    :   `getLocale` in class `AccessibleContext`

    Returns:
    :   this component's locale. If this component does not have a
        locale, the locale of its parent is returned.
  + ### addPropertyChangeListener

    public void addPropertyChangeListener([PropertyChangeListener](../../../java/beans/PropertyChangeListener.md "interface in java.beans") l)

    Description copied from class: `AccessibleContext`

    Adds a `PropertyChangeListener` to the listener list. The listener
    is registered for all `Accessible` properties and will be called
    when those properties change.

    Overrides:
    :   `addPropertyChangeListener` in class `AccessibleContext`

    Parameters:
    :   `l` - The PropertyChangeListener to be added

    See Also:
    :   - [`AccessibleContext.ACCESSIBLE_NAME_PROPERTY`](../../accessibility/AccessibleContext.md#ACCESSIBLE_NAME_PROPERTY)
        - [`AccessibleContext.ACCESSIBLE_DESCRIPTION_PROPERTY`](../../accessibility/AccessibleContext.md#ACCESSIBLE_DESCRIPTION_PROPERTY)
        - [`AccessibleContext.ACCESSIBLE_STATE_PROPERTY`](../../accessibility/AccessibleContext.md#ACCESSIBLE_STATE_PROPERTY)
        - [`AccessibleContext.ACCESSIBLE_VALUE_PROPERTY`](../../accessibility/AccessibleContext.md#ACCESSIBLE_VALUE_PROPERTY)
        - [`AccessibleContext.ACCESSIBLE_SELECTION_PROPERTY`](../../accessibility/AccessibleContext.md#ACCESSIBLE_SELECTION_PROPERTY)
        - [`AccessibleContext.ACCESSIBLE_TEXT_PROPERTY`](../../accessibility/AccessibleContext.md#ACCESSIBLE_TEXT_PROPERTY)
        - [`AccessibleContext.ACCESSIBLE_VISIBLE_DATA_PROPERTY`](../../accessibility/AccessibleContext.md#ACCESSIBLE_VISIBLE_DATA_PROPERTY)
  + ### removePropertyChangeListener

    public void removePropertyChangeListener([PropertyChangeListener](../../../java/beans/PropertyChangeListener.md "interface in java.beans") l)

    Description copied from class: `AccessibleContext`

    Removes a `PropertyChangeListener` from the listener list. This
    removes a `PropertyChangeListener` that was registered for all
    properties.

    Overrides:
    :   `removePropertyChangeListener` in class `AccessibleContext`

    Parameters:
    :   `l` - The PropertyChangeListener to be removed
  + ### getAccessibleAction

    public [AccessibleAction](../../accessibility/AccessibleAction.md "interface in javax.accessibility") getAccessibleAction()

    Description copied from class: `AccessibleContext`

    Gets the `AccessibleAction` associated with this object that
    supports one or more actions.

    Overrides:
    :   `getAccessibleAction` in class `AccessibleContext`

    Returns:
    :   `AccessibleAction` if supported by object; else return
        `null`

    See Also:
    :   - [`AccessibleAction`](../../accessibility/AccessibleAction.md "interface in javax.accessibility")
  + ### getAccessibleComponent

    public [AccessibleComponent](../../accessibility/AccessibleComponent.md "interface in javax.accessibility") getAccessibleComponent()

    Get the AccessibleComponent associated with this object. In the
    implementation of the Java Accessibility API for this class,
    return this object, which is responsible for implementing the
    AccessibleComponent interface on behalf of itself.

    Overrides:
    :   `getAccessibleComponent` in class `AccessibleContext`

    Returns:
    :   this object

    See Also:
    :   - [`AccessibleComponent`](../../accessibility/AccessibleComponent.md "interface in javax.accessibility")
  + ### getAccessibleSelection

    public [AccessibleSelection](../../accessibility/AccessibleSelection.md "interface in javax.accessibility") getAccessibleSelection()

    Description copied from class: `AccessibleContext`

    Gets the `AccessibleSelection` associated with this object which
    allows its `Accessible` children to be selected.

    Overrides:
    :   `getAccessibleSelection` in class `AccessibleContext`

    Returns:
    :   `AccessibleSelection` if supported by object; else return
        `null`

    See Also:
    :   - [`AccessibleSelection`](../../accessibility/AccessibleSelection.md "interface in javax.accessibility")
  + ### getAccessibleText

    public [AccessibleText](../../accessibility/AccessibleText.md "interface in javax.accessibility") getAccessibleText()

    Description copied from class: `AccessibleContext`

    Gets the `AccessibleText` associated with this object presenting
    text on the display.

    Overrides:
    :   `getAccessibleText` in class `AccessibleContext`

    Returns:
    :   `AccessibleText` if supported by object; else return
        `null`

    See Also:
    :   - [`AccessibleText`](../../accessibility/AccessibleText.md "interface in javax.accessibility")
  + ### getAccessibleValue

    public [AccessibleValue](../../accessibility/AccessibleValue.md "interface in javax.accessibility") getAccessibleValue()

    Description copied from class: `AccessibleContext`

    Gets the `AccessibleValue` associated with this object that
    supports a `Numerical` value.

    Overrides:
    :   `getAccessibleValue` in class `AccessibleContext`

    Returns:
    :   `AccessibleValue` if supported by object; else return
        `null`

    See Also:
    :   - [`AccessibleValue`](../../accessibility/AccessibleValue.md "interface in javax.accessibility")
  + ### getBackground

    public [Color](../../../java/awt/Color.md "class in java.awt") getBackground()

    Description copied from interface: `AccessibleComponent`

    Gets the background color of this object.

    Specified by:
    :   `getBackground` in interface `AccessibleComponent`

    Returns:
    :   the background color, if supported, of the object; otherwise,
        `null`

    See Also:
    :   - [`AccessibleComponent.setBackground(java.awt.Color)`](../../accessibility/AccessibleComponent.md#setBackground(java.awt.Color))
  + ### setBackground

    public void setBackground([Color](../../../java/awt/Color.md "class in java.awt") c)

    Description copied from interface: `AccessibleComponent`

    Sets the background color of this object.

    Specified by:
    :   `setBackground` in interface `AccessibleComponent`

    Parameters:
    :   `c` - the new color for the background

    See Also:
    :   - [`AccessibleComponent.getBackground()`](../../accessibility/AccessibleComponent.md#getBackground())
  + ### getForeground

    public [Color](../../../java/awt/Color.md "class in java.awt") getForeground()

    Description copied from interface: `AccessibleComponent`

    Gets the foreground color of this object.

    Specified by:
    :   `getForeground` in interface `AccessibleComponent`

    Returns:
    :   the foreground color, if supported, of the object; otherwise,
        `null`

    See Also:
    :   - [`AccessibleComponent.setForeground(java.awt.Color)`](../../accessibility/AccessibleComponent.md#setForeground(java.awt.Color))
  + ### setForeground

    public void setForeground([Color](../../../java/awt/Color.md "class in java.awt") c)

    Description copied from interface: `AccessibleComponent`

    Sets the foreground color of this object.

    Specified by:
    :   `setForeground` in interface `AccessibleComponent`

    Parameters:
    :   `c` - the new color for the foreground

    See Also:
    :   - [`AccessibleComponent.getForeground()`](../../accessibility/AccessibleComponent.md#getForeground())
  + ### getCursor

    public [Cursor](../../../java/awt/Cursor.md "class in java.awt") getCursor()

    Description copied from interface: `AccessibleComponent`

    Gets the cursor of this object.

    Specified by:
    :   `getCursor` in interface `AccessibleComponent`

    Returns:
    :   the cursor, if supported, of the object; otherwise, `null`

    See Also:
    :   - [`AccessibleComponent.setCursor(java.awt.Cursor)`](../../accessibility/AccessibleComponent.md#setCursor(java.awt.Cursor))
  + ### setCursor

    public void setCursor([Cursor](../../../java/awt/Cursor.md "class in java.awt") c)

    Description copied from interface: `AccessibleComponent`

    Sets the cursor of this object.

    Specified by:
    :   `setCursor` in interface `AccessibleComponent`

    Parameters:
    :   `c` - the new cursor for the object

    See Also:
    :   - [`AccessibleComponent.getCursor()`](../../accessibility/AccessibleComponent.md#getCursor())
  + ### getFont

    public [Font](../../../java/awt/Font.md "class in java.awt") getFont()

    Description copied from interface: `AccessibleComponent`

    Gets the font of this object.

    Specified by:
    :   `getFont` in interface `AccessibleComponent`

    Returns:
    :   the font, if supported, for the object; otherwise, `null`

    See Also:
    :   - [`AccessibleComponent.setFont(java.awt.Font)`](../../accessibility/AccessibleComponent.md#setFont(java.awt.Font))
  + ### setFont

    public void setFont([Font](../../../java/awt/Font.md "class in java.awt") f)

    Description copied from interface: `AccessibleComponent`

    Sets the font of this object.

    Specified by:
    :   `setFont` in interface `AccessibleComponent`

    Parameters:
    :   `f` - the new font for the object

    See Also:
    :   - [`AccessibleComponent.getFont()`](../../accessibility/AccessibleComponent.md#getFont())
  + ### getFontMetrics

    public [FontMetrics](../../../java/awt/FontMetrics.md "class in java.awt") getFontMetrics([Font](../../../java/awt/Font.md "class in java.awt") f)

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
    :   - [`AccessibleComponent.getFont()`](../../accessibility/AccessibleComponent.md#getFont())
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
    :   - [`AccessibleComponent.setEnabled(boolean)`](../../accessibility/AccessibleComponent.md#setEnabled(boolean))
        - [`AccessibleContext.getAccessibleStateSet()`](../../accessibility/AccessibleContext.md#getAccessibleStateSet())
        - [`AccessibleState.ENABLED`](../../accessibility/AccessibleState.md#ENABLED)
        - [`AccessibleStateSet`](../../accessibility/AccessibleStateSet.md "class in javax.accessibility")
  + ### setEnabled

    public void setEnabled(boolean b)

    Description copied from interface: `AccessibleComponent`

    Sets the enabled state of the object.

    Specified by:
    :   `setEnabled` in interface `AccessibleComponent`

    Parameters:
    :   `b` - if `true`, enables this object; otherwise, disables it

    See Also:
    :   - [`AccessibleComponent.isEnabled()`](../../accessibility/AccessibleComponent.md#isEnabled())
  + ### isVisible

    public boolean isVisible()

    Description copied from interface: `AccessibleComponent`

    Determines if the object is visible. Note: this means that the object
    intends to be visible; however, it may not be showing on the screen
    because one of the objects that this object is contained by is currently
    not visible. To determine if an object is showing on the screen, use
    [`AccessibleComponent.isShowing()`](../../accessibility/AccessibleComponent.md#isShowing())

    Objects that are visible will also have the
    `AccessibleState.VISIBLE` state set in their
    `AccessibleStateSets`.

    Specified by:
    :   `isVisible` in interface `AccessibleComponent`

    Returns:
    :   `true` if object is visible; otherwise, `false`

    See Also:
    :   - [`AccessibleComponent.setVisible(boolean)`](../../accessibility/AccessibleComponent.md#setVisible(boolean))
        - [`AccessibleContext.getAccessibleStateSet()`](../../accessibility/AccessibleContext.md#getAccessibleStateSet())
        - [`AccessibleState.VISIBLE`](../../accessibility/AccessibleState.md#VISIBLE)
        - [`AccessibleStateSet`](../../accessibility/AccessibleStateSet.md "class in javax.accessibility")
  + ### setVisible

    public void setVisible(boolean b)

    Description copied from interface: `AccessibleComponent`

    Sets the visible state of the object.

    Specified by:
    :   `setVisible` in interface `AccessibleComponent`

    Parameters:
    :   `b` - if `true`, shows this object; otherwise, hides it

    See Also:
    :   - [`AccessibleComponent.isVisible()`](../../accessibility/AccessibleComponent.md#isVisible())
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

    public boolean contains([Point](../../../java/awt/Point.md "class in java.awt") p)

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
    :   - [`AccessibleComponent.getBounds()`](../../accessibility/AccessibleComponent.md#getBounds())
  + ### getLocationOnScreen

    public [Point](../../../java/awt/Point.md "class in java.awt") getLocationOnScreen()

    Description copied from interface: `AccessibleComponent`

    Returns the location of the object on the screen.

    Specified by:
    :   `getLocationOnScreen` in interface `AccessibleComponent`

    Returns:
    :   the location of the object on screen; `null` if this object
        is not on the screen

    See Also:
    :   - [`AccessibleComponent.getBounds()`](../../accessibility/AccessibleComponent.md#getBounds())
        - [`AccessibleComponent.getLocation()`](../../accessibility/AccessibleComponent.md#getLocation())
  + ### getLocation

    public [Point](../../../java/awt/Point.md "class in java.awt") getLocation()

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
    :   - [`AccessibleComponent.getBounds()`](../../accessibility/AccessibleComponent.md#getBounds())
        - [`AccessibleComponent.getLocationOnScreen()`](../../accessibility/AccessibleComponent.md#getLocationOnScreen())
  + ### setLocation

    public void setLocation([Point](../../../java/awt/Point.md "class in java.awt") p)

    Description copied from interface: `AccessibleComponent`

    Sets the location of the object relative to the parent.

    Specified by:
    :   `setLocation` in interface `AccessibleComponent`

    Parameters:
    :   `p` - the new position for the top-left corner

    See Also:
    :   - [`AccessibleComponent.getLocation()`](../../accessibility/AccessibleComponent.md#getLocation())
  + ### getBounds

    public [Rectangle](../../../java/awt/Rectangle.md "class in java.awt") getBounds()

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
    :   - [`AccessibleComponent.contains(java.awt.Point)`](../../accessibility/AccessibleComponent.md#contains(java.awt.Point))
  + ### setBounds

    public void setBounds([Rectangle](../../../java/awt/Rectangle.md "class in java.awt") r)

    Description copied from interface: `AccessibleComponent`

    Sets the bounds of this object in the form of a `Rectangle` object.
    The bounds specify this object's width, height, and location relative to
    its parent.

    Specified by:
    :   `setBounds` in interface `AccessibleComponent`

    Parameters:
    :   `r` - rectangle indicating this component's bounds

    See Also:
    :   - [`AccessibleComponent.getBounds()`](../../accessibility/AccessibleComponent.md#getBounds())
  + ### getSize

    public [Dimension](../../../java/awt/Dimension.md "class in java.awt") getSize()

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
    :   - [`AccessibleComponent.setSize(java.awt.Dimension)`](../../accessibility/AccessibleComponent.md#setSize(java.awt.Dimension))
  + ### setSize

    public void setSize([Dimension](../../../java/awt/Dimension.md "class in java.awt") d)

    Description copied from interface: `AccessibleComponent`

    Resizes this object so that it has width and height.

    Specified by:
    :   `setSize` in interface `AccessibleComponent`

    Parameters:
    :   `d` - The dimension specifying the new size of the object

    See Also:
    :   - [`AccessibleComponent.getSize()`](../../accessibility/AccessibleComponent.md#getSize())
  + ### getAccessibleAt

    public [Accessible](../../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleAt([Point](../../../java/awt/Point.md "class in java.awt") p)

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
    :   - [`AccessibleContext.getAccessibleStateSet()`](../../accessibility/AccessibleContext.md#getAccessibleStateSet())
        - [`AccessibleState.FOCUSABLE`](../../accessibility/AccessibleState.md#FOCUSABLE)
        - [`AccessibleState.FOCUSED`](../../accessibility/AccessibleState.md#FOCUSED)
        - [`AccessibleStateSet`](../../accessibility/AccessibleStateSet.md "class in javax.accessibility")
  + ### requestFocus

    public void requestFocus()

    Description copied from interface: `AccessibleComponent`

    Requests focus for this object. If this object cannot accept focus,
    nothing will happen. Otherwise, the object will attempt to take focus.

    Specified by:
    :   `requestFocus` in interface `AccessibleComponent`

    See Also:
    :   - [`AccessibleComponent.isFocusTraversable()`](../../accessibility/AccessibleComponent.md#isFocusTraversable())
  + ### addFocusListener

    public void addFocusListener([FocusListener](../../../java/awt/event/FocusListener.md "interface in java.awt.event") l)

    Description copied from interface: `AccessibleComponent`

    Adds the specified focus listener to receive focus events from this
    component.

    Specified by:
    :   `addFocusListener` in interface `AccessibleComponent`

    Parameters:
    :   `l` - the focus listener

    See Also:
    :   - [`AccessibleComponent.removeFocusListener(java.awt.event.FocusListener)`](../../accessibility/AccessibleComponent.md#removeFocusListener(java.awt.event.FocusListener))
  + ### removeFocusListener

    public void removeFocusListener([FocusListener](../../../java/awt/event/FocusListener.md "interface in java.awt.event") l)

    Description copied from interface: `AccessibleComponent`

    Removes the specified focus listener so it no longer receives focus
    events from this component.

    Specified by:
    :   `removeFocusListener` in interface `AccessibleComponent`

    Parameters:
    :   `l` - the focus listener

    See Also:
    :   - [`AccessibleComponent.addFocusListener(java.awt.event.FocusListener)`](../../accessibility/AccessibleComponent.md#addFocusListener(java.awt.event.FocusListener))