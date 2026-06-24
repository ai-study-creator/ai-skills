Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class DefaultEditorKit

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.EditorKit](EditorKit.md "class in javax.swing.text")

javax.swing.text.DefaultEditorKit

All Implemented Interfaces:
:   `Serializable`, `Cloneable`

Direct Known Subclasses:
:   `StyledEditorKit`

---

public class DefaultEditorKit
extends [EditorKit](EditorKit.md "class in javax.swing.text")

This is the set of things needed by a text component
to be a reasonably functioning editor for some *type*
of text document. This implementation provides a default
implementation which treats text as plain text and
provides a minimal set of actions for a simple editor.

**Newlines**: There are two properties which deal with newlines. The system property, `line.separator`, is defined to be platform-dependent, either "\n", "\r", or "\r\n". There is also a property defined in `DefaultEditorKit`, called [`EndOfLineStringProperty`](#EndOfLineStringProperty), which is defined automatically when a document is loaded, to be the first occurrence of any of the newline characters. When a document is loaded, `EndOfLineStringProperty` is set appropriately, and when the document is written back out, the `EndOfLineStringProperty` is used. But while the document is in memory, the "\n" character is used to define a newline, regardless of how the newline is defined when the document is on disk. Therefore, for searching purposes, "\n" should always be used. When a new document is created, and the `EndOfLineStringProperty` has not been defined, it will use the System property when writing out the document. Note that `EndOfLineStringProperty` is set on the `Document` using the `get/putProperty` methods. Subclasses may override this behavior.

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static class`

  `DefaultEditorKit.BeepAction`

  Creates a beep.

  `static class`

  `DefaultEditorKit.CopyAction`

  Copies the selected region and place its contents
  into the system clipboard.

  `static class`

  `DefaultEditorKit.CutAction`

  Cuts the selected region and place its contents
  into the system clipboard.

  `static class`

  `DefaultEditorKit.DefaultKeyTypedAction`

  The action that is executed by default if
  a *key typed event* is received and there
  is no keymap entry.

  `static class`

  `DefaultEditorKit.InsertBreakAction`

  Places a line/paragraph break into the document.

  `static class`

  `DefaultEditorKit.InsertContentAction`

  Places content into the associated document.

  `static class`

  `DefaultEditorKit.InsertTabAction`

  Places a tab character into the document.

  `static class`

  `DefaultEditorKit.PasteAction`

  Pastes the contents of the system clipboard into the
  selected region, or before the caret if nothing is
  selected.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `backwardAction`

  Name of the Action for moving the caret
  logically backward one position.

  `static final String`

  `beepAction`

  Name of the action to create a beep.

  `static final String`

  `beginAction`

  Name of the `Action` for moving the caret
  to the beginning of the document.

  `static final String`

  `beginLineAction`

  Name of the `Action` for moving the caret
  to the beginning of a line.

  `static final String`

  `beginLineUpAction`

  Name of the `Action` for moving the caret
  to the beginning of the current line or up to the
  beginning of the previous line if the caret is
  already at the beginning of the line.

  `static final String`

  `beginParagraphAction`

  Name of the `Action` for moving the caret
  to the beginning of a paragraph.

  `static final String`

  `beginWordAction`

  Name of the `Action` for moving the caret
  to the beginning of a word.

  `static final String`

  `copyAction`

  Name of the action to copy the selected region
  and place the contents into the system clipboard.

  `static final String`

  `cutAction`

  Name of the action to cut the selected region
  and place the contents into the system clipboard.

  `static final String`

  `defaultKeyTypedAction`

  Name of the action that is executed by default if
  a *key typed event* is received and there
  is no keymap entry.

  `static final String`

  `deleteNextCharAction`

  Name of the action to delete the character of content that
  follows the current caret position.

  `static final String`

  `deleteNextWordAction`

  Name of the action to delete the word that
  follows the beginning of the selection.

  `static final String`

  `deletePrevCharAction`

  Name of the action to delete the character of content that
  precedes the current caret position.

  `static final String`

  `deletePrevWordAction`

  Name of the action to delete the word that
  precedes the beginning of the selection.

  `static final String`

  `downAction`

  Name of the Action for moving the caret
  logically downward one position.

  `static final String`

  `endAction`

  Name of the `Action` for moving the caret
  to the end of the document.

  `static final String`

  `endLineAction`

  Name of the `Action` for moving the caret
  to the end of a line.

  `static final String`

  `endLineDownAction`

  Name of the `Action` for moving the caret
  to the end of the current line or down to the
  end of the next line if the caret is already
  at the end of the line.

  `static final String`

  `EndOfLineStringProperty`

  When reading a document if a CRLF is encountered a property
  with this name is added and the value will be "\r\n".

  `static final String`

  `endParagraphAction`

  Name of the `Action` for moving the caret
  to the end of a paragraph.

  `static final String`

  `endWordAction`

  Name of the Action for moving the caret
  to the end of a word.

  `static final String`

  `forwardAction`

  Name of the Action for moving the caret
  logically forward one position.

  `static final String`

  `insertBreakAction`

  Name of the action to place a line/paragraph break into
  the document.

  `static final String`

  `insertContentAction`

  Name of the action to place content into the associated
  document.

  `static final String`

  `insertTabAction`

  Name of the action to place a tab character into
  the document.

  `static final String`

  `nextWordAction`

  Name of the `Action` for moving the caret to the
  beginning of the next word.

  `static final String`

  `pageDownAction`

  Name of the action to page down vertically.

  `static final String`

  `pageUpAction`

  Name of the action to page up vertically.

  `static final String`

  `pasteAction`

  Name of the action to paste the contents of the
  system clipboard into the selected region, or before the
  caret if nothing is selected.

  `static final String`

  `previousWordAction`

  Name of the `Action` for moving the caret to the
  beginning of the previous word.

  `static final String`

  `readOnlyAction`

  Name of the action to set the editor into read-only
  mode.

  `static final String`

  `selectAllAction`

  Name of the Action for selecting the entire document

  `static final String`

  `selectionBackwardAction`

  Name of the Action for extending the selection
  by moving the caret logically backward one position.

  `static final String`

  `selectionBeginAction`

  Name of the `Action` for moving the caret
  to the beginning of the document.

  `static final String`

  `selectionBeginLineAction`

  Name of the `Action` for moving the caret
  to the beginning of a line, extending the selection.

  `static final String`

  `selectionBeginParagraphAction`

  Name of the `Action` for moving the caret
  to the beginning of a paragraph, extending the selection.

  `static final String`

  `selectionBeginWordAction`

  Name of the `Action` for moving the caret
  to the beginning of a word, extending the selection.

  `static final String`

  `selectionDownAction`

  Name of the Action for moving the caret
  logically downward one position, extending the selection.

  `static final String`

  `selectionEndAction`

  Name of the Action for moving the caret
  to the end of the document.

  `static final String`

  `selectionEndLineAction`

  Name of the `Action` for moving the caret
  to the end of a line, extending the selection.

  `static final String`

  `selectionEndParagraphAction`

  Name of the `Action` for moving the caret
  to the end of a paragraph, extending the selection.

  `static final String`

  `selectionEndWordAction`

  Name of the Action for moving the caret
  to the end of a word, extending the selection.

  `static final String`

  `selectionForwardAction`

  Name of the Action for extending the selection
  by moving the caret logically forward one position.

  `static final String`

  `selectionNextWordAction`

  Name of the `Action` for moving the selection to the
  beginning of the next word, extending the selection.

  `static final String`

  `selectionPreviousWordAction`

  Name of the `Action` for moving the selection to the
  beginning of the previous word, extending the selection.

  `static final String`

  `selectionUpAction`

  Name of the Action for moving the caret
  logically upward one position, extending the selection.

  `static final String`

  `selectLineAction`

  Name of the Action for selecting a line around the caret.

  `static final String`

  `selectParagraphAction`

  Name of the Action for selecting a paragraph around the caret.

  `static final String`

  `selectWordAction`

  Name of the Action for selecting a word around the caret.

  `static final String`

  `upAction`

  Name of the Action for moving the caret
  logically upward one position.

  `static final String`

  `writableAction`

  Name of the action to set the editor into writeable
  mode.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DefaultEditorKit()`

  default constructor for DefaultEditorKit
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Caret`

  `createCaret()`

  Fetches a caret that can navigate through views
  produced by the associated ViewFactory.

  `Document`

  `createDefaultDocument()`

  Creates an uninitialized text storage model (PlainDocument)
  that is appropriate for this type of editor.

  `Action[]`

  `getActions()`

  Fetches the set of commands that can be used
  on a text component that is using a model and
  view produced by this kit.

  `String`

  `getContentType()`

  Gets the MIME type of the data that this
  kit represents support for.

  `ViewFactory`

  `getViewFactory()`

  Fetches a factory that is suitable for producing
  views of any models that are produced by this
  kit.

  `void`

  `read(InputStream in,
  Document doc,
  int pos)`

  Inserts content from the given stream which is expected
  to be in a format appropriate for this kind of content
  handler.

  `void`

  `read(Reader in,
  Document doc,
  int pos)`

  Inserts content from the given stream, which will be
  treated as plain text.

  `void`

  `write(OutputStream out,
  Document doc,
  int pos,
  int len)`

  Writes content from a document to the given stream
  in a format appropriate for this kind of content handler.

  `void`

  `write(Writer out,
  Document doc,
  int pos,
  int len)`

  Writes content from a document to the given stream
  as plain text.

  ### Methods inherited from class javax.swing.text.[EditorKit](EditorKit.md "class in javax.swing.text")

  `clone, deinstall, install`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### EndOfLineStringProperty

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") EndOfLineStringProperty

    When reading a document if a CRLF is encountered a property
    with this name is added and the value will be "\r\n".

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.EndOfLineStringProperty)
  + ### insertContentAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") insertContentAction

    Name of the action to place content into the associated
    document. If there is a selection, it is removed before
    the new content is added.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.insertContentAction)
  + ### insertBreakAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") insertBreakAction

    Name of the action to place a line/paragraph break into
    the document. If there is a selection, it is removed before
    the break is added.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.insertBreakAction)
  + ### insertTabAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") insertTabAction

    Name of the action to place a tab character into
    the document. If there is a selection, it is removed before
    the tab is added.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.insertTabAction)
  + ### deletePrevCharAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") deletePrevCharAction

    Name of the action to delete the character of content that
    precedes the current caret position.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.deletePrevCharAction)
  + ### deleteNextCharAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") deleteNextCharAction

    Name of the action to delete the character of content that
    follows the current caret position.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.deleteNextCharAction)
  + ### deleteNextWordAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") deleteNextWordAction

    Name of the action to delete the word that
    follows the beginning of the selection.

    Since:
    :   1.6

    See Also:
    :   - [`getActions()`](#getActions())
        - [`JTextComponent.getSelectionStart()`](JTextComponent.md#getSelectionStart())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.deleteNextWordAction)
  + ### deletePrevWordAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") deletePrevWordAction

    Name of the action to delete the word that
    precedes the beginning of the selection.

    Since:
    :   1.6

    See Also:
    :   - [`getActions()`](#getActions())
        - [`JTextComponent.getSelectionStart()`](JTextComponent.md#getSelectionStart())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.deletePrevWordAction)
  + ### readOnlyAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") readOnlyAction

    Name of the action to set the editor into read-only
    mode.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.readOnlyAction)
  + ### writableAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") writableAction

    Name of the action to set the editor into writeable
    mode.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.writableAction)
  + ### cutAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") cutAction

    Name of the action to cut the selected region
    and place the contents into the system clipboard.

    See Also:
    :   - [`JTextComponent.cut()`](JTextComponent.md#cut())
        - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.cutAction)
  + ### copyAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") copyAction

    Name of the action to copy the selected region
    and place the contents into the system clipboard.

    See Also:
    :   - [`JTextComponent.copy()`](JTextComponent.md#copy())
        - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.copyAction)
  + ### pasteAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") pasteAction

    Name of the action to paste the contents of the
    system clipboard into the selected region, or before the
    caret if nothing is selected.

    See Also:
    :   - [`JTextComponent.paste()`](JTextComponent.md#paste())
        - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.pasteAction)
  + ### beepAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") beepAction

    Name of the action to create a beep.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.beepAction)
  + ### pageUpAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") pageUpAction

    Name of the action to page up vertically.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.pageUpAction)
  + ### pageDownAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") pageDownAction

    Name of the action to page down vertically.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.pageDownAction)
  + ### forwardAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") forwardAction

    Name of the Action for moving the caret
    logically forward one position.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.forwardAction)
  + ### backwardAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") backwardAction

    Name of the Action for moving the caret
    logically backward one position.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.backwardAction)
  + ### selectionForwardAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") selectionForwardAction

    Name of the Action for extending the selection
    by moving the caret logically forward one position.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.selectionForwardAction)
  + ### selectionBackwardAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") selectionBackwardAction

    Name of the Action for extending the selection
    by moving the caret logically backward one position.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.selectionBackwardAction)
  + ### upAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") upAction

    Name of the Action for moving the caret
    logically upward one position.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.upAction)
  + ### downAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") downAction

    Name of the Action for moving the caret
    logically downward one position.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.downAction)
  + ### selectionUpAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") selectionUpAction

    Name of the Action for moving the caret
    logically upward one position, extending the selection.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.selectionUpAction)
  + ### selectionDownAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") selectionDownAction

    Name of the Action for moving the caret
    logically downward one position, extending the selection.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.selectionDownAction)
  + ### beginWordAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") beginWordAction

    Name of the `Action` for moving the caret
    to the beginning of a word.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.beginWordAction)
  + ### endWordAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") endWordAction

    Name of the Action for moving the caret
    to the end of a word.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.endWordAction)
  + ### selectionBeginWordAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") selectionBeginWordAction

    Name of the `Action` for moving the caret
    to the beginning of a word, extending the selection.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.selectionBeginWordAction)
  + ### selectionEndWordAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") selectionEndWordAction

    Name of the Action for moving the caret
    to the end of a word, extending the selection.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.selectionEndWordAction)
  + ### previousWordAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") previousWordAction

    Name of the `Action` for moving the caret to the
    beginning of the previous word.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.previousWordAction)
  + ### nextWordAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") nextWordAction

    Name of the `Action` for moving the caret to the
    beginning of the next word.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.nextWordAction)
  + ### selectionPreviousWordAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") selectionPreviousWordAction

    Name of the `Action` for moving the selection to the
    beginning of the previous word, extending the selection.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.selectionPreviousWordAction)
  + ### selectionNextWordAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") selectionNextWordAction

    Name of the `Action` for moving the selection to the
    beginning of the next word, extending the selection.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.selectionNextWordAction)
  + ### beginLineAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") beginLineAction

    Name of the `Action` for moving the caret
    to the beginning of a line.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.beginLineAction)
  + ### endLineAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") endLineAction

    Name of the `Action` for moving the caret
    to the end of a line.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.endLineAction)
  + ### beginLineUpAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") beginLineUpAction

    Name of the `Action` for moving the caret
    to the beginning of the current line or up to the
    beginning of the previous line if the caret is
    already at the beginning of the line.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.beginLineUpAction)
  + ### endLineDownAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") endLineDownAction

    Name of the `Action` for moving the caret
    to the end of the current line or down to the
    end of the next line if the caret is already
    at the end of the line.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.endLineDownAction)
  + ### selectionBeginLineAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") selectionBeginLineAction

    Name of the `Action` for moving the caret
    to the beginning of a line, extending the selection.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.selectionBeginLineAction)
  + ### selectionEndLineAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") selectionEndLineAction

    Name of the `Action` for moving the caret
    to the end of a line, extending the selection.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.selectionEndLineAction)
  + ### beginParagraphAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") beginParagraphAction

    Name of the `Action` for moving the caret
    to the beginning of a paragraph.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.beginParagraphAction)
  + ### endParagraphAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") endParagraphAction

    Name of the `Action` for moving the caret
    to the end of a paragraph.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.endParagraphAction)
  + ### selectionBeginParagraphAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") selectionBeginParagraphAction

    Name of the `Action` for moving the caret
    to the beginning of a paragraph, extending the selection.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.selectionBeginParagraphAction)
  + ### selectionEndParagraphAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") selectionEndParagraphAction

    Name of the `Action` for moving the caret
    to the end of a paragraph, extending the selection.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.selectionEndParagraphAction)
  + ### beginAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") beginAction

    Name of the `Action` for moving the caret
    to the beginning of the document.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.beginAction)
  + ### endAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") endAction

    Name of the `Action` for moving the caret
    to the end of the document.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.endAction)
  + ### selectionBeginAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") selectionBeginAction

    Name of the `Action` for moving the caret
    to the beginning of the document.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.selectionBeginAction)
  + ### selectionEndAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") selectionEndAction

    Name of the Action for moving the caret
    to the end of the document.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.selectionEndAction)
  + ### selectWordAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") selectWordAction

    Name of the Action for selecting a word around the caret.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.selectWordAction)
  + ### selectLineAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") selectLineAction

    Name of the Action for selecting a line around the caret.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.selectLineAction)
  + ### selectParagraphAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") selectParagraphAction

    Name of the Action for selecting a paragraph around the caret.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.selectParagraphAction)
  + ### selectAllAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") selectAllAction

    Name of the Action for selecting the entire document

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.selectAllAction)
  + ### defaultKeyTypedAction

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") defaultKeyTypedAction

    Name of the action that is executed by default if
    a *key typed event* is received and there
    is no keymap entry.

    See Also:
    :   - [`getActions()`](#getActions())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultEditorKit.defaultKeyTypedAction)
* ## Constructor Details

  + ### DefaultEditorKit

    public DefaultEditorKit()

    default constructor for DefaultEditorKit
* ## Method Details

  + ### getContentType

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getContentType()

    Gets the MIME type of the data that this
    kit represents support for. The default
    is `text/plain`.

    Specified by:
    :   `getContentType` in class `EditorKit`

    Returns:
    :   the type
  + ### getViewFactory

    public [ViewFactory](ViewFactory.md "interface in javax.swing.text") getViewFactory()

    Fetches a factory that is suitable for producing
    views of any models that are produced by this
    kit. The default is to have the UI produce the
    factory, so this method has no implementation.

    Specified by:
    :   `getViewFactory` in class `EditorKit`

    Returns:
    :   the view factory
  + ### getActions

    public [Action](../Action.md "interface in javax.swing")[] getActions()

    Fetches the set of commands that can be used
    on a text component that is using a model and
    view produced by this kit.

    Specified by:
    :   `getActions` in class `EditorKit`

    Returns:
    :   the command list
  + ### createCaret

    public [Caret](Caret.md "interface in javax.swing.text") createCaret()

    Fetches a caret that can navigate through views
    produced by the associated ViewFactory.

    Specified by:
    :   `createCaret` in class `EditorKit`

    Returns:
    :   the caret
  + ### createDefaultDocument

    public [Document](Document.md "interface in javax.swing.text") createDefaultDocument()

    Creates an uninitialized text storage model (PlainDocument)
    that is appropriate for this type of editor.

    Specified by:
    :   `createDefaultDocument` in class `EditorKit`

    Returns:
    :   the model
  + ### read

    public void read([InputStream](../../../../java.base/java/io/InputStream.md "class in java.io") in,
    [Document](Document.md "interface in javax.swing.text") doc,
    int pos)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io"),
    [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Inserts content from the given stream which is expected
    to be in a format appropriate for this kind of content
    handler.

    Specified by:
    :   `read` in class `EditorKit`

    Parameters:
    :   `in` - The stream to read from
    :   `doc` - The destination for the insertion.
    :   `pos` - The location in the document to place the
        content >=0.

    Throws:
    :   `IOException` - on any I/O error
    :   `BadLocationException` - if pos represents an invalid
        location within the document.
  + ### write

    public void write([OutputStream](../../../../java.base/java/io/OutputStream.md "class in java.io") out,
    [Document](Document.md "interface in javax.swing.text") doc,
    int pos,
    int len)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io"),
    [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Writes content from a document to the given stream
    in a format appropriate for this kind of content handler.

    Specified by:
    :   `write` in class `EditorKit`

    Parameters:
    :   `out` - The stream to write to
    :   `doc` - The source for the write.
    :   `pos` - The location in the document to fetch the
        content >=0.
    :   `len` - The amount to write out >=0.

    Throws:
    :   `IOException` - on any I/O error
    :   `BadLocationException` - if pos represents an invalid
        location within the document.
  + ### read

    public void read([Reader](../../../../java.base/java/io/Reader.md "class in java.io") in,
    [Document](Document.md "interface in javax.swing.text") doc,
    int pos)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io"),
    [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Inserts content from the given stream, which will be
    treated as plain text.

    Specified by:
    :   `read` in class `EditorKit`

    Parameters:
    :   `in` - The stream to read from
    :   `doc` - The destination for the insertion.
    :   `pos` - The location in the document to place the
        content >=0.

    Throws:
    :   `IOException` - on any I/O error
    :   `BadLocationException` - if pos represents an invalid
        location within the document.
  + ### write

    public void write([Writer](../../../../java.base/java/io/Writer.md "class in java.io") out,
    [Document](Document.md "interface in javax.swing.text") doc,
    int pos,
    int len)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io"),
    [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Writes content from a document to the given stream
    as plain text.

    Specified by:
    :   `write` in class `EditorKit`

    Parameters:
    :   `out` - The stream to write to
    :   `doc` - The source for the write.
    :   `pos` - The location in the document to fetch the
        content from >=0.
    :   `len` - The amount to write out >=0.

    Throws:
    :   `IOException` - on any I/O error
    :   `BadLocationException` - if pos is not within 0 and
        the length of the document.