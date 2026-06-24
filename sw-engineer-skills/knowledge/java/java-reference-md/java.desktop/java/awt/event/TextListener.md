Module [java.desktop](../../../module-summary.md)

Package [java.awt.event](package-summary.md)

# Interface TextListener

All Superinterfaces:
:   `EventListener`

All Known Implementing Classes:
:   `AWTEventMulticaster`, `TextArea.AccessibleAWTTextArea`, `TextComponent.AccessibleAWTTextComponent`, `TextField.AccessibleAWTTextField`

---

public interface TextListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

The listener interface for receiving text events.
The class that is interested in processing a text event
implements this interface. The object created with that
class is then registered with a component using the
component's `addTextListener` method. When the
component's text changes, the listener object's
`textValueChanged` method is invoked.

Since:
:   1.1

See Also:
:   * [`TextEvent`](TextEvent.md "class in java.awt.event")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `textValueChanged(TextEvent e)`

  Invoked when the value of the text has changed.

* ## Method Details

  + ### textValueChanged

    void textValueChanged([TextEvent](TextEvent.md "class in java.awt.event") e)

    Invoked when the value of the text has changed.
    The code written for this method performs the operations
    that need to occur when text changes.

    Parameters:
    :   `e` - the event to be processed