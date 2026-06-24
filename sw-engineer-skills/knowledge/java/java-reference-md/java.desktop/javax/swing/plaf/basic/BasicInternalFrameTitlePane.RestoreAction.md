Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicInternalFrameTitlePane.RestoreAction

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.AbstractAction](../../AbstractAction.md "class in javax.swing")

javax.swing.plaf.basic.BasicInternalFrameTitlePane.RestoreAction

All Implemented Interfaces:
:   `ActionListener`, `Serializable`, `Cloneable`, `EventListener`, `Action`

Enclosing class:
:   `BasicInternalFrameTitlePane`

---

public class BasicInternalFrameTitlePane.RestoreAction
extends [AbstractAction](../../AbstractAction.md "class in javax.swing")

This class should be treated as a "protected" inner class.
Instantiate it only within subclasses of `Foo`.

* ## Field Summary

  ### Fields inherited from class javax.swing.[AbstractAction](../../AbstractAction.md "class in javax.swing")

  `changeSupport, enabled`

  ### Fields inherited from interface javax.swing.[Action](../../Action.md "interface in javax.swing")

  `ACCELERATOR_KEY, ACTION_COMMAND_KEY, DEFAULT, DISPLAYED_MNEMONIC_INDEX_KEY, LARGE_ICON_KEY, LONG_DESCRIPTION, MNEMONIC_KEY, NAME, SELECTED_KEY, SHORT_DESCRIPTION, SMALL_ICON`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RestoreAction()`

  Constructs a new instance of a `RestoreAction`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `actionPerformed(ActionEvent evt)`

  Invoked when an action occurs.

  ### Methods inherited from class javax.swing.[AbstractAction](../../AbstractAction.md "class in javax.swing")

  `addPropertyChangeListener, clone, firePropertyChange, getKeys, getPropertyChangeListeners, getValue, isEnabled, putValue, removePropertyChangeListener, setEnabled`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.swing.[Action](../../Action.md "interface in javax.swing")

  `accept`

* ## Constructor Details

  + ### RestoreAction

    public RestoreAction()

    Constructs a new instance of a `RestoreAction`.
* ## Method Details

  + ### actionPerformed

    public void actionPerformed([ActionEvent](../../../../java/awt/event/ActionEvent.md "class in java.awt.event") evt)

    Description copied from interface: `ActionListener`

    Invoked when an action occurs.

    Parameters:
    :   `evt` - the event to be processed