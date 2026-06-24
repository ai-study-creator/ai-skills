Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.rtf](package-summary.md)

# Class RTFEditorKit

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.EditorKit](../EditorKit.md "class in javax.swing.text")

[javax.swing.text.DefaultEditorKit](../DefaultEditorKit.md "class in javax.swing.text")

[javax.swing.text.StyledEditorKit](../StyledEditorKit.md "class in javax.swing.text")

javax.swing.text.rtf.RTFEditorKit

All Implemented Interfaces:
:   `Serializable`, `Cloneable`

---

public class RTFEditorKit
extends [StyledEditorKit](../StyledEditorKit.md "class in javax.swing.text")

This is the default implementation of RTF editing
functionality. The RTF support was not written by the
Swing team. In the future we hope to improve the support
provided.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.text.[StyledEditorKit](../StyledEditorKit.md "class in javax.swing.text")

  `StyledEditorKit.AlignmentAction, StyledEditorKit.BoldAction, StyledEditorKit.FontFamilyAction, StyledEditorKit.FontSizeAction, StyledEditorKit.ForegroundAction, StyledEditorKit.ItalicAction, StyledEditorKit.StyledTextAction, StyledEditorKit.UnderlineAction`

  ## Nested classes/interfaces inherited from class javax.swing.text.[DefaultEditorKit](../DefaultEditorKit.md "class in javax.swing.text")

  `DefaultEditorKit.BeepAction, DefaultEditorKit.CopyAction, DefaultEditorKit.CutAction, DefaultEditorKit.DefaultKeyTypedAction, DefaultEditorKit.InsertBreakAction, DefaultEditorKit.InsertContentAction, DefaultEditorKit.InsertTabAction, DefaultEditorKit.PasteAction`
* ## Field Summary

  ### Fields inherited from class javax.swing.text.[DefaultEditorKit](../DefaultEditorKit.md "class in javax.swing.text")

  `backwardAction, beepAction, beginAction, beginLineAction, beginLineUpAction, beginParagraphAction, beginWordAction, copyAction, cutAction, defaultKeyTypedAction, deleteNextCharAction, deleteNextWordAction, deletePrevCharAction, deletePrevWordAction, downAction, endAction, endLineAction, endLineDownAction, EndOfLineStringProperty, endParagraphAction, endWordAction, forwardAction, insertBreakAction, insertContentAction, insertTabAction, nextWordAction, pageDownAction, pageUpAction, pasteAction, previousWordAction, readOnlyAction, selectAllAction, selectionBackwardAction, selectionBeginAction, selectionBeginLineAction, selectionBeginParagraphAction, selectionBeginWordAction, selectionDownAction, selectionEndAction, selectionEndLineAction, selectionEndParagraphAction, selectionEndWordAction, selectionForwardAction, selectionNextWordAction, selectionPreviousWordAction, selectionUpAction, selectLineAction, selectParagraphAction, selectWordAction, upAction, writableAction`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RTFEditorKit()`

  Constructs an RTFEditorKit.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getContentType()`

  Get the MIME type of the data that this
  kit represents support for.

  `void`

  `read(InputStream in,
  Document doc,
  int pos)`

  Insert content from the given stream which is expected
  to be in a format appropriate for this kind of content
  handler.

  `void`

  `read(Reader in,
  Document doc,
  int pos)`

  Insert content from the given stream, which will be
  treated as plain text.

  `void`

  `write(OutputStream out,
  Document doc,
  int pos,
  int len)`

  Write content from a document to the given stream
  in a format appropriate for this kind of content handler.

  `void`

  `write(Writer out,
  Document doc,
  int pos,
  int len)`

  Write content from a document to the given stream
  as plain text.

  ### Methods inherited from class javax.swing.text.[StyledEditorKit](../StyledEditorKit.md "class in javax.swing.text")

  `clone, createDefaultDocument, createInputAttributes, deinstall, getActions, getCharacterAttributeRun, getInputAttributes, getViewFactory, install`

  ### Methods inherited from class javax.swing.text.[DefaultEditorKit](../DefaultEditorKit.md "class in javax.swing.text")

  `createCaret`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### RTFEditorKit

    public RTFEditorKit()

    Constructs an RTFEditorKit.
* ## Method Details

  + ### getContentType

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getContentType()

    Get the MIME type of the data that this
    kit represents support for. This kit supports
    the type `text/rtf`.

    Overrides:
    :   `getContentType` in class `DefaultEditorKit`

    Returns:
    :   the type
  + ### read

    public void read([InputStream](../../../../../java.base/java/io/InputStream.md "class in java.io") in,
    [Document](../Document.md "interface in javax.swing.text") doc,
    int pos)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [BadLocationException](../BadLocationException.md "class in javax.swing.text")

    Insert content from the given stream which is expected
    to be in a format appropriate for this kind of content
    handler.

    Overrides:
    :   `read` in class `DefaultEditorKit`

    Parameters:
    :   `in` - The stream to read from
    :   `doc` - The destination for the insertion.
    :   `pos` - The location in the document to place the
        content.

    Throws:
    :   `IOException` - on any I/O error
    :   `BadLocationException` - if pos represents an invalid
        location within the document.
  + ### write

    public void write([OutputStream](../../../../../java.base/java/io/OutputStream.md "class in java.io") out,
    [Document](../Document.md "interface in javax.swing.text") doc,
    int pos,
    int len)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [BadLocationException](../BadLocationException.md "class in javax.swing.text")

    Write content from a document to the given stream
    in a format appropriate for this kind of content handler.

    Overrides:
    :   `write` in class `DefaultEditorKit`

    Parameters:
    :   `out` - The stream to write to
    :   `doc` - The source for the write.
    :   `pos` - The location in the document to fetch the
        content.
    :   `len` - The amount to write out.

    Throws:
    :   `IOException` - on any I/O error
    :   `BadLocationException` - if pos represents an invalid
        location within the document.
  + ### read

    public void read([Reader](../../../../../java.base/java/io/Reader.md "class in java.io") in,
    [Document](../Document.md "interface in javax.swing.text") doc,
    int pos)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [BadLocationException](../BadLocationException.md "class in javax.swing.text")

    Insert content from the given stream, which will be
    treated as plain text.

    Overrides:
    :   `read` in class `DefaultEditorKit`

    Parameters:
    :   `in` - The stream to read from
    :   `doc` - The destination for the insertion.
    :   `pos` - The location in the document to place the
        content.

    Throws:
    :   `IOException` - on any I/O error
    :   `BadLocationException` - if pos represents an invalid
        location within the document.
  + ### write

    public void write([Writer](../../../../../java.base/java/io/Writer.md "class in java.io") out,
    [Document](../Document.md "interface in javax.swing.text") doc,
    int pos,
    int len)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [BadLocationException](../BadLocationException.md "class in javax.swing.text")

    Write content from a document to the given stream
    as plain text.

    Overrides:
    :   `write` in class `DefaultEditorKit`

    Parameters:
    :   `out` - The stream to write to
    :   `doc` - The source for the write.
    :   `pos` - The location in the document to fetch the
        content.
    :   `len` - The amount to write out.

    Throws:
    :   `IOException` - on any I/O error
    :   `BadLocationException` - if pos represents an invalid
        location within the document.