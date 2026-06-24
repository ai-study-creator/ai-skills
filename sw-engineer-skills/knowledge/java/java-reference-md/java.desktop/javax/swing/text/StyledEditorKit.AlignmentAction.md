Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class StyledEditorKit.AlignmentAction

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.AbstractAction](../AbstractAction.md "class in javax.swing")

[javax.swing.text.TextAction](TextAction.md "class in javax.swing.text")

[javax.swing.text.StyledEditorKit.StyledTextAction](StyledEditorKit.StyledTextAction.md "class in javax.swing.text")

javax.swing.text.StyledEditorKit.AlignmentAction

All Implemented Interfaces:
:   `ActionListener`, `Serializable`, `Cloneable`, `EventListener`, `Action`

Enclosing class:
:   `StyledEditorKit`

---

public static class StyledEditorKit.AlignmentAction
extends [StyledEditorKit.StyledTextAction](StyledEditorKit.StyledTextAction.md "class in javax.swing.text")

An action to set paragraph alignment. This sets the
`StyleConstants.Alignment` attribute for the
currently selected range of the target JEditorPane.
This is done by calling
`StyledDocument.setParagraphAttributes`
on the styled document associated with the target
JEditorPane.

If the target text component is specified as the
source of the ActionEvent and there is a command string,
the command string will be interpreted as an integer
that should be one of the legal values for the
`StyleConstants.Alignment` attribute.

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

  `AlignmentAction(String nm,
  int a)`

  Creates a new AlignmentAction.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `actionPerformed(ActionEvent e)`

  Sets the alignment.

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

  + ### AlignmentAction

    public AlignmentAction([String](../../../../java.base/java/lang/String.md "class in java.lang") nm,
    int a)

    Creates a new AlignmentAction.

    Parameters:
    :   `nm` - the action name
    :   `a` - the alignment >= 0
* ## Method Details

  + ### actionPerformed

    public void actionPerformed([ActionEvent](../../../java/awt/event/ActionEvent.md "class in java.awt.event") e)

    Sets the alignment.

    Parameters:
    :   `e` - the action event