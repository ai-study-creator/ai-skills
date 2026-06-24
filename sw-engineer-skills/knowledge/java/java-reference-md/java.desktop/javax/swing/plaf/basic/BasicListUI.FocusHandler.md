Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicListUI.FocusHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicListUI.FocusHandler

All Implemented Interfaces:
:   `FocusListener`, `EventListener`

Enclosing class:
:   `BasicListUI`

---

public class BasicListUI.FocusHandler
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [FocusListener](../../../../java/awt/event/FocusListener.md "interface in java.awt.event")

This class should be treated as a "protected" inner class.
Instantiate it only within subclasses of `BasicListUI`.

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

  `protected void`

  `repaintCellFocus()`

  Repaints focused cells.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### FocusHandler

    public FocusHandler()

    Constructs a `FocusHandler`.
* ## Method Details

  + ### repaintCellFocus

    protected void repaintCellFocus()

    Repaints focused cells.
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