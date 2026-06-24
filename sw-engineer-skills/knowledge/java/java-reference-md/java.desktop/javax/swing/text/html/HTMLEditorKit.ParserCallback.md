Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.html](package-summary.md)

# Class HTMLEditorKit.ParserCallback

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.html.HTMLEditorKit.ParserCallback

Direct Known Subclasses:
:   `HTMLDocument.HTMLReader`

Enclosing class:
:   `HTMLEditorKit`

---

public static class HTMLEditorKit.ParserCallback
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

The result of parsing drives these callback methods.
The open and close actions should be balanced. The
`flush` method will be the last method
called, to give the receiver a chance to flush any
pending data into the document.

Refer to DocumentParser, the default parser used, for further
information on the contents of the AttributeSets, the positions, and
other info.

See Also:
:   * [`DocumentParser`](parser/DocumentParser.md "class in javax.swing.text.html.parser")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final Object`

  `IMPLIED`

  This is passed as an attribute in the attributeset to indicate
  the element is implied eg, the string '<>foo<\t>'
  contains an implied html element and an implied body element.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ParserCallback()`

  Constructs a `ParserCallback`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `flush()`

  The last method called on the reader.

  `void`

  `handleComment(char[] data,
  int pos)`

  Called by the parser to indicate a block of comment was
  encountered.

  `void`

  `handleEndOfLineString(String eol)`

  This is invoked after the stream has been parsed, but before
  `flush`.

  `void`

  `handleEndTag(HTML.Tag t,
  int pos)`

  Callback from the parser.

  `void`

  `handleError(String errorMsg,
  int pos)`

  Callback from the parser.

  `void`

  `handleSimpleTag(HTML.Tag t,
  MutableAttributeSet a,
  int pos)`

  Callback from the parser.

  `void`

  `handleStartTag(HTML.Tag t,
  MutableAttributeSet a,
  int pos)`

  Callback from the parser.

  `void`

  `handleText(char[] data,
  int pos)`

  Called by the parser to indicate a block of text was
  encountered.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### IMPLIED

    public static final [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") IMPLIED

    This is passed as an attribute in the attributeset to indicate
    the element is implied eg, the string '<>foo<\t>'
    contains an implied html element and an implied body element.

    Since:
    :   1.3
* ## Constructor Details

  + ### ParserCallback

    public ParserCallback()

    Constructs a `ParserCallback`.
* ## Method Details

  + ### flush

    public void flush()
    throws [BadLocationException](../BadLocationException.md "class in javax.swing.text")

    The last method called on the reader. It allows
    any pending changes to be flushed into the document.
    Since this is currently loading synchronously, the entire
    set of changes are pushed in at this point.

    Throws:
    :   `BadLocationException` - if the given position does not
        represent a valid location in the associated document.
  + ### handleText

    public void handleText(char[] data,
    int pos)

    Called by the parser to indicate a block of text was
    encountered.

    Parameters:
    :   `data` - a data
    :   `pos` - a position
  + ### handleComment

    public void handleComment(char[] data,
    int pos)

    Called by the parser to indicate a block of comment was
    encountered.

    Parameters:
    :   `data` - a data
    :   `pos` - a position
  + ### handleStartTag

    public void handleStartTag([HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") t,
    [MutableAttributeSet](../MutableAttributeSet.md "interface in javax.swing.text") a,
    int pos)

    Callback from the parser. Route to the appropriate
    handler for the tag.

    Parameters:
    :   `t` - an HTML tag
    :   `a` - a set of attributes
    :   `pos` - a position
  + ### handleEndTag

    public void handleEndTag([HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") t,
    int pos)

    Callback from the parser. Route to the appropriate
    handler for the tag.

    Parameters:
    :   `t` - an HTML tag
    :   `pos` - a position
  + ### handleSimpleTag

    public void handleSimpleTag([HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") t,
    [MutableAttributeSet](../MutableAttributeSet.md "interface in javax.swing.text") a,
    int pos)

    Callback from the parser. Route to the appropriate
    handler for the tag.

    Parameters:
    :   `t` - an HTML tag
    :   `a` - a set of attributes
    :   `pos` - a position
  + ### handleError

    public void handleError([String](../../../../../java.base/java/lang/String.md "class in java.lang") errorMsg,
    int pos)

    Callback from the parser. Route to the appropriate
    handler for the error.

    Parameters:
    :   `errorMsg` - a error message
    :   `pos` - a position
  + ### handleEndOfLineString

    public void handleEndOfLineString([String](../../../../../java.base/java/lang/String.md "class in java.lang") eol)

    This is invoked after the stream has been parsed, but before
    `flush`. `eol` will be one of \n, \r
    or \r\n, which ever is encountered the most in parsing the
    stream.

    Parameters:
    :   `eol` - value of eol

    Since:
    :   1.3