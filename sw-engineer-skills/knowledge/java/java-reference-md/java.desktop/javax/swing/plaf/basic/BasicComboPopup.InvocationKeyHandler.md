Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicComboPopup.InvocationKeyHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.event.KeyAdapter](../../../../java/awt/event/KeyAdapter.md "class in java.awt.event")

javax.swing.plaf.basic.BasicComboPopup.InvocationKeyHandler

All Implemented Interfaces:
:   `KeyListener`, `EventListener`

Enclosing class:
:   `BasicComboPopup`

---

public class BasicComboPopup.InvocationKeyHandler
extends [KeyAdapter](../../../../java/awt/event/KeyAdapter.md "class in java.awt.event")

As of Java 2 platform v 1.4, this class is now obsolete and is only included for
backwards API compatibility. Do not instantiate or subclass.

All the functionality of this class has been included in
BasicComboBoxUI ActionMap/InputMap methods.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InvocationKeyHandler()`

  Constructs an `InvocationKeyHandler`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `keyReleased(KeyEvent e)`

  Invoked when a key has been released.

  ### Methods inherited from class java.awt.event.[KeyAdapter](../../../../java/awt/event/KeyAdapter.md "class in java.awt.event")

  `keyPressed, keyTyped`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### InvocationKeyHandler

    public InvocationKeyHandler()

    Constructs an `InvocationKeyHandler`.
* ## Method Details

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