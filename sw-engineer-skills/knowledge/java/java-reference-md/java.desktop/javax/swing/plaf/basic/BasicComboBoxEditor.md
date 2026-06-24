Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicComboBoxEditor

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicComboBoxEditor

All Implemented Interfaces:
:   `FocusListener`, `EventListener`, `ComboBoxEditor`

Direct Known Subclasses:
:   `BasicComboBoxEditor.UIResource`, `MetalComboBoxEditor`

---

public class BasicComboBoxEditor
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [ComboBoxEditor](../../ComboBoxEditor.md "interface in javax.swing"), [FocusListener](../../../../java/awt/event/FocusListener.md "interface in java.awt.event")

The default editor for editable combo boxes. The editor is implemented as a JTextField.

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static class`

  `BasicComboBoxEditor.UIResource`

  A subclass of BasicComboBoxEditor that implements UIResource.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected JTextField`

  `editor`

  An instance of `JTextField`.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicComboBoxEditor()`

  Constructs a new instance of `BasicComboBoxEditor`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addActionListener(ActionListener l)`

  Add an ActionListener.

  `protected JTextField`

  `createEditorComponent()`

  Creates the internal editor component.

  `void`

  `focusGained(FocusEvent e)`

  Invoked when a component gains the keyboard focus.

  `void`

  `focusLost(FocusEvent e)`

  Invoked when a component loses the keyboard focus.

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

  Sets the item that should be edited.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### editor

    protected [JTextField](../../JTextField.md "class in javax.swing") editor

    An instance of `JTextField`.
* ## Constructor Details

  + ### BasicComboBoxEditor

    public BasicComboBoxEditor()

    Constructs a new instance of `BasicComboBoxEditor`.
* ## Method Details

  + ### getEditorComponent

    public [Component](../../../../java/awt/Component.md "class in java.awt") getEditorComponent()

    Description copied from interface: `ComboBoxEditor`

    Returns the component that should be added to the tree hierarchy for
    this editor

    Specified by:
    :   `getEditorComponent` in interface `ComboBoxEditor`

    Returns:
    :   the component
  + ### createEditorComponent

    protected [JTextField](../../JTextField.md "class in javax.swing") createEditorComponent()

    Creates the internal editor component. Override this to provide
    a custom implementation.

    Returns:
    :   a new editor component

    Since:
    :   1.6
  + ### setItem

    public void setItem([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") anObject)

    Sets the item that should be edited.

    Specified by:
    :   `setItem` in interface `ComboBoxEditor`

    Parameters:
    :   `anObject` - the displayed value of the editor
  + ### getItem

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") getItem()

    Description copied from interface: `ComboBoxEditor`

    Returns the edited item

    Specified by:
    :   `getItem` in interface `ComboBoxEditor`

    Returns:
    :   the edited item
  + ### selectAll

    public void selectAll()

    Description copied from interface: `ComboBoxEditor`

    Ask the editor to start editing and to select everything

    Specified by:
    :   `selectAll` in interface `ComboBoxEditor`
  + ### focusGained

    public void focusGained([FocusEvent](../../../../java/awt/event/FocusEvent.md "class in java.awt.event") e)

    Description copied from interface: `FocusListener`

    Invoked when a component gains the keyboard focus.

    Specified by:
    :   `focusGained` in interface `FocusListener`

    Parameters:
    :   `e` - the event to be processed
  + ### focusLost

    public void focusLost([FocusEvent](../../../../java/awt/event/FocusEvent.md "class in java.awt.event") e)

    Description copied from interface: `FocusListener`

    Invoked when a component loses the keyboard focus.

    Specified by:
    :   `focusLost` in interface `FocusListener`

    Parameters:
    :   `e` - the event to be processed
  + ### addActionListener

    public void addActionListener([ActionListener](../../../../java/awt/event/ActionListener.md "interface in java.awt.event") l)

    Description copied from interface: `ComboBoxEditor`

    Add an ActionListener. An action event is generated when the edited item changes

    Specified by:
    :   `addActionListener` in interface `ComboBoxEditor`

    Parameters:
    :   `l` - an `ActionListener`
  + ### removeActionListener

    public void removeActionListener([ActionListener](../../../../java/awt/event/ActionListener.md "interface in java.awt.event") l)

    Description copied from interface: `ComboBoxEditor`

    Remove an ActionListener

    Specified by:
    :   `removeActionListener` in interface `ComboBoxEditor`

    Parameters:
    :   `l` - an `ActionListener`