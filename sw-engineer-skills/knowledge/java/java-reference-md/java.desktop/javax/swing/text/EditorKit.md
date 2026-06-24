Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class EditorKit

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.EditorKit

All Implemented Interfaces:
:   `Serializable`, `Cloneable`

Direct Known Subclasses:
:   `DefaultEditorKit`

---

public abstract class EditorKit
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang"), [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

Establishes the set of things needed by a text component
to be a reasonably functioning editor for some *type*
of text content. The EditorKit acts as a factory for some
kind of policy. For example, an implementation
of html and rtf can be provided that is replaceable
with other implementations.

A kit can safely store editing state as an instance
of the kit will be dedicated to a text component.
New kits will normally be created by cloning a
prototype kit. The kit will have its
`setComponent` method called to establish
its relationship with a JTextComponent.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `EditorKit()`

  Construct an EditorKit.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Creates a copy of the editor kit.

  `abstract Caret`

  `createCaret()`

  Fetches a caret that can navigate through views
  produced by the associated ViewFactory.

  `abstract Document`

  `createDefaultDocument()`

  Creates an uninitialized text storage model
  that is appropriate for this type of editor.

  `void`

  `deinstall(JEditorPane c)`

  Called when the kit is being removed from the
  JEditorPane.

  `abstract Action[]`

  `getActions()`

  Fetches the set of commands that can be used
  on a text component that is using a model and
  view produced by this kit.

  `abstract String`

  `getContentType()`

  Gets the MIME type of the data that this
  kit represents support for.

  `abstract ViewFactory`

  `getViewFactory()`

  Fetches a factory that is suitable for producing
  views of any models that are produced by this
  kit.

  `void`

  `install(JEditorPane c)`

  Called when the kit is being installed into the
  a JEditorPane.

  `abstract void`

  `read(InputStream in,
  Document doc,
  int pos)`

  Inserts content from the given stream which is expected
  to be in a format appropriate for this kind of content
  handler.

  `abstract void`

  `read(Reader in,
  Document doc,
  int pos)`

  Inserts content from the given stream which is expected
  to be in a format appropriate for this kind of content
  handler.

  `abstract void`

  `write(OutputStream out,
  Document doc,
  int pos,
  int len)`

  Writes content from a document to the given stream
  in a format appropriate for this kind of content handler.

  `abstract void`

  `write(Writer out,
  Document doc,
  int pos,
  int len)`

  Writes content from a document to the given stream
  in a format appropriate for this kind of content handler.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### EditorKit

    public EditorKit()

    Construct an EditorKit.
* ## Method Details

  + ### clone

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") clone()

    Creates a copy of the editor kit. This is implemented
    to use `Object.clone()`. If the kit cannot be cloned,
    null is returned.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   the copy

    See Also:
    :   - [`Cloneable`](../../../../java.base/java/lang/Cloneable.md "interface in java.lang")
  + ### install

    public void install([JEditorPane](../JEditorPane.md "class in javax.swing") c)

    Called when the kit is being installed into the
    a JEditorPane.

    Parameters:
    :   `c` - the JEditorPane
  + ### deinstall

    public void deinstall([JEditorPane](../JEditorPane.md "class in javax.swing") c)

    Called when the kit is being removed from the
    JEditorPane. This is used to unregister any
    listeners that were attached.

    Parameters:
    :   `c` - the JEditorPane
  + ### getContentType

    public abstract [String](../../../../java.base/java/lang/String.md "class in java.lang") getContentType()

    Gets the MIME type of the data that this
    kit represents support for.

    Returns:
    :   the type
  + ### getViewFactory

    public abstract [ViewFactory](ViewFactory.md "interface in javax.swing.text") getViewFactory()

    Fetches a factory that is suitable for producing
    views of any models that are produced by this
    kit.

    Returns:
    :   the factory
  + ### getActions

    public abstract [Action](../Action.md "interface in javax.swing")[] getActions()

    Fetches the set of commands that can be used
    on a text component that is using a model and
    view produced by this kit.

    Returns:
    :   the set of actions
  + ### createCaret

    public abstract [Caret](Caret.md "interface in javax.swing.text") createCaret()

    Fetches a caret that can navigate through views
    produced by the associated ViewFactory.

    Returns:
    :   the caret
  + ### createDefaultDocument

    public abstract [Document](Document.md "interface in javax.swing.text") createDefaultDocument()

    Creates an uninitialized text storage model
    that is appropriate for this type of editor.

    Returns:
    :   the model
  + ### read

    public abstract void read([InputStream](../../../../java.base/java/io/InputStream.md "class in java.io") in,
    [Document](Document.md "interface in javax.swing.text") doc,
    int pos)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io"),
    [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Inserts content from the given stream which is expected
    to be in a format appropriate for this kind of content
    handler.

    Parameters:
    :   `in` - The stream to read from
    :   `doc` - The destination for the insertion.
    :   `pos` - The location in the document to place the
        content >= 0.

    Throws:
    :   `IOException` - on any I/O error
    :   `BadLocationException` - if pos represents an invalid
        location within the document.
  + ### write

    public abstract void write([OutputStream](../../../../java.base/java/io/OutputStream.md "class in java.io") out,
    [Document](Document.md "interface in javax.swing.text") doc,
    int pos,
    int len)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io"),
    [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Writes content from a document to the given stream
    in a format appropriate for this kind of content handler.

    Parameters:
    :   `out` - The stream to write to
    :   `doc` - The source for the write.
    :   `pos` - The location in the document to fetch the
        content from >= 0.
    :   `len` - The amount to write out >= 0.

    Throws:
    :   `IOException` - on any I/O error
    :   `BadLocationException` - if pos represents an invalid
        location within the document.
  + ### read

    public abstract void read([Reader](../../../../java.base/java/io/Reader.md "class in java.io") in,
    [Document](Document.md "interface in javax.swing.text") doc,
    int pos)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io"),
    [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Inserts content from the given stream which is expected
    to be in a format appropriate for this kind of content
    handler.

    Since actual text editing is unicode based, this would
    generally be the preferred way to read in the data.
    Some types of content are stored in an 8-bit form however,
    and will favor the InputStream.

    Parameters:
    :   `in` - The stream to read from
    :   `doc` - The destination for the insertion.
    :   `pos` - The location in the document to place the
        content >= 0.

    Throws:
    :   `IOException` - on any I/O error
    :   `BadLocationException` - if pos represents an invalid
        location within the document.
  + ### write

    public abstract void write([Writer](../../../../java.base/java/io/Writer.md "class in java.io") out,
    [Document](Document.md "interface in javax.swing.text") doc,
    int pos,
    int len)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io"),
    [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Writes content from a document to the given stream
    in a format appropriate for this kind of content handler.

    Since actual text editing is unicode based, this would
    generally be the preferred way to write the data.
    Some types of content are stored in an 8-bit form however,
    and will favor the OutputStream.

    Parameters:
    :   `out` - The stream to write to
    :   `doc` - The source for the write.
    :   `pos` - The location in the document to fetch the
        content >= 0.
    :   `len` - The amount to write out >= 0.

    Throws:
    :   `IOException` - on any I/O error
    :   `BadLocationException` - if pos represents an invalid
        location within the document.