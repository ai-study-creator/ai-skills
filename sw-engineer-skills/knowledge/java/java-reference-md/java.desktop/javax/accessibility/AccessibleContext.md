Module [java.desktop](../../module-summary.md)

Package [javax.accessibility](package-summary.md)

# Class AccessibleContext

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.accessibility.AccessibleContext

Direct Known Subclasses:
:   `Component.AccessibleAWTComponent`, `ImageIcon.AccessibleImageIcon`, `JList.AccessibleJList.AccessibleJListChild`, `JTable.AccessibleJTable.AccessibleJTableCell`, `JTableHeader.AccessibleJTableHeader.AccessibleJTableHeaderEntry`, `JTree.AccessibleJTree.AccessibleJTreeNode`, `MenuComponent.AccessibleAWTMenuComponent`, `ProgressMonitor.AccessibleProgressMonitor`

---

[@JavaBean](../../java/beans/JavaBean.md "annotation interface in java.beans")([description](../../java/beans/JavaBean.md#description())="Minimal information that all accessible objects return")
public abstract class AccessibleContext
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

`AccessibleContext` represents the minimum information all accessible
objects return. This information includes the accessible name, description,
role, and state of the object, as well as information about its parent and
children. `AccessibleContext` also contains methods for obtaining more
specific accessibility information about a component. If the component
supports them, these methods will return an object that implements one or
more of the following interfaces:

* [`AccessibleAction`](AccessibleAction.md "interface in javax.accessibility") - the object can perform one or more actions.
  This interface provides the standard mechanism for an assistive technology
  to determine what those actions are and tell the object to perform them.
  Any object that can be manipulated should support this interface.* [`AccessibleComponent`](AccessibleComponent.md "interface in javax.accessibility") - the object has a graphical
    representation. This interface provides the standard mechanism for an
    assistive technology to determine and set the graphical representation of
    the object. Any object that is rendered on the screen should support this
    interface.* [`AccessibleSelection`](AccessibleSelection.md "interface in javax.accessibility") - the object allows its children to be
      selected. This interface provides the standard mechanism for an assistive
      technology to determine the currently selected children of the object as
      well as modify its selection set. Any object that has children that can be
      selected should support this interface.* [`AccessibleText`](AccessibleText.md "interface in javax.accessibility") - the object presents editable textual
        information on the display. This interface provides the standard mechanism
        for an assistive technology to access that text via its content,
        attributes, and spatial location. Any object that contains editable text
        should support this interface.* [`AccessibleValue`](AccessibleValue.md "interface in javax.accessibility") - the object supports a numerical value. This
          interface provides the standard mechanism for an assistive technology to
          determine and set the current value of the object, as well as obtain its
          minimum and maximum values. Any object that supports a numerical value
          should support this interface.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `ACCESSIBLE_ACTION_PROPERTY`

  Constant used to indicate that the supported set of actions has changed.

  `static final String`

  `ACCESSIBLE_ACTIVE_DESCENDANT_PROPERTY`

  Constant used to determine when the active descendant of a component has
  changed.

  `static final String`

  `ACCESSIBLE_CARET_PROPERTY`

  Constant used to determine when the `accessibleText` caret has
  changed.

  `static final String`

  `ACCESSIBLE_CHILD_PROPERTY`

  Constant used to determine when `Accessible` children are
  added/removed from the object.

  `static final String`

  `ACCESSIBLE_COMPONENT_BOUNDS_CHANGED`

  `PropertyChangeEvent` which indicates that a change has occurred in
  a component's bounds.

  `static final String`

  `ACCESSIBLE_DESCRIPTION_PROPERTY`

  Constant used to determine when the [`accessibleDescription`](#accessibleDescription)
  property has changed.

  `static final String`

  `ACCESSIBLE_HYPERTEXT_OFFSET`

  Constant used to indicate that a hypertext element has received focus.

  `static final String`

  `ACCESSIBLE_INVALIDATE_CHILDREN`

  `PropertyChangeEvent` which indicates that a significant change has
  occurred to the children of a component like a tree or text.

  `static final String`

  `ACCESSIBLE_NAME_PROPERTY`

  Constant used to determine when the [`accessibleName`](#accessibleName) property has
  changed.

  `static final String`

  `ACCESSIBLE_SELECTION_PROPERTY`

  Constant used to determine when the `accessibleSelection` has
  changed.

  `static final String`

  `ACCESSIBLE_STATE_PROPERTY`

  Constant used to determine when the `accessibleStateSet` property
  has changed.

  `static final String`

  `ACCESSIBLE_TABLE_CAPTION_CHANGED`

  Constant used to indicate that the table caption has changed.

  `static final String`

  `ACCESSIBLE_TABLE_COLUMN_DESCRIPTION_CHANGED`

  Constant used to indicate that the column description has changed.

  `static final String`

  `ACCESSIBLE_TABLE_COLUMN_HEADER_CHANGED`

  Constant used to indicate that the column header has changed.

  `static final String`

  `ACCESSIBLE_TABLE_MODEL_CHANGED`

  Constant used to indicate that table data has changed.

  `static final String`

  `ACCESSIBLE_TABLE_ROW_DESCRIPTION_CHANGED`

  Constant used to indicate that the row description has changed.

  `static final String`

  `ACCESSIBLE_TABLE_ROW_HEADER_CHANGED`

  Constant used to indicate that the row header has changed.

  `static final String`

  `ACCESSIBLE_TABLE_SUMMARY_CHANGED`

  Constant used to indicate that the table summary has changed.

  `static final String`

  `ACCESSIBLE_TEXT_ATTRIBUTES_CHANGED`

  `PropertyChangeEvent` which indicates that text attributes have
  changed.

  `static final String`

  `ACCESSIBLE_TEXT_PROPERTY`

  `PropertyChangeEvent` which indicates that text has changed.

  `static final String`

  `ACCESSIBLE_VALUE_PROPERTY`

  Constant used to determine when the `accessibleValue` property has
  changed.

  `static final String`

  `ACCESSIBLE_VISIBLE_DATA_PROPERTY`

  Constant used to determine when the visual appearance of the object has
  changed.

  `protected String`

  `accessibleDescription`

  A localized String containing the description of the object.

  `protected String`

  `accessibleName`

  A localized String containing the name of the object.

  `protected Accessible`

  `accessibleParent`

  The accessible parent of this object.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AccessibleContext()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addPropertyChangeListener(PropertyChangeListener listener)`

  Adds a `PropertyChangeListener` to the listener list.

  `void`

  `firePropertyChange(String propertyName,
  Object oldValue,
  Object newValue)`

  Support for reporting bound property changes.

  `AccessibleAction`

  `getAccessibleAction()`

  Gets the `AccessibleAction` associated with this object that
  supports one or more actions.

  `abstract Accessible`

  `getAccessibleChild(int i)`

  Returns the specified `Accessible` child of the object.

  `abstract int`

  `getAccessibleChildrenCount()`

  Returns the number of accessible children of the object.

  `AccessibleComponent`

  `getAccessibleComponent()`

  Gets the `AccessibleComponent` associated with this object that has
  a graphical representation.

  `String`

  `getAccessibleDescription()`

  Gets the `accessibleDescription` property of this object.

  `AccessibleEditableText`

  `getAccessibleEditableText()`

  Gets the `AccessibleEditableText` associated with this object
  presenting editable text on the display.

  `AccessibleIcon[]`

  `getAccessibleIcon()`

  Gets the `AccessibleIcons` associated with an object that has one
  or more associated icons.

  `abstract int`

  `getAccessibleIndexInParent()`

  Gets the 0-based index of this object in its accessible parent.

  `String`

  `getAccessibleName()`

  Gets the `accessibleName` property of this object.

  `Accessible`

  `getAccessibleParent()`

  Gets the `Accessible` parent of this object.

  `AccessibleRelationSet`

  `getAccessibleRelationSet()`

  Gets the `AccessibleRelationSet` associated with an object.

  `abstract AccessibleRole`

  `getAccessibleRole()`

  Gets the role of this object.

  `AccessibleSelection`

  `getAccessibleSelection()`

  Gets the `AccessibleSelection` associated with this object which
  allows its `Accessible` children to be selected.

  `abstract AccessibleStateSet`

  `getAccessibleStateSet()`

  Gets the state set of this object.

  `AccessibleTable`

  `getAccessibleTable()`

  Gets the `AccessibleTable` associated with an object.

  `AccessibleText`

  `getAccessibleText()`

  Gets the `AccessibleText` associated with this object presenting
  text on the display.

  `AccessibleValue`

  `getAccessibleValue()`

  Gets the `AccessibleValue` associated with this object that
  supports a `Numerical` value.

  `abstract Locale`

  `getLocale()`

  Gets the locale of the component.

  `void`

  `removePropertyChangeListener(PropertyChangeListener listener)`

  Removes a `PropertyChangeListener` from the listener list.

  `void`

  `setAccessibleDescription(String s)`

  Sets the accessible description of this object.

  `void`

  `setAccessibleName(String s)`

  Sets the localized accessible name of this object.

  `void`

  `setAccessibleParent(Accessible a)`

  Sets the `Accessible` parent of this object.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### ACCESSIBLE\_NAME\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") ACCESSIBLE\_NAME\_PROPERTY

    Constant used to determine when the [`accessibleName`](#accessibleName) property has
    changed. The old value in the `PropertyChangeEvent` will be the old
    `accessibleName` and the new value will be the new
    `accessibleName`.

    See Also:
    :   - [`getAccessibleName()`](#getAccessibleName())
        - [`addPropertyChangeListener(java.beans.PropertyChangeListener)`](#addPropertyChangeListener(java.beans.PropertyChangeListener))
        - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleContext.ACCESSIBLE_NAME_PROPERTY)
  + ### ACCESSIBLE\_DESCRIPTION\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") ACCESSIBLE\_DESCRIPTION\_PROPERTY

    Constant used to determine when the [`accessibleDescription`](#accessibleDescription)
    property has changed. The old value in the `PropertyChangeEvent`
    will be the old `accessibleDescription` and the new value will be
    the new `accessibleDescription`.

    See Also:
    :   - [`getAccessibleDescription()`](#getAccessibleDescription())
        - [`addPropertyChangeListener(java.beans.PropertyChangeListener)`](#addPropertyChangeListener(java.beans.PropertyChangeListener))
        - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleContext.ACCESSIBLE_DESCRIPTION_PROPERTY)
  + ### ACCESSIBLE\_STATE\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") ACCESSIBLE\_STATE\_PROPERTY

    Constant used to determine when the `accessibleStateSet` property
    has changed. The old value will be the old `AccessibleState` and
    the new value will be the new `AccessibleState` in the
    `accessibleStateSet`. For example, if a component that supports the
    vertical and horizontal states changes its orientation from vertical to
    horizontal, the old value will be `AccessibleState.VERTICAL` and
    the new value will be `AccessibleState.HORIZONTAL`. Please note
    that either value can also be `null`. For example, when a component
    changes from being enabled to disabled, the old value will be
    `AccessibleState.ENABLED` and the new value will be `null`.

    See Also:
    :   - [`getAccessibleStateSet()`](#getAccessibleStateSet())
        - [`AccessibleState`](AccessibleState.md "class in javax.accessibility")
        - [`AccessibleStateSet`](AccessibleStateSet.md "class in javax.accessibility")
        - [`addPropertyChangeListener(java.beans.PropertyChangeListener)`](#addPropertyChangeListener(java.beans.PropertyChangeListener))
        - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleContext.ACCESSIBLE_STATE_PROPERTY)
  + ### ACCESSIBLE\_VALUE\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") ACCESSIBLE\_VALUE\_PROPERTY

    Constant used to determine when the `accessibleValue` property has
    changed. The old value in the `PropertyChangeEvent` will be a
    `Number` representing the old value and the new value will be a
    `Number` representing the new value.

    See Also:
    :   - [`getAccessibleValue()`](#getAccessibleValue())
        - [`addPropertyChangeListener(java.beans.PropertyChangeListener)`](#addPropertyChangeListener(java.beans.PropertyChangeListener))
        - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleContext.ACCESSIBLE_VALUE_PROPERTY)
  + ### ACCESSIBLE\_SELECTION\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") ACCESSIBLE\_SELECTION\_PROPERTY

    Constant used to determine when the `accessibleSelection` has
    changed. The old and new values in the `PropertyChangeEvent` are
    currently reserved for future use.

    See Also:
    :   - [`getAccessibleSelection()`](#getAccessibleSelection())
        - [`addPropertyChangeListener(java.beans.PropertyChangeListener)`](#addPropertyChangeListener(java.beans.PropertyChangeListener))
        - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleContext.ACCESSIBLE_SELECTION_PROPERTY)
  + ### ACCESSIBLE\_CARET\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") ACCESSIBLE\_CARET\_PROPERTY

    Constant used to determine when the `accessibleText` caret has
    changed. The old value in the `PropertyChangeEvent` will be an
    integer representing the old caret position, and the new value will be an
    integer representing the new/current caret position.

    See Also:
    :   - [`addPropertyChangeListener(java.beans.PropertyChangeListener)`](#addPropertyChangeListener(java.beans.PropertyChangeListener))
        - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleContext.ACCESSIBLE_CARET_PROPERTY)
  + ### ACCESSIBLE\_VISIBLE\_DATA\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") ACCESSIBLE\_VISIBLE\_DATA\_PROPERTY

    Constant used to determine when the visual appearance of the object has
    changed. The old and new values in the `PropertyChangeEvent` are
    currently reserved for future use.

    See Also:
    :   - [`addPropertyChangeListener(java.beans.PropertyChangeListener)`](#addPropertyChangeListener(java.beans.PropertyChangeListener))
        - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleContext.ACCESSIBLE_VISIBLE_DATA_PROPERTY)
  + ### ACCESSIBLE\_CHILD\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") ACCESSIBLE\_CHILD\_PROPERTY

    Constant used to determine when `Accessible` children are
    added/removed from the object. If an `Accessible` child is being
    added, the old value will be `null` and the new value will be the
    `Accessible` child. If an `Accessible` child is being
    removed, the old value will be the `Accessible` child, and the new
    value will be `null`.

    See Also:
    :   - [`addPropertyChangeListener(java.beans.PropertyChangeListener)`](#addPropertyChangeListener(java.beans.PropertyChangeListener))
        - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleContext.ACCESSIBLE_CHILD_PROPERTY)
  + ### ACCESSIBLE\_ACTIVE\_DESCENDANT\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") ACCESSIBLE\_ACTIVE\_DESCENDANT\_PROPERTY

    Constant used to determine when the active descendant of a component has
    changed. The active descendant is used for objects such as list, tree,
    and table, which may have transient children. When the active descendant
    has changed, the old value of the property change event will be the
    `Accessible` representing the previous active child, and the new
    value will be the `Accessible` representing the current active
    child.

    See Also:
    :   - [`addPropertyChangeListener(java.beans.PropertyChangeListener)`](#addPropertyChangeListener(java.beans.PropertyChangeListener))
        - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleContext.ACCESSIBLE_ACTIVE_DESCENDANT_PROPERTY)
  + ### ACCESSIBLE\_TABLE\_CAPTION\_CHANGED

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") ACCESSIBLE\_TABLE\_CAPTION\_CHANGED

    Constant used to indicate that the table caption has changed. The old
    value in the `PropertyChangeEvent` will be an `Accessible`
    representing the previous table caption and the new value will be an
    `Accessible` representing the new table caption.

    See Also:
    :   - [`Accessible`](Accessible.md "interface in javax.accessibility")
        - [`AccessibleTable`](AccessibleTable.md "interface in javax.accessibility")
        - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleContext.ACCESSIBLE_TABLE_CAPTION_CHANGED)
  + ### ACCESSIBLE\_TABLE\_SUMMARY\_CHANGED

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") ACCESSIBLE\_TABLE\_SUMMARY\_CHANGED

    Constant used to indicate that the table summary has changed. The old
    value in the `PropertyChangeEvent` will be an `Accessible`
    representing the previous table summary and the new value will be an
    `Accessible` representing the new table summary.

    See Also:
    :   - [`Accessible`](Accessible.md "interface in javax.accessibility")
        - [`AccessibleTable`](AccessibleTable.md "interface in javax.accessibility")
        - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleContext.ACCESSIBLE_TABLE_SUMMARY_CHANGED)
  + ### ACCESSIBLE\_TABLE\_MODEL\_CHANGED

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") ACCESSIBLE\_TABLE\_MODEL\_CHANGED

    Constant used to indicate that table data has changed. The old value in
    the `PropertyChangeEvent` will be `null` and the new value
    will be an `AccessibleTableModelChange` representing the table
    change.

    See Also:
    :   - [`AccessibleTable`](AccessibleTable.md "interface in javax.accessibility")
        - [`AccessibleTableModelChange`](AccessibleTableModelChange.md "interface in javax.accessibility")
        - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleContext.ACCESSIBLE_TABLE_MODEL_CHANGED)
  + ### ACCESSIBLE\_TABLE\_ROW\_HEADER\_CHANGED

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") ACCESSIBLE\_TABLE\_ROW\_HEADER\_CHANGED

    Constant used to indicate that the row header has changed. The old value
    in the `PropertyChangeEvent` will be `null` and the new value
    will be an `AccessibleTableModelChange` representing the header
    change.

    See Also:
    :   - [`AccessibleTable`](AccessibleTable.md "interface in javax.accessibility")
        - [`AccessibleTableModelChange`](AccessibleTableModelChange.md "interface in javax.accessibility")
        - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleContext.ACCESSIBLE_TABLE_ROW_HEADER_CHANGED)
  + ### ACCESSIBLE\_TABLE\_ROW\_DESCRIPTION\_CHANGED

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") ACCESSIBLE\_TABLE\_ROW\_DESCRIPTION\_CHANGED

    Constant used to indicate that the row description has changed. The old
    value in the `PropertyChangeEvent` will be `null` and the new
    value will be an `Integer` representing the row index.

    See Also:
    :   - [`AccessibleTable`](AccessibleTable.md "interface in javax.accessibility")
        - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleContext.ACCESSIBLE_TABLE_ROW_DESCRIPTION_CHANGED)
  + ### ACCESSIBLE\_TABLE\_COLUMN\_HEADER\_CHANGED

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") ACCESSIBLE\_TABLE\_COLUMN\_HEADER\_CHANGED

    Constant used to indicate that the column header has changed. The old
    value in the `PropertyChangeEvent` will be `null` and the new
    value will be an `AccessibleTableModelChange` representing the
    header change.

    See Also:
    :   - [`AccessibleTable`](AccessibleTable.md "interface in javax.accessibility")
        - [`AccessibleTableModelChange`](AccessibleTableModelChange.md "interface in javax.accessibility")
        - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleContext.ACCESSIBLE_TABLE_COLUMN_HEADER_CHANGED)
  + ### ACCESSIBLE\_TABLE\_COLUMN\_DESCRIPTION\_CHANGED

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") ACCESSIBLE\_TABLE\_COLUMN\_DESCRIPTION\_CHANGED

    Constant used to indicate that the column description has changed. The
    old value in the `PropertyChangeEvent` will be `null` and the
    new value will be an `Integer` representing the column index.

    See Also:
    :   - [`AccessibleTable`](AccessibleTable.md "interface in javax.accessibility")
        - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleContext.ACCESSIBLE_TABLE_COLUMN_DESCRIPTION_CHANGED)
  + ### ACCESSIBLE\_ACTION\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") ACCESSIBLE\_ACTION\_PROPERTY

    Constant used to indicate that the supported set of actions has changed.
    The old value in the `PropertyChangeEvent` will be an
    `Integer` representing the old number of actions supported and the
    new value will be an `Integer` representing the new number of
    actions supported.

    See Also:
    :   - [`AccessibleAction`](AccessibleAction.md "interface in javax.accessibility")
        - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleContext.ACCESSIBLE_ACTION_PROPERTY)
  + ### ACCESSIBLE\_HYPERTEXT\_OFFSET

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") ACCESSIBLE\_HYPERTEXT\_OFFSET

    Constant used to indicate that a hypertext element has received focus.
    The old value in the `PropertyChangeEvent` will be an
    `Integer` representing the start index in the document of the
    previous element that had focus and the new value will be an
    `Integer` representing the start index in the document of the
    current element that has focus. A value of -1 indicates that an element
    does not or did not have focus.

    See Also:
    :   - [`AccessibleHyperlink`](AccessibleHyperlink.md "class in javax.accessibility")
        - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleContext.ACCESSIBLE_HYPERTEXT_OFFSET)
  + ### ACCESSIBLE\_TEXT\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") ACCESSIBLE\_TEXT\_PROPERTY

    `PropertyChangeEvent` which indicates that text has changed.
      
    For text insertion, the `oldValue` is `null` and the
    `newValue` is an `AccessibleTextSequence` specifying the text
    that was inserted.
      
    For text deletion, the `oldValue` is an
    `AccessibleTextSequence` specifying the text that was deleted and
    the `newValue` is `null`.
      
    For text replacement, the `oldValue` is an
    `AccessibleTextSequence` specifying the old text and the
    `newValue` is an `AccessibleTextSequence` specifying the new
    text.

    See Also:
    :   - [`getAccessibleText()`](#getAccessibleText())
        - [`addPropertyChangeListener(java.beans.PropertyChangeListener)`](#addPropertyChangeListener(java.beans.PropertyChangeListener))
        - [`AccessibleTextSequence`](AccessibleTextSequence.md "class in javax.accessibility")
        - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleContext.ACCESSIBLE_TEXT_PROPERTY)
  + ### ACCESSIBLE\_INVALIDATE\_CHILDREN

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") ACCESSIBLE\_INVALIDATE\_CHILDREN

    `PropertyChangeEvent` which indicates that a significant change has
    occurred to the children of a component like a tree or text. This change
    notifies the event listener that it needs to reacquire the state of the
    subcomponents. The `oldValue` is `null` and the
    `newValue` is the component whose children have become invalid.

    Since:
    :   1.5

    See Also:
    :   - [`getAccessibleText()`](#getAccessibleText())
        - [`addPropertyChangeListener(java.beans.PropertyChangeListener)`](#addPropertyChangeListener(java.beans.PropertyChangeListener))
        - [`AccessibleTextSequence`](AccessibleTextSequence.md "class in javax.accessibility")
        - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleContext.ACCESSIBLE_INVALIDATE_CHILDREN)
  + ### ACCESSIBLE\_TEXT\_ATTRIBUTES\_CHANGED

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") ACCESSIBLE\_TEXT\_ATTRIBUTES\_CHANGED

    `PropertyChangeEvent` which indicates that text attributes have
    changed.
      
    For attribute insertion, the `oldValue` is `null` and the
    `newValue` is an `AccessibleAttributeSequence` specifying the
    attributes that were inserted.
      
    For attribute deletion, the `oldValue` is an
    `AccessibleAttributeSequence` specifying the attributes that were
    deleted and the `newValue` is `null`.
      
    For attribute replacement, the `oldValue` is an
    `AccessibleAttributeSequence` specifying the old attributes and the
    `newValue` is an `AccessibleAttributeSequence` specifying the
    new attributes.

    Since:
    :   1.5

    See Also:
    :   - [`getAccessibleText()`](#getAccessibleText())
        - [`addPropertyChangeListener(java.beans.PropertyChangeListener)`](#addPropertyChangeListener(java.beans.PropertyChangeListener))
        - [`AccessibleAttributeSequence`](AccessibleAttributeSequence.md "class in javax.accessibility")
        - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleContext.ACCESSIBLE_TEXT_ATTRIBUTES_CHANGED)
  + ### ACCESSIBLE\_COMPONENT\_BOUNDS\_CHANGED

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") ACCESSIBLE\_COMPONENT\_BOUNDS\_CHANGED

    `PropertyChangeEvent` which indicates that a change has occurred in
    a component's bounds. The `oldValue` is the old component bounds
    and the `newValue` is the new component bounds.

    Since:
    :   1.5

    See Also:
    :   - [`addPropertyChangeListener(java.beans.PropertyChangeListener)`](#addPropertyChangeListener(java.beans.PropertyChangeListener))
        - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleContext.ACCESSIBLE_COMPONENT_BOUNDS_CHANGED)
  + ### accessibleParent

    protected [Accessible](Accessible.md "interface in javax.accessibility") accessibleParent

    The accessible parent of this object.

    See Also:
    :   - [`getAccessibleParent()`](#getAccessibleParent())
        - [`setAccessibleParent(javax.accessibility.Accessible)`](#setAccessibleParent(javax.accessibility.Accessible))
  + ### accessibleName

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") accessibleName

    A localized String containing the name of the object.

    See Also:
    :   - [`getAccessibleName()`](#getAccessibleName())
        - [`setAccessibleName(java.lang.String)`](#setAccessibleName(java.lang.String))
  + ### accessibleDescription

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") accessibleDescription

    A localized String containing the description of the object.

    See Also:
    :   - [`getAccessibleDescription()`](#getAccessibleDescription())
        - [`setAccessibleDescription(java.lang.String)`](#setAccessibleDescription(java.lang.String))
* ## Constructor Details

  + ### AccessibleContext

    protected AccessibleContext()

    Constructor for subclasses to call.
* ## Method Details

  + ### getAccessibleName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getAccessibleName()

    Gets the `accessibleName` property of this object. The
    `accessibleName` property of an object is a localized
    `String` that designates the purpose of the object. For example,
    the `accessibleName` property of a label or button might be the
    text of the label or button itself. In the case of an object that doesn't
    display its name, the `accessibleName` should still be set. For
    example, in the case of a text field used to enter the name of a city,
    the `accessibleName` for the `en_US` locale could be 'city.'

    Returns:
    :   the localized name of the object; `null` if this object
        does not have a name

    See Also:
    :   - [`setAccessibleName(java.lang.String)`](#setAccessibleName(java.lang.String))
  + ### setAccessibleName

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="Sets the accessible name for the component.")
    public void setAccessibleName([String](../../../java.base/java/lang/String.md "class in java.lang") s)

    Sets the localized accessible name of this object. Changing the name will
    cause a `PropertyChangeEvent` to be fired for the
    `ACCESSIBLE_NAME_PROPERTY` property.

    Parameters:
    :   `s` - the new localized name of the object

    See Also:
    :   - [`getAccessibleName()`](#getAccessibleName())
        - [`addPropertyChangeListener(java.beans.PropertyChangeListener)`](#addPropertyChangeListener(java.beans.PropertyChangeListener))
  + ### getAccessibleDescription

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getAccessibleDescription()

    Gets the `accessibleDescription` property of this object. The
    `accessibleDescription` property of this object is a short
    localized phrase describing the purpose of the object. For example, in
    the case of a 'Cancel' button, the `accessibleDescription` could be
    'Ignore changes and close dialog box.'

    Returns:
    :   the localized description of the object; `null` if this
        object does not have a description

    See Also:
    :   - [`setAccessibleDescription(java.lang.String)`](#setAccessibleDescription(java.lang.String))
  + ### setAccessibleDescription

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="Sets the accessible description for the component.")
    public void setAccessibleDescription([String](../../../java.base/java/lang/String.md "class in java.lang") s)

    Sets the accessible description of this object. Changing the name will
    cause a `PropertyChangeEvent` to be fired for the
    `ACCESSIBLE_DESCRIPTION_PROPERTY` property.

    Parameters:
    :   `s` - the new localized description of the object

    See Also:
    :   - [`setAccessibleName(java.lang.String)`](#setAccessibleName(java.lang.String))
        - [`addPropertyChangeListener(java.beans.PropertyChangeListener)`](#addPropertyChangeListener(java.beans.PropertyChangeListener))
  + ### getAccessibleRole

    public abstract [AccessibleRole](AccessibleRole.md "class in javax.accessibility") getAccessibleRole()

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

    Returns:
    :   an instance of `AccessibleRole` describing the role of the
        object

    See Also:
    :   - [`AccessibleRole`](AccessibleRole.md "class in javax.accessibility")
  + ### getAccessibleStateSet

    public abstract [AccessibleStateSet](AccessibleStateSet.md "class in javax.accessibility") getAccessibleStateSet()

    Gets the state set of this object. The `AccessibleStateSet` of an
    object is composed of a set of unique `AccessibleStates`. A change
    in the `AccessibleStateSet` of an object will cause a
    `PropertyChangeEvent` to be fired for the
    `ACCESSIBLE_STATE_PROPERTY` property.

    Returns:
    :   an instance of `AccessibleStateSet` containing the current
        state set of the object

    See Also:
    :   - [`AccessibleStateSet`](AccessibleStateSet.md "class in javax.accessibility")
        - [`AccessibleState`](AccessibleState.md "class in javax.accessibility")
        - [`addPropertyChangeListener(java.beans.PropertyChangeListener)`](#addPropertyChangeListener(java.beans.PropertyChangeListener))
  + ### getAccessibleParent

    public [Accessible](Accessible.md "interface in javax.accessibility") getAccessibleParent()

    Gets the `Accessible` parent of this object.

    Returns:
    :   the `Accessible` parent of this object; `null` if
        this object does not have an `Accessible` parent
  + ### setAccessibleParent

    public void setAccessibleParent([Accessible](Accessible.md "interface in javax.accessibility") a)

    Sets the `Accessible` parent of this object. This is meant to be
    used only in the situations where the actual component's parent should
    not be treated as the component's accessible parent and is a method that
    should only be called by the parent of the accessible child.

    Parameters:
    :   `a` - `Accessible` to be set as the parent
  + ### getAccessibleIndexInParent

    public abstract int getAccessibleIndexInParent()

    Gets the 0-based index of this object in its accessible parent.

    Returns:
    :   the 0-based index of this object in its parent; -1 if this object
        does not have an accessible parent.

    See Also:
    :   - [`getAccessibleParent()`](#getAccessibleParent())
        - [`getAccessibleChildrenCount()`](#getAccessibleChildrenCount())
        - [`getAccessibleChild(int)`](#getAccessibleChild(int))
  + ### getAccessibleChildrenCount

    public abstract int getAccessibleChildrenCount()

    Returns the number of accessible children of the object.

    Returns:
    :   the number of accessible children of the object.
  + ### getAccessibleChild

    public abstract [Accessible](Accessible.md "interface in javax.accessibility") getAccessibleChild(int i)

    Returns the specified `Accessible` child of the object. The
    `Accessible` children of an `Accessible` object are
    zero-based, so the first child of an `Accessible` child is at index
    0, the second child is at index 1, and so on.

    Parameters:
    :   `i` - zero-based index of child

    Returns:
    :   the `Accessible` child of the object

    See Also:
    :   - [`getAccessibleChildrenCount()`](#getAccessibleChildrenCount())
  + ### getLocale

    public abstract [Locale](../../../java.base/java/util/Locale.md "class in java.util") getLocale()
    throws [IllegalComponentStateException](../../java/awt/IllegalComponentStateException.md "class in java.awt")

    Gets the locale of the component. If the component does not have a
    locale, then the locale of its parent is returned.

    Returns:
    :   this component's locale. If this component does not have a
        locale, the locale of its parent is returned.

    Throws:
    :   `IllegalComponentStateException` - If the component does not have its
        own locale and has not yet been added to a containment hierarchy
        such that the locale can be determined from the containing
        parent
  + ### addPropertyChangeListener

    public void addPropertyChangeListener([PropertyChangeListener](../../java/beans/PropertyChangeListener.md "interface in java.beans") listener)

    Adds a `PropertyChangeListener` to the listener list. The listener
    is registered for all `Accessible` properties and will be called
    when those properties change.

    Parameters:
    :   `listener` - The PropertyChangeListener to be added

    See Also:
    :   - [`ACCESSIBLE_NAME_PROPERTY`](#ACCESSIBLE_NAME_PROPERTY)
        - [`ACCESSIBLE_DESCRIPTION_PROPERTY`](#ACCESSIBLE_DESCRIPTION_PROPERTY)
        - [`ACCESSIBLE_STATE_PROPERTY`](#ACCESSIBLE_STATE_PROPERTY)
        - [`ACCESSIBLE_VALUE_PROPERTY`](#ACCESSIBLE_VALUE_PROPERTY)
        - [`ACCESSIBLE_SELECTION_PROPERTY`](#ACCESSIBLE_SELECTION_PROPERTY)
        - [`ACCESSIBLE_TEXT_PROPERTY`](#ACCESSIBLE_TEXT_PROPERTY)
        - [`ACCESSIBLE_VISIBLE_DATA_PROPERTY`](#ACCESSIBLE_VISIBLE_DATA_PROPERTY)
  + ### removePropertyChangeListener

    public void removePropertyChangeListener([PropertyChangeListener](../../java/beans/PropertyChangeListener.md "interface in java.beans") listener)

    Removes a `PropertyChangeListener` from the listener list. This
    removes a `PropertyChangeListener` that was registered for all
    properties.

    Parameters:
    :   `listener` - The PropertyChangeListener to be removed
  + ### getAccessibleAction

    public [AccessibleAction](AccessibleAction.md "interface in javax.accessibility") getAccessibleAction()

    Gets the `AccessibleAction` associated with this object that
    supports one or more actions.

    Returns:
    :   `AccessibleAction` if supported by object; else return
        `null`

    See Also:
    :   - [`AccessibleAction`](AccessibleAction.md "interface in javax.accessibility")
  + ### getAccessibleComponent

    public [AccessibleComponent](AccessibleComponent.md "interface in javax.accessibility") getAccessibleComponent()

    Gets the `AccessibleComponent` associated with this object that has
    a graphical representation.

    Returns:
    :   `AccessibleComponent` if supported by object; else return
        `null`

    See Also:
    :   - [`AccessibleComponent`](AccessibleComponent.md "interface in javax.accessibility")
  + ### getAccessibleSelection

    public [AccessibleSelection](AccessibleSelection.md "interface in javax.accessibility") getAccessibleSelection()

    Gets the `AccessibleSelection` associated with this object which
    allows its `Accessible` children to be selected.

    Returns:
    :   `AccessibleSelection` if supported by object; else return
        `null`

    See Also:
    :   - [`AccessibleSelection`](AccessibleSelection.md "interface in javax.accessibility")
  + ### getAccessibleText

    public [AccessibleText](AccessibleText.md "interface in javax.accessibility") getAccessibleText()

    Gets the `AccessibleText` associated with this object presenting
    text on the display.

    Returns:
    :   `AccessibleText` if supported by object; else return
        `null`

    See Also:
    :   - [`AccessibleText`](AccessibleText.md "interface in javax.accessibility")
  + ### getAccessibleEditableText

    public [AccessibleEditableText](AccessibleEditableText.md "interface in javax.accessibility") getAccessibleEditableText()

    Gets the `AccessibleEditableText` associated with this object
    presenting editable text on the display.

    Returns:
    :   `AccessibleEditableText` if supported by object; else
        return `null`

    Since:
    :   1.4

    See Also:
    :   - [`AccessibleEditableText`](AccessibleEditableText.md "interface in javax.accessibility")
  + ### getAccessibleValue

    public [AccessibleValue](AccessibleValue.md "interface in javax.accessibility") getAccessibleValue()

    Gets the `AccessibleValue` associated with this object that
    supports a `Numerical` value.

    Returns:
    :   `AccessibleValue` if supported by object; else return
        `null`

    See Also:
    :   - [`AccessibleValue`](AccessibleValue.md "interface in javax.accessibility")
  + ### getAccessibleIcon

    public [AccessibleIcon](AccessibleIcon.md "interface in javax.accessibility")[] getAccessibleIcon()

    Gets the `AccessibleIcons` associated with an object that has one
    or more associated icons.

    Returns:
    :   an array of `AccessibleIcon` if supported by object;
        otherwise return `null`

    Since:
    :   1.3

    See Also:
    :   - [`AccessibleIcon`](AccessibleIcon.md "interface in javax.accessibility")
  + ### getAccessibleRelationSet

    public [AccessibleRelationSet](AccessibleRelationSet.md "class in javax.accessibility") getAccessibleRelationSet()

    Gets the `AccessibleRelationSet` associated with an object.

    Returns:
    :   an `AccessibleRelationSet` if supported by object;
        otherwise return `null`

    Since:
    :   1.3

    See Also:
    :   - [`AccessibleRelationSet`](AccessibleRelationSet.md "class in javax.accessibility")
  + ### getAccessibleTable

    public [AccessibleTable](AccessibleTable.md "interface in javax.accessibility") getAccessibleTable()

    Gets the `AccessibleTable` associated with an object.

    Returns:
    :   an `AccessibleTable` if supported by object; otherwise return
        `null`

    Since:
    :   1.3

    See Also:
    :   - [`AccessibleTable`](AccessibleTable.md "interface in javax.accessibility")
  + ### firePropertyChange

    public void firePropertyChange([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") oldValue,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") newValue)

    Support for reporting bound property changes. If `oldValue` and
    `newValue` are not equal and the `PropertyChangeEvent`
    listener list is not empty, then fire a `PropertyChange` event to
    each listener. In general, this is for use by the `Accessible`
    objects themselves and should not be called by an application program.

    Parameters:
    :   `propertyName` - The programmatic name of the property that was
        changed
    :   `oldValue` - The old value of the property
    :   `newValue` - The new value of the property

    See Also:
    :   - [`PropertyChangeSupport`](../../java/beans/PropertyChangeSupport.md "class in java.beans")
        - [`addPropertyChangeListener(java.beans.PropertyChangeListener)`](#addPropertyChangeListener(java.beans.PropertyChangeListener))
        - [`removePropertyChangeListener(java.beans.PropertyChangeListener)`](#removePropertyChangeListener(java.beans.PropertyChangeListener))
        - [`ACCESSIBLE_NAME_PROPERTY`](#ACCESSIBLE_NAME_PROPERTY)
        - [`ACCESSIBLE_DESCRIPTION_PROPERTY`](#ACCESSIBLE_DESCRIPTION_PROPERTY)
        - [`ACCESSIBLE_STATE_PROPERTY`](#ACCESSIBLE_STATE_PROPERTY)
        - [`ACCESSIBLE_VALUE_PROPERTY`](#ACCESSIBLE_VALUE_PROPERTY)
        - [`ACCESSIBLE_SELECTION_PROPERTY`](#ACCESSIBLE_SELECTION_PROPERTY)
        - [`ACCESSIBLE_TEXT_PROPERTY`](#ACCESSIBLE_TEXT_PROPERTY)
        - [`ACCESSIBLE_VISIBLE_DATA_PROPERTY`](#ACCESSIBLE_VISIBLE_DATA_PROPERTY)