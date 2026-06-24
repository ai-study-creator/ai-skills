Module [java.desktop](../../../module-summary.md)

Package [java.awt.event](package-summary.md)

# Interface KeyListener

All Superinterfaces:
:   `EventListener`

All Known Implementing Classes:
:   `AWTEventMulticaster`, `BasicComboBoxUI.KeyHandler`, `BasicComboPopup.InvocationKeyHandler`, `BasicTableUI.KeyHandler`, `BasicTreeUI.KeyHandler`, `KeyAdapter`

---

public interface KeyListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

The listener interface for receiving keyboard events (keystrokes).
The class that is interested in processing a keyboard event
either implements this interface (and all the methods it
contains) or extends the abstract `KeyAdapter` class
(overriding only the methods of interest).

The listener object created from that class is then registered with a
component using the component's `addKeyListener`
method. A keyboard event is generated when a key is pressed, released,
or typed. The relevant method in the listener
object is then invoked, and the `KeyEvent` is passed to it.

Since:
:   1.1

See Also:
:   * [`KeyAdapter`](KeyAdapter.md "class in java.awt.event")
    * [`KeyEvent`](KeyEvent.md "class in java.awt.event")
    * [Tutorial: Writing a Key Listener](https://docs.oracle.com/javase/tutorial/uiswing/events/keylistener.html)

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `keyPressed(KeyEvent e)`

  Invoked when a key has been pressed.

  `void`

  `keyReleased(KeyEvent e)`

  Invoked when a key has been released.

  `void`

  `keyTyped(KeyEvent e)`

  Invoked when a key has been typed.

* ## Method Details

  + ### keyTyped

    void keyTyped([KeyEvent](KeyEvent.md "class in java.awt.event") e)

    Invoked when a key has been typed.
    See the class description for [`KeyEvent`](KeyEvent.md "class in java.awt.event") for a definition of
    a key typed event.

    Parameters:
    :   `e` - the event to be processed
  + ### keyPressed

    void keyPressed([KeyEvent](KeyEvent.md "class in java.awt.event") e)

    Invoked when a key has been pressed.
    See the class description for [`KeyEvent`](KeyEvent.md "class in java.awt.event") for a definition of
    a key pressed event.

    Parameters:
    :   `e` - the event to be processed
  + ### keyReleased

    void keyReleased([KeyEvent](KeyEvent.md "class in java.awt.event") e)

    Invoked when a key has been released.
    See the class description for [`KeyEvent`](KeyEvent.md "class in java.awt.event") for a definition of
    a key released event.

    Parameters:
    :   `e` - the event to be processed