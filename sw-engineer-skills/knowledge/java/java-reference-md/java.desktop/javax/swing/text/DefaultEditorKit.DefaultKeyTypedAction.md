Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class DefaultEditorKit.DefaultKeyTypedAction

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.AbstractAction](../AbstractAction.md "class in javax.swing")

[javax.swing.text.TextAction](TextAction.md "class in javax.swing.text")

javax.swing.text.DefaultEditorKit.DefaultKeyTypedAction

All Implemented Interfaces:
:   `ActionListener`, `Serializable`, `Cloneable`, `EventListener`, `Action`

Enclosing class:
:   `DefaultEditorKit`

---

public static class DefaultEditorKit.DefaultKeyTypedAction
extends [TextAction](TextAction.md "class in javax.swing.text")

The action that is executed by default if
a *key typed event* is received and there
is no keymap entry. There is a variation across
different VM's in what gets sent as a *key typed*
event, and this action tries to filter out the undesired
events. This filters the control characters and those
with the ALT modifier. It allows Control-Alt sequences
through as these form legitimate unicode characters on
some PC keyboards.

If the event doesn't get filtered, it will try to insert
content into the text editor. The content is fetched
from the command string of the ActionEvent. The text
entry is done through the `replaceSelection`
method on the target text component. This is the
action that will be fired for most text entry tasks.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

See Also:
:   * [`DefaultEditorKit.defaultKeyTypedAction`](DefaultEditorKit.md#defaultKeyTypedAction)
    * [`DefaultEditorKit.getActions()`](DefaultEditorKit.md#getActions())
    * [`Keymap.setDefaultAction(javax.swing.Action)`](Keymap.md#setDefaultAction(javax.swing.Action))
    * [`Keymap.getDefaultAction()`](Keymap.md#getDefaultAction())

* ## Field Summary

  ### Fields inherited from class javax.swing.[AbstractAction](../AbstractAction.md "class in javax.swing")

  `changeSupport, enabled`

  ### Fields inherited from interface javax.swing.[Action](../Action.md "interface in javax.swing")

  `ACCELERATOR_KEY, ACTION_COMMAND_KEY, DEFAULT, DISPLAYED_MNEMONIC_INDEX_KEY, LARGE_ICON_KEY, LONG_DESCRIPTION, MNEMONIC_KEY, NAME, SELECTED_KEY, SHORT_DESCRIPTION, SMALL_ICON`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DefaultKeyTypedAction()`

  Creates this object with the appropriate identifier.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `actionPerformed(ActionEvent e)`

  The operation to perform when this action is triggered.

  ### Methods inherited from class javax.swing.text.[TextAction](TextAction.md "class in javax.swing.text")

  `augmentList, getFocusedComponent, getTextComponent`

  ### Methods inherited from class javax.swing.[AbstractAction](../AbstractAction.md "class in javax.swing")

  `addPropertyChangeListener, clone, firePropertyChange, getKeys, getPropertyChangeListeners, getValue, isEnabled, putValue, removePropertyChangeListener, setEnabled`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.swing.[Action](../Action.md "interface in javax.swing")

  `accept`

* ## Constructor Details

  + ### DefaultKeyTypedAction

    public DefaultKeyTypedAction()

    Creates this object with the appropriate identifier.
* ## Method Details

  + ### actionPerformed

    public void actionPerformed([ActionEvent](../../../java/awt/event/ActionEvent.md "class in java.awt.event") e)

    The operation to perform when this action is triggered.

    Parameters:
    :   `e` - the action event