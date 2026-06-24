Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class StyledEditorKit

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.EditorKit](EditorKit.md "class in javax.swing.text")

[javax.swing.text.DefaultEditorKit](DefaultEditorKit.md "class in javax.swing.text")

javax.swing.text.StyledEditorKit

All Implemented Interfaces:
:   `Serializable`, `Cloneable`

Direct Known Subclasses:
:   `HTMLEditorKit`, `RTFEditorKit`

---

public class StyledEditorKit
extends [DefaultEditorKit](DefaultEditorKit.md "class in javax.swing.text")

This is the set of things needed by a text component
to be a reasonably functioning editor for some *type*
of text document. This implementation provides a default
implementation which treats text as styled text and
provides a minimal set of actions for editing styled text.

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static class`

  `StyledEditorKit.AlignmentAction`

  An action to set paragraph alignment.

  `static class`

  `StyledEditorKit.BoldAction`

  An action to toggle the bold attribute.

  `static class`

  `StyledEditorKit.FontFamilyAction`

  An action to set the font family in the associated
  JEditorPane.

  `static class`

  `StyledEditorKit.FontSizeAction`

  An action to set the font size in the associated
  JEditorPane.

  `static class`

  `StyledEditorKit.ForegroundAction`

  An action to set foreground color.

  `static class`

  `StyledEditorKit.ItalicAction`

  An action to toggle the italic attribute.

  `static class`

  `StyledEditorKit.StyledTextAction`

  An action that assumes it's being fired on a JEditorPane
  with a StyledEditorKit (or subclass) installed.

  `static class`

  `StyledEditorKit.UnderlineAction`

  An action to toggle the underline attribute.

  ## Nested classes/interfaces inherited from class javax.swing.text.[DefaultEditorKit](DefaultEditorKit.md "class in javax.swing.text")

  `DefaultEditorKit.BeepAction, DefaultEditorKit.CopyAction, DefaultEditorKit.CutAction, DefaultEditorKit.DefaultKeyTypedAction, DefaultEditorKit.InsertBreakAction, DefaultEditorKit.InsertContentAction, DefaultEditorKit.InsertTabAction, DefaultEditorKit.PasteAction`
* ## Field Summary

  ### Fields inherited from class javax.swing.text.[DefaultEditorKit](DefaultEditorKit.md "class in javax.swing.text")

  `backwardAction, beepAction, beginAction, beginLineAction, beginLineUpAction, beginParagraphAction, beginWordAction, copyAction, cutAction, defaultKeyTypedAction, deleteNextCharAction, deleteNextWordAction, deletePrevCharAction, deletePrevWordAction, downAction, endAction, endLineAction, endLineDownAction, EndOfLineStringProperty, endParagraphAction, endWordAction, forwardAction, insertBreakAction, insertContentAction, insertTabAction, nextWordAction, pageDownAction, pageUpAction, pasteAction, previousWordAction, readOnlyAction, selectAllAction, selectionBackwardAction, selectionBeginAction, selectionBeginLineAction, selectionBeginParagraphAction, selectionBeginWordAction, selectionDownAction, selectionEndAction, selectionEndLineAction, selectionEndParagraphAction, selectionEndWordAction, selectionForwardAction, selectionNextWordAction, selectionPreviousWordAction, selectionUpAction, selectLineAction, selectParagraphAction, selectWordAction, upAction, writableAction`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `StyledEditorKit()`

  Creates a new EditorKit used for styled documents.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Creates a copy of the editor kit.

  `Document`

  `createDefaultDocument()`

  Creates an uninitialized text storage model
  that is appropriate for this type of editor.

  `protected void`

  `createInputAttributes(Element element,
  MutableAttributeSet set)`

  Copies the key/values in `element`s AttributeSet into
  `set`.

  `void`

  `deinstall(JEditorPane c)`

  Called when the kit is being removed from the
  JEditorPane.

  `Action[]`

  `getActions()`

  Fetches the command list for the editor.

  `Element`

  `getCharacterAttributeRun()`

  Fetches the element representing the current
  run of character attributes for the caret.

  `MutableAttributeSet`

  `getInputAttributes()`

  Gets the input attributes for the pane.

  `ViewFactory`

  `getViewFactory()`

  Fetches a factory that is suitable for producing
  views of any models that are produced by this
  kit.

  `void`

  `install(JEditorPane c)`

  Called when the kit is being installed into
  a JEditorPane.

  ### Methods inherited from class javax.swing.text.[DefaultEditorKit](DefaultEditorKit.md "class in javax.swing.text")

  `createCaret, getContentType, read, read, write, write`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### StyledEditorKit

    public StyledEditorKit()

    Creates a new EditorKit used for styled documents.
* ## Method Details

  + ### getInputAttributes

    public [MutableAttributeSet](MutableAttributeSet.md "interface in javax.swing.text") getInputAttributes()

    Gets the input attributes for the pane. When
    the caret moves and there is no selection, the
    input attributes are automatically mutated to
    reflect the character attributes of the current
    caret location. The styled editing actions
    use the input attributes to carry out their
    actions.

    Returns:
    :   the attribute set
  + ### getCharacterAttributeRun

    public [Element](Element.md "interface in javax.swing.text") getCharacterAttributeRun()

    Fetches the element representing the current
    run of character attributes for the caret.

    Returns:
    :   the element
  + ### getActions

    public [Action](../Action.md "interface in javax.swing")[] getActions()

    Fetches the command list for the editor. This is
    the list of commands supported by the superclass
    augmented by the collection of commands defined
    locally for style operations.

    Overrides:
    :   `getActions` in class `DefaultEditorKit`

    Returns:
    :   the command list
  + ### createDefaultDocument

    public [Document](Document.md "interface in javax.swing.text") createDefaultDocument()

    Creates an uninitialized text storage model
    that is appropriate for this type of editor.

    Overrides:
    :   `createDefaultDocument` in class `DefaultEditorKit`

    Returns:
    :   the model
  + ### install

    public void install([JEditorPane](../JEditorPane.md "class in javax.swing") c)

    Called when the kit is being installed into
    a JEditorPane.

    Overrides:
    :   `install` in class `EditorKit`

    Parameters:
    :   `c` - the JEditorPane
  + ### deinstall

    public void deinstall([JEditorPane](../JEditorPane.md "class in javax.swing") c)

    Called when the kit is being removed from the
    JEditorPane. This is used to unregister any
    listeners that were attached.

    Overrides:
    :   `deinstall` in class `EditorKit`

    Parameters:
    :   `c` - the JEditorPane
  + ### getViewFactory

    public [ViewFactory](ViewFactory.md "interface in javax.swing.text") getViewFactory()

    Fetches a factory that is suitable for producing
    views of any models that are produced by this
    kit. This is implemented to return View implementations
    for the following kinds of elements:
    - AbstractDocument.ContentElementName- AbstractDocument.ParagraphElementName- AbstractDocument.SectionElementName- StyleConstants.ComponentElementName- StyleConstants.IconElementName

    Overrides:
    :   `getViewFactory` in class `DefaultEditorKit`

    Returns:
    :   the factory
  + ### clone

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") clone()

    Creates a copy of the editor kit.

    Overrides:
    :   `clone` in class `EditorKit`

    Returns:
    :   the copy

    See Also:
    :   - [`Cloneable`](../../../../java.base/java/lang/Cloneable.md "interface in java.lang")
  + ### createInputAttributes

    protected void createInputAttributes([Element](Element.md "interface in javax.swing.text") element,
    [MutableAttributeSet](MutableAttributeSet.md "interface in javax.swing.text") set)

    Copies the key/values in `element`s AttributeSet into
    `set`. This does not copy component, icon, or element
    names attributes. Subclasses may wish to refine what is and what
    isn't copied here. But be sure to first remove all the attributes that
    are in `set`.

    This is called anytime the caret moves over a different location.

    Parameters:
    :   `element` - the element
    :   `set` - the attributes