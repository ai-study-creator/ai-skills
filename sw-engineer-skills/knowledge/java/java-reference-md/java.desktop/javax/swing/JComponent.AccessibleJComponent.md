Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JComponent.AccessibleJComponent

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

[java.awt.Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

[java.awt.Container.AccessibleAWTContainer](../../java/awt/Container.AccessibleAWTContainer.md "class in java.awt")

javax.swing.JComponent.AccessibleJComponent

All Implemented Interfaces:
:   `Serializable`, `AccessibleComponent`, `AccessibleExtendedComponent`

Direct Known Subclasses:
:   `AbstractButton.AccessibleAbstractButton`, `JColorChooser.AccessibleJColorChooser`, `JComboBox.AccessibleJComboBox`, `JDesktopPane.AccessibleJDesktopPane`, `JFileChooser.AccessibleJFileChooser`, `JInternalFrame.AccessibleJInternalFrame`, `JInternalFrame.JDesktopIcon.AccessibleJDesktopIcon`, `JLabel.AccessibleJLabel`, `JLayeredPane.AccessibleJLayeredPane`, `JList.AccessibleJList`, `JMenuBar.AccessibleJMenuBar`, `JOptionPane.AccessibleJOptionPane`, `JPanel.AccessibleJPanel`, `JPopupMenu.AccessibleJPopupMenu`, `JProgressBar.AccessibleJProgressBar`, `JRootPane.AccessibleJRootPane`, `JScrollBar.AccessibleJScrollBar`, `JScrollPane.AccessibleJScrollPane`, `JSeparator.AccessibleJSeparator`, `JSlider.AccessibleJSlider`, `JSpinner.AccessibleJSpinner`, `JSplitPane.AccessibleJSplitPane`, `JTabbedPane.AccessibleJTabbedPane`, `JTable.AccessibleJTable`, `JTableHeader.AccessibleJTableHeader`, `JTextComponent.AccessibleJTextComponent`, `JToolBar.AccessibleJToolBar`, `JToolTip.AccessibleJToolTip`, `JTree.AccessibleJTree`, `JViewport.AccessibleJViewport`

Enclosing class:
:   `JComponent`

---

public abstract class JComponent.AccessibleJComponent
extends [Container.AccessibleAWTContainer](../../java/awt/Container.AccessibleAWTContainer.md "class in java.awt")
implements [AccessibleExtendedComponent](../accessibility/AccessibleExtendedComponent.md "interface in javax.accessibility")

Inner class of JComponent used to provide default support for
accessibility. This class is not meant to be used directly by
application developers, but is instead meant only to be
subclassed by component developers.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../java/beans/XMLEncoder.md "class in java.beans").

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `JComponent.AccessibleJComponent.AccessibleContainerHandler`

  Fire PropertyChange listener, if one is registered,
  when children added/removed.

  `protected class`

  `JComponent.AccessibleJComponent.AccessibleFocusHandler`

  Deprecated.

  This class is no longer used or needed.

  ## Nested classes/interfaces inherited from class java.awt.[Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

  `Component.AccessibleAWTComponent.AccessibleAWTComponentHandler, Component.AccessibleAWTComponent.AccessibleAWTFocusHandler`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected FocusListener`

  `accessibleFocusHandler`

  Deprecated.

  ### Fields inherited from class java.awt.[Container.AccessibleAWTContainer](../../java/awt/Container.AccessibleAWTContainer.md "class in java.awt")

  `accessibleContainerHandler`

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

  `AccessibleJComponent()`

  Though the class is abstract, this should be called by
  all sub-classes.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addPropertyChangeListener(PropertyChangeListener listener)`

  Adds a PropertyChangeListener to the listener list.

  `Accessible`

  `getAccessibleChild(int i)`

  Returns the nth Accessible child of the object.

  `int`

  `getAccessibleChildrenCount()`

  Returns the number of accessible children in the object.

  `String`

  `getAccessibleDescription()`

  Gets the accessible description of this object.

  `AccessibleKeyBinding`

  `getAccessibleKeyBinding()`

  Returns key bindings associated with this object

  `String`

  `getAccessibleName()`

  Gets the accessible name of this object.

  `AccessibleRole`

  `getAccessibleRole()`

  Gets the role of this object.

  `AccessibleStateSet`

  `getAccessibleStateSet()`

  Gets the state of this object.

  `protected String`

  `getBorderTitle(Border b)`

  Recursively search through the border hierarchy (if it exists)
  for a TitledBorder with a non-null title.

  `String`

  `getTitledBorderText()`

  Returns the titled border text

  `String`

  `getToolTipText()`

  Returns the tool tip text

  `void`

  `removePropertyChangeListener(PropertyChangeListener listener)`

  Removes a PropertyChangeListener from the listener list.

  ### Methods inherited from class java.awt.[Container.AccessibleAWTContainer](../../java/awt/Container.AccessibleAWTContainer.md "class in java.awt")

  `getAccessibleAt`

  ### Methods inherited from class java.awt.[Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

  `addFocusListener, contains, getAccessibleComponent, getAccessibleIndexInParent, getAccessibleParent, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocale, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

  ### Methods inherited from class javax.accessibility.[AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

  `firePropertyChange, getAccessibleAction, getAccessibleEditableText, getAccessibleIcon, getAccessibleRelationSet, getAccessibleSelection, getAccessibleTable, getAccessibleText, getAccessibleValue, setAccessibleDescription, setAccessibleName, setAccessibleParent`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.accessibility.[AccessibleComponent](../accessibility/AccessibleComponent.md "interface in javax.accessibility")

  `addFocusListener, contains, getAccessibleAt, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

