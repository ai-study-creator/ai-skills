Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JComponent.AccessibleJComponent.AccessibleFocusHandler

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.JComponent.AccessibleJComponent.AccessibleFocusHandler

All Implemented Interfaces:
:   `FocusListener`, `EventListener`

Enclosing class:
:   `JComponent.AccessibleJComponent`

---

[@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
protected class JComponent.AccessibleJComponent.AccessibleFocusHandler
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [FocusListener](../../java/awt/event/FocusListener.md "interface in java.awt.event")

Deprecated.

This class is no longer used or needed.
`java.awt.Component.AccessibleAWTComponent` provides
the same functionality and it is handled in `Component`.

Fire PropertyChange listener, if one is registered,
when focus events happen

Since:
:   1.3

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AccessibleFocusHandler()`

  Deprecated.

  Constructs an `AccessibleFocusHandler`.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `focusGained(FocusEvent event)`

  Deprecated.

  Invoked when a component gains the keyboard focus.

  `void`

  `focusLost(FocusEvent event)`

  Deprecated.

  Invoked when a component loses the keyboard focus.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AccessibleFocusHandler

    protected AccessibleFocusHandler()

    Deprecated.

    Constructs an `AccessibleFocusHandler`.
* ## Method Details

  + ### focusGained

    public void focusGained([FocusEvent](../../java/awt/event/FocusEvent.md "class in java.awt.event") event)

    Deprecated.

    Description copied from interface: `FocusListener`

    Invoked when a component gains the keyboard focus.

    Specified by:
    :   `focusGained` in interface `FocusListener`

    Parameters:
    :   `event` - the event to be processed
  + ### focusLost

    public void focusLost([FocusEvent](../../java/awt/event/FocusEvent.md "class in java.awt.event") event)

    Deprecated.

    Description copied from interface: `FocusListener`

    Invoked when a component loses the keyboard focus.

    Specified by:
    :   `focusLost` in interface `FocusListener`

    Parameters:
    :   `event` - the event to be processed