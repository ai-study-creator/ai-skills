Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicSplitPaneUI.KeyboardUpLeftHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicSplitPaneUI.KeyboardUpLeftHandler

All Implemented Interfaces:
:   `ActionListener`, `EventListener`

Enclosing class:
:   `BasicSplitPaneUI`

---

public class BasicSplitPaneUI.KeyboardUpLeftHandler
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [ActionListener](../../../../java/awt/event/ActionListener.md "interface in java.awt.event")

Implementation of an ActionListener that the JSplitPane UI uses for
handling specific key presses.

This class should be treated as a "protected" inner class.
Instantiate it only within subclasses of BasicSplitPaneUI.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `KeyboardUpLeftHandler()`

  Constructs a `KeyboardUpLeftHandler`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `actionPerformed(ActionEvent ev)`

  Invoked when an action occurs.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### KeyboardUpLeftHandler

    public KeyboardUpLeftHandler()

    Constructs a `KeyboardUpLeftHandler`.
* ## Method Details

  + ### actionPerformed

    public void actionPerformed([ActionEvent](../../../../java/awt/event/ActionEvent.md "class in java.awt.event") ev)

    Description copied from interface: `ActionListener`

    Invoked when an action occurs.

    Specified by:
    :   `actionPerformed` in interface `ActionListener`

    Parameters:
    :   `ev` - the event to be processed