Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Interface DocumentListener

All Superinterfaces:
:   `EventListener`

All Known Implementing Classes:
:   `JEditorPane.AccessibleJEditorPane`, `JEditorPane.AccessibleJEditorPaneHTML`, `JEditorPane.JEditorPaneAccessibleHypertextSupport`, `JPasswordField.AccessibleJPasswordField`, `JTextArea.AccessibleJTextArea`, `JTextComponent.AccessibleJTextComponent`, `JTextField.AccessibleJTextField`

---

public interface DocumentListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

Interface for an observer to register to receive notifications
of changes to a text document.

The default implementation of
the Document interface (AbstractDocument) supports asynchronous
mutations. If this feature is used (i.e. mutations are made
from a thread other than the Swing event thread), the listeners
will be notified via the mutating thread. *This means that
if asynchronous updates are made, the implementation of this
interface must be threadsafe*!

The DocumentEvent notification is based upon the JavaBeans
event model. There is no guarantee about the order of delivery
to listeners, and all listeners must be notified prior to making
further mutations to the Document. *This means implementations
of the DocumentListener may not mutate the source of the event
(i.e. the associated Document)*.

See Also:
:   * [`Document`](../text/Document.md "interface in javax.swing.text")
    * [`StyledDocument`](../text/StyledDocument.md "interface in javax.swing.text")
    * [`DocumentEvent`](DocumentEvent.md "interface in javax.swing.event")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `changedUpdate(DocumentEvent e)`

  Gives notification that an attribute or set of attributes changed.

  `void`

  `insertUpdate(DocumentEvent e)`

  Gives notification that there was an insert into the document.

  `void`

  `removeUpdate(DocumentEvent e)`

  Gives notification that a portion of the document has been
  removed.

* ## Method Details

  + ### insertUpdate

    void insertUpdate([DocumentEvent](DocumentEvent.md "interface in javax.swing.event") e)

    Gives notification that there was an insert into the document. The
    range given by the DocumentEvent bounds the freshly inserted region.

    Parameters:
    :   `e` - the document event
  + ### removeUpdate

    void removeUpdate([DocumentEvent](DocumentEvent.md "interface in javax.swing.event") e)

    Gives notification that a portion of the document has been
    removed. The range is given in terms of what the view last
    saw (that is, before updating sticky positions).

    Parameters:
    :   `e` - the document event
  + ### changedUpdate

    void changedUpdate([DocumentEvent](DocumentEvent.md "interface in javax.swing.event") e)

    Gives notification that an attribute or set of attributes changed.

    Parameters:
    :   `e` - the document event