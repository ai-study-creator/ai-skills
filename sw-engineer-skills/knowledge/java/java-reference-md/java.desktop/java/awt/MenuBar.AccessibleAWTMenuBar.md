Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class MenuBar.AccessibleAWTMenuBar

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility")

[java.awt.MenuComponent.AccessibleAWTMenuComponent](MenuComponent.AccessibleAWTMenuComponent.md "class in java.awt")

java.awt.MenuBar.AccessibleAWTMenuBar

All Implemented Interfaces:
:   `Serializable`, `AccessibleComponent`, `AccessibleSelection`

Enclosing class:
:   `MenuBar`

---

protected class MenuBar.AccessibleAWTMenuBar
extends [MenuComponent.AccessibleAWTMenuComponent](MenuComponent.AccessibleAWTMenuComponent.md "class in java.awt")

Inner class of MenuBar used to provide default support for
accessibility. This class is not meant to be used directly by
application developers, but is instead meant only to be
subclassed by menu component developers.

This class implements accessibility support for the
`MenuBar` class. It provides an implementation of the
Java Accessibility API appropriate to menu bar user-interface elements.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.awt.MenuBar.AccessibleAWTMenuBar)

* ## Field Summary

  ### Fields inherited from class javax.accessibility.[AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility")

  `ACCESSIBLE_ACTION_PROPERTY, ACCESSIBLE_ACTIVE_DESCENDANT_PROPERTY, ACCESSIBLE_CARET_PROPERTY, ACCESSIBLE_CHILD_PROPERTY, ACCESSIBLE_COMPONENT_BOUNDS_CHANGED, ACCESSIBLE_DESCRIPTION_PROPERTY, ACCESSIBLE_HYPERTEXT_OFFSET, ACCESSIBLE_INVALIDATE_CHILDREN, ACCESSIBLE_NAME_PROPERTY, ACCESSIBLE_SELECTION_PROPERTY, ACCESSIBLE_STATE_PROPERTY, ACCESSIBLE_TABLE_CAPTION_CHANGED, ACCESSIBLE_TABLE_COLUMN_DESCRIPTION_CHANGED, ACCESSIBLE_TABLE_COLUMN_HEADER_CHANGED, ACCESSIBLE_TABLE_MODEL_CHANGED, ACCESSIBLE_TABLE_ROW_DESCRIPTION_CHANGED, ACCESSIBLE_TABLE_ROW_HEADER_CHANGED, ACCESSIBLE_TABLE_SUMMARY_CHANGED, ACCESSIBLE_TEXT_ATTRIBUTES_CHANGED, ACCESSIBLE_TEXT_PROPERTY, ACCESSIBLE_VALUE_PROPERTY, ACCESSIBLE_VISIBLE_DATA_PROPERTY, accessibleDescription, accessibleName, accessibleParent`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AccessibleAWTMenuBar()`

  Constructs an `AccessibleAWTMenuBar`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `AccessibleRole`

  `getAccessibleRole()`

  Get the role of this object.

  ### Methods inherited from class java.awt.[MenuComponent.AccessibleAWTMenuComponent](MenuComponent.AccessibleAWTMenuComponent.md "class in java.awt")

  `addAccessibleSelection, addFocusListener, clearAccessibleSelection, contains, getAccessibleAt, getAccessibleChild, getAccessibleChildrenCount, getAccessibleComponent, getAccessibleDescription, getAccessibleIndexInParent, getAccessibleName, getAccessibleParent, getAccessibleSelection, getAccessibleSelection, getAccessibleSelectionCount, getAccessibleStateSet, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocale, getLocation, getLocationOnScreen, getSize, isAccessibleChildSelected, isEnabled, isFocusTraversable, isShowing, isVisible, removeAccessibleSelection, removeFocusListener, requestFocus, selectAllAccessibleSelection, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

  ### Methods inherited from class javax.accessibility.[AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility")

  `addPropertyChangeListener, firePropertyChange, getAccessibleAction, getAccessibleEditableText, getAccessibleIcon, getAccessibleRelationSet, getAccessibleTable, getAccessibleText, getAccessibleValue, removePropertyChangeListener, setAccessibleDescription, setAccessibleName, setAccessibleParent`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AccessibleAWTMenuBar

    protected AccessibleAWTMenuBar()

    Constructs an `AccessibleAWTMenuBar`.
* ## Method Details

  + ### getAccessibleRole

    public [AccessibleRole](../../javax/accessibility/AccessibleRole.md "class in javax.accessibility") getAccessibleRole()

    Get the role of this object.

    Overrides:
    :   `getAccessibleRole` in class `MenuComponent.AccessibleAWTMenuComponent`

    Returns:
    :   an instance of AccessibleRole describing the role of the
        object

    Since:
    :   1.4

    See Also:
    :   - [`AccessibleRole`](../../javax/accessibility/AccessibleRole.md "class in javax.accessibility")