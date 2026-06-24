Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class StyledEditorKit.StyledTextAction

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.AbstractAction](../AbstractAction.md "class in javax.swing")

[javax.swing.text.TextAction](TextAction.md "class in javax.swing.text")

javax.swing.text.StyledEditorKit.StyledTextAction

All Implemented Interfaces:
:   `ActionListener`, `Serializable`, `Cloneable`, `EventListener`, `Action`

Direct Known Subclasses:
:   `HTMLEditorKit.HTMLTextAction`, `StyledEditorKit.AlignmentAction`, `StyledEditorKit.BoldAction`, `StyledEditorKit.FontFamilyAction`, `StyledEditorKit.FontSizeAction`, `StyledEditorKit.ForegroundAction`, `StyledEditorKit.ItalicAction`, `StyledEditorKit.UnderlineAction`

Enclosing class:
:   `StyledEditorKit`

---

public abstract static class StyledEditorKit.StyledTextAction
extends [TextAction](TextAction.md "class in javax.swing.text")

An action that assumes it's being fired on a JEditorPane
with a StyledEditorKit (or subclass) installed. This has
some convenience methods for causing character or paragraph
level attribute changes. The convenience methods will
throw an IllegalArgumentException if the assumption of
a StyledDocument, a JEditorPane, or a StyledEditorKit
fail to be true.

The component that gets acted upon by the action
will be the source of the ActionEvent if the source
can be narrowed to a JEditorPane type. If the source
can't be narrowed, the most recently focused text
component is changed. If neither of these are the
case, the action cannot be performed.

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

  `StyledTextAction(String nm)`

  Creates a new StyledTextAction from a string action name.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected final JEditorPane`

  `getEditor(ActionEvent e)`

  Gets the target editor for an action.

  `protected final StyledDocument`

  `getStyledDocument(JEditorPane e)`

  Gets the document associated with an editor pane.

  `protected final StyledEditorKit`

  `getStyledEditorKit(JEditorPane e)`

  Gets the editor kit associated with an editor pane.

  `protected final void`

  `setCharacterAttributes(JEditorPane editor,
  AttributeSet attr,
  boolean replace)`

  Applies the given attributes to character
  content.

  `protected final void`

  `setParagraphAttributes(JEditorPane editor,
  AttributeSet attr,
  boolean replace)`

  Applies the given attributes to paragraphs.

  ### Methods inherited from class javax.swing.text.[TextAction](TextAction.md "class in javax.swing.text")

  `augmentList, getFocusedComponent, getTextComponent`

  ### Methods inherited from class javax.swing.[AbstractAction](../AbstractAction.md "class in javax.swing")

  `addPropertyChangeListener, clone, firePropertyChange, getKeys, getPropertyChangeListeners, getValue, isEnabled, putValue, removePropertyChangeListener, setEnabled`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.swing.[Action](../Action.md "interface in javax.swing")

  `accept`

  ### Methods inherited from interface java.awt.event.[ActionListener](../../../java/awt/event/ActionListener.md "interface in java.awt.event")

  `actionPerformed`

* ## Constructor Details

  + ### StyledTextAction

    public StyledTextAction([String](../../../../java.base/java/lang/String.md "class in java.lang") nm)

    Creates a new StyledTextAction from a string action name.

    Parameters:
    :   `nm` - the name of the action
* ## Method Details

  + ### getEditor

    protected final [JEditorPane](../JEditorPane.md "class in javax.swing") getEditor([ActionEvent](../../../java/awt/event/ActionEvent.md "class in java.awt.event") e)

    Gets the target editor for an action.

    Parameters:
    :   `e` - the action event

    Returns:
    :   the editor
  + ### getStyledDocument

    protected final [StyledDocument](StyledDocument.md "interface in javax.swing.text") getStyledDocument([JEditorPane](../JEditorPane.md "class in javax.swing") e)

    Gets the document associated with an editor pane.

    Parameters:
    :   `e` - the editor

    Returns:
    :   the document

    Throws:
    :   `IllegalArgumentException` - for the wrong document type
  + ### getStyledEditorKit

    protected final [StyledEditorKit](StyledEditorKit.md "class in javax.swing.text") getStyledEditorKit([JEditorPane](../JEditorPane.md "class in javax.swing") e)

    Gets the editor kit associated with an editor pane.

    Parameters:
    :   `e` - the editor pane

    Returns:
    :   the kit

    Throws:
    :   `IllegalArgumentException` - for the wrong document type
  + ### setCharacterAttributes

    protected final void setCharacterAttributes([JEditorPane](../JEditorPane.md "class in javax.swing") editor,
    [AttributeSet](AttributeSet.md "interface in javax.swing.text") attr,
    boolean replace)

    Applies the given attributes to character
    content. If there is a selection, the attributes
    are applied to the selection range. If there
    is no selection, the attributes are applied to
    the input attribute set which defines the attributes
    for any new text that gets inserted.

    Parameters:
    :   `editor` - the editor
    :   `attr` - the attributes
    :   `replace` - if true, then replace the existing attributes first
  + ### setParagraphAttributes

    protected final void setParagraphAttributes([JEditorPane](../JEditorPane.md "class in javax.swing") editor,
    [AttributeSet](AttributeSet.md "interface in javax.swing.text") attr,
    boolean replace)

    Applies the given attributes to paragraphs. If
    there is a selection, the attributes are applied
    to the paragraphs that intersect the selection.
    if there is no selection, the attributes are applied
    to the paragraph at the current caret position.

    Parameters:
    :   `editor` - the editor
    :   `attr` - the attributes
    :   `replace` - if true, replace the existing attributes first