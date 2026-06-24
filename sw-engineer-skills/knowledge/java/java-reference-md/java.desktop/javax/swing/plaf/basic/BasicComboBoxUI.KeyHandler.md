Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicComboBoxUI.KeyHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.event.KeyAdapter](../../../../java/awt/event/KeyAdapter.md "class in java.awt.event")

javax.swing.plaf.basic.BasicComboBoxUI.KeyHandler

All Implemented Interfaces:
:   `KeyListener`, `EventListener`

Enclosing class:
:   `BasicComboBoxUI`

---

public class BasicComboBoxUI.KeyHandler
extends [KeyAdapter](../../../../java/awt/event/KeyAdapter.md "class in java.awt.event")

This listener checks to see if the key event isn't a navigation key. If
it finds a key event that wasn't a navigation key it dispatches it to
JComboBox.selectWithKeyChar() so that it can do type-ahead.
This public inner class should be treated as protected.
Instantiate it only within subclasses of
`BasicComboBoxUI`.

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

  ### Methods inherited from class java.awt.event.[KeyAdapter](../../../../java/awt/event/KeyAdapter.md "class in java.awt.event")

  `keyReleased, keyTyped`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### KeyHandler

    public KeyHandler()

    Constructs a `KeyHandler`.
* ## Method Details

  + ### keyPressed

    public void keyPressed([KeyEvent](../../../../java/awt/event/KeyEvent.md "class in java.awt.event") e)

    Description copied from class: `KeyAdapter`

    Invoked when a key has been pressed.

    Specified by:
    :   `keyPressed` in interface `KeyListener`

    Overrides:
    :   `keyPressed` in class `KeyAdapter`

    Parameters:
    :   `e` - the event to be processed