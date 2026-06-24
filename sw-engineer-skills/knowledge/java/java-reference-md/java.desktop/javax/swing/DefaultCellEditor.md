Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class DefaultCellEditor

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.AbstractCellEditor](AbstractCellEditor.md "class in javax.swing")

javax.swing.DefaultCellEditor

All Implemented Interfaces:
:   `Serializable`, `CellEditor`, `TableCellEditor`, `TreeCellEditor`

---

public class DefaultCellEditor
extends [AbstractCellEditor](AbstractCellEditor.md "class in javax.swing")
implements [TableCellEditor](table/TableCellEditor.md "interface in javax.swing.table"), [TreeCellEditor](tree/TreeCellEditor.md "interface in javax.swing.tree")

The default editor for table and tree cells.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../java/beans/XMLEncoder.md "class in java.beans").

Since:
:   1.2

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `DefaultCellEditor.EditorDelegate`

  The protected `EditorDelegate` class.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected int`

  `clickCountToStart`

  An integer specifying the number of clicks needed to start editing.

  `protected DefaultCellEditor.EditorDelegate`

  `delegate`

  The delegate class which handles all methods sent from the
  `CellEditor`.

  `protected JComponent`

  `editorComponent`

  The Swing component being edited.

  ### Fields inherited from class javax.swing.[AbstractCellEditor](AbstractCellEditor.md "class in javax.swing")

  `changeEvent, listenerList`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DefaultCellEditor(JCheckBox checkBox)`

  Constructs a `DefaultCellEditor` object that uses a check box.

  `DefaultCellEditor(JComboBox<?> comboBox)`

  Constructs a `DefaultCellEditor` object that uses a
  combo box.

  `DefaultCellEditor(JTextField textField)`

  Constructs a `DefaultCellEditor` that uses a text field.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `cancelCellEditing()`

  Forwards the message from the `CellEditor` to
  the `delegate`.

  `Object`

  `getCellEditorValue()`

  Forwards the message from the `CellEditor` to
  the `delegate`.

  `int`

  `getClickCountToStart()`

  Returns the number of clicks needed to start editing.

  `Component`

  `getComponent()`

  Returns a reference to the editor component.

  `Component`

  `getTableCellEditorComponent(JTable table,
  Object value,
  boolean isSelected,
  int row,
  int column)`

  Implements the `TableCellEditor` interface.

  `Component`

  `getTreeCellEditorComponent(JTree tree,
  Object value,
  boolean isSelected,
  boolean expanded,
  boolean leaf,
  int row)`

  Implements the `TreeCellEditor` interface.

  `boolean`

  `isCellEditable(EventObject anEvent)`

  Forwards the message from the `CellEditor` to
  the `delegate`.

  `void`

  `setClickCountToStart(int count)`

  Specifies the number of clicks needed to start editing.

  `boolean`

  `shouldSelectCell(EventObject anEvent)`

  Forwards the message from the `CellEditor` to
  the `delegate`.

  `boolean`

  `stopCellEditing()`

  Forwards the message from the `CellEditor` to
  the `delegate`.

  ### Methods inherited from class javax.swing.[AbstractCellEditor](AbstractCellEditor.md "class in javax.swing")

  `addCellEditorListener, fireEditingCanceled, fireEditingStopped, getCellEditorListeners, removeCellEditorListener`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.swing.[CellEditor](CellEditor.md "interface in javax.swing")

  `addCellEditorListener, removeCellEditorListener`

* ## Field Details

  + ### editorComponent

    protected [JComponent](JComponent.md "class in javax.swing") editorComponent

    The Swing component being edited.
  + ### delegate

    protected [DefaultCellEditor.EditorDelegate](DefaultCellEditor.EditorDelegate.md "class in javax.swing") delegate

    The delegate class which handles all methods sent from the
    `CellEditor`.
  + ### clickCountToStart

    protected int clickCountToStart

    An integer specifying the number of clicks needed to start editing.
    Even if `clickCountToStart` is defined as zero, it
    will not initiate until a click occurs.
* ## Constructor Details

  + ### DefaultCellEditor

    [@ConstructorProperties](../../java/beans/ConstructorProperties.md "annotation interface in java.beans")("component")
    public DefaultCellEditor([JTextField](JTextField.md "class in javax.swing") textField)

    Constructs a `DefaultCellEditor` that uses a text field.

    Parameters:
    :   `textField` - a `JTextField` object
  + ### DefaultCellEditor

    public DefaultCellEditor([JCheckBox](JCheckBox.md "class in javax.swing") checkBox)

    Constructs a `DefaultCellEditor` object that uses a check box.

    Parameters:
    :   `checkBox` - a `JCheckBox` object
  + ### DefaultCellEditor

    public DefaultCellEditor([JComboBox](JComboBox.md "class in javax.swing")<?> comboBox)

    Constructs a `DefaultCellEditor` object that uses a
    combo box.

    Parameters:
    :   `comboBox` - a `JComboBox` object
