Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class Box.Filler.AccessibleBoxFiller

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

[java.awt.Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

javax.swing.Box.Filler.AccessibleBoxFiller

All Implemented Interfaces:
:   `Serializable`, `AccessibleComponent`

Enclosing class:
:   `Box.Filler`

---

protected class Box.Filler.AccessibleBoxFiller
extends [Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

This class implements accessibility support for the
`Box.Filler` class.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.awt.[Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

  `Component.AccessibleAWTComponent.AccessibleAWTComponentHandler, Component.AccessibleAWTComponent.AccessibleAWTFocusHandler`
* ## Field Summary

  ### Fields inherited from class java.awt.[Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

  `accessibleAWTComponentHandler, accessibleAWTFocusHandler`

  ### Fields inherited from class javax.accessibility.[AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

  `ACCESSIBLE_ACTION_PROPERTY, ACCESSIBLE_ACTIVE_DESCENDANT_PROPERTY, ACCESSIBLE_CARET_PROPERTY, ACCESSIBLE_CHILD_PROPERTY, ACCESSIBLE_COMPONENT_BOUNDS_CHANGED, ACCESSIBLE_DESCRIPTION_PROPERTY, ACCESSIBLE_HYPERTEXT_OFFSET, ACCESSIBLE_INVALIDATE_CHILDREN, ACCESSIBLE_NAME_PROPERTY, ACCESSIBLE_SELECTION_PROPERTY, ACCESSIBLE_STATE_PROPERTY, ACCESSIBLE_TABLE_CAPTION_CHANGED, ACCESSIBLE_TABLE_COLUMN_DESCRIPTION_CHANGED, ACCESSIBLE_TABLE_COLUMN_HEADER_CHANGED, ACCESSIBLE_TABLE_MODEL_CHANGED, ACCESSIBLE_TABLE_ROW_DESCRIPTION_CHANGED, ACCESSIBLE_TABLE_ROW_HEADER_CHANGED, ACCESSIBLE_TABLE_SUMMARY_CHANGED, ACCESSIBLE_TEXT_ATTRIBUTES_CHANGED, ACCESSIBLE_TEXT_PROPERTY, ACCESSIBLE_VALUE_PROPERTY, ACCESSIBLE_VISIBLE_DATA_PROPERTY, accessibleDescription, accessibleName, accessibleParent`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AccessibleBoxFiller()`

  Constructs an `AccessibleBoxFiller`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `AccessibleRole`

  `getAccessibleRole()`

  Gets the role of this object.

  ### Methods inherited from class java.awt.[Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

  `addFocusListener, addPropertyChangeListener, contains, getAccessibleAt, getAccessibleChild, getAccessibleChildrenCount, getAccessibleComponent, getAccessibleDescription, getAccessibleIndexInParent, getAccessibleName, getAccessibleParent, getAccessibleStateSet, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocale, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, removePropertyChangeListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

  ### Methods inherited from class javax.accessibility.[AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

  `firePropertyChange, getAccessibleAction, getAccessibleEditableText, getAccessibleIcon, getAccessibleRelationSet, getAccessibleSelection, getAccessibleTable, getAccessibleText, getAccessibleValue, setAccessibleDescription, setAccessibleName, setAccessibleParent`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AccessibleBoxFiller

    protected AccessibleBoxFiller()

    Constructs an `AccessibleBoxFiller`.
* ## Method Details

  + ### getAccessibleRole

    public [AccessibleRole](../accessibility/AccessibleRole.md "class in javax.accessibility") getAccessibleRole()

    Gets the role of this object.

    Overrides:
    :   `getAccessibleRole` in class `Component.AccessibleAWTComponent`

    Returns:
    :   an instance of AccessibleRole describing the role of
        the object (AccessibleRole.FILLER)

    See Also:
    :   - [`AccessibleRole`](../accessibility/AccessibleRole.md "class in javax.accessibility")