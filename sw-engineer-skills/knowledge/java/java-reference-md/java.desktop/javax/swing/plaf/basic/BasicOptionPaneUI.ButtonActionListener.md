Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicOptionPaneUI.ButtonActionListener

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicOptionPaneUI.ButtonActionListener

All Implemented Interfaces:
:   `ActionListener`, `EventListener`

Enclosing class:
:   `BasicOptionPaneUI`

---

public class BasicOptionPaneUI.ButtonActionListener
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [ActionListener](../../../../java/awt/event/ActionListener.md "interface in java.awt.event")

This class should be treated as a "protected" inner class.
Instantiate it only within subclasses of `BasicOptionPaneUI`.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected int`

  `buttonIndex`

  The index of the button.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ButtonActionListener(int buttonIndex)`

  Constructs a new instance of `ButtonActionListener`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `actionPerformed(ActionEvent e)`

  Invoked when an action occurs.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### buttonIndex

    protected int buttonIndex

    The index of the button.
* ## Constructor Details

  + ### ButtonActionListener

    public ButtonActionListener(int buttonIndex)

    Constructs a new instance of `ButtonActionListener`.

    Parameters:
    :   `buttonIndex` - an index of the button
* ## Method Details

  + ### actionPerformed

    public void actionPerformed([ActionEvent](../../../../java/awt/event/ActionEvent.md "class in java.awt.event") e)

    Description copied from interface: `ActionListener`

    Invoked when an action occurs.

    Specified by:
    :   `actionPerformed` in interface `ActionListener`

    Parameters:
    :   `e` - the event to be processed