Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.html](package-summary.md)

# Class HTML

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.html.HTML

---

public class HTML
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

Constants used in the `HTMLDocument`. These
are basically tag and attribute definitions.

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static final class`

  `HTML.Attribute`

  Typesafe enumeration representing an HTML
  attribute.

  `static class`

  `HTML.Tag`

  Typesafe enumeration for an HTML tag.

  `static class`

  `HTML.UnknownTag`

  Class represents unknown HTML tag.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `NULL_ATTRIBUTE_VALUE`

  `NULL_ATTRIBUTE_VALUE` used in cases where the value for the attribute has not
  been specified.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `HTML()`

  Constructs a `HTML`.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static HTML.Attribute[]`

  `getAllAttributeKeys()`

  Returns the set of HTML attributes recognized.

  `static HTML.Tag[]`

  `getAllTags()`

  Returns the set of actual HTML tags that
  are recognized by the default HTML reader.

  `static HTML.Attribute`

  `getAttributeKey(String attName)`

  Fetches an attribute constant for a well-known attribute name
  (i.e.

  `static int`

  `getIntegerAttributeValue(AttributeSet attr,
  HTML.Attribute key,
  int def)`

  Fetches an integer attribute value.

  `static HTML.Tag`

  `getTag(String tagName)`

  Fetches a tag constant for a well-known tag name (i.e.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### NULL\_ATTRIBUTE\_VALUE

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") NULL\_ATTRIBUTE\_VALUE

    `NULL_ATTRIBUTE_VALUE` used in cases where the value for the attribute has not
    been specified.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.text.html.HTML.NULL_ATTRIBUTE_VALUE)
* ## Constructor Details

  + ### HTML

    public HTML()

    Constructs a `HTML`.
* ## Method Details

  + ### getAllTags

    public static [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html")[] getAllTags()

    Returns the set of actual HTML tags that
    are recognized by the default HTML reader.
    This set does not include tags that are
    manufactured by the reader.

    Returns:
    :   the set of actual HTML tags that
        are recognized by the default HTML reader
  + ### getTag

    public static [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") getTag([String](../../../../../java.base/java/lang/String.md "class in java.lang") tagName)

    Fetches a tag constant for a well-known tag name (i.e. one of
    the tags in the set {A, ADDRESS, APPLET, AREA, B,
    BASE, BASEFONT, BIG,
    BLOCKQUOTE, BODY, BR, CAPTION, CENTER, CITE, CODE,
    DD, DFN, DIR, DIV, DL, DT, EM, FONT, FORM, FRAME,
    FRAMESET, H1, H2, H3, H4, H5, H6, HEAD, HR, HTML,
    I, IMG, INPUT, ISINDEX, KBD, LI, LINK, MAP, MENU,
    META, NOBR, NOFRAMES, OBJECT, OL, OPTION, P, PARAM,
    PRE, SAMP, SCRIPT, SELECT, SMALL, SPAN, STRIKE, S,
    STRONG, STYLE, SUB, SUP, TABLE, TD, TEXTAREA,
    TH, TITLE, TR, TT, U, UL, VAR}. If the given
    name does not represent one of the well-known tags, then
    `null` will be returned.

    Parameters:
    :   `tagName` - the `String` name requested

    Returns:
    :   a tag constant corresponding to the `tagName`,
        or `null` if not found
  + ### getIntegerAttributeValue

    public static int getIntegerAttributeValue([AttributeSet](../AttributeSet.md "interface in javax.swing.text") attr,
    [HTML.Attribute](HTML.Attribute.md "class in javax.swing.text.html") key,
    int def)

    Fetches an integer attribute value. Attribute values
    are stored as a string, and this is a convenience method
    to convert to an actual integer.

    Parameters:
    :   `attr` - the set of attributes to use to try to fetch a value
    :   `key` - the key to use to fetch the value
    :   `def` - the default value to use if the attribute isn't
        defined or there is an error converting to an integer

    Returns:
    :   an attribute value
  + ### getAllAttributeKeys

    public static [HTML.Attribute](HTML.Attribute.md "class in javax.swing.text.html")[] getAllAttributeKeys()

    Returns the set of HTML attributes recognized.

    Returns:
    :   the set of HTML attributes recognized
  + ### getAttributeKey

    public static [HTML.Attribute](HTML.Attribute.md "class in javax.swing.text.html") getAttributeKey([String](../../../../../java.base/java/lang/String.md "class in java.lang") attName)

    Fetches an attribute constant for a well-known attribute name
    (i.e. one of the attributes in the set {FACE, COMMENT, SIZE,
    COLOR, CLEAR, BACKGROUND, BGCOLOR, TEXT, LINK, VLINK, ALINK,
    WIDTH, HEIGHT, ALIGN, NAME, HREF, REL, REV, TITLE, TARGET,
    SHAPE, COORDS, ISMAP, NOHREF, ALT, ID, SRC, HSPACE, VSPACE,
    USEMAP, LOWSRC, CODEBASE, CODE, ARCHIVE, VALUE, VALUETYPE,
    TYPE, CLASS, STYLE, LANG, DIR, DECLARE, CLASSID, DATA, CODETYPE,
    STANDBY, BORDER, SHAPES, NOSHADE, COMPACT, START, ACTION, METHOD,
    ENCTYPE, CHECKED, MAXLENGTH, MULTIPLE, SELECTED, ROWS, COLS,
    DUMMY, CELLSPACING, CELLPADDING, VALIGN, HALIGN, NOWRAP, ROWSPAN,
    COLSPAN, PROMPT, HTTPEQUIV, CONTENT, LANGUAGE, VERSION, N,
    FRAMEBORDER, MARGINWIDTH, MARGINHEIGHT, SCROLLING, NORESIZE,
    MEDIA, ENDTAG}).
    If the given name does not represent one of the well-known attributes,
    then `null` will be returned.

    Parameters:
    :   `attName` - the `String` requested

    Returns:
    :   the `Attribute` corresponding to `attName`