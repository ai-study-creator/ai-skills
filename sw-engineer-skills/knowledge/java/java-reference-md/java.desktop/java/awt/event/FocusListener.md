Module [java.desktop](../../../module-summary.md)

Package [java.awt.event](package-summary.md)

# Interface FocusListener

All Superinterfaces:
:   `EventListener`

All Known Implementing Classes:
:   `AWTEventMulticaster`, `BasicButtonListener`, `BasicComboBoxEditor`, `BasicComboBoxEditor.UIResource`, `BasicComboBoxUI.FocusHandler`, `BasicListUI.FocusHandler`, `BasicSliderUI.FocusHandler`, `BasicSplitPaneUI.FocusHandler`, `BasicTabbedPaneUI.FocusHandler`, `BasicTableUI.FocusHandler`, `BasicTextUI.BasicCaret`, `BasicToolBarUI.ToolBarFocusListener`, `BasicTreeUI.FocusHandler`, `Component.AccessibleAWTComponent.AccessibleAWTFocusHandler`, `DefaultCaret`, `FocusAdapter`, `JComponent.AccessibleJComponent.AccessibleFocusHandler`, `MetalComboBoxEditor`, `MetalComboBoxEditor.UIResource`

---

public interface FocusListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

The listener interface for receiving keyboard focus events on
a component.
The class that is interested in processing a focus event
either implements this interface (and all the methods it
contains) or extends the abstract `FocusAdapter` class
(overriding only the methods of interest).
The listener object created from that class is then registered with a
component using the component's `addFocusListener`
method. When the component gains or loses the keyboard focus,
the relevant method in the listener object
is invoked, and the `FocusEvent` is passed to it.

Since:
:   1.1

See Also:
:   * [`FocusAdapter`](FocusAdapter.md "class in java.awt.event")
    * [`FocusEvent`](FocusEvent.md "class in java.awt.event")
    * [Tutorial: Writing a Focus Listener](https://docs.oracle.com/javase/tutorial/uiswing/events/focuslistener.html)

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `focusGained(FocusEvent e)`

  Invoked when a component gains the keyboard focus.

  `void`

  `focusLost(FocusEvent e)`

  Invoked when a component loses the keyboard focus.

* ## Method Details

  + ### focusGained

    void focusGained([FocusEvent](FocusEvent.md "class in java.awt.event") e)

    Invoked when a component gains the keyboard focus.

    Parameters:
    :   `e` - the event to be processed
  + ### focusLost

    void focusLost([FocusEvent](FocusEvent.md "class in java.awt.event") e)

    Invoked when a component loses the keyboard focus.

    Parameters:
    :   `e` - the event to be processed