* ## Field Details

  + ### accessibleFocusHandler

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [FocusListener](../../java/awt/event/FocusListener.md "interface in java.awt.event") accessibleFocusHandler

    Deprecated.

    This field duplicates the function of the accessibleAWTFocusHandler field
    in java.awt.Component.AccessibleAWTComponent, so it has been deprecated.
* ## Constructor Details

  + ### AccessibleJComponent

    protected AccessibleJComponent()

    Though the class is abstract, this should be called by
    all sub-classes.
* ## Method Details

  + ### addPropertyChangeListener

    public void addPropertyChangeListener([PropertyChangeListener](../../java/beans/PropertyChangeListener.md "interface in java.beans") listener)

    Adds a PropertyChangeListener to the listener list.

    Overrides:
    :   `addPropertyChangeListener` in class `Container.AccessibleAWTContainer`

    Parameters:
    :   `listener` - the PropertyChangeListener to be added

    See Also:
    :   - [`AccessibleContext.ACCESSIBLE_NAME_PROPERTY`](../accessibility/AccessibleContext.md#ACCESSIBLE_NAME_PROPERTY)
        - [`AccessibleContext.ACCESSIBLE_DESCRIPTION_PROPERTY`](../accessibility/AccessibleContext.md#ACCESSIBLE_DESCRIPTION_PROPERTY)
        - [`AccessibleContext.ACCESSIBLE_STATE_PROPERTY`](../accessibility/AccessibleContext.md#ACCESSIBLE_STATE_PROPERTY)
        - [`AccessibleContext.ACCESSIBLE_VALUE_PROPERTY`](../accessibility/AccessibleContext.md#ACCESSIBLE_VALUE_PROPERTY)
        - [`AccessibleContext.ACCESSIBLE_SELECTION_PROPERTY`](../accessibility/AccessibleContext.md#ACCESSIBLE_SELECTION_PROPERTY)
        - [`AccessibleContext.ACCESSIBLE_TEXT_PROPERTY`](../accessibility/AccessibleContext.md#ACCESSIBLE_TEXT_PROPERTY)
        - [`AccessibleContext.ACCESSIBLE_VISIBLE_DATA_PROPERTY`](../accessibility/AccessibleContext.md#ACCESSIBLE_VISIBLE_DATA_PROPERTY)
  + ### removePropertyChangeListener

    public void removePropertyChangeListener([PropertyChangeListener](../../java/beans/PropertyChangeListener.md "interface in java.beans") listener)

    Removes a PropertyChangeListener from the listener list.
    This removes a PropertyChangeListener that was registered
    for all properties.

    Overrides:
    :   `removePropertyChangeListener` in class `Container.AccessibleAWTContainer`

    Parameters:
    :   `listener` - the PropertyChangeListener to be removed
  + ### getBorderTitle

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") getBorderTitle([Border](border/Border.md "interface in javax.swing.border") b)

    Recursively search through the border hierarchy (if it exists)
    for a TitledBorder with a non-null title. This does a depth
    first search on first the inside borders then the outside borders.
    The assumption is that titles make really pretty inside borders
    but not very pretty outside borders in compound border situations.
    It's rather arbitrary, but hopefully decent UI programmers will
    not create multiple titled borders for the same component.

    Parameters:
    :   `b` - the `Border` for which to retrieve its title

    Returns:
    :   the border's title as a `String`, null if it has
        no title
  + ### getAccessibleName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getAccessibleName()

    Gets the accessible name of this object. This should almost never
    return java.awt.Component.getName(), as that generally isn't
    a localized name, and doesn't have meaning for the user. If the
    object is fundamentally a text object (such as a menu item), the
    accessible name should be the text of the object (for example,
    "save").
    If the object has a tooltip, the tooltip text may also be an
    appropriate String to return.

    Overrides:
    :   `getAccessibleName` in class `Component.AccessibleAWTComponent`

    Returns:
    :   the localized name of the object -- can be null if this
        object does not have a name

    See Also:
    :   - [`AccessibleContext.setAccessibleName(java.lang.String)`](../accessibility/AccessibleContext.md#setAccessibleName(java.lang.String))
  + ### getAccessibleDescription

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getAccessibleDescription()

    Gets the accessible description of this object. This should be
    a concise, localized description of what this object is - what
    is its meaning to the user. If the object has a tooltip, the
    tooltip text may be an appropriate string to return, assuming
    it contains a concise description of the object (instead of just
    the name of the object - for example a "Save" icon on a toolbar that
    had "save" as the tooltip text shouldn't return the tooltip
    text as the description, but something like "Saves the current
    text document" instead).

    Overrides:
    :   `getAccessibleDescription` in class `Component.AccessibleAWTComponent`

    Returns:
    :   the localized description of the object -- can be null if
        this object does not have a description

    See Also:
    :   - [`AccessibleContext.setAccessibleDescription(java.lang.String)`](../accessibility/AccessibleContext.md#setAccessibleDescription(java.lang.String))
  + ### getAccessibleRole

    public [AccessibleRole](../accessibility/AccessibleRole.md "class in javax.accessibility") getAccessibleRole()

    Gets the role of this object.

    Overrides:
    :   `getAccessibleRole` in class `Component.AccessibleAWTComponent`

    Returns:
    :   an instance of AccessibleRole describing the role of the
        object

    See Also:
    :   - [`AccessibleRole`](../accessibility/AccessibleRole.md "class in javax.accessibility")
  + ### getAccessibleStateSet

    public [AccessibleStateSet](../accessibility/AccessibleStateSet.md "class in javax.accessibility") getAccessibleStateSet()

    Gets the state of this object.

    Overrides:
    :   `getAccessibleStateSet` in class `Component.AccessibleAWTComponent`

    Returns:
    :   an instance of AccessibleStateSet containing the current
        state set of the object

    See Also:
    :   - [`AccessibleState`](../accessibility/AccessibleState.md "class in javax.accessibility")
  + ### getAccessibleChildrenCount

    public int getAccessibleChildrenCount()

    Returns the number of accessible children in the object. If all
    of the children of this object implement Accessible, than this
    method should return the number of children of this object.

    Overrides:
    :   `getAccessibleChildrenCount` in class `Container.AccessibleAWTContainer`

    Returns:
    :   the number of accessible children in the object.
  + ### getAccessibleChild

    public [Accessible](../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleChild(int i)

    Returns the nth Accessible child of the object.

    Overrides:
    :   `getAccessibleChild` in class `Container.AccessibleAWTContainer`

    Parameters:
    :   `i` - zero-based index of child

    Returns:
    :   the nth Accessible child of the object

    See Also:
    :   - [`AccessibleContext.getAccessibleChildrenCount()`](../accessibility/AccessibleContext.md#getAccessibleChildrenCount())
  + ### getToolTipText

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getToolTipText()

    Returns the tool tip text

    Specified by:
    :   `getToolTipText` in interface `AccessibleExtendedComponent`

    Returns:
    :   the tool tip text, if supported, of the object;
        otherwise, null

    Since:
    :   1.4
  + ### getTitledBorderText

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getTitledBorderText()

    Returns the titled border text

    Specified by:
    :   `getTitledBorderText` in interface `AccessibleExtendedComponent`

    Returns:
    :   the titled border text, if supported, of the object;
        otherwise, null

    Since:
    :   1.4
  + ### getAccessibleKeyBinding

    public [AccessibleKeyBinding](../accessibility/AccessibleKeyBinding.md "interface in javax.accessibility") getAccessibleKeyBinding()

    Returns key bindings associated with this object

    Specified by:
    :   `getAccessibleKeyBinding` in interface `AccessibleExtendedComponent`

    Returns:
    :   the key bindings, if supported, of the object;
        otherwise, null

    Since:
    :   1.4

    See Also:
    :   - [`AccessibleKeyBinding`](../accessibility/AccessibleKeyBinding.md "interface in javax.accessibility")