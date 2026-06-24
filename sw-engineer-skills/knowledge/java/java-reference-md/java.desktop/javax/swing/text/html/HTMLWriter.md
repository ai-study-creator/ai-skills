Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.html](package-summary.md)

# Class HTMLWriter

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.AbstractWriter](../AbstractWriter.md "class in javax.swing.text")

javax.swing.text.html.HTMLWriter

---

public class HTMLWriter
extends [AbstractWriter](../AbstractWriter.md "class in javax.swing.text")

This is a writer for HTMLDocuments.

* ## Field Summary

  ### Fields inherited from class javax.swing.text.[AbstractWriter](../AbstractWriter.md "class in javax.swing.text")

  `NEWLINE`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `HTMLWriter(Writer w,
  HTMLDocument doc)`

  Creates a new HTMLWriter.

  `HTMLWriter(Writer w,
  HTMLDocument doc,
  int pos,
  int len)`

  Creates a new HTMLWriter.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `closeOutUnwantedEmbeddedTags(AttributeSet attr)`

  Searches the attribute set and for each tag
  that is stored in the tag vector.

  `protected void`

  `comment(Element elem)`

  Writes out comments.

  `protected void`

  `emptyTag(Element elem)`

  Writes out all empty elements (all tags that have no
  corresponding end tag).

  `protected void`

  `endTag(Element elem)`

  Writes out an end tag for the element.

  `protected boolean`

  `isBlockTag(AttributeSet attr)`

  Determines if the HTML.Tag associated with the
  element is a block tag.

  `protected boolean`

  `matchNameAttribute(AttributeSet attr,
  HTML.Tag tag)`

  Returns true if the StyleConstants.NameAttribute is
  equal to the tag that is passed in as a parameter.

  `protected void`

  `output(char[] chars,
  int start,
  int length)`

  This method is overridden to map any character entities, such as
  < to &lt;.

  `protected void`

  `selectContent(AttributeSet attr)`

  Writes out the content of the SELECT form element.

  `protected void`

  `startTag(Element elem)`

  Writes out a start tag for the element.

  `protected boolean`

  `synthesizedElement(Element elem)`

  Returns `true` if the element is a
  synthesized element.

  `protected void`

  `text(Element elem)`

  Writes out text.

  `protected void`

  `textAreaContent(AttributeSet attr)`

  Writes out text that is contained in a TEXTAREA form
  element.

  `void`

  `write()`

  Iterates over the
  Element tree and controls the writing out of
  all the tags and its attributes.

  `protected void`

  `writeAttributes(AttributeSet attr)`

  Writes out the attribute set.

  `protected void`

  `writeEmbeddedTags(AttributeSet attr)`

  Searches for embedded tags in the AttributeSet
  and writes them out.

  `protected void`

  `writeLineSeparator()`

  Writes the line separator.

  `protected void`

  `writeOption(Option option)`

  Writes out the content of the Option form element.

  ### Methods inherited from class javax.swing.text.[AbstractWriter](../AbstractWriter.md "class in javax.swing.text")

  `decrIndent, getCanWrapLines, getCurrentLineLength, getDocument, getElementIterator, getEndOffset, getIndentLevel, getIndentSpace, getLineLength, getLineSeparator, getStartOffset, getText, getWriter, incrIndent, indent, inRange, isLineEmpty, setCanWrapLines, setCurrentLineLength, setIndentSpace, setLineLength, setLineSeparator, write, write, write`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### HTMLWriter

    public HTMLWriter([Writer](../../../../../java.base/java/io/Writer.md "class in java.io") w,
    [HTMLDocument](HTMLDocument.md "class in javax.swing.text.html") doc)

    Creates a new HTMLWriter.

    Parameters:
    :   `w` - a Writer
    :   `doc` - an HTMLDocument
  + ### HTMLWriter

    public HTMLWriter([Writer](../../../../../java.base/java/io/Writer.md "class in java.io") w,
    [HTMLDocument](HTMLDocument.md "class in javax.swing.text.html") doc,
    int pos,
    int len)

    Creates a new HTMLWriter.

    Parameters:
    :   `w` - a Writer
    :   `doc` - an HTMLDocument
    :   `pos` - the document location from which to fetch the content
    :   `len` - the amount to write out
