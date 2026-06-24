Module [java.desktop](../../../../../module-summary.md)

Package [javax.swing.text.html.parser](package-summary.md)

# Class Parser

[java.lang.Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.html.parser.Parser

All Implemented Interfaces:
:   `DTDConstants`

Direct Known Subclasses:
:   `DocumentParser`

---

public class Parser
extends [Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [DTDConstants](DTDConstants.md "interface in javax.swing.text.html.parser")

A simple DTD-driven HTML parser. The parser reads an
HTML file from an InputStream and calls various methods
(which should be overridden in a subclass) when tags and
data are encountered.

Unfortunately there are many badly implemented HTML parsers
out there, and as a result there are many badly formatted
HTML files. This parser attempts to parse most HTML files.
This means that the implementation sometimes deviates from
the SGML specification in favor of HTML.

The parser treats \r and \r\n as \n. Newlines after starttags
and before end tags are ignored just as specified in the SGML/HTML
specification.

The html spec does not specify how spaces are to be coalesced very well.
Specifically, the following scenarios are not discussed (note that a
space should be used here, but I am using &nbsp to force the space to
be displayed):

'<b>blah <i> <strike> foo' which can be treated as:
'<b>blah <i><strike>foo'

as well as:
'<p><a href="xx"> <em>Using</em></a></p>'
which appears to be treated as:
'<p><a href="xx"><em>Using</em></a></p>'

If `strict` is false, when a tag that breaks flow,
(`TagElement.breaksFlows`) or trailing whitespace is
encountered, all whitespace will be ignored until a non whitespace
character is encountered. This appears to give behavior closer to
the popular browsers.

See Also:
:   * [`DTD`](DTD.md "class in javax.swing.text.html.parser")
    * [`TagElement`](TagElement.md "class in javax.swing.text.html.parser")
    * [`SimpleAttributeSet`](../../SimpleAttributeSet.md "class in javax.swing.text")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected DTD`

  `dtd`

  The dtd.

  `protected boolean`

  `strict`

  This flag determines whether or not the Parser will be strict
  in enforcing SGML compatibility.

  ### Fields inherited from interface javax.swing.text.html.parser.[DTDConstants](DTDConstants.md "interface in javax.swing.text.html.parser")

  `ANY, CDATA, CONREF, CURRENT, DEFAULT, EMPTY, ENDTAG, ENTITIES, ENTITY, FIXED, GENERAL, ID, IDREF, IDREFS, IMPLIED, MD, MODEL, MS, NAME, NAMES, NMTOKEN, NMTOKENS, NOTATION, NUMBER, NUMBERS, NUTOKEN, NUTOKENS, PARAMETER, PI, PUBLIC, RCDATA, REQUIRED, SDATA, STARTTAG, SYSTEM`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Parser(DTD dtd)`

  Creates parser with the specified `dtd`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `endTag(boolean omitted)`

  Handle an end tag.

  `protected void`

  `error(String err)`

  Invokes the error handler with the 1st, 2nd and 3rd error message argument "?".

  `protected void`

  `error(String err,
  String arg1)`

  Invokes the error handler with the 2nd and 3rd error message argument "?".

  `protected void`

  `error(String err,
  String arg1,
  String arg2)`

  Invokes the error handler with the 3rd error message argument "?".

  `protected void`

  `error(String err,
  String arg1,
  String arg2,
  String arg3)`

  Invokes the error handler.

  `protected void`

  `flushAttributes()`

  Removes the current attributes.

  `protected SimpleAttributeSet`

  `getAttributes()`

  Returns attributes for the current tag.

  `protected int`

  `getCurrentLine()`

  Returns the line number of the line currently being parsed.

  `protected int`

  `getCurrentPos()`

  Returns the current position.

  `protected void`

  `handleComment(char[] text)`

  Called when an HTML comment is encountered.

  `protected void`

  `handleEmptyTag(TagElement tag)`

  Called when an empty tag is encountered.

  `protected void`

  `handleEndTag(TagElement tag)`

  Called when an end tag is encountered.

  `protected void`

  `handleEOFInComment()`

  Called when the content terminates without closing the HTML comment.

  `protected void`

  `handleError(int ln,
  String msg)`

  An error has occurred.

  `protected void`

  `handleStartTag(TagElement tag)`

  Called when a start tag is encountered.

  `protected void`

  `handleText(char[] text)`

  Called when PCDATA is encountered.

  `protected void`

  `handleTitle(char[] text)`

  Called when an HTML title tag is encountered.

  `protected TagElement`

  `makeTag(Element elem)`

  Makes a TagElement.

  `protected TagElement`

  `makeTag(Element elem,
  boolean fictional)`

  Makes a TagElement.

  `protected void`

  `markFirstTime(Element elem)`

  Marks the first time a tag has been seen in a document

  `void`

  `parse(Reader in)`

  Parse an HTML stream, given a DTD.

  `String`

  `parseDTDMarkup()`

  Parses the Document Type Declaration markup declaration.

  `protected boolean`

  `parseMarkupDeclarations(StringBuffer strBuff)`

  Parse markup declarations.

  `protected void`

  `startTag(TagElement tag)`

  Handle a start tag.

  ### Methods inherited from class java.lang.[Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### dtd

    protected [DTD](DTD.md "class in javax.swing.text.html.parser") dtd

    The dtd.
  + ### strict

    protected boolean strict

    This flag determines whether or not the Parser will be strict
    in enforcing SGML compatibility. If false, it will be lenient
    with certain common classes of erroneous HTML constructs.
    Strict or not, in either case an error will be recorded.
* ## Constructor Details

  + ### Parser

    public Parser([DTD](DTD.md "class in javax.swing.text.html.parser") dtd)

    Creates parser with the specified `dtd`.

    Parameters:
    :   `dtd` - the dtd.
* ## Method Details

  + ### getCurrentLine

    protected int getCurrentLine()

    Returns the line number of the line currently being parsed.

    Returns:
    :   the line number of the line currently being parsed
  + ### makeTag

    protected [TagElement](TagElement.md "class in javax.swing.text.html.parser") makeTag([Element](Element.md "class in javax.swing.text.html.parser") elem,
    boolean fictional)

    Makes a TagElement.

    Parameters:
    :   `elem` - the element storing the tag definition
    :   `fictional` - the value of the flag "`fictional`" to be set for the tag

    Returns:
    :   the created `TagElement`
  + ### makeTag

    protected [TagElement](TagElement.md "class in javax.swing.text.html.parser") makeTag([Element](Element.md "class in javax.swing.text.html.parser") elem)

    Makes a TagElement.

    Parameters:
    :   `elem` - the element storing the tag definition

    Returns:
    :   the created `TagElement`
  + ### getAttributes

    protected [SimpleAttributeSet](../../SimpleAttributeSet.md "class in javax.swing.text") getAttributes()

    Returns attributes for the current tag.

    Returns:
    :   `SimpleAttributeSet` containing the attributes
  + ### flushAttributes

    protected void flushAttributes()

    Removes the current attributes.
  + ### handleText

    protected void handleText(char[] text)

    Called when PCDATA is encountered.

    Parameters:
    :   `text` - the section text
  + ### handleTitle

    protected void handleTitle(char[] text)

    Called when an HTML title tag is encountered.

    Parameters:
    :   `text` - the title text
  + ### handleComment

    protected void handleComment(char[] text)

    Called when an HTML comment is encountered.

    Parameters:
    :   `text` - the comment being handled
  + ### handleEOFInComment

    protected void handleEOFInComment()

    Called when the content terminates without closing the HTML comment.
  + ### handleEmptyTag

    protected void handleEmptyTag([TagElement](TagElement.md "class in javax.swing.text.html.parser") tag)
    throws [ChangedCharSetException](../../ChangedCharSetException.md "class in javax.swing.text")

    Called when an empty tag is encountered.

    Parameters:
    :   `tag` - the tag being handled

    Throws:
    :   `ChangedCharSetException` - if the document charset was changed
  + ### handleStartTag

    protected void handleStartTag([TagElement](TagElement.md "class in javax.swing.text.html.parser") tag)

    Called when a start tag is encountered.

    Parameters:
    :   `tag` - the tag being handled
  + ### handleEndTag

    protected void handleEndTag([TagElement](TagElement.md "class in javax.swing.text.html.parser") tag)

    Called when an end tag is encountered.

    Parameters:
    :   `tag` - the tag being handled
  + ### handleError

    protected void handleError(int ln,
    [String](../../../../../../java.base/java/lang/String.md "class in java.lang") msg)

    An error has occurred.

    Parameters:
    :   `ln` - the number of line containing the error
    :   `msg` - the error message
  + ### error

    protected void error([String](../../../../../../java.base/java/lang/String.md "class in java.lang") err,
    [String](../../../../../../java.base/java/lang/String.md "class in java.lang") arg1,
    [String](../../../../../../java.base/java/lang/String.md "class in java.lang") arg2,
    [String](../../../../../../java.base/java/lang/String.md "class in java.lang") arg3)

    Invokes the error handler.

    Parameters:
    :   `err` - the error type
    :   `arg1` - the 1st error message argument
    :   `arg2` - the 2nd error message argument
    :   `arg3` - the 3rd error message argument
  + ### error

    protected void error([String](../../../../../../java.base/java/lang/String.md "class in java.lang") err,
    [String](../../../../../../java.base/java/lang/String.md "class in java.lang") arg1,
    [String](../../../../../../java.base/java/lang/String.md "class in java.lang") arg2)

    Invokes the error handler with the 3rd error message argument "?".

    Parameters:
    :   `err` - the error type
    :   `arg1` - the 1st error message argument
    :   `arg2` - the 2nd error message argument
  + ### error

    protected void error([String](../../../../../../java.base/java/lang/String.md "class in java.lang") err,
    [String](../../../../../../java.base/java/lang/String.md "class in java.lang") arg1)

    Invokes the error handler with the 2nd and 3rd error message argument "?".

    Parameters:
    :   `err` - the error type
    :   `arg1` - the 1st error message argument
  + ### error

    protected void error([String](../../../../../../java.base/java/lang/String.md "class in java.lang") err)

    Invokes the error handler with the 1st, 2nd and 3rd error message argument "?".

    Parameters:
    :   `err` - the error type
  + ### startTag

    protected void startTag([TagElement](TagElement.md "class in javax.swing.text.html.parser") tag)
    throws [ChangedCharSetException](../../ChangedCharSetException.md "class in javax.swing.text")

    Handle a start tag. The new tag is pushed
    onto the tag stack. The attribute list is
    checked for required attributes.

    Parameters:
    :   `tag` - the tag

    Throws:
    :   `ChangedCharSetException` - if the document charset was changed
  + ### endTag

    protected void endTag(boolean omitted)

    Handle an end tag. The end tag is popped
    from the tag stack.

    Parameters:
    :   `omitted` - `true` if the tag is no actually present in the
        document, but is supposed by the parser
  + ### markFirstTime

    protected void markFirstTime([Element](Element.md "class in javax.swing.text.html.parser") elem)

    Marks the first time a tag has been seen in a document

    Parameters:
    :   `elem` - the element represented by the tag
  + ### parseDTDMarkup

    public [String](../../../../../../java.base/java/lang/String.md "class in java.lang") parseDTDMarkup()
    throws [IOException](../../../../../../java.base/java/io/IOException.md "class in java.io")

    Parses the Document Type Declaration markup declaration.
    Currently ignores it.

    Returns:
    :   the string representation of the markup declaration

    Throws:
    :   `IOException` - if an I/O error occurs
  + ### parseMarkupDeclarations

    protected boolean parseMarkupDeclarations([StringBuffer](../../../../../../java.base/java/lang/StringBuffer.md "class in java.lang") strBuff)
    throws [IOException](../../../../../../java.base/java/io/IOException.md "class in java.io")

    Parse markup declarations.
    Currently only handles the Document Type Declaration markup.
    Returns true if it is a markup declaration false otherwise.

    Parameters:
    :   `strBuff` - the markup declaration

    Returns:
    :   `true` if this is a valid markup declaration;
        otherwise `false`

    Throws:
    :   `IOException` - if an I/O error occurs
  + ### parse

    public void parse([Reader](../../../../../../java.base/java/io/Reader.md "class in java.io") in)
    throws [IOException](../../../../../../java.base/java/io/IOException.md "class in java.io")

    Parse an HTML stream, given a DTD.

    Parameters:
    :   `in` - the reader to read the source from

    Throws:
    :   `IOException` - if an I/O error occurs
  + ### getCurrentPos

    protected int getCurrentPos()

    Returns the current position.

    Returns:
    :   the current position