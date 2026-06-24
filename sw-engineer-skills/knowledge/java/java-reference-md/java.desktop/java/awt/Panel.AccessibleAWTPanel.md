Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class Panel.AccessibleAWTPanel

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility")

[java.awt.Component.AccessibleAWTComponent](Component.AccessibleAWTComponent.md "class in java.awt")

[java.awt.Container.AccessibleAWTContainer](Container.AccessibleAWTContainer.md "class in java.awt")

java.awt.Panel.AccessibleAWTPanel

All Implemented Interfaces:
:   `Serializable`, `AccessibleComponent`

Direct Known Subclasses:
:   `Applet.AccessibleApplet`

Enclosing class:
:   `Panel`

---

protected class Panel.AccessibleAWTPanel
extends [Container.AccessibleAWTContainer](Container.AccessibleAWTContainer.md "class in java.awt")

This class implements accessibility support for the
`Panel` class. It provides an implementation of the
Java Accessibility API appropriate to panel user-interface elements.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.awt.Panel.AccessibleAWTPanel)

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.awt.[Container.AccessibleAWTContainer](Container.AccessibleAWTContainer.md "class in java.awt")

  `Container.AccessibleAWTContainer.AccessibleContainerHandler`

  ## Nested classes/interfaces inherited from class java.awt.[Component.AccessibleAWTComponent](Component.AccessibleAWTComponent.md "class in java.awt")

  `Component.AccessibleAWTComponent.AccessibleAWTComponentHandler, Component.AccessibleAWTComponent.AccessibleAWTFocusHandler`
* ## Field Summary

  ### Fields inherited from class java.awt.[Container.AccessibleAWTContainer](Container.AccessibleAWTContainer.md "class in java.awt")

  `accessibleContainerHandler`

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

  `AccessibleAWTPanel()`

  Constructs an `AccessibleAWTPanel`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `AccessibleRole`

  `getAccessibleRole()`

  Get the role of this object.

  ### Methods inherited from class java.awt.[Container.AccessibleAWTContainer](Container.AccessibleAWTContainer.md "class in java.awt")

  `addPropertyChangeListener, getAccessibleAt, getAccessibleChild, getAccessibleChildrenCount, removePropertyChangeListener`

  ### Methods inherited from class java.awt.[Component.AccessibleAWTComponent](Component.AccessibleAWTComponent.md "class in java.awt")

  `addFocusListener, contains, getAccessibleComponent, getAccessibleDescription, getAccessibleIndexInParent, getAccessibleName, getAccessibleParent, getAccessibleStateSet, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocale, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

  ### Methods inherited from class javax.accessibility.[AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility")

  `firePropertyChange, getAccessibleAction, getAccessibleEditableText, getAccessibleIcon, getAccessibleRelationSet, getAccessibleSelection, getAccessibleTable, getAccessibleText, getAccessibleValue, setAccessibleDescription, setAccessibleName, setAccessibleParent`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AccessibleAWTPanel

    protected AccessibleAWTPanel()

    Constructs an `AccessibleAWTPanel`.
* ## Method Details

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