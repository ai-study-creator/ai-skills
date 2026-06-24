Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class DefaultCellEditor.EditorDelegate

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.DefaultCellEditor.EditorDelegate

All Implemented Interfaces:
:   `ActionListener`, `ItemListener`, `Serializable`, `EventListener`

Enclosing class:
:   `DefaultCellEditor`

---

protected class DefaultCellEditor.EditorDelegate
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [ActionListener](../../java/awt/event/ActionListener.md "interface in java.awt.event"), [ItemListener](../../java/awt/event/ItemListener.md "interface in java.awt.event"), [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

The protected `EditorDelegate` class.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Object`

  `value`

  The value of this cell.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `EditorDelegate()`

  Constructs an `EditorDelegate`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `actionPerformed(ActionEvent e)`

  When an action is performed, editing is ended.

  `void`

  `cancelCellEditing()`

  Cancels editing.

  `Object`

  `getCellEditorValue()`

  Returns the value of this cell.

  `boolean`

  `isCellEditable(EventObject anEvent)`

  Returns true if `anEvent` is **not** a
  `MouseEvent`.

  `void`

  `itemStateChanged(ItemEvent e)`

  When an item's state changes, editing is ended.

  `void`

  `setValue(Object value)`

  Sets the value of this cell.

  `boolean`

  `shouldSelectCell(EventObject anEvent)`

  Returns true to indicate that the editing cell may
  be selected.

  `boolean`

  `startCellEditing(EventObject anEvent)`

  Returns true to indicate that editing has begun.

  `boolean`

  `stopCellEditing()`

  Stops editing and
  returns true to indicate that editing has stopped.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### value

    protected [Object](../../../java.base/java/lang/Object.md "class in java.lang") value

    The value of this cell.
* ## Constructor Details

  + ### EditorDelegate

    protected EditorDelegate()

    Constructs an `EditorDelegate`.
* ## Method Details

  + ### getCellEditorValue

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getCellEditorValue()

    Returns the value of this cell.

    Returns:
    :   the value of this cell
  + ### setValue

    public void setValue([Object](../../../java.base/java/lang/Object.md "class in java.lang") value)

    Sets the value of this cell.

    Parameters:
    :   `value` - the new value of this cell
  + ### isCellEditable

    public boolean isCellEditable([EventObject](../../../java.base/java/util/EventObject.md "class in java.util") anEvent)

    Returns true if `anEvent` is **not** a
    `MouseEvent`. Otherwise, it returns true
    if the necessary number of clicks have occurred, and
    returns false otherwise.

    Parameters:
    :   `anEvent` - the event

    Returns:
    :   true if cell is ready for editing, false otherwise

    See Also:
    :   - [`DefaultCellEditor.setClickCountToStart(int)`](DefaultCellEditor.md#setClickCountToStart(int))
        - [`shouldSelectCell(java.util.EventObject)`](#shouldSelectCell(java.util.EventObject))
  + ### shouldSelectCell

    public boolean shouldSelectCell([EventObject](../../../java.base/java/util/EventObject.md "class in java.util") anEvent)

    Returns true to indicate that the editing cell may
    be selected.

    Parameters:
    :   `anEvent` - the event

    Returns:
    :   true

    See Also:
    :   - [`isCellEditable(java.util.EventObject)`](#isCellEditable(java.util.EventObject))
  + ### startCellEditing

    public boolean startCellEditing([EventObject](../../../java.base/java/util/EventObject.md "class in java.util") anEvent)

    Returns true to indicate that editing has begun.

    Parameters:
    :   `anEvent` - the event

    Returns:
    :   true to indicate editing has begun
  + ### stopCellEditing

    public boolean stopCellEditing()

    Stops editing and
    returns true to indicate that editing has stopped.
    This method calls `fireEditingStopped`.

    Returns:
    :   true
  + ### cancelCellEditing

    public void cancelCellEditing()

    Cancels editing. This method calls `fireEditingCanceled`.
  + ### actionPerformed

    public void actionPerformed([ActionEvent](../../java/awt/event/ActionEvent.md "class in java.awt.event") e)

    When an action is performed, editing is ended.

    Specified by:
    :   `actionPerformed` in interface `ActionListener`

    Parameters:
    :   `e` - the action event

    See Also:
    :   - [`stopCellEditing()`](#stopCellEditing())
  + ### itemStateChanged

    public void itemStateChanged([ItemEvent](../../java/awt/event/ItemEvent.md "class in java.awt.event") e)

    When an item's state changes, editing is ended.

    Specified by:
    :   `itemStateChanged` in interface `ItemListener`

    Parameters:
    :   `e` - the action event

    See Also:
    :   - [`stopCellEditing()`](#stopCellEditing())