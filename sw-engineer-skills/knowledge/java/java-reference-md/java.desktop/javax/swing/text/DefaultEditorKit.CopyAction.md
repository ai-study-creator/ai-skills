Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class DefaultEditorKit.CopyAction

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.AbstractAction](../AbstractAction.md "class in javax.swing")

[javax.swing.text.TextAction](TextAction.md "class in javax.swing.text")

javax.swing.text.DefaultEditorKit.CopyAction

All Implemented Interfaces:
:   `ActionListener`, `Serializable`, `Cloneable`, `EventListener`, `Action`

Enclosing class:
:   `DefaultEditorKit`

---

public static class DefaultEditorKit.CopyAction
extends [TextAction](TextAction.md "class in javax.swing.text")

Copies the selected region and place its contents
into the system clipboard.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

See Also:
:   * [`DefaultEditorKit.copyAction`](DefaultEditorKit.md#copyAction)
    * [`DefaultEditorKit.getActions()`](DefaultEditorKit.md#getActions())

* ## Field Summary

  ### Fields inherited from class javax.swing.[AbstractAction](../AbstractAction.md "class in javax.swing")

  `changeSupport, enabled`

  ### Fields inherited from interface javax.swing.[Action](../Action.md "interface in javax.swing")

  `ACCELERATOR_KEY, ACTION_COMMAND_KEY, DEFAULT, DISPLAYED_MNEMONIC_INDEX_KEY, LARGE_ICON_KEY, LONG_DESCRIPTION, MNEMONIC_KEY, NAME, SELECTED_KEY, SHORT_DESCRIPTION, SMALL_ICON`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CopyAction()`

  Create this object with the appropriate identifier.
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

  + ### CopyAction

    public CopyAction()

    Create this object with the appropriate identifier.
* ## Method Details

  + ### actionPerformed

    public void actionPerformed([ActionEvent](../../../java/awt/event/ActionEvent.md "class in java.awt.event") e)

    The operation to perform when this action is triggered.

    Parameters:
    :   `e` - the action event