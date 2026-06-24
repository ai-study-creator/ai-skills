Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.html](package-summary.md)

# Class MinimalHTMLWriter

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.AbstractWriter](../AbstractWriter.md "class in javax.swing.text")

javax.swing.text.html.MinimalHTMLWriter

---

public class MinimalHTMLWriter
extends [AbstractWriter](../AbstractWriter.md "class in javax.swing.text")

MinimalHTMLWriter is a fallback writer used by the
HTMLEditorKit to write out HTML for a document that
is a not produced by the EditorKit.
The format for the document is:

```
 <html>
   <head>
     <style>
        <!-- list of named styles
         p.normal {
            font-family: SansSerif;
            margin-height: 0;
            font-size: 14
         }
        -->
      </style>
   </head>
   <body>
    <p style=normal>
        Bold, italic, and underline attributes
        of the run are emitted as HTML tags.
        The remaining attributes are emitted as
        part of the style attribute of a <span> tag.
        The syntax is similar to inline styles.
    </p>
   </body>
 </html>
```

* ## Field Summary

  ### Fields inherited from class javax.swing.text.[AbstractWriter](../AbstractWriter.md "class in javax.swing.text")

  `NEWLINE`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MinimalHTMLWriter(Writer w,
  StyledDocument doc)`

  Creates a new MinimalHTMLWriter.

  `MinimalHTMLWriter(Writer w,
  StyledDocument doc,
  int pos,
  int len)`

  Creates a new MinimalHTMLWriter.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `endFontTag()`

  This is no longer used, instead <span> will be written out.

  `protected boolean`

  `inFontTag()`

  Returns true if we are currently in a <font> tag.

  `protected boolean`

  `isText(Element elem)`

  Returns true if the element is a text element.

  `protected void`

  `startFontTag(String style)`

  This is no longer used, instead <span> will be written out.

  `protected void`

  `text(Element elem)`

  Writes out text.

  `void`

  `write()`

  Generates HTML output
  from a StyledDocument.

  `protected void`

  `writeAttributes(AttributeSet attr)`

  Writes out all the attributes for the
  following types:
  StyleConstants.ParagraphConstants,
  StyleConstants.CharacterConstants,
  StyleConstants.FontConstants,
  StyleConstants.ColorConstants.

  `protected void`

  `writeBody()`

  Iterates over the elements in the document
  and processes elements based on whether they are
  branch elements or leaf elements.

  `protected void`

  `writeComponent(Element elem)`

  Responsible for handling Component Elements;
  deliberately unimplemented.

  `protected void`

  `writeContent(Element elem,
  boolean needsIndenting)`

  Writes out the attribute set
  in an HTML-compliant manner.

  `protected void`

  `writeEndParagraph()`

  Emits an end tag for a <p>
  tag.

  `protected void`

  `writeEndTag(String endTag)`

  Writes out an end tag appropriately
  indented.

  `protected void`

  `writeHeader()`

  Writes out the <head> and <style>
  tags, and then invokes writeStyles() to write
  out all the named styles as the content of the
  <style> tag.

  `protected void`

  `writeHTMLTags(AttributeSet attr)`

  Generates
  bold <b>, italic <i>, and <u> tags for the
  text based on its attribute settings.

  `protected void`

  `writeImage(Element elem)`

  Responsible for handling Icon Elements;
  deliberately unimplemented.

  `protected void`

  `writeLeaf(Element elem)`

  Responsible for writing out other non-text leaf
  elements.

  `protected void`

  `writeNonHTMLAttributes(AttributeSet attr)`

  Writes out the remaining
  character-level attributes (attributes other than bold,
  italic, and underline) in an HTML-compliant way.

  `protected void`

  `writeStartParagraph(Element elem)`

  Emits the start tag for a paragraph.

  `protected void`

  `writeStartTag(String tag)`

  Writes out a start tag appropriately
  indented.

  `protected void`

  `writeStyles()`

  Writes out all the named styles as the
  content of the <style> tag.

  ### Methods inherited from class javax.swing.text.[AbstractWriter](../AbstractWriter.md "class in javax.swing.text")

  `decrIndent, getCanWrapLines, getCurrentLineLength, getDocument, getElementIterator, getEndOffset, getIndentLevel, getIndentSpace, getLineLength, getLineSeparator, getStartOffset, getText, getWriter, incrIndent, indent, inRange, isLineEmpty, output, setCanWrapLines, setCurrentLineLength, setIndentSpace, setLineLength, setLineSeparator, write, write, write, writeLineSeparator`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MinimalHTMLWriter

    public MinimalHTMLWriter([Writer](../../../../../java.base/java/io/Writer.md "class in java.io") w,
    [StyledDocument](../StyledDocument.md "interface in javax.swing.text") doc)

    Creates a new MinimalHTMLWriter.

    Parameters:
    :   `w` - Writer
    :   `doc` - StyledDocument
  + ### MinimalHTMLWriter

    public MinimalHTMLWriter([Writer](../../../../../java.base/java/io/Writer.md "class in java.io") w,
    [StyledDocument](../StyledDocument.md "interface in javax.swing.text") doc,
    int pos,
    int len)

    Creates a new MinimalHTMLWriter.

    Parameters:
    :   `w` - Writer
    :   `doc` - StyledDocument
    :   `pos` - The location in the document to fetch the
        content.
    :   `len` - The amount to write out.
* ## Method Details

  + ### write

    public void write()
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [BadLocationException](../BadLocationException.md "class in javax.swing.text")

    Generates HTML output
    from a StyledDocument.

    Specified by:
    :   `write` in class `AbstractWriter`

    Throws:
    :   `IOException` - on any I/O error
    :   `BadLocationException` - if pos represents an invalid
        location within the document.
  + ### writeAttributes

    protected void writeAttributes([AttributeSet](../AttributeSet.md "interface in javax.swing.text") attr)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Writes out all the attributes for the
    following types:
    StyleConstants.ParagraphConstants,
    StyleConstants.CharacterConstants,
    StyleConstants.FontConstants,
    StyleConstants.ColorConstants.
    The attribute name and value are separated by a colon.
    Each pair is separated by a semicolon.

    Overrides:
    :   `writeAttributes` in class `AbstractWriter`

    Parameters:
    :   `attr` - an AttributeSet.

    Throws:
    :   `IOException` - on any I/O error
  + ### text

    protected void text([Element](../Element.md "interface in javax.swing.text") elem)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [BadLocationException](../BadLocationException.md "class in javax.swing.text")

    Writes out text.

    Overrides:
    :   `text` in class `AbstractWriter`

    Parameters:
    :   `elem` - an Element.

    Throws:
    :   `IOException` - on any I/O error
    :   `BadLocationException` - if pos represents an invalid
        location within the document.
  + ### writeStartTag

    protected void writeStartTag([String](../../../../../java.base/java/lang/String.md "class in java.lang") tag)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Writes out a start tag appropriately
    indented. Also increments the indent level.

    Parameters:
    :   `tag` - a start tag

    Throws:
    :   `IOException` - on any I/O error
  + ### writeEndTag

    protected void writeEndTag([String](../../../../../java.base/java/lang/String.md "class in java.lang") endTag)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Writes out an end tag appropriately
    indented. Also decrements the indent level.

    Parameters:
    :   `endTag` - an end tag

    Throws:
    :   `IOException` - on any I/O error
  + ### writeHeader

    protected void writeHeader()
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Writes out the <head> and <style>
    tags, and then invokes writeStyles() to write
    out all the named styles as the content of the
    <style> tag. The content is surrounded by
    valid HTML comment markers to ensure that the
    document is viewable in applications/browsers
    that do not support the tag.

    Throws:
    :   `IOException` - on any I/O error
  + ### writeStyles

    protected void writeStyles()
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Writes out all the named styles as the
    content of the <style> tag.

    Throws:
    :   `IOException` - on any I/O error
  + ### writeBody

    protected void writeBody()
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [BadLocationException](../BadLocationException.md "class in javax.swing.text")

    Iterates over the elements in the document
    and processes elements based on whether they are
    branch elements or leaf elements. This method specially handles
    leaf elements that are text.

    Throws:
    :   `IOException` - on any I/O error
    :   `BadLocationException` - if we are in an invalid
        location within the document.
  + ### writeEndParagraph

    protected void writeEndParagraph()
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Emits an end tag for a <p>
    tag. Before writing out the tag, this method ensures
    that all other tags that have been opened are
    appropriately closed off.

    Throws:
    :   `IOException` - on any I/O error
  + ### writeStartParagraph

    protected void writeStartParagraph([Element](../Element.md "interface in javax.swing.text") elem)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Emits the start tag for a paragraph. If
    the paragraph has a named style associated with it,
    then this method also generates a class attribute for the
    <p> tag and sets its value to be the name of the
    style.

    Parameters:
    :   `elem` - an element

    Throws:
    :   `IOException` - on any I/O error
  + ### writeLeaf

    protected void writeLeaf([Element](../Element.md "interface in javax.swing.text") elem)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Responsible for writing out other non-text leaf
    elements.

    Parameters:
    :   `elem` - an element

    Throws:
    :   `IOException` - on any I/O error
  + ### writeImage

    protected void writeImage([Element](../Element.md "interface in javax.swing.text") elem)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Responsible for handling Icon Elements;
    deliberately unimplemented. How to implement this method is
    an issue of policy. For example, if you're generating
    an <img> tag, how should you
    represent the src attribute (the location of the image)?
    In certain cases it could be a URL, in others it could
    be read from a stream.

    Parameters:
    :   `elem` - an element of type StyleConstants.IconElementName

    Throws:
    :   `IOException` - if I/O error occurred.
  + ### writeComponent

    protected void writeComponent([Element](../Element.md "interface in javax.swing.text") elem)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Responsible for handling Component Elements;
    deliberately unimplemented.
    How this method is implemented is a matter of policy.

    Parameters:
    :   `elem` - an element of type StyleConstants.ComponentElementName

    Throws:
    :   `IOException` - if I/O error occurred.
  + ### isText

    protected boolean isText([Element](../Element.md "interface in javax.swing.text") elem)

    Returns true if the element is a text element.

    Parameters:
    :   `elem` - an element

    Returns:
    :   `true` if the element is a text element.
  + ### writeContent

    protected void writeContent([Element](../Element.md "interface in javax.swing.text") elem,
    boolean needsIndenting)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [BadLocationException](../BadLocationException.md "class in javax.swing.text")

    Writes out the attribute set
    in an HTML-compliant manner.

    Parameters:
    :   `elem` - an element
    :   `needsIndenting` - indentation will be added if `needsIndenting` is `true`

    Throws:
    :   `IOException` - on any I/O error
    :   `BadLocationException` - if pos represents an invalid
        location within the document.
  + ### writeHTMLTags

    protected void writeHTMLTags([AttributeSet](../AttributeSet.md "interface in javax.swing.text") attr)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Generates
    bold <b>, italic <i>, and <u> tags for the
    text based on its attribute settings.

    Parameters:
    :   `attr` - a set of attributes

    Throws:
    :   `IOException` - on any I/O error
  + ### writeNonHTMLAttributes

    protected void writeNonHTMLAttributes([AttributeSet](../AttributeSet.md "interface in javax.swing.text") attr)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Writes out the remaining
    character-level attributes (attributes other than bold,
    italic, and underline) in an HTML-compliant way. Given that
    attributes such as font family and font size have no direct
    mapping to HTML tags, a <span> tag is generated and its
    style attribute is set to contain the list of remaining
    attributes just like inline styles.

    Parameters:
    :   `attr` - a set of attributes

    Throws:
    :   `IOException` - on any I/O error
  + ### inFontTag

    protected boolean inFontTag()

    Returns true if we are currently in a <font> tag.

    Returns:
    :   `true` if we are currently in a <font> tag.
  + ### endFontTag

    protected void endFontTag()
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    This is no longer used, instead <span> will be written out.

    Writes out an end tag for the <font> tag.

    Throws:
    :   `IOException` - on any I/O error
  + ### startFontTag

    protected void startFontTag([String](../../../../../java.base/java/lang/String.md "class in java.lang") style)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    This is no longer used, instead <span> will be written out.

    Writes out a start tag for the <font> tag.
    Because font tags cannot be nested,
    this method closes out
    any enclosing font tag before writing out a
    new start tag.

    Parameters:
    :   `style` - a font style

    Throws:
    :   `IOException` - on any I/O error