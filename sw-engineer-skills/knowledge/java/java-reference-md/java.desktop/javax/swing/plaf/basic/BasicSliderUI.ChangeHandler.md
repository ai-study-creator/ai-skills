Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicSliderUI.ChangeHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicSliderUI.ChangeHandler

All Implemented Interfaces:
:   `EventListener`, `ChangeListener`

Enclosing class:
:   `BasicSliderUI`

---

public class BasicSliderUI.ChangeHandler
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [ChangeListener](../../event/ChangeListener.md "interface in javax.swing.event")

Data model listener.
This class should be treated as a "protected" inner class.
Instantiate it only within subclasses of `Foo`.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ChangeHandler()`

  Constructs a `ChangeHandler`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `stateChanged(ChangeEvent e)`

  Invoked when the target of the listener has changed its state.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ChangeHandler

    public ChangeHandler()

    Constructs a `ChangeHandler`.
* ## Method Details

  + ### stateChanged

    public void stateChanged([ChangeEvent](../../event/ChangeEvent.md "class in javax.swing.event") e)

    Description copied from interface: `ChangeListener`

    Invoked when the target of the listener has changed its state.

    Specified by:
    :   `stateChanged` in interface `ChangeListener`

    Parameters:
    :   `e` - a ChangeEvent object