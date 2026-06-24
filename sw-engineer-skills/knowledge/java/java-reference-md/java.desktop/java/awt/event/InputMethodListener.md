Module [java.desktop](../../../module-summary.md)

Package [java.awt.event](package-summary.md)

# Interface InputMethodListener

All Superinterfaces:
:   `EventListener`

All Known Implementing Classes:
:   `AWTEventMulticaster`

---

public interface InputMethodListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

The listener interface for receiving input method events. A text editing
component has to install an input method event listener in order to work
with input methods.

The text editing component also has to provide an instance of InputMethodRequests.

Since:
:   1.2

See Also:
:   * [`InputMethodEvent`](InputMethodEvent.md "class in java.awt.event")
    * [`InputMethodRequests`](../im/InputMethodRequests.md "interface in java.awt.im")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `caretPositionChanged(InputMethodEvent event)`

  Invoked when the caret within composed text has changed.

  `void`

  `inputMethodTextChanged(InputMethodEvent event)`

  Invoked when the text entered through an input method has changed.

* ## Method Details

  + ### inputMethodTextChanged

    void inputMethodTextChanged([InputMethodEvent](InputMethodEvent.md "class in java.awt.event") event)

    Invoked when the text entered through an input method has changed.

    Parameters:
    :   `event` - the event to be processed
  + ### caretPositionChanged

    void caretPositionChanged([InputMethodEvent](InputMethodEvent.md "class in java.awt.event") event)

    Invoked when the caret within composed text has changed.

    Parameters:
    :   `event` - the event to be processed