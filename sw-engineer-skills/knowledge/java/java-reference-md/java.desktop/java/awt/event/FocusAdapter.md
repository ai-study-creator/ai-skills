Module [java.desktop](../../../module-summary.md)

Package [java.awt.event](package-summary.md)

# Class FocusAdapter

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.event.FocusAdapter

All Implemented Interfaces:
:   `FocusListener`, `EventListener`

Direct Known Subclasses:
:   `BasicSplitPaneUI.FocusHandler`, `BasicTabbedPaneUI.FocusHandler`

---

public abstract class FocusAdapter
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [FocusListener](FocusListener.md "interface in java.awt.event")

An abstract adapter class for receiving keyboard focus events.
The methods in this class are empty. This class exists as
convenience for creating listener objects.

Extend this class to create a `FocusEvent` listener
and override the methods for the events of interest. (If you implement the
`FocusListener` interface, you have to define all of
the methods in it. This abstract class defines null methods for them
all, so you can only have to define methods for events you care about.)

Create a listener object using the extended class and then register it with
a component using the component's `addFocusListener`
method. When the component gains or loses the keyboard focus,
the relevant method in the listener object is invoked,
and the `FocusEvent` is passed to it.

Since:
:   1.1

See Also:
:   * [`FocusEvent`](FocusEvent.md "class in java.awt.event")
    * [`FocusListener`](FocusListener.md "interface in java.awt.event")
    * [Tutorial: Writing a Focus Listener](https://docs.oracle.com/javase/tutorial/uiswing/events/focuslistener.html)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `FocusAdapter()`

  Constructs a `FocusAdapter`.
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

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### FocusAdapter

    protected FocusAdapter()

    Constructs a `FocusAdapter`.
* ## Method Details

  + ### focusGained

    public void focusGained([FocusEvent](FocusEvent.md "class in java.awt.event") e)

    Invoked when a component gains the keyboard focus.

    Specified by:
    :   `focusGained` in interface `FocusListener`

    Parameters:
    :   `e` - the event to be processed
  + ### focusLost

    public void focusLost([FocusEvent](FocusEvent.md "class in java.awt.event") e)

    Invoked when a component loses the keyboard focus.

    Specified by:
    :   `focusLost` in interface `FocusListener`

    Parameters:
    :   `e` - the event to be processed