* ## Method Details

  + ### getComponent

    public [Component](../../java/awt/Component.md "class in java.awt") getComponent()

    Returns a reference to the editor component.

    Returns:
    :   the editor `Component`
  + ### setClickCountToStart

    public void setClickCountToStart(int count)

    Specifies the number of clicks needed to start editing.

    Parameters:
    :   `count` - an int specifying the number of clicks needed to start editing

    See Also:
    :   - [`getClickCountToStart()`](#getClickCountToStart())
  + ### getClickCountToStart

    public int getClickCountToStart()

    Returns the number of clicks needed to start editing.

    Returns:
    :   the number of clicks needed to start editing
  + ### getCellEditorValue

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getCellEditorValue()

    Forwards the message from the `CellEditor` to
    the `delegate`.

    Specified by:
    :   `getCellEditorValue` in interface `CellEditor`

    Returns:
    :   the value contained in the editor

    See Also:
    :   - [`DefaultCellEditor.EditorDelegate.getCellEditorValue()`](DefaultCellEditor.EditorDelegate.md#getCellEditorValue())
  + ### isCellEditable

    public boolean isCellEditable([EventObject](../../../java.base/java/util/EventObject.md "class in java.util") anEvent)

    Forwards the message from the `CellEditor` to
    the `delegate`.

    Specified by:
    :   `isCellEditable` in interface `CellEditor`

    Overrides:
    :   `isCellEditable` in class `AbstractCellEditor`

    Parameters:
    :   `anEvent` - an event object

    Returns:
    :   true

    See Also:
    :   - [`DefaultCellEditor.EditorDelegate.isCellEditable(EventObject)`](DefaultCellEditor.EditorDelegate.md#isCellEditable(java.util.EventObject))
  + ### shouldSelectCell

    public boolean shouldSelectCell([EventObject](../../../java.base/java/util/EventObject.md "class in java.util") anEvent)

    Forwards the message from the `CellEditor` to
    the `delegate`.

    Specified by:
    :   `shouldSelectCell` in interface `CellEditor`

    Overrides:
    :   `shouldSelectCell` in class `AbstractCellEditor`

    Parameters:
    :   `anEvent` - an event object

    Returns:
    :   true

    See Also:
    :   - [`DefaultCellEditor.EditorDelegate.shouldSelectCell(EventObject)`](DefaultCellEditor.EditorDelegate.md#shouldSelectCell(java.util.EventObject))
  + ### stopCellEditing

    public boolean stopCellEditing()

    Forwards the message from the `CellEditor` to
    the `delegate`.

    Specified by:
    :   `stopCellEditing` in interface `CellEditor`

    Overrides:
    :   `stopCellEditing` in class `AbstractCellEditor`

    Returns:
    :   true

    See Also:
    :   - [`DefaultCellEditor.EditorDelegate.stopCellEditing()`](DefaultCellEditor.EditorDelegate.md#stopCellEditing())
  + ### cancelCellEditing

    public void cancelCellEditing()

    Forwards the message from the `CellEditor` to
    the `delegate`.

    Specified by:
    :   `cancelCellEditing` in interface `CellEditor`

    Overrides:
    :   `cancelCellEditing` in class `AbstractCellEditor`

    See Also:
    :   - [`DefaultCellEditor.EditorDelegate.cancelCellEditing()`](DefaultCellEditor.EditorDelegate.md#cancelCellEditing())
  + ### getTreeCellEditorComponent

    public [Component](../../java/awt/Component.md "class in java.awt") getTreeCellEditorComponent([JTree](JTree.md "class in javax.swing") tree,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") value,
    boolean isSelected,
    boolean expanded,
    boolean leaf,
    int row)

    Implements the `TreeCellEditor` interface.

    Specified by:
    :   `getTreeCellEditorComponent` in interface `TreeCellEditor`

    Parameters:
    :   `tree` - the JTree that is asking the editor to edit;
        this parameter can be null
    :   `value` - the value of the cell to be edited
    :   `isSelected` - true if the cell is to be rendered with
        selection highlighting
    :   `expanded` - true if the node is expanded
    :   `leaf` - true if the node is a leaf node
    :   `row` - the row index of the node being edited

    Returns:
    :   the component for editing
  + ### getTableCellEditorComponent

    public [Component](../../java/awt/Component.md "class in java.awt") getTableCellEditorComponent([JTable](JTable.md "class in javax.swing") table,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") value,
    boolean isSelected,
    int row,
    int column)

    Implements the `TableCellEditor` interface.

    Specified by:
    :   `getTableCellEditorComponent` in interface `TableCellEditor`

    Parameters:
    :   `table` - the `JTable` that is asking the
        editor to edit; can be `null`
    :   `value` - the value of the cell to be edited; it is
        up to the specific editor to interpret
        and draw the value. For example, if value is
        the string "true", it could be rendered as a
        string or it could be rendered as a check
        box that is checked. `null`
        is a valid value
    :   `isSelected` - true if the cell is to be rendered with
        highlighting
    :   `row` - the row of the cell being edited
    :   `column` - the column of the cell being edited

    Returns:
    :   the component for editing