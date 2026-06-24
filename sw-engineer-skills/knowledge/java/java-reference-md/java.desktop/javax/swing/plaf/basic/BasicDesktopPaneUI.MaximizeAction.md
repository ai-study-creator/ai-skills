Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicDesktopPaneUI.MaximizeAction

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.AbstractAction](../../AbstractAction.md "class in javax.swing")

javax.swing.plaf.basic.BasicDesktopPaneUI.MaximizeAction

All Implemented Interfaces:
:   `ActionListener`, `Serializable`, `Cloneable`, `EventListener`, `Action`

Enclosing class:
:   `BasicDesktopPaneUI`

---

protected class BasicDesktopPaneUI.MaximizeAction
extends [AbstractAction](../../AbstractAction.md "class in javax.swing")

Handles maximizing an internal frame.

* ## Field Summary

  ### Fields inherited from class javax.swing.[AbstractAction](../../AbstractAction.md "class in javax.swing")

  `changeSupport, enabled`

  ### Fields inherited from interface javax.swing.[Action](../../Action.md "interface in javax.swing")

  `ACCELERATOR_KEY, ACTION_COMMAND_KEY, DEFAULT, DISPLAYED_MNEMONIC_INDEX_KEY, LARGE_ICON_KEY, LONG_DESCRIPTION, MNEMONIC_KEY, NAME, SELECTED_KEY, SHORT_DESCRIPTION, SMALL_ICON`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `MaximizeAction()`

  Constructs a `MaximizeAction`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `actionPerformed(ActionEvent evt)`

  Invoked when an action occurs.

  `boolean`

  `isEnabled()`

  Returns true if the action is enabled.

  ### Methods inherited from class javax.swing.[AbstractAction](../../AbstractAction.md "class in javax.swing")

  `addPropertyChangeListener, clone, firePropertyChange, getKeys, getPropertyChangeListeners, getValue, putValue, removePropertyChangeListener, setEnabled`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.swing.[Action](../../Action.md "interface in javax.swing")

  `accept`

* ## Constructor Details

  + ### MaximizeAction

    protected MaximizeAction()

    Constructs a `MaximizeAction`.
* ## Method Details

  + ### actionPerformed

    public void actionPerformed([ActionEvent](../../../../java/awt/event/ActionEvent.md "class in java.awt.event") evt)

    Description copied from interface: `ActionListener`

    Invoked when an action occurs.

    Parameters:
    :   `evt` - the event to be processed
  + ### isEnabled

    public boolean isEnabled()

    Description copied from class: `AbstractAction`

    Returns true if the action is enabled.

    Specified by:
    :   `isEnabled` in interface `Action`

    Overrides:
    :   `isEnabled` in class `AbstractAction`

    Returns:
    :   true if the action is enabled, false otherwise

    See Also:
    :   - [`Action.isEnabled()`](../../Action.md#isEnabled())