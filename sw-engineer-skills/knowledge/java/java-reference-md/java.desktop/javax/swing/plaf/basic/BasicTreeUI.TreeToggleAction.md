Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicTreeUI.TreeToggleAction

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.AbstractAction](../../AbstractAction.md "class in javax.swing")

javax.swing.plaf.basic.BasicTreeUI.TreeToggleAction

All Implemented Interfaces:
:   `ActionListener`, `Serializable`, `Cloneable`, `EventListener`, `Action`

Enclosing class:
:   `BasicTreeUI`

---

public class BasicTreeUI.TreeToggleAction
extends [AbstractAction](../../AbstractAction.md "class in javax.swing")

For the first selected row expandedness will be toggled.

* ## Field Summary

  ### Fields inherited from class javax.swing.[AbstractAction](../../AbstractAction.md "class in javax.swing")

  `changeSupport, enabled`

  ### Fields inherited from interface javax.swing.[Action](../../Action.md "interface in javax.swing")

  `ACCELERATOR_KEY, ACTION_COMMAND_KEY, DEFAULT, DISPLAYED_MNEMONIC_INDEX_KEY, LARGE_ICON_KEY, LONG_DESCRIPTION, MNEMONIC_KEY, NAME, SELECTED_KEY, SHORT_DESCRIPTION, SMALL_ICON`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TreeToggleAction(String name)`

  Constructs a new instance of `TreeToggleAction`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `actionPerformed(ActionEvent e)`

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

  + ### TreeToggleAction

    public TreeToggleAction([String](../../../../../java.base/java/lang/String.md "class in java.lang") name)

    Constructs a new instance of `TreeToggleAction`.

    Parameters:
    :   `name` - the name of action
* ## Method Details

  + ### actionPerformed

    public void actionPerformed([ActionEvent](../../../../java/awt/event/ActionEvent.md "class in java.awt.event") e)

    Description copied from interface: `ActionListener`

    Invoked when an action occurs.

    Parameters:
    :   `e` - the event to be processed
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