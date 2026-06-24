Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JTable.AccessibleJTable

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

[java.awt.Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

[java.awt.Container.AccessibleAWTContainer](../../java/awt/Container.AccessibleAWTContainer.md "class in java.awt")

[javax.swing.JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")

javax.swing.JTable.AccessibleJTable

All Implemented Interfaces:
:   `PropertyChangeListener`, `Serializable`, `EventListener`, `AccessibleComponent`, `AccessibleExtendedComponent`, `AccessibleExtendedTable`, `AccessibleSelection`, `AccessibleTable`, `CellEditorListener`, `ListSelectionListener`, `TableColumnModelListener`, `TableModelListener`

Enclosing class:
:   `JTable`

---

protected class JTable.AccessibleJTable
extends [JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")
implements [AccessibleSelection](../accessibility/AccessibleSelection.md "interface in javax.accessibility"), [ListSelectionListener](event/ListSelectionListener.md "interface in javax.swing.event"), [TableModelListener](event/TableModelListener.md "interface in javax.swing.event"), [TableColumnModelListener](event/TableColumnModelListener.md "interface in javax.swing.event"), [CellEditorListener](event/CellEditorListener.md "interface in javax.swing.event"), [PropertyChangeListener](../../java/beans/PropertyChangeListener.md "interface in java.beans"), [AccessibleExtendedTable](../accessibility/AccessibleExtendedTable.md "interface in javax.accessibility")

This class implements accessibility support for the
`JTable` class. It provides an implementation of the
Java Accessibility API appropriate to table user-interface elements.

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

  `JTable.AccessibleJTable.AccessibleJTableCell`

  The class provides an implementation of the Java Accessibility
  API appropriate to table cells.

  `protected class`

  `JTable.AccessibleJTable.AccessibleJTableModelChange`

  Describes a change in the accessible table model.

  ## Nested classes/interfaces inherited from class javax.swing.[JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")

  `JComponent.AccessibleJComponent.AccessibleContainerHandler, JComponent.AccessibleJComponent.AccessibleFocusHandler`

  ## Nested classes/interfaces inherited from class java.awt.[Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

  `Component.AccessibleAWTComponent.AccessibleAWTComponentHandler, Component.AccessibleAWTComponent.AccessibleAWTFocusHandler`
* ## Field Summary

  ### Fields inherited from class javax.swing.[JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")

  `accessibleFocusHandler`

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

  `AccessibleJTable()`

  AccessibleJTable constructor
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addAccessibleSelection(int i)`

  Adds the specified `Accessible` child of the
  object to the object's selection.

  `void`

  `clearAccessibleSelection()`

  Clears the selection in the object, so that no children in the
  object are selected.

  `void`

  `columnAdded(TableColumnModelEvent e)`

  Track changes to the table contents (column insertions)

  `void`

  `columnMarginChanged(ChangeEvent e)`

  Track changes of a column moving due to margin changes.

  `void`

  `columnMoved(TableColumnModelEvent e)`

  Track changes of a column repositioning.

  `void`

  `columnRemoved(TableColumnModelEvent e)`

  Track changes to the table contents (column deletions)

  `void`

  `columnSelectionChanged(ListSelectionEvent e)`

  Track that the selection model of the TableColumnModel changed.

  `void`

  `editingCanceled(ChangeEvent e)`

  Invoked when editing is canceled.

  `void`

  `editingStopped(ChangeEvent e)`

  Track changes to a cell's contents.

  `Accessible`

  `getAccessibleAt(int r,
  int c)`

  Returns the `Accessible` at a specified row and column in the
  table.

  `Accessible`

  `getAccessibleAt(Point p)`

  Returns the `Accessible` child, if one exists,
  contained at the local coordinate `Point`.

  `Accessible`

  `getAccessibleCaption()`

  Returns the caption for the table.

  `Accessible`

  `getAccessibleChild(int i)`

  Returns the nth `Accessible` child of the object.

  `int`

  `getAccessibleChildrenCount()`

  Returns the number of accessible children in the object.

  `int`

  `getAccessibleColumn(int index)`

  Returns the column number of an index in the table.

  `int`

  `getAccessibleColumnAtIndex(int i)`

  Returns the column at a given index into the table.

  `int`

  `getAccessibleColumnCount()`

  Returns the number of columns in the table.

  `Accessible`

  `getAccessibleColumnDescription(int c)`

  Returns the description of the specified column in the table.

  `int`

  `getAccessibleColumnExtentAt(int r,
  int c)`

  Returns the number of columns occupied by the
  `Accessible` at a given (row, column).

  `AccessibleTable`

  `getAccessibleColumnHeader()`

  Returns the column headers as an `AccessibleTable`.

  `int`

  `getAccessibleIndex(int r,
  int c)`

  Returns the index at a row and column in the table.

  `int`

  `getAccessibleIndexAt(int r,
  int c)`

  Returns the index at a given (row, column) in the table.

  `AccessibleRole`

  `getAccessibleRole()`

  Gets the role of this object.

  `int`

  `getAccessibleRow(int index)`

  Returns the row number of an index in the table.

  `int`

  `getAccessibleRowAtIndex(int i)`

  Returns the row at a given index into the table.

  `int`

  `getAccessibleRowCount()`

  Returns the number of rows in the table.

  `Accessible`

  `getAccessibleRowDescription(int r)`

  Returns the description of the specified row in the table.

  `int`

  `getAccessibleRowExtentAt(int r,
  int c)`

  Returns the number of rows occupied by the `Accessible`
  at a specified row and column in the table.

  `AccessibleTable`

  `getAccessibleRowHeader()`

  Returns the row headers as an `AccessibleTable`.

  `AccessibleSelection`

  `getAccessibleSelection()`

  Get the AccessibleSelection associated with this object.

  `Accessible`

  `getAccessibleSelection(int i)`

  Returns an `Accessible` representing the
  specified selected child in the object.

  `int`

  `getAccessibleSelectionCount()`

  Returns the number of `Accessible` children
  currently selected.

  `Accessible`

  `getAccessibleSummary()`

  Returns the summary description of the table.

  `AccessibleTable`

  `getAccessibleTable()`

  Gets the `AccessibleTable` associated with this
  object.

  `int[]`

  `getSelectedAccessibleColumns()`

  Returns the selected columns in a table.

  `int[]`

  `getSelectedAccessibleRows()`

  Returns the selected rows in a table.

  `boolean`

  `isAccessibleChildSelected(int i)`

  Determines if the current child of this object is selected.

  `boolean`

  `isAccessibleColumnSelected(int c)`

  Returns a boolean value indicating whether the specified column
  is selected.

  `boolean`

  `isAccessibleRowSelected(int r)`

  Returns a boolean value indicating whether the specified row
  is selected.

  `boolean`

  `isAccessibleSelected(int r,
  int c)`

  Returns a boolean value indicating whether the accessible at a
  given (row, column) is selected.

  `void`

  `propertyChange(PropertyChangeEvent e)`

  Track changes to selection model, column model, etc.

  `void`

  `removeAccessibleSelection(int i)`

  Removes the specified child of the object from the object's
  selection.

  `void`

  `selectAllAccessibleSelection()`

  Causes every child of the object to be selected, but only
  if the `JTable` supports multiple selections,
  and if individual cell selection is enabled.

  `void`

  `setAccessibleCaption(Accessible a)`

  Sets the caption for the table.

  `void`

  `setAccessibleColumnDescription(int c,
  Accessible a)`

  Sets the description text of the specified column of the table.

  `void`

  `setAccessibleColumnHeader(AccessibleTable a)`

  Sets the column headers as an `AccessibleTable`.

  `void`

  `setAccessibleRowDescription(int r,
  Accessible a)`

  Sets the description text of the specified row of the table.

  `void`

  `setAccessibleRowHeader(AccessibleTable a)`

  Sets the row headers as an `AccessibleTable`.

  `void`

  `setAccessibleSummary(Accessible a)`

  Sets the summary description of the table.

  `void`

  `tableChanged(TableModelEvent e)`

  Track changes to the table contents

  `void`

  `tableRowsDeleted(TableModelEvent e)`

  Track changes to the table contents (row deletions)

  `void`

  `tableRowsInserted(TableModelEvent e)`

  Track changes to the table contents (row insertions)

  `void`

  `valueChanged(ListSelectionEvent e)`

  Track changes to table cell selections

  ### Methods inherited from class javax.swing.[JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")

  `addPropertyChangeListener, getAccessibleDescription, getAccessibleKeyBinding, getAccessibleName, getAccessibleStateSet, getBorderTitle, getTitledBorderText, getToolTipText, removePropertyChangeListener`

  ### Methods inherited from class java.awt.[Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

  `addFocusListener, contains, getAccessibleComponent, getAccessibleIndexInParent, getAccessibleParent, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocale, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

  ### Methods inherited from class javax.accessibility.[AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

  `firePropertyChange, getAccessibleAction, getAccessibleEditableText, getAccessibleIcon, getAccessibleRelationSet, getAccessibleText, getAccessibleValue, setAccessibleDescription, setAccessibleName, setAccessibleParent`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.accessibility.[AccessibleComponent](../accessibility/AccessibleComponent.md "interface in javax.accessibility")

  `addFocusListener, contains, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

* ## Constructor Details

  + ### AccessibleJTable

    protected AccessibleJTable()

    AccessibleJTable constructor

    Since:
    :   1.5
* ## Method Details

  + ### propertyChange

    public void propertyChange([PropertyChangeEvent](../../java/beans/PropertyChangeEvent.md "class in java.beans") e)

    Track changes to selection model, column model, etc. so as to
    be able to re-place listeners on those in order to pass on
    information to the Accessibility PropertyChange mechanism

    Specified by:
    :   `propertyChange` in interface `PropertyChangeListener`

    Parameters:
    :   `e` - A PropertyChangeEvent object describing the event source
        and the property that has changed.
  + ### tableChanged

    public void tableChanged([TableModelEvent](event/TableModelEvent.md "class in javax.swing.event") e)

    Track changes to the table contents

    Specified by:
    :   `tableChanged` in interface `TableModelListener`

    Parameters:
    :   `e` - a `TableModelEvent` describing the event
  + ### tableRowsInserted

    public void tableRowsInserted([TableModelEvent](event/TableModelEvent.md "class in javax.swing.event") e)

    Track changes to the table contents (row insertions)

    Parameters:
    :   `e` - a `TableModelEvent` describing the event
  + ### tableRowsDeleted

    public void tableRowsDeleted([TableModelEvent](event/TableModelEvent.md "class in javax.swing.event") e)

    Track changes to the table contents (row deletions)

    Parameters:
    :   `e` - a `TableModelEvent` describing the event
  + ### columnAdded

    public void columnAdded([TableColumnModelEvent](event/TableColumnModelEvent.md "class in javax.swing.event") e)

    Track changes to the table contents (column insertions)

    Specified by:
    :   `columnAdded` in interface `TableColumnModelListener`

    Parameters:
    :   `e` - a `TableColumnModelEvent`
  + ### columnRemoved

    public void columnRemoved([TableColumnModelEvent](event/TableColumnModelEvent.md "class in javax.swing.event") e)

    Track changes to the table contents (column deletions)

    Specified by:
    :   `columnRemoved` in interface `TableColumnModelListener`

    Parameters:
    :   `e` - a `TableColumnModelEvent`
  + ### columnMoved

    public void columnMoved([TableColumnModelEvent](event/TableColumnModelEvent.md "class in javax.swing.event") e)

    Track changes of a column repositioning.

    Specified by:
    :   `columnMoved` in interface `TableColumnModelListener`

    Parameters:
    :   `e` - a `TableColumnModelEvent`

    See Also:
    :   - [`TableColumnModelListener`](event/TableColumnModelListener.md "interface in javax.swing.event")
  + ### columnMarginChanged

    public void columnMarginChanged([ChangeEvent](event/ChangeEvent.md "class in javax.swing.event") e)

    Track changes of a column moving due to margin changes.

    Specified by:
    :   `columnMarginChanged` in interface `TableColumnModelListener`

    Parameters:
    :   `e` - a `ChangeEvent`

    See Also:
    :   - [`TableColumnModelListener`](event/TableColumnModelListener.md "interface in javax.swing.event")
  + ### columnSelectionChanged

    public void columnSelectionChanged([ListSelectionEvent](event/ListSelectionEvent.md "class in javax.swing.event") e)

    Track that the selection model of the TableColumnModel changed.

    Specified by:
    :   `columnSelectionChanged` in interface `TableColumnModelListener`

    Parameters:
    :   `e` - a `ListSelectionEvent`

    See Also:
    :   - [`TableColumnModelListener`](event/TableColumnModelListener.md "interface in javax.swing.event")
  + ### editingStopped

    public void editingStopped([ChangeEvent](event/ChangeEvent.md "class in javax.swing.event") e)

    Track changes to a cell's contents.
    Invoked when editing is finished. The changes are saved, the
    editor object is discarded, and the cell is rendered once again.

    Specified by:
    :   `editingStopped` in interface `CellEditorListener`

    Parameters:
    :   `e` - the `ChangeEvent` containing the source of the event

    See Also:
    :   - [`CellEditorListener`](event/CellEditorListener.md "interface in javax.swing.event")
  + ### editingCanceled

    public void editingCanceled([ChangeEvent](event/ChangeEvent.md "class in javax.swing.event") e)

    Invoked when editing is canceled. The editor object is discarded
    and the cell is rendered once again.

    Specified by:
    :   `editingCanceled` in interface `CellEditorListener`

    Parameters:
    :   `e` - the `ChangeEvent` containing the source of the event

    See Also:
    :   - [`CellEditorListener`](event/CellEditorListener.md "interface in javax.swing.event")
  + ### valueChanged

    public void valueChanged([ListSelectionEvent](event/ListSelectionEvent.md "class in javax.swing.event") e)

    Track changes to table cell selections

    Specified by:
    :   `valueChanged` in interface `ListSelectionListener`

    Parameters:
    :   `e` - the event that characterizes the change.
  + ### getAccessibleSelection

    public [AccessibleSelection](../accessibility/AccessibleSelection.md "interface in javax.accessibility") getAccessibleSelection()

    Get the AccessibleSelection associated with this object. In the
    implementation of the Java Accessibility API for this class,
    return this object, which is responsible for implementing the
    AccessibleSelection interface on behalf of itself.

    Overrides:
    :   `getAccessibleSelection` in class `AccessibleContext`

    Returns:
    :   this object

    See Also:
    :   - [`AccessibleSelection`](../accessibility/AccessibleSelection.md "interface in javax.accessibility")
  + ### getAccessibleRole

    public [AccessibleRole](../accessibility/AccessibleRole.md "class in javax.accessibility") getAccessibleRole()

    Gets the role of this object.

    Overrides:
    :   `getAccessibleRole` in class `JComponent.AccessibleJComponent`

    Returns:
    :   an instance of AccessibleRole describing the role of the
        object

    See Also:
    :   - [`AccessibleRole`](../accessibility/AccessibleRole.md "class in javax.accessibility")
  + ### getAccessibleAt

    public [Accessible](../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleAt([Point](../../java/awt/Point.md "class in java.awt") p)

    Returns the `Accessible` child, if one exists,
    contained at the local coordinate `Point`.

    Specified by:
    :   `getAccessibleAt` in interface `AccessibleComponent`

    Overrides:
    :   `getAccessibleAt` in class `Container.AccessibleAWTContainer`

    Parameters:
    :   `p` - the point defining the top-left corner of the
        `Accessible`, given in the coordinate space
        of the object's parent

    Returns:
    :   the `Accessible`, if it exists,
        at the specified location; else `null`
  + ### getAccessibleChildrenCount

    public int getAccessibleChildrenCount()

    Returns the number of accessible children in the object. If all
    of the children of this object implement `Accessible`,
    then this method should return the number of children of this object.

    Overrides:
    :   `getAccessibleChildrenCount` in class `JComponent.AccessibleJComponent`

    Returns:
    :   the number of accessible children in the object
  + ### getAccessibleChild

    public [Accessible](../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleChild(int i)

    Returns the nth `Accessible` child of the object.

    Overrides:
    :   `getAccessibleChild` in class `JComponent.AccessibleJComponent`

    Parameters:
    :   `i` - zero-based index of child

    Returns:
    :   the nth Accessible child of the object

    See Also:
    :   - [`AccessibleContext.getAccessibleChildrenCount()`](../accessibility/AccessibleContext.md#getAccessibleChildrenCount())
  + ### getAccessibleSelectionCount

    public int getAccessibleSelectionCount()

    Returns the number of `Accessible` children
    currently selected.
    If no children are selected, the return value will be 0.

    Specified by:
    :   `getAccessibleSelectionCount` in interface `AccessibleSelection`

    Returns:
    :   the number of items currently selected
  + ### getAccessibleSelection

    public [Accessible](../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleSelection(int i)

    Returns an `Accessible` representing the
    specified selected child in the object. If there
    isn't a selection, or there are fewer children selected
    than the integer passed in, the return
    value will be `null`.

    Note that the index represents the i-th selected child, which
    is different from the i-th child.

    Specified by:
    :   `getAccessibleSelection` in interface `AccessibleSelection`

    Parameters:
    :   `i` - the zero-based index of selected children

    Returns:
    :   the i-th selected child

    See Also:
    :   - [`getAccessibleSelectionCount()`](#getAccessibleSelectionCount())
  + ### isAccessibleChildSelected

    public boolean isAccessibleChildSelected(int i)

    Determines if the current child of this object is selected.

    Specified by:
    :   `isAccessibleChildSelected` in interface `AccessibleSelection`

    Parameters:
    :   `i` - the zero-based index of the child in this
        `Accessible` object

    Returns:
    :   true if the current child of this object is selected

    See Also:
    :   - [`AccessibleContext.getAccessibleChild(int)`](../accessibility/AccessibleContext.md#getAccessibleChild(int))
  + ### addAccessibleSelection

    public void addAccessibleSelection(int i)

    Adds the specified `Accessible` child of the
    object to the object's selection. If the object supports
    multiple selections, the specified child is added to
    any existing selection, otherwise
    it replaces any existing selection in the object. If the
    specified child is already selected, this method has no effect.

    This method only works on `JTable`s which have
    individual cell selection enabled.

    Specified by:
    :   `addAccessibleSelection` in interface `AccessibleSelection`

    Parameters:
    :   `i` - the zero-based index of the child

    See Also:
    :   - [`AccessibleContext.getAccessibleChild(int)`](../accessibility/AccessibleContext.md#getAccessibleChild(int))
  + ### removeAccessibleSelection

    public void removeAccessibleSelection(int i)

    Removes the specified child of the object from the object's
    selection. If the specified item isn't currently selected, this
    method has no effect.

    This method only works on `JTables` which have
    individual cell selection enabled.

    Specified by:
    :   `removeAccessibleSelection` in interface `AccessibleSelection`

    Parameters:
    :   `i` - the zero-based index of the child

    See Also:
    :   - [`AccessibleContext.getAccessibleChild(int)`](../accessibility/AccessibleContext.md#getAccessibleChild(int))
  + ### clearAccessibleSelection

    public void clearAccessibleSelection()

    Clears the selection in the object, so that no children in the
    object are selected.

    Specified by:
    :   `clearAccessibleSelection` in interface `AccessibleSelection`
  + ### selectAllAccessibleSelection

    public void selectAllAccessibleSelection()

    Causes every child of the object to be selected, but only
    if the `JTable` supports multiple selections,
    and if individual cell selection is enabled.

    Specified by:
    :   `selectAllAccessibleSelection` in interface `AccessibleSelection`
  + ### getAccessibleRow

    public int getAccessibleRow(int index)

    Returns the row number of an index in the table.

    Specified by:
    :   `getAccessibleRow` in interface `AccessibleExtendedTable`

    Parameters:
    :   `index` - the zero-based index in the table

    Returns:
    :   the zero-based row of the table if one exists;
        otherwise -1.

    Since:
    :   1.4
  + ### getAccessibleColumn

    public int getAccessibleColumn(int index)

    Returns the column number of an index in the table.

    Specified by:
    :   `getAccessibleColumn` in interface `AccessibleExtendedTable`

    Parameters:
    :   `index` - the zero-based index in the table

    Returns:
    :   the zero-based column of the table if one exists;
        otherwise -1.

    Since:
    :   1.4
  + ### getAccessibleIndex

    public int getAccessibleIndex(int r,
    int c)

    Returns the index at a row and column in the table.

    Specified by:
    :   `getAccessibleIndex` in interface `AccessibleExtendedTable`

    Parameters:
    :   `r` - zero-based row of the table
    :   `c` - zero-based column of the table

    Returns:
    :   the zero-based index in the table if one exists;
        otherwise -1.

    Since:
    :   1.4
  + ### getAccessibleTable

    public [AccessibleTable](../accessibility/AccessibleTable.md "interface in javax.accessibility") getAccessibleTable()

    Gets the `AccessibleTable` associated with this
    object. In the implementation of the Java Accessibility
    API for this class, return this object, which is responsible
    for implementing the `AccessibleTables` interface
    on behalf of itself.

    Overrides:
    :   `getAccessibleTable` in class `AccessibleContext`

    Returns:
    :   this object

    Since:
    :   1.3

    See Also:
    :   - [`AccessibleTable`](../accessibility/AccessibleTable.md "interface in javax.accessibility")
  + ### getAccessibleCaption

    public [Accessible](../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleCaption()

    Returns the caption for the table.

    Specified by:
    :   `getAccessibleCaption` in interface `AccessibleTable`

    Returns:
    :   the caption for the table

    Since:
    :   1.3
  + ### setAccessibleCaption

    public void setAccessibleCaption([Accessible](../accessibility/Accessible.md "interface in javax.accessibility") a)

    Sets the caption for the table.

    Specified by:
    :   `setAccessibleCaption` in interface `AccessibleTable`

    Parameters:
    :   `a` - the caption for the table

    Since:
    :   1.3
  + ### getAccessibleSummary

    public [Accessible](../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleSummary()

    Returns the summary description of the table.

    Specified by:
    :   `getAccessibleSummary` in interface `AccessibleTable`

    Returns:
    :   the summary description of the table

    Since:
    :   1.3
  + ### setAccessibleSummary

    public void setAccessibleSummary([Accessible](../accessibility/Accessible.md "interface in javax.accessibility") a)

    Sets the summary description of the table.

    Specified by:
    :   `setAccessibleSummary` in interface `AccessibleTable`

    Parameters:
    :   `a` - the summary description of the table

    Since:
    :   1.3
  + ### getAccessibleRowCount

    public int getAccessibleRowCount()

    Description copied from interface: `AccessibleTable`

    Returns the number of rows in the table.

    Specified by:
    :   `getAccessibleRowCount` in interface `AccessibleTable`

    Returns:
    :   the number of rows in the table
  + ### getAccessibleColumnCount

    public int getAccessibleColumnCount()

    Description copied from interface: `AccessibleTable`

    Returns the number of columns in the table.

    Specified by:
    :   `getAccessibleColumnCount` in interface `AccessibleTable`

    Returns:
    :   the number of columns in the table
  + ### getAccessibleAt

    public [Accessible](../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleAt(int r,
    int c)

    Description copied from interface: `AccessibleTable`

    Returns the `Accessible` at a specified row and column in the
    table.

    Specified by:
    :   `getAccessibleAt` in interface `AccessibleTable`

    Parameters:
    :   `r` - zero-based row of the table
    :   `c` - zero-based column of the table

    Returns:
    :   the `Accessible` at the specified row and column
  + ### getAccessibleRowExtentAt

    public int getAccessibleRowExtentAt(int r,
    int c)

    Returns the number of rows occupied by the `Accessible`
    at a specified row and column in the table.

    Specified by:
    :   `getAccessibleRowExtentAt` in interface `AccessibleTable`

    Parameters:
    :   `r` - zero-based row of the table
    :   `c` - zero-based column of the table

    Returns:
    :   the number of rows occupied by the `Accessible`
        at a specified row and column in the table

    Since:
    :   1.3
  + ### getAccessibleColumnExtentAt

    public int getAccessibleColumnExtentAt(int r,
    int c)

    Returns the number of columns occupied by the
    `Accessible` at a given (row, column).

    Specified by:
    :   `getAccessibleColumnExtentAt` in interface `AccessibleTable`

    Parameters:
    :   `r` - zero-based row of the table
    :   `c` - zero-based column of the table

    Returns:
    :   the number of columns occupied by the `Accessible`
        at a specified row and column in the table

    Since:
    :   1.3
  + ### getAccessibleRowHeader

    public [AccessibleTable](../accessibility/AccessibleTable.md "interface in javax.accessibility") getAccessibleRowHeader()

    Returns the row headers as an `AccessibleTable`.

    Specified by:
    :   `getAccessibleRowHeader` in interface `AccessibleTable`

    Returns:
    :   an `AccessibleTable` representing the row
        headers

    Since:
    :   1.3
  + ### setAccessibleRowHeader

    public void setAccessibleRowHeader([AccessibleTable](../accessibility/AccessibleTable.md "interface in javax.accessibility") a)

    Sets the row headers as an `AccessibleTable`.

    Specified by:
    :   `setAccessibleRowHeader` in interface `AccessibleTable`

    Parameters:
    :   `a` - an `AccessibleTable` representing the row
        headers

    Since:
    :   1.3
  + ### getAccessibleColumnHeader

    public [AccessibleTable](../accessibility/AccessibleTable.md "interface in javax.accessibility") getAccessibleColumnHeader()

    Returns the column headers as an `AccessibleTable`.

    Specified by:
    :   `getAccessibleColumnHeader` in interface `AccessibleTable`

    Returns:
    :   an `AccessibleTable` representing the column
        headers, or `null` if the table header is
        `null`

    Since:
    :   1.3
  + ### setAccessibleColumnHeader

    public void setAccessibleColumnHeader([AccessibleTable](../accessibility/AccessibleTable.md "interface in javax.accessibility") a)

    Sets the column headers as an `AccessibleTable`.

    Specified by:
    :   `setAccessibleColumnHeader` in interface `AccessibleTable`

    Parameters:
    :   `a` - an `AccessibleTable` representing the
        column headers

    Since:
    :   1.3
  + ### getAccessibleRowDescription

    public [Accessible](../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleRowDescription(int r)

    Returns the description of the specified row in the table.

    Specified by:
    :   `getAccessibleRowDescription` in interface `AccessibleTable`

    Parameters:
    :   `r` - zero-based row of the table

    Returns:
    :   the description of the row

    Since:
    :   1.3
  + ### setAccessibleRowDescription

    public void setAccessibleRowDescription(int r,
    [Accessible](../accessibility/Accessible.md "interface in javax.accessibility") a)

    Sets the description text of the specified row of the table.

    Specified by:
    :   `setAccessibleRowDescription` in interface `AccessibleTable`

    Parameters:
    :   `r` - zero-based row of the table
    :   `a` - the description of the row

    Since:
    :   1.3
  + ### getAccessibleColumnDescription

    public [Accessible](../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleColumnDescription(int c)

    Returns the description of the specified column in the table.

    Specified by:
    :   `getAccessibleColumnDescription` in interface `AccessibleTable`

    Parameters:
    :   `c` - zero-based column of the table

    Returns:
    :   the description of the column

    Since:
    :   1.3
  + ### setAccessibleColumnDescription

    public void setAccessibleColumnDescription(int c,
    [Accessible](../accessibility/Accessible.md "interface in javax.accessibility") a)

    Sets the description text of the specified column of the table.

    Specified by:
    :   `setAccessibleColumnDescription` in interface `AccessibleTable`

    Parameters:
    :   `c` - zero-based column of the table
    :   `a` - the description of the column

    Since:
    :   1.3
  + ### isAccessibleSelected

    public boolean isAccessibleSelected(int r,
    int c)

    Returns a boolean value indicating whether the accessible at a
    given (row, column) is selected.

    Specified by:
    :   `isAccessibleSelected` in interface `AccessibleTable`

    Parameters:
    :   `r` - zero-based row of the table
    :   `c` - zero-based column of the table

    Returns:
    :   the boolean value true if the accessible at (row, column)
        is selected; otherwise, the boolean value false

    Since:
    :   1.3
  + ### isAccessibleRowSelected

    public boolean isAccessibleRowSelected(int r)

    Returns a boolean value indicating whether the specified row
    is selected.

    Specified by:
    :   `isAccessibleRowSelected` in interface `AccessibleTable`

    Parameters:
    :   `r` - zero-based row of the table

    Returns:
    :   the boolean value true if the specified row is selected;
        otherwise, false

    Since:
    :   1.3
  + ### isAccessibleColumnSelected

    public boolean isAccessibleColumnSelected(int c)

    Returns a boolean value indicating whether the specified column
    is selected.

    Specified by:
    :   `isAccessibleColumnSelected` in interface `AccessibleTable`

    Parameters:
    :   `c` - zero-based column of the table

    Returns:
    :   the boolean value true if the specified column is selected;
        otherwise, false

    Since:
    :   1.3
  + ### getSelectedAccessibleRows

    public int[] getSelectedAccessibleRows()

    Returns the selected rows in a table.

    Specified by:
    :   `getSelectedAccessibleRows` in interface `AccessibleTable`

    Returns:
    :   an array of selected rows where each element is a
        zero-based row of the table

    Since:
    :   1.3
  + ### getSelectedAccessibleColumns

    public int[] getSelectedAccessibleColumns()

    Returns the selected columns in a table.

    Specified by:
    :   `getSelectedAccessibleColumns` in interface `AccessibleTable`

    Returns:
    :   an array of selected columns where each element is a
        zero-based column of the table

    Since:
    :   1.3
  + ### getAccessibleRowAtIndex

    public int getAccessibleRowAtIndex(int i)

    Returns the row at a given index into the table.

    Parameters:
    :   `i` - zero-based index into the table

    Returns:
    :   the row at a given index

    Since:
    :   1.3
  + ### getAccessibleColumnAtIndex

    public int getAccessibleColumnAtIndex(int i)

    Returns the column at a given index into the table.

    Parameters:
    :   `i` - zero-based index into the table

    Returns:
    :   the column at a given index

    Since:
    :   1.3
  + ### getAccessibleIndexAt

    public int getAccessibleIndexAt(int r,
    int c)

    Returns the index at a given (row, column) in the table.

    Parameters:
    :   `r` - zero-based row of the table
    :   `c` - zero-based column of the table

    Returns:
    :   the index into the table

    Since:
    :   1.3