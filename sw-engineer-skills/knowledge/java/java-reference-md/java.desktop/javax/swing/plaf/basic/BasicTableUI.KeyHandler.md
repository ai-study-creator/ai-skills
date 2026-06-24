Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicTableUI.KeyHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicTableUI.KeyHandler

All Implemented Interfaces:
:   `KeyListener`, `EventListener`

Enclosing class:
:   `BasicTableUI`

---

public class BasicTableUI.KeyHandler
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [KeyListener](../../../../java/awt/event/KeyListener.md "interface in java.awt.event")

This class should be treated as a "protected" inner class.
Instantiate it only within subclasses of `BasicTableUI`.

As of Java 2 platform v1.3 this class is no longer used.
Instead `JTable`
overrides `processKeyBinding` to dispatch the event to
the current `TableCellEditor`.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `KeyHandler()`

  Constructs a `KeyHandler`.
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

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### KeyHandler

    public KeyHandler()

    Constructs a `KeyHandler`.
* ## Method Details

  + ### keyPressed

    public void keyPressed([KeyEvent](../../../../java/awt/event/KeyEvent.md "class in java.awt.event") e)

    Description copied from interface: `KeyListener`

    Invoked when a key has been pressed.
    See the class description for [`KeyEvent`](../../../../java/awt/event/KeyEvent.md "class in java.awt.event") for a definition of
    a key pressed event.

    Specified by:
    :   `keyPressed` in interface `KeyListener`

    Parameters:
    :   `e` - the event to be processed
  + ### keyReleased

    public void keyReleased([KeyEvent](../../../../java/awt/event/KeyEvent.md "class in java.awt.event") e)

    Description copied from interface: `KeyListener`

    Invoked when a key has been released.
    See the class description for [`KeyEvent`](../../../../java/awt/event/KeyEvent.md "class in java.awt.event") for a definition of
    a key released event.

    Specified by:
    :   `keyReleased` in interface `KeyListener`

    Parameters:
    :   `e` - the event to be processed
  + ### keyTyped

    public void keyTyped([KeyEvent](../../../../java/awt/event/KeyEvent.md "class in java.awt.event") e)

    Description copied from interface: `KeyListener`

    Invoked when a key has been typed.
    See the class description for [`KeyEvent`](../../../../java/awt/event/KeyEvent.md "class in java.awt.event") for a definition of
    a key typed event.

    Specified by:
    :   `keyTyped` in interface `KeyListener`

    Parameters:
    :   `e` - the event to be processed