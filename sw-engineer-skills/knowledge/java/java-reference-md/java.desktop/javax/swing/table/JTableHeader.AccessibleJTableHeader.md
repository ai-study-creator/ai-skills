Module [java.desktop](../../../module-summary.md)

Package [javax.swing.table](package-summary.md)

# Class JTableHeader.AccessibleJTableHeader

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleContext](../../accessibility/AccessibleContext.md "class in javax.accessibility")

[java.awt.Component.AccessibleAWTComponent](../../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

[java.awt.Container.AccessibleAWTContainer](../../../java/awt/Container.AccessibleAWTContainer.md "class in java.awt")

[javax.swing.JComponent.AccessibleJComponent](../JComponent.AccessibleJComponent.md "class in javax.swing")

javax.swing.table.JTableHeader.AccessibleJTableHeader

All Implemented Interfaces:
:   `Serializable`, `AccessibleComponent`, `AccessibleExtendedComponent`

Enclosing class:
:   `JTableHeader`

---

protected class JTableHeader.AccessibleJTableHeader
extends [JComponent.AccessibleJComponent](../JComponent.AccessibleJComponent.md "class in javax.swing")

This class implements accessibility support for the
`JTableHeader` class. It provides an implementation of the
Java Accessibility API appropriate to table header user-interface
elements.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `JTableHeader.AccessibleJTableHeader.AccessibleJTableHeaderEntry`

  This class provides an implementation of the Java Accessibility
  API appropriate for JTableHeader entries.

  ## Nested classes/interfaces inherited from class javax.swing.[JComponent.AccessibleJComponent](../JComponent.AccessibleJComponent.md "class in javax.swing")

  `JComponent.AccessibleJComponent.AccessibleContainerHandler, JComponent.AccessibleJComponent.AccessibleFocusHandler`

  ## Nested classes/interfaces inherited from class java.awt.[Component.AccessibleAWTComponent](../../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

  `Component.AccessibleAWTComponent.AccessibleAWTComponentHandler, Component.AccessibleAWTComponent.AccessibleAWTFocusHandler`
* ## Field Summary

  ### Fields inherited from class javax.swing.[JComponent.AccessibleJComponent](../JComponent.AccessibleJComponent.md "class in javax.swing")

  `accessibleFocusHandler`

  ### Fields inherited from class java.awt.[Container.AccessibleAWTContainer](../../../java/awt/Container.AccessibleAWTContainer.md "class in java.awt")

  `accessibleContainerHandler`

  ### Fields inherited from class java.awt.[Component.AccessibleAWTComponent](../../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

  `accessibleAWTComponentHandler, accessibleAWTFocusHandler`

  ### Fields inherited from class javax.accessibility.[AccessibleContext](../../accessibility/AccessibleContext.md "class in javax.accessibility")

  `ACCESSIBLE_ACTION_PROPERTY, ACCESSIBLE_ACTIVE_DESCENDANT_PROPERTY, ACCESSIBLE_CARET_PROPERTY, ACCESSIBLE_CHILD_PROPERTY, ACCESSIBLE_COMPONENT_BOUNDS_CHANGED, ACCESSIBLE_DESCRIPTION_PROPERTY, ACCESSIBLE_HYPERTEXT_OFFSET, ACCESSIBLE_INVALIDATE_CHILDREN, ACCESSIBLE_NAME_PROPERTY, ACCESSIBLE_SELECTION_PROPERTY, ACCESSIBLE_STATE_PROPERTY, ACCESSIBLE_TABLE_CAPTION_CHANGED, ACCESSIBLE_TABLE_COLUMN_DESCRIPTION_CHANGED, ACCESSIBLE_TABLE_COLUMN_HEADER_CHANGED, ACCESSIBLE_TABLE_MODEL_CHANGED, ACCESSIBLE_TABLE_ROW_DESCRIPTION_CHANGED, ACCESSIBLE_TABLE_ROW_HEADER_CHANGED, ACCESSIBLE_TABLE_SUMMARY_CHANGED, ACCESSIBLE_TEXT_ATTRIBUTES_CHANGED, ACCESSIBLE_TEXT_PROPERTY, ACCESSIBLE_VALUE_PROPERTY, ACCESSIBLE_VISIBLE_DATA_PROPERTY, accessibleDescription, accessibleName, accessibleParent`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AccessibleJTableHeader()`

  Constructs an `AccessibleJTableHeader`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Accessible`

  `getAccessibleAt(Point p)`

  Returns the Accessible child, if one exists, contained at the local
  coordinate Point.

  `Accessible`

  `getAccessibleChild(int i)`

  Return the nth Accessible child of the object.

  `int`

  `getAccessibleChildrenCount()`

  Returns the number of accessible children in the object.

  `AccessibleRole`

  `getAccessibleRole()`

  Get the role of this object.

  ### Methods inherited from class javax.swing.[JComponent.AccessibleJComponent](../JComponent.AccessibleJComponent.md "class in javax.swing")

  `addPropertyChangeListener, getAccessibleDescription, getAccessibleKeyBinding, getAccessibleName, getAccessibleStateSet, getBorderTitle, getTitledBorderText, getToolTipText, removePropertyChangeListener`

  ### Methods inherited from class java.awt.[Component.AccessibleAWTComponent](../../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

  `addFocusListener, contains, getAccessibleComponent, getAccessibleIndexInParent, getAccessibleParent, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocale, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

  ### Methods inherited from class javax.accessibility.[AccessibleContext](../../accessibility/AccessibleContext.md "class in javax.accessibility")

  `firePropertyChange, getAccessibleAction, getAccessibleEditableText, getAccessibleIcon, getAccessibleRelationSet, getAccessibleSelection, getAccessibleTable, getAccessibleText, getAccessibleValue, setAccessibleDescription, setAccessibleName, setAccessibleParent`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.accessibility.[AccessibleComponent](../../accessibility/AccessibleComponent.md "interface in javax.accessibility")

  `addFocusListener, contains, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

* ## Constructor Details

  + ### AccessibleJTableHeader

    protected AccessibleJTableHeader()

    Constructs an `AccessibleJTableHeader`.
* ## Method Details

  + ### getAccessibleRole

    public [AccessibleRole](../../accessibility/AccessibleRole.md "class in javax.accessibility") getAccessibleRole()

    Get the role of this object.

    Overrides:
    :   `getAccessibleRole` in class `JComponent.AccessibleJComponent`

    Returns:
    :   an instance of AccessibleRole describing the role of the
        object

    See Also:
    :   - [`AccessibleRole`](../../accessibility/AccessibleRole.md "class in javax.accessibility")
  + ### getAccessibleAt

    public [Accessible](../../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleAt([Point](../../../java/awt/Point.md "class in java.awt") p)

    Returns the Accessible child, if one exists, contained at the local
    coordinate Point.

    Specified by:
    :   `getAccessibleAt` in interface `AccessibleComponent`

    Overrides:
    :   `getAccessibleAt` in class `Container.AccessibleAWTContainer`

    Parameters:
    :   `p` - The point defining the top-left corner of the Accessible,
        given in the coordinate space of the object's parent.

    Returns:
    :   the Accessible, if it exists, at the specified location;
        else null
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

    public [Accessible](../../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleChild(int i)

    Return the nth Accessible child of the object.

    Overrides:
    :   `getAccessibleChild` in class `JComponent.AccessibleJComponent`

    Parameters:
    :   `i` - zero-based index of child

    Returns:
    :   the nth Accessible child of the object

    See Also:
    :   - [`AccessibleContext.getAccessibleChildrenCount()`](../../accessibility/AccessibleContext.md#getAccessibleChildrenCount())