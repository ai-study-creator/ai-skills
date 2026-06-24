Module [java.desktop](../../../../../module-summary.md)

Package [javax.swing.text.html.parser](package-summary.md)

# Class DocumentParser

[java.lang.Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.html.parser.Parser](Parser.md "class in javax.swing.text.html.parser")

javax.swing.text.html.parser.DocumentParser

All Implemented Interfaces:
:   `DTDConstants`

---

public class DocumentParser
extends [Parser](Parser.md "class in javax.swing.text.html.parser")

A Parser for HTML Documents (actually, you can specify a DTD, but
you should really only use this class with the html dtd in swing).
Reads an InputStream of HTML and
invokes the appropriate methods in the ParserCallback class. This
is the default parser used by HTMLEditorKit to parse HTML url's.

This will message the callback for all valid tags, as well as
tags that are implied but not explicitly specified. For example, the
html string (<p>blah) only has a p tag defined. The callback
will see the following methods:

1. *handleStartTag(html, ...)*
2. *handleStartTag(head, ...)*
3. *handleEndTag(head)*
4. *handleStartTag(body, ...)*
5. *handleStartTag(p, ...)*
6. *handleText(...)*
7. *handleEndTag(p)*
8. *handleEndTag(body)*
9. *handleEndTag(html)*

