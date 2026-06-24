Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class ImageIcon.AccessibleImageIcon

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

javax.swing.ImageIcon.AccessibleImageIcon

All Implemented Interfaces:
:   `Serializable`, `AccessibleIcon`

Enclosing class:
:   `ImageIcon`

---

protected class ImageIcon.AccessibleImageIcon
extends [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")
implements [AccessibleIcon](../accessibility/AccessibleIcon.md "interface in javax.accessibility"), [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

This class implements accessibility support for the
`ImageIcon` class. It provides an implementation of the
Java Accessibility API appropriate to image icon user-interface
elements.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../java/beans/XMLEncoder.md "class in java.beans").

Since:
:   1.3

* ## Field Summary

  ### Fields inherited from class javax.accessibility.[AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

  `ACCESSIBLE_ACTION_PROPERTY, ACCESSIBLE_ACTIVE_DESCENDANT_PROPERTY, ACCESSIBLE_CARET_PROPERTY, ACCESSIBLE_CHILD_PROPERTY, ACCESSIBLE_COMPONENT_BOUNDS_CHANGED, ACCESSIBLE_DESCRIPTION_PROPERTY, ACCESSIBLE_HYPERTEXT_OFFSET, ACCESSIBLE_INVALIDATE_CHILDREN, ACCESSIBLE_NAME_PROPERTY, ACCESSIBLE_SELECTION_PROPERTY, ACCESSIBLE_STATE_PROPERTY, ACCESSIBLE_TABLE_CAPTION_CHANGED, ACCESSIBLE_TABLE_COLUMN_DESCRIPTION_CHANGED, ACCESSIBLE_TABLE_COLUMN_HEADER_CHANGED, ACCESSIBLE_TABLE_MODEL_CHANGED, ACCESSIBLE_TABLE_ROW_DESCRIPTION_CHANGED, ACCESSIBLE_TABLE_ROW_HEADER_CHANGED, ACCESSIBLE_TABLE_SUMMARY_CHANGED, ACCESSIBLE_TEXT_ATTRIBUTES_CHANGED, ACCESSIBLE_TEXT_PROPERTY, ACCESSIBLE_VALUE_PROPERTY, ACCESSIBLE_VISIBLE_DATA_PROPERTY, accessibleDescription, accessibleName, accessibleParent`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AccessibleImageIcon()`

  Constructs an `AccessibleImageIcon`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Accessible`

  `getAccessibleChild(int i)`

  Returns the nth Accessible child of the object.

  `int`

  `getAccessibleChildrenCount()`

  Returns the number of accessible children in the object.

  `String`

  `getAccessibleIconDescription()`

  Gets the description of the icon.

  `int`

  `getAccessibleIconHeight()`

  Gets the height of the icon.

  `int`

  `getAccessibleIconWidth()`

  Gets the width of the icon.

  `int`

  `getAccessibleIndexInParent()`

  Gets the index of this object in its accessible parent.

  `Accessible`

  `getAccessibleParent()`

  Gets the Accessible parent of this object.

  `AccessibleRole`

  `getAccessibleRole()`

  Gets the role of this object.

  `AccessibleStateSet`

  `getAccessibleStateSet()`

  Gets the state of this object.

  `Locale`

  `getLocale()`

  Returns the locale of this object.

  `void`

  `setAccessibleIconDescription(String description)`

  Sets the description of the icon.

  ### Methods inherited from class javax.accessibility.[AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

  `addPropertyChangeListener, firePropertyChange, getAccessibleAction, getAccessibleComponent, getAccessibleDescription, getAccessibleEditableText, getAccessibleIcon, getAccessibleName, getAccessibleRelationSet, getAccessibleSelection, getAccessibleTable, getAccessibleText, getAccessibleValue, removePropertyChangeListener, setAccessibleDescription, setAccessibleName, setAccessibleParent`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AccessibleImageIcon

    protected AccessibleImageIcon()

    Constructs an `AccessibleImageIcon`.
* ## Method Details

  + ### getAccessibleRole

    public [AccessibleRole](../accessibility/AccessibleRole.md "class in javax.accessibility") getAccessibleRole()

    Gets the role of this object.

    Specified by:
    :   `getAccessibleRole` in class `AccessibleContext`

    Returns:
    :   an instance of AccessibleRole describing the role of the
        object

    See Also:
    :   - [`AccessibleRole`](../accessibility/AccessibleRole.md "class in javax.accessibility")
  + ### getAccessibleStateSet

    public [AccessibleStateSet](../accessibility/AccessibleStateSet.md "class in javax.accessibility") getAccessibleStateSet()

    Gets the state of this object.

    Specified by:
    :   `getAccessibleStateSet` in class `AccessibleContext`

    Returns:
    :   an instance of AccessibleStateSet containing the current
        state set of the object

    See Also:
    :   - [`AccessibleState`](../accessibility/AccessibleState.md "class in javax.accessibility")
  + ### getAccessibleParent

    public [Accessible](../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleParent()

    Gets the Accessible parent of this object. If the parent of this
    object implements Accessible, this method should simply return
    getParent().

    Overrides:
    :   `getAccessibleParent` in class `AccessibleContext`

    Returns:
    :   the Accessible parent of this object -- can be null if this
        object does not have an Accessible parent
  + ### getAccessibleIndexInParent

    public int getAccessibleIndexInParent()

    Gets the index of this object in its accessible parent.

    Specified by:
    :   `getAccessibleIndexInParent` in class `AccessibleContext`

    Returns:
    :   the index of this object in its parent; -1 if this
        object does not have an accessible parent.

    See Also:
    :   - [`getAccessibleParent()`](#getAccessibleParent())
  + ### getAccessibleChildrenCount

    public int getAccessibleChildrenCount()

    Returns the number of accessible children in the object. If all
    of the children of this object implement Accessible, than this
    method should return the number of children of this object.

    Specified by:
    :   `getAccessibleChildrenCount` in class `AccessibleContext`

    Returns:
    :   the number of accessible children in the object.
  + ### getAccessibleChild

    public [Accessible](../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleChild(int i)

    Returns the nth Accessible child of the object.

    Specified by:
    :   `getAccessibleChild` in class `AccessibleContext`

    Parameters:
    :   `i` - zero-based index of child

    Returns:
    :   the nth Accessible child of the object

    See Also:
    :   - [`AccessibleContext.getAccessibleChildrenCount()`](../accessibility/AccessibleContext.md#getAccessibleChildrenCount())
  + ### getLocale

    public [Locale](../../../java.base/java/util/Locale.md "class in java.util") getLocale()
    throws [IllegalComponentStateException](../../java/awt/IllegalComponentStateException.md "class in java.awt")

    Returns the locale of this object.

    Specified by:
    :   `getLocale` in class `AccessibleContext`

    Returns:
    :   the locale of this object

    Throws:
    :   `IllegalComponentStateException` - If the component does not have its
        own locale and has not yet been added to a containment hierarchy
        such that the locale can be determined from the containing
        parent
  + ### getAccessibleIconDescription

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getAccessibleIconDescription()

    Gets the description of the icon. This is meant to be a brief
    textual description of the object. For example, it might be
    presented to a blind user to give an indication of the purpose
    of the icon.

    Specified by:
    :   `getAccessibleIconDescription` in interface `AccessibleIcon`

    Returns:
    :   the description of the icon
  + ### setAccessibleIconDescription

    public void setAccessibleIconDescription([String](../../../java.base/java/lang/String.md "class in java.lang") description)

    Sets the description of the icon. This is meant to be a brief
    textual description of the object. For example, it might be
    presented to a blind user to give an indication of the purpose
    of the icon.

    Specified by:
    :   `setAccessibleIconDescription` in interface `AccessibleIcon`

    Parameters:
    :   `description` - the description of the icon
  + ### getAccessibleIconHeight

    public int getAccessibleIconHeight()

    Gets the height of the icon.

    Specified by:
    :   `getAccessibleIconHeight` in interface `AccessibleIcon`

    Returns:
    :   the height of the icon
  + ### getAccessibleIconWidth

    public int getAccessibleIconWidth()

    Gets the width of the icon.

    Specified by:
    :   `getAccessibleIconWidth` in interface `AccessibleIcon`

    Returns:
    :   the width of the icon