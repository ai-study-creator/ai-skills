Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class Container.AccessibleAWTContainer

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility")

[java.awt.Component.AccessibleAWTComponent](Component.AccessibleAWTComponent.md "class in java.awt")

java.awt.Container.AccessibleAWTContainer

All Implemented Interfaces:
:   `Serializable`, `AccessibleComponent`

Direct Known Subclasses:
:   `Box.AccessibleBox`, `CellRendererPane.AccessibleCellRendererPane`, `JComponent.AccessibleJComponent`, `Panel.AccessibleAWTPanel`, `ScrollPane.AccessibleAWTScrollPane`, `Window.AccessibleAWTWindow`

Enclosing class:
:   `Container`

---

protected class Container.AccessibleAWTContainer
extends [Component.AccessibleAWTComponent](Component.AccessibleAWTComponent.md "class in java.awt")

Inner class of Container used to provide default support for
accessibility. This class is not meant to be used directly by
application developers, but is instead meant only to be
subclassed by container developers.

The class used to obtain the accessible role for this object,
as well as implementing many of the methods in the
AccessibleContainer interface.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.awt.Container.AccessibleAWTContainer)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `Container.AccessibleAWTContainer.AccessibleContainerHandler`

  Fire `PropertyChange` listener, if one is registered,
  when children are added or removed.

  ## Nested classes/interfaces inherited from class java.awt.[Component.AccessibleAWTComponent](Component.AccessibleAWTComponent.md "class in java.awt")

  `Component.AccessibleAWTComponent.AccessibleAWTComponentHandler, Component.AccessibleAWTComponent.AccessibleAWTFocusHandler`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected ContainerListener`

  `accessibleContainerHandler`

  The handler to fire `PropertyChange`
  when children are added or removed

  ### Fields inherited from class java.awt.[Component.AccessibleAWTComponent](Component.AccessibleAWTComponent.md "class in java.awt")

  `accessibleAWTComponentHandler, accessibleAWTFocusHandler`

  ### Fields inherited from class javax.accessibility.[AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility")

  `ACCESSIBLE_ACTION_PROPERTY, ACCESSIBLE_ACTIVE_DESCENDANT_PROPERTY, ACCESSIBLE_CARET_PROPERTY, ACCESSIBLE_CHILD_PROPERTY, ACCESSIBLE_COMPONENT_BOUNDS_CHANGED, ACCESSIBLE_DESCRIPTION_PROPERTY, ACCESSIBLE_HYPERTEXT_OFFSET, ACCESSIBLE_INVALIDATE_CHILDREN, ACCESSIBLE_NAME_PROPERTY, ACCESSIBLE_SELECTION_PROPERTY, ACCESSIBLE_STATE_PROPERTY, ACCESSIBLE_TABLE_CAPTION_CHANGED, ACCESSIBLE_TABLE_COLUMN_DESCRIPTION_CHANGED, ACCESSIBLE_TABLE_COLUMN_HEADER_CHANGED, ACCESSIBLE_TABLE_MODEL_CHANGED, ACCESSIBLE_TABLE_ROW_DESCRIPTION_CHANGED, ACCESSIBLE_TABLE_ROW_HEADER_CHANGED, ACCESSIBLE_TABLE_SUMMARY_CHANGED, ACCESSIBLE_TEXT_ATTRIBUTES_CHANGED, ACCESSIBLE_TEXT_PROPERTY, ACCESSIBLE_VALUE_PROPERTY, ACCESSIBLE_VISIBLE_DATA_PROPERTY, accessibleDescription, accessibleName, accessibleParent`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AccessibleAWTContainer()`

  Constructs an `AccessibleAWTContainer`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addPropertyChangeListener(PropertyChangeListener listener)`

  Adds a PropertyChangeListener to the listener list.

  `Accessible`

  `getAccessibleAt(Point p)`

  Returns the `Accessible` child, if one exists,
  contained at the local coordinate `Point`.

  `Accessible`

  `getAccessibleChild(int i)`

  Returns the nth `Accessible` child of the object.

  `int`

  `getAccessibleChildrenCount()`

  Returns the number of accessible children in the object.

  `void`

  `removePropertyChangeListener(PropertyChangeListener listener)`

  Remove a PropertyChangeListener from the listener list.

  ### Methods inherited from class java.awt.[Component.AccessibleAWTComponent](Component.AccessibleAWTComponent.md "class in java.awt")

  `addFocusListener, contains, getAccessibleComponent, getAccessibleDescription, getAccessibleIndexInParent, getAccessibleName, getAccessibleParent, getAccessibleRole, getAccessibleStateSet, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocale, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

  ### Methods inherited from class javax.accessibility.[AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility")

  `firePropertyChange, getAccessibleAction, getAccessibleEditableText, getAccessibleIcon, getAccessibleRelationSet, getAccessibleSelection, getAccessibleTable, getAccessibleText, getAccessibleValue, setAccessibleDescription, setAccessibleName, setAccessibleParent`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### accessibleContainerHandler

    protected [ContainerListener](event/ContainerListener.md "interface in java.awt.event") accessibleContainerHandler

    The handler to fire `PropertyChange`
    when children are added or removed
* ## Constructor Details

  + ### AccessibleAWTContainer

    protected AccessibleAWTContainer()

    Constructs an `AccessibleAWTContainer`.
* ## Method Details

  + ### getAccessibleChildrenCount

    public int getAccessibleChildrenCount()

    Returns the number of accessible children in the object. If all
    of the children of this object implement `Accessible`,
    then this method should return the number of children of this object.

    Overrides:
    :   `getAccessibleChildrenCount` in class `Component.AccessibleAWTComponent`

    Returns:
    :   the number of accessible children in the object
  + ### getAccessibleChild

    public [Accessible](../../javax/accessibility/Accessible.md "interface in javax.accessibility") getAccessibleChild(int i)

    Returns the nth `Accessible` child of the object.

    Overrides:
    :   `getAccessibleChild` in class `Component.AccessibleAWTComponent`

    Parameters:
    :   `i` - zero-based index of child

    Returns:
    :   the nth `Accessible` child of the object

    See Also:
    :   - [`AccessibleContext.getAccessibleChildrenCount()`](../../javax/accessibility/AccessibleContext.md#getAccessibleChildrenCount())
  + ### getAccessibleAt

    public [Accessible](../../javax/accessibility/Accessible.md "interface in javax.accessibility") getAccessibleAt([Point](Point.md "class in java.awt") p)

    Returns the `Accessible` child, if one exists,
    contained at the local coordinate `Point`.

    Specified by:
    :   `getAccessibleAt` in interface `AccessibleComponent`

    Overrides:
    :   `getAccessibleAt` in class `Component.AccessibleAWTComponent`

    Parameters:
    :   `p` - the point defining the top-left corner of the
        `Accessible`, given in the coordinate space
        of the object's parent

    Returns:
    :   the `Accessible`, if it exists,
        at the specified location; else `null`
  + ### addPropertyChangeListener

    public void addPropertyChangeListener([PropertyChangeListener](../beans/PropertyChangeListener.md "interface in java.beans") listener)

    Adds a PropertyChangeListener to the listener list.

    Overrides:
    :   `addPropertyChangeListener` in class `Component.AccessibleAWTComponent`

    Parameters:
    :   `listener` - the PropertyChangeListener to be added

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
    :   `removePropertyChangeListener` in class `Component.AccessibleAWTComponent`

    Parameters:
    :   `listener` - the PropertyChangeListener to be removed