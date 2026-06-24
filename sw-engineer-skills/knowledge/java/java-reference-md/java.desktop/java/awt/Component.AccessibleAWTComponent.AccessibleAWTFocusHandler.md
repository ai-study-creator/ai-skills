Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class Component.AccessibleAWTComponent.AccessibleAWTFocusHandler

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.Component.AccessibleAWTComponent.AccessibleAWTFocusHandler

All Implemented Interfaces:
:   `FocusListener`, `Serializable`, `EventListener`

Enclosing class:
:   `Component.AccessibleAWTComponent`

---

protected class Component.AccessibleAWTComponent.AccessibleAWTFocusHandler
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [FocusListener](event/FocusListener.md "interface in java.awt.event"), [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

Fire PropertyChange listener, if one is registered,
when focus events happen

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.awt.Component.AccessibleAWTComponent.AccessibleAWTFocusHandler)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AccessibleAWTFocusHandler()`

  Constructs an `AccessibleAWTFocusHandler`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `focusGained(FocusEvent event)`

  Invoked when a component gains the keyboard focus.

  `void`

  `focusLost(FocusEvent event)`

  Invoked when a component loses the keyboard focus.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AccessibleAWTFocusHandler

    protected AccessibleAWTFocusHandler()

    Constructs an `AccessibleAWTFocusHandler`.
* ## Method Details

  + ### focusGained

    public void focusGained([FocusEvent](event/FocusEvent.md "class in java.awt.event") event)

    Description copied from interface: `FocusListener`

    Invoked when a component gains the keyboard focus.

    Specified by:
    :   `focusGained` in interface `FocusListener`

    Parameters:
    :   `event` - the event to be processed
  + ### focusLost

    public void focusLost([FocusEvent](event/FocusEvent.md "class in java.awt.event") event)

    Description copied from interface: `FocusListener`

    Invoked when a component loses the keyboard focus.

    Specified by:
    :   `focusLost` in interface `FocusListener`

    Parameters:
    :   `event` - the event to be processed