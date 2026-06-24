Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.html](package-summary.md)

# Class HTML.Tag

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.html.HTML.Tag

Direct Known Subclasses:
:   `HTML.UnknownTag`

Enclosing class:
:   `HTML`

---

public static class HTML.Tag
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

Typesafe enumeration for an HTML tag. Although the
set of HTML tags is a closed set, we have left the
set open so that people can add their own tag types
to their custom parser and still communicate to the
reader.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final HTML.Tag`

  `A`

  Tag <a>

  `static final HTML.Tag`

  `ADDRESS`

  Tag <address>

  `static final HTML.Tag`

  `APPLET`

  Tag <applet>

  `static final HTML.Tag`

  `AREA`

  Tag <area>

  `static final HTML.Tag`

  `B`

  Tag <b>

  `static final HTML.Tag`

  `BASE`

  Tag <base>

  `static final HTML.Tag`

  `BASEFONT`

  Tag <basefont>

  `static final HTML.Tag`

  `BIG`

  Tag <big>

  `static final HTML.Tag`

  `BLOCKQUOTE`

  Tag <blockquote>

  `static final HTML.Tag`

  `BODY`

  Tag <body>

  `static final HTML.Tag`

  `BR`

  Tag <br>

  `static final HTML.Tag`

  `CAPTION`

  Tag <caption>

  `static final HTML.Tag`

  `CENTER`

  Tag <center>

  `static final HTML.Tag`

  `CITE`

  Tag <cite>

  `static final HTML.Tag`

  `CODE`

  Tag <code>

  `static final HTML.Tag`

  `COMMENT`

  All comments are labeled with this tag.

  `static final HTML.Tag`

  `CONTENT`

  All text content is labeled with this tag.

  `static final HTML.Tag`

  `DD`

  Tag <dd>

  `static final HTML.Tag`

  `DFN`

  Tag <dfn>

  `static final HTML.Tag`

  `DIR`

  Tag <dir>

  `static final HTML.Tag`

  `DIV`

  Tag <div>

  `static final HTML.Tag`

  `DL`

  Tag <dl>

  `static final HTML.Tag`

  `DT`

  Tag <dt>

  `static final HTML.Tag`

  `EM`

  Tag <em>

  `static final HTML.Tag`

  `FONT`

  Tag <font>

  `static final HTML.Tag`

  `FORM`

  Tag <form>

  `static final HTML.Tag`

  `FRAME`

  Tag <frame>

  `static final HTML.Tag`

  `FRAMESET`

  Tag <frameset>

  `static final HTML.Tag`

  `H1`

  Tag <h1>

  `static final HTML.Tag`

  `H2`

  Tag <h2>

  `static final HTML.Tag`

  `H3`

  Tag <h3>

  `static final HTML.Tag`

  `H4`

  Tag <h4>

  `static final HTML.Tag`

  `H5`

  Tag <h5>

  `static final HTML.Tag`

  `H6`

  Tag <h6>

  `static final HTML.Tag`

  `HEAD`

  Tag <head>

  `static final HTML.Tag`

  `HR`

  Tag <hr>

  `static final HTML.Tag`

  `HTML`

  Tag <html>

  `static final HTML.Tag`

  `I`

  Tag <i>

  `static final HTML.Tag`

  `IMG`

  Tag <img>

  `static final HTML.Tag`

  `IMPLIED`

  All text content must be in a paragraph element.

  `static final HTML.Tag`

  `INPUT`

  Tag <input>

  `static final HTML.Tag`

  `ISINDEX`

  Tag <isindex>

  `static final HTML.Tag`

  `KBD`

  Tag <kbd>

  `static final HTML.Tag`

  `LI`

  Tag <li>

  `static final HTML.Tag`

  `LINK`

  Tag <link>

  `static final HTML.Tag`

  `MAP`

  Tag <map>

  `static final HTML.Tag`

  `MENU`

  Tag <menu>

  `static final HTML.Tag`

  `META`

  Tag <meta>

  `static final HTML.Tag`

  `NOFRAMES`

  Tag <noframes>

  `static final HTML.Tag`

  `OBJECT`

  Tag <object>

  `static final HTML.Tag`

  `OL`

  Tag <ol>

  `static final HTML.Tag`

  `OPTION`

  Tag <option>

  `static final HTML.Tag`

  `P`

  Tag <p>

  `static final HTML.Tag`

  `PARAM`

  Tag <param>

  `static final HTML.Tag`

  `PRE`

  Tag <pre>

  `static final HTML.Tag`

  `S`

  Tag <s>

  `static final HTML.Tag`

  `SAMP`

  Tag <samp>

  `static final HTML.Tag`

  `SCRIPT`

  Tag <script>

  `static final HTML.Tag`

  `SELECT`

  Tag <select>

  `static final HTML.Tag`

  `SMALL`

  Tag <small>

  `static final HTML.Tag`

  `SPAN`

  Tag <span>

  `static final HTML.Tag`

  `STRIKE`

  Tag <strike>

  `static final HTML.Tag`

  `STRONG`

  Tag <strong>

  `static final HTML.Tag`

  `STYLE`

  Tag <style>

  `static final HTML.Tag`

  `SUB`

  Tag <sub>

  `static final HTML.Tag`

  `SUP`

  Tag <sup>

  `static final HTML.Tag`

  `TABLE`

  Tag <table>

  `static final HTML.Tag`

  `TD`

  Tag <td>

  `static final HTML.Tag`

  `TEXTAREA`

  Tag <textarea>

  `static final HTML.Tag`

  `TH`

  Tag <th>

  `static final HTML.Tag`

  `TITLE`

  Tag <title>

  `static final HTML.Tag`

  `TR`

  Tag <tr>

  `static final HTML.Tag`

  `TT`

  Tag <tt>

  `static final HTML.Tag`

  `U`

  Tag <u>

  `static final HTML.Tag`

  `UL`

  Tag <ul>

  `static final HTML.Tag`

  `VAR`

  Tag <var>
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `Tag()`

  Constructs a `Tag`.

  `protected`

  `Tag(String id)`

  Creates a new `Tag` with the specified `id`,
  and with `causesBreak` and `isBlock`
  set to `false`.

  `protected`

  `Tag(String id,
  boolean causesBreak,
  boolean isBlock)`

  Creates a new `Tag` with the specified `id`;
  `causesBreak` and `isBlock` are defined
  by the user.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `breaksFlow()`

  Returns `true` if this tag causes a
  line break to the flow of data, otherwise returns
  `false`.

  `boolean`

  `isBlock()`

  Returns `true` if this tag is a block
  tag, which is a tag used to add structure to a
  document.

  `boolean`

  `isPreformatted()`

  Returns `true` if this tag is pre-formatted,
  which is true if the tag is either `PRE` or
  `TEXTAREA`.

  `String`

  `toString()`

  Returns the string representation of the
  tag.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### A

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") A

    Tag <a>
  + ### ADDRESS

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") ADDRESS

    Tag <address>
  + ### APPLET

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") APPLET

    Tag <applet>
  + ### AREA

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") AREA

    Tag <area>
  + ### B

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") B

    Tag <b>
  + ### BASE

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") BASE

    Tag <base>
  + ### BASEFONT

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") BASEFONT

    Tag <basefont>
  + ### BIG

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") BIG

    Tag <big>
  + ### BLOCKQUOTE

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") BLOCKQUOTE

    Tag <blockquote>
  + ### BODY

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") BODY

    Tag <body>
  + ### BR

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") BR

    Tag <br>
  + ### CAPTION

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") CAPTION

    Tag <caption>
  + ### CENTER

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") CENTER

    Tag <center>
  + ### CITE

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") CITE

    Tag <cite>
  + ### CODE

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") CODE

    Tag <code>
  + ### DD

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") DD

    Tag <dd>
  + ### DFN

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") DFN

    Tag <dfn>
  + ### DIR

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") DIR

    Tag <dir>
  + ### DIV

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") DIV

    Tag <div>
  + ### DL

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") DL

    Tag <dl>
  + ### DT

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") DT

    Tag <dt>
  + ### EM

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") EM

    Tag <em>
  + ### FONT

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") FONT

    Tag <font>
  + ### FORM

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") FORM

    Tag <form>
  + ### FRAME

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") FRAME

    Tag <frame>
  + ### FRAMESET

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") FRAMESET

    Tag <frameset>
  + ### H1

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") H1

    Tag <h1>
  + ### H2

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") H2

    Tag <h2>
  + ### H3

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") H3

    Tag <h3>
  + ### H4

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") H4

    Tag <h4>
  + ### H5

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") H5

    Tag <h5>
  + ### H6

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") H6

    Tag <h6>
  + ### HEAD

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") HEAD

    Tag <head>
  + ### HR

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") HR

    Tag <hr>
  + ### HTML

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") HTML

    Tag <html>
  + ### I

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") I

    Tag <i>
  + ### IMG

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") IMG

    Tag <img>
  + ### INPUT

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") INPUT

    Tag <input>
  + ### ISINDEX

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") ISINDEX

    Tag <isindex>
  + ### KBD

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") KBD

    Tag <kbd>
  + ### LI

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") LI

    Tag <li>
  + ### LINK

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") LINK

    Tag <link>
  + ### MAP

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") MAP

    Tag <map>
  + ### MENU

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") MENU

    Tag <menu>
  + ### META

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") META

    Tag <meta>
  + ### NOFRAMES

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") NOFRAMES

    Tag <noframes>
  + ### OBJECT

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") OBJECT

    Tag <object>
  + ### OL

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") OL

    Tag <ol>
  + ### OPTION

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") OPTION

    Tag <option>
  + ### P

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") P

    Tag <p>
  + ### PARAM

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") PARAM

    Tag <param>
  + ### PRE

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") PRE

    Tag <pre>
  + ### SAMP

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") SAMP

    Tag <samp>
  + ### SCRIPT

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") SCRIPT

    Tag <script>
  + ### SELECT

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") SELECT

    Tag <select>
  + ### SMALL

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") SMALL

    Tag <small>
  + ### SPAN

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") SPAN

    Tag <span>
  + ### STRIKE

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") STRIKE

    Tag <strike>
  + ### S

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") S

    Tag <s>
  + ### STRONG

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") STRONG

    Tag <strong>
  + ### STYLE

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") STYLE

    Tag <style>
  + ### SUB

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") SUB

    Tag <sub>
  + ### SUP

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") SUP

    Tag <sup>
  + ### TABLE

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") TABLE

    Tag <table>
  + ### TD

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") TD

    Tag <td>
  + ### TEXTAREA

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") TEXTAREA

    Tag <textarea>
  + ### TH

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") TH

    Tag <th>
  + ### TITLE

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") TITLE

    Tag <title>
  + ### TR

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") TR

    Tag <tr>
  + ### TT

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") TT

    Tag <tt>
  + ### U

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") U

    Tag <u>
  + ### UL

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") UL

    Tag <ul>
  + ### VAR

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") VAR

    Tag <var>
  + ### IMPLIED

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") IMPLIED

    All text content must be in a paragraph element.
    If a paragraph didn't exist when content was
    encountered, a paragraph is manufactured.

    This is a tag synthesized by the HTML reader.
    Since elements are identified by their tag type,
    we create a some fake tag types to mark the elements
    that were manufactured.
  + ### CONTENT

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") CONTENT

    All text content is labeled with this tag.

    This is a tag synthesized by the HTML reader.
    Since elements are identified by their tag type,
    we create a some fake tag types to mark the elements
    that were manufactured.
  + ### COMMENT

    public static final [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") COMMENT

    All comments are labeled with this tag.

    This is a tag synthesized by the HTML reader.
    Since elements are identified by their tag type,
    we create a some fake tag types to mark the elements
    that were manufactured.
* ## Constructor Details

  + ### Tag

    public Tag()

    Constructs a `Tag`.

    Since:
    :   1.3
  + ### Tag

    protected Tag([String](../../../../../java.base/java/lang/String.md "class in java.lang") id)

    Creates a new `Tag` with the specified `id`,
    and with `causesBreak` and `isBlock`
    set to `false`.

    Parameters:
    :   `id` - the id of the new tag
  + ### Tag

    protected Tag([String](../../../../../java.base/java/lang/String.md "class in java.lang") id,
    boolean causesBreak,
    boolean isBlock)

    Creates a new `Tag` with the specified `id`;
    `causesBreak` and `isBlock` are defined
    by the user.

    Parameters:
    :   `id` - the id of the new tag
    :   `causesBreak` - `true` if this tag
        causes a break to the flow of data
    :   `isBlock` - `true` if the tag is used
        to add structure to a document
* ## Method Details

  + ### isBlock

    public boolean isBlock()

    Returns `true` if this tag is a block
    tag, which is a tag used to add structure to a
    document.

    Returns:
    :   `true` if this tag is a block
        tag, otherwise returns `false`
  + ### breaksFlow

    public boolean breaksFlow()

    Returns `true` if this tag causes a
    line break to the flow of data, otherwise returns
    `false`.

    Returns:
    :   `true` if this tag causes a
        line break to the flow of data, otherwise returns
        `false`
  + ### isPreformatted

    public boolean isPreformatted()

    Returns `true` if this tag is pre-formatted,
    which is true if the tag is either `PRE` or
    `TEXTAREA`.

    Returns:
    :   `true` if this tag is pre-formatted,
        otherwise returns `false`
  + ### toString

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns the string representation of the
    tag.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   the `String` representation of the tag