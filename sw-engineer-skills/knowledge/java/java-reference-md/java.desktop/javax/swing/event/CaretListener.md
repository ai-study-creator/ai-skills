Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Interface CaretListener

All Superinterfaces:
:   `EventListener`

All Known Implementing Classes:
:   `JEditorPane.AccessibleJEditorPane`, `JEditorPane.AccessibleJEditorPaneHTML`, `JEditorPane.JEditorPaneAccessibleHypertextSupport`, `JPasswordField.AccessibleJPasswordField`, `JTextArea.AccessibleJTextArea`, `JTextComponent.AccessibleJTextComponent`, `JTextField.AccessibleJTextField`

---

public interface CaretListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

Listener for changes in the caret position of a text
component.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `caretUpdate(CaretEvent e)`

  Called when the caret position is updated.

* ## Method Details

  + ### caretUpdate

    void caretUpdate([CaretEvent](CaretEvent.md "class in javax.swing.event") e)

    Called when the caret position is updated.

    Parameters:
    :   `e` - the caret event