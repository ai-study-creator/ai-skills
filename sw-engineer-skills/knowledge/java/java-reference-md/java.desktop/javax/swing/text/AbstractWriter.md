Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class AbstractWriter

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.AbstractWriter

Direct Known Subclasses:
:   `HTMLWriter`, `MinimalHTMLWriter`

---

public abstract class AbstractWriter
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

AbstractWriter is an abstract class that actually
does the work of writing out the element tree
including the attributes. In terms of how much is
written out per line, the writer defaults to 100.
But this value can be set by subclasses.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected static final char`

  `NEWLINE`

  How the text packages models newlines.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AbstractWriter(Writer w,
  Document doc)`

  Creates a new AbstractWriter.

  `protected`

  `AbstractWriter(Writer w,
  Document doc,
  int pos,
  int len)`

  Creates a new AbstractWriter.

  `protected`

  `AbstractWriter(Writer w,
  Element root)`

  Creates a new AbstractWriter.

  `protected`

  `AbstractWriter(Writer w,
  Element root,
  int pos,
  int len)`

  Creates a new AbstractWriter.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `decrIndent()`

  Decrements the indent level.

  `protected boolean`

  `getCanWrapLines()`

  Returns whether or not the lines can be wrapped.

  `protected int`

  `getCurrentLineLength()`

  Returns the current line length.

  `protected Document`

  `getDocument()`

  Fetches the document.

  `protected ElementIterator`

  `getElementIterator()`

  Fetches the ElementIterator.

  `int`

  `getEndOffset()`

  Returns the last offset to be output.

  `protected int`

  `getIndentLevel()`

  Returns the current indentation level.

  `protected int`

  `getIndentSpace()`

  Returns the amount of space to indent.

  `protected int`

  `getLineLength()`

  Returns the maximum line length.

  `String`

  `getLineSeparator()`

  Returns the string used to represent newlines.

  `int`

  `getStartOffset()`

  Returns the first offset to be output.

  `protected String`

  `getText(Element elem)`

  Returns the text associated with the element.

  `protected Writer`

  `getWriter()`

  Returns the Writer that is used to output the content.

  `protected void`

  `incrIndent()`

  Increments the indent level.

  `protected void`

  `indent()`

  Does indentation.

  `protected boolean`

  `inRange(Element next)`

  This method determines whether the current element
  is in the range specified.

  `protected boolean`

  `isLineEmpty()`

  Returns true if the current line should be considered empty.

  `protected void`

  `output(char[] content,
  int start,
  int length)`

  The last stop in writing out content.

  `protected void`

  `setCanWrapLines(boolean newValue)`

  Sets whether or not lines can be wrapped.

  `protected void`

  `setCurrentLineLength(int length)`

  Sets the current line length.

  `protected void`

  `setIndentSpace(int space)`

  Enables subclasses to specify how many spaces an indent
  maps to.

  `protected void`

  `setLineLength(int l)`

  Enables subclasses to set the number of characters they
  want written per line.

  `void`

  `setLineSeparator(String value)`

  Sets the String used to represent newlines.

  `protected void`

  `text(Element elem)`

  Writes out text.

  `protected abstract void`

  `write()`

  This abstract method needs to be implemented
  by subclasses.

  `protected void`

  `write(char ch)`

  Writes out a character.

  `protected void`

  `write(char[] chars,
  int startIndex,
  int length)`

  All write methods call into this one.

  `protected void`

  `write(String content)`

  Writes out a string.

  `protected void`

  `writeAttributes(AttributeSet attr)`

  Writes out the set of attributes as " <name>=<value>"
  pairs.

  `protected void`

  `writeLineSeparator()`

  Writes the line separator.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### NEWLINE

    protected static final char NEWLINE

    How the text packages models newlines.

    See Also:
    :   - [`getLineSeparator()`](#getLineSeparator())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.AbstractWriter.NEWLINE)
* ## Constructor Details

  + ### AbstractWriter

    protected AbstractWriter([Writer](../../../../java.base/java/io/Writer.md "class in java.io") w,
    [Document](Document.md "interface in javax.swing.text") doc)

    Creates a new AbstractWriter.
    Initializes the ElementIterator with the default
    root of the document.

    Parameters:
    :   `w` - a Writer.
    :   `doc` - a Document
  + ### AbstractWriter

    protected AbstractWriter([Writer](../../../../java.base/java/io/Writer.md "class in java.io") w,
    [Document](Document.md "interface in javax.swing.text") doc,
    int pos,
    int len)

    Creates a new AbstractWriter.
    Initializes the ElementIterator with the
    element passed in.

    Parameters:
    :   `w` - a Writer
    :   `doc` - an Element
    :   `pos` - The location in the document to fetch the
        content.
    :   `len` - The amount to write out.
  + ### AbstractWriter

    protected AbstractWriter([Writer](../../../../java.base/java/io/Writer.md "class in java.io") w,
    [Element](Element.md "interface in javax.swing.text") root)

    Creates a new AbstractWriter.
    Initializes the ElementIterator with the
    element passed in.

    Parameters:
    :   `w` - a Writer
    :   `root` - an Element
  + ### AbstractWriter

    protected AbstractWriter([Writer](../../../../java.base/java/io/Writer.md "class in java.io") w,
    [Element](Element.md "interface in javax.swing.text") root,
    int pos,
    int len)

    Creates a new AbstractWriter.
    Initializes the ElementIterator with the
    element passed in.

    Parameters:
    :   `w` - a Writer
    :   `root` - an Element
    :   `pos` - The location in the document to fetch the
        content.
    :   `len` - The amount to write out.
* ## Method Details

  + ### getStartOffset

    public int getStartOffset()

    Returns the first offset to be output.

    Returns:
    :   the first offset to be output

    Since:
    :   1.3
  + ### getEndOffset

    public int getEndOffset()

    Returns the last offset to be output.

    Returns:
    :   the last offset to be output

    Since:
    :   1.3
  + ### getElementIterator

    protected [ElementIterator](ElementIterator.md "class in javax.swing.text") getElementIterator()

    Fetches the ElementIterator.

    Returns:
    :   the ElementIterator.
  + ### getWriter

    protected [Writer](../../../../java.base/java/io/Writer.md "class in java.io") getWriter()

    Returns the Writer that is used to output the content.

    Returns:
    :   the Writer that is used to output the content

    Since:
    :   1.3
  + ### getDocument

    protected [Document](Document.md "interface in javax.swing.text") getDocument()

    Fetches the document.

    Returns:
    :   the Document.
  + ### inRange

    protected boolean inRange([Element](Element.md "interface in javax.swing.text") next)

    This method determines whether the current element
    is in the range specified. When no range is specified,
    the range is initialized to be the entire document.
    inRange() returns true if the range specified intersects
    with the element's range.

    Parameters:
    :   `next` - an Element.

    Returns:
    :   boolean that indicates whether the element
        is in the range.
  + ### write

    protected abstract void write()
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io"),
    [BadLocationException](BadLocationException.md "class in javax.swing.text")

    This abstract method needs to be implemented
    by subclasses. Its responsibility is to
    iterate over the elements and use the write()
    methods to generate output in the desired format.

    Throws:
    :   `IOException` - if an I/O problem has occurred
    :   `BadLocationException` - for an invalid location within
        the document
  + ### getText

    protected [String](../../../../java.base/java/lang/String.md "class in java.lang") getText([Element](Element.md "interface in javax.swing.text") elem)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Returns the text associated with the element.
    The assumption here is that the element is a
    leaf element. Throws a BadLocationException
    when encountered.

    Parameters:
    :   `elem` - an `Element`

    Returns:
    :   the text as a `String`

    Throws:
    :   `BadLocationException` - if pos represents an invalid
        location within the document
  + ### text

    protected void text([Element](Element.md "interface in javax.swing.text") elem)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Writes out text. If a range is specified when the constructor
    is invoked, then only the appropriate range of text is written
    out.

    Parameters:
    :   `elem` - an Element.

    Throws:
    :   `IOException` - on any I/O error
    :   `BadLocationException` - if pos represents an invalid
        location within the document.
  + ### setLineLength

    protected void setLineLength(int l)

    Enables subclasses to set the number of characters they
    want written per line. The default is 100.

    Parameters:
    :   `l` - the maximum line length.
  + ### getLineLength

    protected int getLineLength()

    Returns the maximum line length.

    Returns:
    :   the maximum line length

    Since:
    :   1.3
  + ### setCurrentLineLength

    protected void setCurrentLineLength(int length)

    Sets the current line length.

    Parameters:
    :   `length` - the new line length

    Since:
    :   1.3
  + ### getCurrentLineLength

    protected int getCurrentLineLength()

    Returns the current line length.

    Returns:
    :   the current line length

    Since:
    :   1.3
  + ### isLineEmpty

    protected boolean isLineEmpty()

    Returns true if the current line should be considered empty. This
    is true when `getCurrentLineLength` == 0 ||
    `indent` has been invoked on an empty line.

    Returns:
    :   true if the current line should be considered empty

    Since:
    :   1.3
  + ### setCanWrapLines

    protected void setCanWrapLines(boolean newValue)

    Sets whether or not lines can be wrapped. This can be toggled
    during the writing of lines. For example, outputting HTML might
    set this to false when outputting a quoted string.

    Parameters:
    :   `newValue` - new value for line wrapping

    Since:
    :   1.3
  + ### getCanWrapLines

    protected boolean getCanWrapLines()

    Returns whether or not the lines can be wrapped. If this is false
    no lineSeparator's will be output.

    Returns:
    :   whether or not the lines can be wrapped

    Since:
    :   1.3
  + ### setIndentSpace

    protected void setIndentSpace(int space)

    Enables subclasses to specify how many spaces an indent
    maps to. When indentation takes place, the indent level
    is multiplied by this mapping. The default is 2.

    Parameters:
    :   `space` - an int representing the space to indent mapping.
  + ### getIndentSpace

    protected int getIndentSpace()

    Returns the amount of space to indent.

    Returns:
    :   the amount of space to indent

    Since:
    :   1.3
  + ### setLineSeparator

    public void setLineSeparator([String](../../../../java.base/java/lang/String.md "class in java.lang") value)

    Sets the String used to represent newlines. This is initialized
    in the constructor from either the Document, or the System property
    line.separator.

    Parameters:
    :   `value` - the new line separator

    Since:
    :   1.3
  + ### getLineSeparator

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getLineSeparator()

    Returns the string used to represent newlines.

    Returns:
    :   the string used to represent newlines

    Since:
    :   1.3
  + ### incrIndent

    protected void incrIndent()

    Increments the indent level. If indenting would cause
    `getIndentSpace()` \*`getIndentLevel()` to be >
    than `getLineLength()` this will not cause an indent.
  + ### decrIndent

    protected void decrIndent()

    Decrements the indent level.
  + ### getIndentLevel

    protected int getIndentLevel()

    Returns the current indentation level. That is, the number of times
    `incrIndent` has been invoked minus the number of times
    `decrIndent` has been invoked.

    Returns:
    :   the current indentation level

    Since:
    :   1.3
  + ### indent

    protected void indent()
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Does indentation. The number of spaces written
    out is indent level times the space to map mapping. If the current
    line is empty, this will not make it so that the current line is
    still considered empty.

    Throws:
    :   `IOException` - on any I/O error
  + ### write

    protected void write(char ch)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Writes out a character. This is implemented to invoke
    the `write` method that takes a char[].

    Parameters:
    :   `ch` - a char.

    Throws:
    :   `IOException` - on any I/O error
  + ### write

    protected void write([String](../../../../java.base/java/lang/String.md "class in java.lang") content)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Writes out a string. This is implemented to invoke the
    `write` method that takes a char[].

    Parameters:
    :   `content` - a String.

    Throws:
    :   `IOException` - on any I/O error
  + ### writeLineSeparator

    protected void writeLineSeparator()
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Writes the line separator. This invokes `output` directly
    as well as setting the `lineLength` to 0.

    Throws:
    :   `IOException` - on any I/O error

    Since:
    :   1.3
  + ### write

    protected void write(char[] chars,
    int startIndex,
    int length)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    All write methods call into this one. If `getCanWrapLines()`
    returns false, this will call `output` with each sequence
    of `chars` that doesn't contain a NEWLINE, followed
    by a call to `writeLineSeparator`. On the other hand,
    if `getCanWrapLines()` returns true, this will split the
    string, as necessary, so `getLineLength` is honored.
    The only exception is if the current string contains no whitespace,
    and won't fit in which case the line length will exceed
    `getLineLength`.

    Parameters:
    :   `chars` - characters to output
    :   `startIndex` - starting index
    :   `length` - length of output

    Throws:
    :   `IOException` - on any I/O error

    Since:
    :   1.3
  + ### writeAttributes

    protected void writeAttributes([AttributeSet](AttributeSet.md "interface in javax.swing.text") attr)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Writes out the set of attributes as " <name>=<value>"
    pairs. It throws an IOException when encountered.

    Parameters:
    :   `attr` - an AttributeSet.

    Throws:
    :   `IOException` - on any I/O error
  + ### output

    protected void output(char[] content,
    int start,
    int length)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    The last stop in writing out content. All the write methods eventually
    make it to this method, which invokes `write` on the
    Writer.

    This method also updates the line length based on
    `length`. If this is invoked to output a newline, the
    current line length will need to be reset as will no longer be
    valid. If it is up to the caller to do this. Use
    `writeLineSeparator` to write out a newline, which will
    property update the current line length.

    Parameters:
    :   `content` - characters to output
    :   `start` - starting index
    :   `length` - length of output

    Throws:
    :   `IOException` - on any I/O error

    Since:
    :   1.3