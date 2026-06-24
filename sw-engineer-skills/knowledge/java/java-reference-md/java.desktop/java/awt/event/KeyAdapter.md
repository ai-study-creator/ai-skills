Module [java.desktop](../../../module-summary.md)

Package [java.awt.event](package-summary.md)

# Class KeyAdapter

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.event.KeyAdapter

All Implemented Interfaces:
:   `KeyListener`, `EventListener`

Direct Known Subclasses:
:   `BasicComboBoxUI.KeyHandler`, `BasicComboPopup.InvocationKeyHandler`, `BasicTreeUI.KeyHandler`

---

public abstract class KeyAdapter
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [KeyListener](KeyListener.md "interface in java.awt.event")

An abstract adapter class for receiving keyboard events.
The methods in this class are empty. This class exists as
convenience for creating listener objects.

Extend this class to create a `KeyEvent` listener
and override the methods for the events of interest. (If you implement the
`KeyListener` interface, you have to define all of
the methods in it. This abstract class defines null methods for them
all, so you can only have to define methods for events you care about.)

Create a listener object using the extended class and then register it with
a component using the component's `addKeyListener`
method. When a key is pressed, released, or typed,
the relevant method in the listener object is invoked,
and the `KeyEvent` is passed to it.

Since:
:   1.1

See Also:
:   * [`KeyEvent`](KeyEvent.md "class in java.awt.event")
    * [`KeyListener`](KeyListener.md "interface in java.awt.event")
    * [Tutorial: Writing a Key Listener](https://docs.oracle.com/javase/tutorial/uiswing/events/keylistener.html)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `KeyAdapter()`

  Constructs a `KeyAdapter`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

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

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### KeyAdapter

    protected KeyAdapter()

    Constructs a `KeyAdapter`.
* ## Method Details

  + ### keyTyped

    public void keyTyped([KeyEvent](KeyEvent.md "class in java.awt.event") e)

    Invoked when a key has been typed.
    This event occurs when a key press is followed by a key release.

    Specified by:
    :   `keyTyped` in interface `KeyListener`

    Parameters:
    :   `e` - the event to be processed
  + ### keyPressed

    public void keyPressed([KeyEvent](KeyEvent.md "class in java.awt.event") e)

    Invoked when a key has been pressed.

    Specified by:
    :   `keyPressed` in interface `KeyListener`

    Parameters:
    :   `e` - the event to be processed
  + ### keyReleased

    public void keyReleased([KeyEvent](KeyEvent.md "class in java.awt.event") e)

    Invoked when a key has been released.

    Specified by:
    :   `keyReleased` in interface `KeyListener`

    Parameters:
    :   `e` - the event to be processed