* ## Method Details

  + ### write

    public void write()
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [BadLocationException](../BadLocationException.md "class in javax.swing.text")

    Iterates over the
    Element tree and controls the writing out of
    all the tags and its attributes.

    Specified by:
    :   `write` in class `AbstractWriter`

    Throws:
    :   `IOException` - on any I/O error
    :   `BadLocationException` - if pos represents an invalid
        location within the document.
  + ### writeAttributes

    protected void writeAttributes([AttributeSet](../AttributeSet.md "interface in javax.swing.text") attr)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Writes out the attribute set. Ignores all
    attributes with a key of type HTML.Tag,
    attributes with a key of type StyleConstants,
    and attributes with a key of type
    HTML.Attribute.ENDTAG.

    Overrides:
    :   `writeAttributes` in class `AbstractWriter`

    Parameters:
    :   `attr` - an AttributeSet

    Throws:
    :   `IOException` - on any I/O error
  + ### emptyTag

    protected void emptyTag([Element](../Element.md "interface in javax.swing.text") elem)
    throws [BadLocationException](../BadLocationException.md "class in javax.swing.text"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Writes out all empty elements (all tags that have no
    corresponding end tag).

    Parameters:
    :   `elem` - an Element

    Throws:
    :   `IOException` - on any I/O error
    :   `BadLocationException` - if pos represents an invalid
        location within the document.
  + ### isBlockTag

    protected boolean isBlockTag([AttributeSet](../AttributeSet.md "interface in javax.swing.text") attr)

    Determines if the HTML.Tag associated with the
    element is a block tag.

    Parameters:
    :   `attr` - an AttributeSet

    Returns:
    :   true if tag is block tag, false otherwise.
  + ### startTag

    protected void startTag([Element](../Element.md "interface in javax.swing.text") elem)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [BadLocationException](../BadLocationException.md "class in javax.swing.text")

    Writes out a start tag for the element.
    Ignores all synthesized elements.

    Parameters:
    :   `elem` - an Element

    Throws:
    :   `IOException` - on any I/O error
    :   `BadLocationException` - if pos represents an invalid
        location within the document.
  + ### textAreaContent

    protected void textAreaContent([AttributeSet](../AttributeSet.md "interface in javax.swing.text") attr)
    throws [BadLocationException](../BadLocationException.md "class in javax.swing.text"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Writes out text that is contained in a TEXTAREA form
    element.

    Parameters:
    :   `attr` - an AttributeSet

    Throws:
    :   `IOException` - on any I/O error
    :   `BadLocationException` - if pos represents an invalid
        location within the document.
  + ### text

    protected void text([Element](../Element.md "interface in javax.swing.text") elem)
    throws [BadLocationException](../BadLocationException.md "class in javax.swing.text"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Writes out text. If a range is specified when the constructor
    is invoked, then only the appropriate range of text is written
    out.

    Overrides:
    :   `text` in class `AbstractWriter`

    Parameters:
    :   `elem` - an Element

    Throws:
    :   `IOException` - on any I/O error
    :   `BadLocationException` - if pos represents an invalid
        location within the document.
  + ### selectContent

    protected void selectContent([AttributeSet](../AttributeSet.md "interface in javax.swing.text") attr)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Writes out the content of the SELECT form element.

    Parameters:
    :   `attr` - the AttributeSet associated with the form element

    Throws:
    :   `IOException` - on any I/O error
  + ### writeOption

    protected void writeOption([Option](Option.md "class in javax.swing.text.html") option)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Writes out the content of the Option form element.

    Parameters:
    :   `option` - an Option

    Throws:
    :   `IOException` - on any I/O error
  + ### endTag

    protected void endTag([Element](../Element.md "interface in javax.swing.text") elem)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Writes out an end tag for the element.

    Parameters:
    :   `elem` - an Element

    Throws:
    :   `IOException` - on any I/O error
  + ### comment

    protected void comment([Element](../Element.md "interface in javax.swing.text") elem)
    throws [BadLocationException](../BadLocationException.md "class in javax.swing.text"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Writes out comments.

    Parameters:
    :   `elem` - an Element

    Throws:
    :   `IOException` - on any I/O error
    :   `BadLocationException` - if pos represents an invalid
        location within the document.
  + ### synthesizedElement

    protected boolean synthesizedElement([Element](../Element.md "interface in javax.swing.text") elem)

    Returns `true` if the element is a
    synthesized element. Currently we are only testing
    for the p-implied tag.

    Parameters:
    :   `elem` - an element

    Returns:
    :   `true` if the element is a synthesized element.
  + ### matchNameAttribute

    protected boolean matchNameAttribute([AttributeSet](../AttributeSet.md "interface in javax.swing.text") attr,
    [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") tag)

    Returns true if the StyleConstants.NameAttribute is
    equal to the tag that is passed in as a parameter.

    Parameters:
    :   `attr` - a set of attributes
    :   `tag` - an HTML tag

    Returns:
    :   `true` if the StyleConstants.NameAttribute is equal to the tag that is passed in as a parameter.
  + ### writeEmbeddedTags

    protected void writeEmbeddedTags([AttributeSet](../AttributeSet.md "interface in javax.swing.text") attr)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Searches for embedded tags in the AttributeSet
    and writes them out. It also stores these tags in a vector
    so that when appropriate the corresponding end tags can be
    written out.

    Parameters:
    :   `attr` - a set of attributes

    Throws:
    :   `IOException` - on any I/O error
  + ### closeOutUnwantedEmbeddedTags

    protected void closeOutUnwantedEmbeddedTags([AttributeSet](../AttributeSet.md "interface in javax.swing.text") attr)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Searches the attribute set and for each tag
    that is stored in the tag vector. If the tag is not found,
    then the tag is removed from the vector and a corresponding
    end tag is written out.

    Parameters:
    :   `attr` - a set of attributes

    Throws:
    :   `IOException` - on any I/O error
  + ### writeLineSeparator

    protected void writeLineSeparator()
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Writes the line separator. This is overridden to make sure we don't
    replace the newline content in case it is outside normal ascii.

    Overrides:
    :   `writeLineSeparator` in class `AbstractWriter`

    Throws:
    :   `IOException` - on any I/O error

    Since:
    :   1.3
  + ### output

    protected void output(char[] chars,
    int start,
    int length)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    This method is overridden to map any character entities, such as
    < to &lt;. `super.output` will be invoked to
    write the content.

    Overrides:
    :   `output` in class `AbstractWriter`

    Parameters:
    :   `chars` - characters to output
    :   `start` - starting index
    :   `length` - length of output

    Throws:
    :   `IOException` - on any I/O error

    Since:
    :   1.3