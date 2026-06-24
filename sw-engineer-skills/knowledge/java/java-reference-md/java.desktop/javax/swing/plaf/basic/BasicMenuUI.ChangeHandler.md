Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicMenuUI.ChangeHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicMenuUI.ChangeHandler

All Implemented Interfaces:
:   `EventListener`, `ChangeListener`

Enclosing class:
:   `BasicMenuUI`

---

public class BasicMenuUI.ChangeHandler
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [ChangeListener](../../event/ChangeListener.md "interface in javax.swing.event")

As of Java 2 platform 1.4, this previously undocumented class
is now obsolete. KeyBindings are now managed by the popup menu.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `boolean`

  `isSelected`

  `true` if an item of popup menu is selected.

  `JMenu`

  `menu`

  The instance of `JMenu`.

  `BasicMenuUI`

  `ui`

  The instance of `BasicMenuUI`.

  `Component`

  `wasFocused`

  The component that was focused.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ChangeHandler(JMenu m,
  BasicMenuUI ui)`

  Constructs a new instance of `ChangeHandler`.
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

* ## Field Details

  + ### menu

    public [JMenu](../../JMenu.md "class in javax.swing") menu

    The instance of `JMenu`.
  + ### ui

    public [BasicMenuUI](BasicMenuUI.md "class in javax.swing.plaf.basic") ui

    The instance of `BasicMenuUI`.
  + ### isSelected

    public boolean isSelected

    `true` if an item of popup menu is selected.
  + ### wasFocused

    public [Component](../../../../java/awt/Component.md "class in java.awt") wasFocused

    The component that was focused.
* ## Constructor Details

  + ### ChangeHandler

    public ChangeHandler([JMenu](../../JMenu.md "class in javax.swing") m,
    [BasicMenuUI](BasicMenuUI.md "class in javax.swing.plaf.basic") ui)

    Constructs a new instance of `ChangeHandler`.

    Parameters:
    :   `m` - an instance of `JMenu`
    :   `ui` - an instance of `BasicMenuUI`
* ## Method Details

  + ### stateChanged

    public void stateChanged([ChangeEvent](../../event/ChangeEvent.md "class in javax.swing.event") e)

    Description copied from interface: `ChangeListener`

    Invoked when the target of the listener has changed its state.

    Specified by:
    :   `stateChanged` in interface `ChangeListener`

    Parameters:
    :   `e` - a ChangeEvent object