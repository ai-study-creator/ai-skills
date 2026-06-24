Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class TextAction

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.AbstractAction](../AbstractAction.md "class in javax.swing")

javax.swing.text.TextAction

All Implemented Interfaces:
:   `ActionListener`, `Serializable`, `Cloneable`, `EventListener`, `Action`

Direct Known Subclasses:
:   `DefaultEditorKit.BeepAction`, `DefaultEditorKit.CopyAction`, `DefaultEditorKit.CutAction`, `DefaultEditorKit.DefaultKeyTypedAction`, `DefaultEditorKit.InsertBreakAction`, `DefaultEditorKit.InsertContentAction`, `DefaultEditorKit.InsertTabAction`, `DefaultEditorKit.PasteAction`, `StyledEditorKit.StyledTextAction`

---

public abstract class TextAction
extends [AbstractAction](../AbstractAction.md "class in javax.swing")

An Action implementation useful for key bindings that are
shared across a number of different text components. Because
the action is shared, it must have a way of getting it's
target to act upon. This class provides support to try and
find a text component to operate on. The preferred way of
getting the component to act upon is through the ActionEvent
that is received. If the Object returned by getSource can
be narrowed to a text component, it will be used. If the
action event is null or can't be narrowed, the last focused
text component is tried. This is determined by being
used in conjunction with a JTextController which
arranges to share that information with a TextAction.

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

  `TextAction(String name)`

  Creates a new JTextAction object.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static final Action[]`

  `augmentList(Action[] list1,
  Action[] list2)`

  Takes one list of
  commands and augments it with another list
  of commands.

  `protected final JTextComponent`

  `getFocusedComponent()`

  Fetches the text component that currently has focus.

  `protected final JTextComponent`

  `getTextComponent(ActionEvent e)`

  Determines the component to use for the action.

  ### Methods inherited from class javax.swing.[AbstractAction](../AbstractAction.md "class in javax.swing")

  `addPropertyChangeListener, clone, firePropertyChange, getKeys, getPropertyChangeListeners, getValue, isEnabled, putValue, removePropertyChangeListener, setEnabled`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.swing.[Action](../Action.md "interface in javax.swing")

  `accept`

  ### Methods inherited from interface java.awt.event.[ActionListener](../../../java/awt/event/ActionListener.md "interface in java.awt.event")

  `actionPerformed`

* ## Constructor Details

  + ### TextAction

    public TextAction([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Creates a new JTextAction object.

    Parameters:
    :   `name` - the name of the action
* ## Method Details

  + ### getTextComponent

    protected final [JTextComponent](JTextComponent.md "class in javax.swing.text") getTextComponent([ActionEvent](../../../java/awt/event/ActionEvent.md "class in java.awt.event") e)

    Determines the component to use for the action.
    This if fetched from the source of the ActionEvent
    if it's not null and can be narrowed. Otherwise,
    the last focused component is used.

    Parameters:
    :   `e` - the ActionEvent

    Returns:
    :   the component
  + ### augmentList

    public static final [Action](../Action.md "interface in javax.swing")[] augmentList([Action](../Action.md "interface in javax.swing")[] list1,
    [Action](../Action.md "interface in javax.swing")[] list2)

    Takes one list of
    commands and augments it with another list
    of commands. The second list takes precedence
    over the first list; that is, when both lists
    contain a command with the same name, the command
    from the second list is used.

    Parameters:
    :   `list1` - the first list, may be empty but not
        `null`
    :   `list2` - the second list, may be empty but not
        `null`

    Returns:
    :   the augmented list
  + ### getFocusedComponent

    protected final [JTextComponent](JTextComponent.md "class in javax.swing.text") getFocusedComponent()

    Fetches the text component that currently has focus.
    This allows actions to be shared across text components
    which is useful for key-bindings where a large set of
    actions are defined, but generally used the same way
    across many different components.

    Returns:
    :   the component