The items in *italic* are implied, that is, although they were not
explicitly specified, to be correct html they should have been present
(head isn't necessary, but it is still generated). For tags that
are implied, the AttributeSet argument will have a value of
`Boolean.TRUE` for the key
`HTMLEditorKit.ParserCallback.IMPLIED`.

HTML.Attributes defines a type safe enumeration of html attributes.
If an attribute key of a tag is defined in HTML.Attribute, the
HTML.Attribute will be used as the key, otherwise a String will be used.
For example <p foo=bar class=neat> has two attributes. foo is
not defined in HTML.Attribute, where as class is, therefore the
AttributeSet will have two values in it, HTML.Attribute.CLASS with
a String value of 'neat' and the String key 'foo' with a String value of
'bar'.

The position argument will indicate the start of the tag, comment
or text. Similar to arrays, the first character in the stream has a
position of 0. For tags that are
implied the position will indicate
the location of the next encountered tag. In the first example,
the implied start body and html tags will have the same position as the
p tag, and the implied end p, html and body tags will all have the same
position.

As html skips whitespace the position for text will be the position
of the first valid character, eg in the string '\n\n\nblah'
the text 'blah' will have a position of 3, the newlines are skipped.

For attributes that do not have a value, eg in the html
string `<foo blah>` the attribute `blah`
does not have a value, there are two possible values that will be
placed in the AttributeSet's value:

* If the DTD does not contain an definition for the element, or the
  definition does not have an explicit value then the value in the
  AttributeSet will be `HTML.NULL_ATTRIBUTE_VALUE`.* If the DTD contains an explicit value, as in:
    `<!ATTLIST OPTION selected (selected) #IMPLIED>`
    this value from the dtd (in this case selected) will be used.

Once the stream has been parsed, the callback is notified of the most
likely end of line string. The end of line string will be one of
\n, \r or \r\n, which ever is encountered the most in parsing the
stream.

* ## Field Summary

  ### Fields inherited from class javax.swing.text.html.parser.[Parser](Parser.md "class in javax.swing.text.html.parser")

  `dtd, strict`

  ### Fields inherited from interface javax.swing.text.html.parser.[DTDConstants](DTDConstants.md "interface in javax.swing.text.html.parser")

  `ANY, CDATA, CONREF, CURRENT, DEFAULT, EMPTY, ENDTAG, ENTITIES, ENTITY, FIXED, GENERAL, ID, IDREF, IDREFS, IMPLIED, MD, MODEL, MS, NAME, NAMES, NMTOKEN, NMTOKENS, NOTATION, NUMBER, NUMBERS, NUTOKEN, NUTOKENS, PARAMETER, PI, PUBLIC, RCDATA, REQUIRED, SDATA, STARTTAG, SYSTEM`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DocumentParser(DTD dtd)`

  Creates document parser with the specified `dtd`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `handleComment(char[] text)`

  Called when an HTML comment is encountered.

  `protected void`

  `handleEmptyTag(TagElement tag)`

  Handle Empty Tag.

  `protected void`

  `handleEndTag(TagElement tag)`

  Handle End Tag.

  `protected void`

  `handleError(int ln,
  String errorMsg)`

  An error has occurred.

  `protected void`

  `handleStartTag(TagElement tag)`

  Handle Start Tag.

  `protected void`

  `handleText(char[] data)`

  Handle Text.

  `void`

  `parse(Reader in,
  HTMLEditorKit.ParserCallback callback,
  boolean ignoreCharSet)`

  Parse an HTML stream, given a DTD.

  ### Methods inherited from class javax.swing.text.html.parser.[Parser](Parser.md "class in javax.swing.text.html.parser")

  `endTag, error, error, error, error, flushAttributes, getAttributes, getCurrentLine, getCurrentPos, handleEOFInComment, handleTitle, makeTag, makeTag, markFirstTime, parse, parseDTDMarkup, parseMarkupDeclarations, startTag`

  ### Methods inherited from class java.lang.[Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DocumentParser

    public DocumentParser([DTD](DTD.md "class in javax.swing.text.html.parser") dtd)

    Creates document parser with the specified `dtd`.

    Parameters:
    :   `dtd` - the dtd.
* ## Method Details

  + ### parse

    public void parse([Reader](../../../../../../java.base/java/io/Reader.md "class in java.io") in,
    [HTMLEditorKit.ParserCallback](../HTMLEditorKit.ParserCallback.md "class in javax.swing.text.html") callback,
    boolean ignoreCharSet)
    throws [IOException](../../../../../../java.base/java/io/IOException.md "class in java.io")

    Parse an HTML stream, given a DTD.

    Parameters:
    :   `in` - the reader to read the source from
    :   `callback` - the callback
    :   `ignoreCharSet` - if `true` the charset is ignored

    Throws:
    :   `IOException` - if an I/O error occurs
  + ### handleStartTag

    protected void handleStartTag([TagElement](TagElement.md "class in javax.swing.text.html.parser") tag)

    Handle Start Tag.

    Overrides:
    :   `handleStartTag` in class `Parser`

    Parameters:
    :   `tag` - the tag being handled
  + ### handleComment

    protected void handleComment(char[] text)

    Description copied from class: `Parser`

    Called when an HTML comment is encountered.

    Overrides:
    :   `handleComment` in class `Parser`

    Parameters:
    :   `text` - the comment being handled
  + ### handleEmptyTag

    protected void handleEmptyTag([TagElement](TagElement.md "class in javax.swing.text.html.parser") tag)
    throws [ChangedCharSetException](../../ChangedCharSetException.md "class in javax.swing.text")

    Handle Empty Tag.

    Overrides:
    :   `handleEmptyTag` in class `Parser`

    Parameters:
    :   `tag` - the tag being handled

    Throws:
    :   `ChangedCharSetException` - if the document charset was changed
  + ### handleEndTag

    protected void handleEndTag([TagElement](TagElement.md "class in javax.swing.text.html.parser") tag)

    Handle End Tag.

    Overrides:
    :   `handleEndTag` in class `Parser`

    Parameters:
    :   `tag` - the tag being handled
  + ### handleText

    protected void handleText(char[] data)

    Handle Text.

    Overrides:
    :   `handleText` in class `Parser`

    Parameters:
    :   `data` - the section text
  + ### handleError

    protected void handleError(int ln,
    [String](../../../../../../java.base/java/lang/String.md "class in java.lang") errorMsg)

    Description copied from class: `Parser`

    An error has occurred.

    Overrides:
    :   `handleError` in class `Parser`

    Parameters:
    :   `ln` - the number of line containing the error
    :   `errorMsg` - the error message