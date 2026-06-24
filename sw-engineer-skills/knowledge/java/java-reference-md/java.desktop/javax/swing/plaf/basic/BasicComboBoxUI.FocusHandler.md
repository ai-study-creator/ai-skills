Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicComboBoxUI.FocusHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicComboBoxUI.FocusHandler

All Implemented Interfaces:
:   `FocusListener`, `EventListener`

Enclosing class:
:   `BasicComboBoxUI`

---

public class BasicComboBoxUI.FocusHandler
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [FocusListener](../../../../java/awt/event/FocusListener.md "interface in java.awt.event")

This listener hides the popup when the focus is lost. It also repaints
when focus is gained or lost.
This public inner class should be treated as protected.
Instantiate it only within subclasses of
`BasicComboBoxUI`.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `FocusHandler()`

  Constructs a `FocusHandler`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `focusGained(FocusEvent e)`

  Invoked when a component gains the keyboard focus.

  `void`

  `focusLost(FocusEvent e)`

  Invoked when a component loses the keyboard focus.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### FocusHandler

    public FocusHandler()

    Constructs a `FocusHandler`.
* ## Method Details

  + ### focusGained

    public void focusGained([FocusEvent](../../../../java/awt/event/FocusEvent.md "class in java.awt.event") e)

    Description copied from interface: `FocusListener`

    Invoked when a component gains the keyboard focus.

    Specified by:
    :   `focusGained` in interface `FocusListener`

    Parameters:
    :   `e` - the event to be processed
  + ### focusLost

    public void focusLost([FocusEvent](../../../../java/awt/event/FocusEvent.md "class in java.awt.event") e)

    Description copied from interface: `FocusListener`

    Invoked when a component loses the keyboard focus.

    Specified by:
    :   `focusLost` in interface `FocusListener`

    Parameters:
    :   `e` - the event to be processed