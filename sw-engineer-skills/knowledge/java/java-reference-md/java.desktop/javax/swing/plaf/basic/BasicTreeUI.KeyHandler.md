Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicTreeUI.KeyHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.event.KeyAdapter](../../../../java/awt/event/KeyAdapter.md "class in java.awt.event")

javax.swing.plaf.basic.BasicTreeUI.KeyHandler

All Implemented Interfaces:
:   `KeyListener`, `EventListener`

Enclosing class:
:   `BasicTreeUI`

---

public class BasicTreeUI.KeyHandler
extends [KeyAdapter](../../../../java/awt/event/KeyAdapter.md "class in java.awt.event")

This is used to get multiple key down events to appropriately generate
events.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected boolean`

  `isKeyDown`

  Set to true while keyPressed is active.

  `protected Action`

  `repeatKeyAction`

  Key code that is being generated for.
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

* ## Field Details

  + ### repeatKeyAction

    protected [Action](../../Action.md "interface in javax.swing") repeatKeyAction

    Key code that is being generated for.
  + ### isKeyDown

    protected boolean isKeyDown

    Set to true while keyPressed is active.
* ## Constructor Details

  + ### KeyHandler

    public KeyHandler()

    Constructs a `KeyHandler`.
* ## Method Details

  + ### keyTyped

    public void keyTyped([KeyEvent](../../../../java/awt/event/KeyEvent.md "class in java.awt.event") e)

    Invoked when a key has been typed.
    Moves the keyboard focus to the first element
    whose first letter matches the alphanumeric key
    pressed by the user. Subsequent same key presses
    move the keyboard focus to the next object that
    starts with the same letter.

    Specified by:
    :   `keyTyped` in interface `KeyListener`

    Overrides:
    :   `keyTyped` in class `KeyAdapter`

    Parameters:
    :   `e` - the event to be processed
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
  + ### keyReleased

    public void keyReleased([KeyEvent](../../../../java/awt/event/KeyEvent.md "class in java.awt.event") e)

    Description copied from class: `KeyAdapter`

    Invoked when a key has been released.

    Specified by:
    :   `keyReleased` in interface `KeyListener`

    Overrides:
    :   `keyReleased` in class `KeyAdapter`

    Parameters:
    :   `e` - the event to be processed