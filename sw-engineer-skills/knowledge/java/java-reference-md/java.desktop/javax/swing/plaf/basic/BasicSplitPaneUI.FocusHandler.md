Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicSplitPaneUI.FocusHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.event.FocusAdapter](../../../../java/awt/event/FocusAdapter.md "class in java.awt.event")

javax.swing.plaf.basic.BasicSplitPaneUI.FocusHandler

All Implemented Interfaces:
:   `FocusListener`, `EventListener`

Enclosing class:
:   `BasicSplitPaneUI`

---

public class BasicSplitPaneUI.FocusHandler
extends [FocusAdapter](../../../../java/awt/event/FocusAdapter.md "class in java.awt.event")

Implementation of the FocusListener that the JSplitPane UI uses.

This class should be treated as a "protected" inner class.
Instantiate it only within subclasses of BasicSplitPaneUI.

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

  `focusGained(FocusEvent ev)`

  Invoked when a component gains the keyboard focus.

  `void`

  `focusLost(FocusEvent ev)`

  Invoked when a component loses the keyboard focus.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### FocusHandler

    public FocusHandler()

    Constructs a `FocusHandler`.
* ## Method Details

  + ### focusGained

    public void focusGained([FocusEvent](../../../../java/awt/event/FocusEvent.md "class in java.awt.event") ev)

    Description copied from class: `FocusAdapter`

    Invoked when a component gains the keyboard focus.

    Specified by:
    :   `focusGained` in interface `FocusListener`

    Overrides:
    :   `focusGained` in class `FocusAdapter`

    Parameters:
    :   `ev` - the event to be processed
  + ### focusLost

    public void focusLost([FocusEvent](../../../../java/awt/event/FocusEvent.md "class in java.awt.event") ev)

    Description copied from class: `FocusAdapter`

    Invoked when a component loses the keyboard focus.

    Specified by:
    :   `focusLost` in interface `FocusListener`

    Overrides:
    :   `focusLost` in class `FocusAdapter`

    Parameters:
    :   `ev` - the event to be processed