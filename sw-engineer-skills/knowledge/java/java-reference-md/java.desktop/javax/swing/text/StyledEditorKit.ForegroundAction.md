Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class StyledEditorKit.ForegroundAction

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.AbstractAction](../AbstractAction.md "class in javax.swing")

[javax.swing.text.TextAction](TextAction.md "class in javax.swing.text")

[javax.swing.text.StyledEditorKit.StyledTextAction](StyledEditorKit.StyledTextAction.md "class in javax.swing.text")

javax.swing.text.StyledEditorKit.ForegroundAction

All Implemented Interfaces:
:   `ActionListener`, `Serializable`, `Cloneable`, `EventListener`, `Action`

Enclosing class:
:   `StyledEditorKit`

---

public static class StyledEditorKit.ForegroundAction
extends [StyledEditorKit.StyledTextAction](StyledEditorKit.StyledTextAction.md "class in javax.swing.text")

An action to set foreground color. This sets the
`StyleConstants.Foreground` attribute for the
currently selected range of the target JEditorPane.
This is done by calling
`StyledDocument.setCharacterAttributes`
on the styled document associated with the target
JEditorPane.

If the target text component is specified as the
source of the ActionEvent and there is a command string,
the command string will be interpreted as the foreground
color. It will be interpreted by called
`Color.decode`, and should therefore be
legal input for that method.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Field Summary

  ### Fields inherited from class javax.swing.[AbstractAction](../AbstractAction.md "class in javax.swing")

  `changeSupport, enabled`

  ### Fields inherited from interface javax.swing.[Action](../Action.md "interface in javax.swing")

  `ACCELERATOR_KEY, ACTION_COMMAND_KEY, DEFAULT, DISPLAYED_MNEMONIC_INDEX_KEY, LARGE_ICON_KEY, LONG_DESCRIPTION, MNEMONIC_KEY, NAME, SELECTED_KEY, SHORT_DESCRIPTION, SMALL_ICON`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ForegroundAction(String nm,
  Color fg)`

  Creates a new ForegroundAction.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `actionPerformed(ActionEvent e)`

  Sets the foreground color.

  ### Methods inherited from class javax.swing.text.[StyledEditorKit.StyledTextAction](StyledEditorKit.StyledTextAction.md "class in javax.swing.text")

  `getEditor, getStyledDocument, getStyledEditorKit, setCharacterAttributes, setParagraphAttributes`

  ### Methods inherited from class javax.swing.text.[TextAction](TextAction.md "class in javax.swing.text")

  `augmentList, getFocusedComponent, getTextComponent`

  ### Methods inherited from class javax.swing.[AbstractAction](../AbstractAction.md "class in javax.swing")

  `addPropertyChangeListener, clone, firePropertyChange, getKeys, getPropertyChangeListeners, getValue, isEnabled, putValue, removePropertyChangeListener, setEnabled`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.swing.[Action](../Action.md "interface in javax.swing")

  `accept`

* ## Constructor Details

  + ### ForegroundAction

    public ForegroundAction([String](../../../../java.base/java/lang/String.md "class in java.lang") nm,
    [Color](../../../java/awt/Color.md "class in java.awt") fg)

    Creates a new ForegroundAction.

    Parameters:
    :   `nm` - the action name
    :   `fg` - the foreground color
* ## Method Details

  + ### actionPerformed

    public void actionPerformed([ActionEvent](../../../java/awt/event/ActionEvent.md "class in java.awt.event") e)

    Sets the foreground color.

    Parameters:
    :   `e` - the action event