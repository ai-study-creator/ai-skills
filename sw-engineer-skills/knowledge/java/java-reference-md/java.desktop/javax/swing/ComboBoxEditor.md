Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Interface ComboBoxEditor

All Known Implementing Classes:
:   `BasicComboBoxEditor`, `BasicComboBoxEditor.UIResource`, `MetalComboBoxEditor`, `MetalComboBoxEditor.UIResource`

---

public interface ComboBoxEditor

The editor component used for JComboBox components.

Since:
:   1.2

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `addActionListener(ActionListener l)`

  Add an ActionListener.

  `Component`

  `getEditorComponent()`

  Returns the component that should be added to the tree hierarchy for
  this editor

  `Object`

  `getItem()`

  Returns the edited item

  `void`

  `removeActionListener(ActionListener l)`

  Remove an ActionListener

  `void`

  `selectAll()`

  Ask the editor to start editing and to select everything

  `void`

  `setItem(Object anObject)`

  Set the item that should be edited.

* ## Method Details

  + ### getEditorComponent

    [Component](../../java/awt/Component.md "class in java.awt") getEditorComponent()

    Returns the component that should be added to the tree hierarchy for
    this editor

    Returns:
    :   the component
  + ### setItem

    void setItem([Object](../../../java.base/java/lang/Object.md "class in java.lang") anObject)

    Set the item that should be edited. Cancel any editing if necessary

    Parameters:
    :   `anObject` - an item
  + ### getItem

    [Object](../../../java.base/java/lang/Object.md "class in java.lang") getItem()

    Returns the edited item

    Returns:
    :   the edited item
  + ### selectAll

    void selectAll()

    Ask the editor to start editing and to select everything
  + ### addActionListener

    void addActionListener([ActionListener](../../java/awt/event/ActionListener.md "interface in java.awt.event") l)

    Add an ActionListener. An action event is generated when the edited item changes

    Parameters:
    :   `l` - an `ActionListener`
  + ### removeActionListener

    void removeActionListener([ActionListener](../../java/awt/event/ActionListener.md "interface in java.awt.event") l)

    Remove an ActionListener

    Parameters:
    :   `l` - an `ActionListener`