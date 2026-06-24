Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.html](package-summary.md)

# Class HTMLDocument

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.AbstractDocument](../AbstractDocument.md "class in javax.swing.text")

[javax.swing.text.DefaultStyledDocument](../DefaultStyledDocument.md "class in javax.swing.text")

javax.swing.text.html.HTMLDocument

All Implemented Interfaces:
:   `Serializable`, `Document`, `StyledDocument`

---

public class HTMLDocument
extends [DefaultStyledDocument](../DefaultStyledDocument.md "class in javax.swing.text")

A document that models HTML. The purpose of this model is to
support both browsing and editing. As a result, the structure
described by an HTML document is not exactly replicated by default.
The element structure that is modeled by default, is built by the
class `HTMLDocument.HTMLReader`, which implements the
`HTMLEditorKit.ParserCallback` protocol that the parser
expects. To change the structure one can subclass
`HTMLReader`, and reimplement the method [`getReader(int)`](#getReader(int)) to return the new reader implementation. The
documentation for `HTMLReader` should be consulted for
the details of the default structure created. The intent is that
the document be non-lossy (although reproducing the HTML format may
result in a different format).

The document models only HTML, and makes no attempt to store
view attributes in it. The elements are identified by the
`StyleContext.NameAttribute` attribute, which should
always have a value of type `HTML.Tag` that identifies
the kind of element. Some of the elements (such as comments) are
synthesized. The `HTMLFactory` uses this attribute to
determine what kind of view to build.

This document supports incremental loading. The
`TokenThreshold` property controls how much of the parse
is buffered before trying to update the element structure of the
document. This property is set by the `EditorKit` so
that subclasses can disable it.

The `Base` property determines the URL against which
relative URLs are resolved. By default, this will be the
`Document.StreamDescriptionProperty` if the value of the
property is a URL. If a <BASE> tag is encountered, the base
will become the URL specified by that tag. Because the base URL is
a property, it can of course be set directly.

The default content storage mechanism for this document is a gap
buffer (`GapContent`). Alternatives can be supplied by
using the constructor that takes a `Content`
implementation.

## Modifying HTMLDocument

In addition to the methods provided by Document and
StyledDocument for mutating an HTMLDocument, HTMLDocument provides
a number of convenience methods. The following methods can be used
to insert HTML content into an existing document.

* [`setInnerHTML(Element, String)`](#setInnerHTML(javax.swing.text.Element,java.lang.String))
* [`setOuterHTML(Element, String)`](#setOuterHTML(javax.swing.text.Element,java.lang.String))
* [`insertBeforeStart(Element, String)`](#insertBeforeStart(javax.swing.text.Element,java.lang.String))
* [`insertAfterStart(Element, String)`](#insertAfterStart(javax.swing.text.Element,java.lang.String))
* [`insertBeforeEnd(Element, String)`](#insertBeforeEnd(javax.swing.text.Element,java.lang.String))
* [`insertAfterEnd(Element, String)`](#insertAfterEnd(javax.swing.text.Element,java.lang.String))

The following examples illustrate using these methods. Each
example assumes the HTML document is initialized in the following
way:

```
 JEditorPane p = new JEditorPane();
 p.setContentType("text/html");
 p.setText("..."); // Document text is provided below.
 HTMLDocument d = (HTMLDocument) p.getDocument();
```

With the following HTML content:

```
 <html>
   <head>
     <title>An example HTMLDocument</title>
     <style type="text/css">
       div { background-color: silver; }
       ul { color: blue; }
     </style>
   </head>
   <body>
     <div id="BOX">
       <p>Paragraph 1</p>
       <p>Paragraph 2</p>
     </div>
   </body>
 </html>
```

All the methods for modifying an HTML document require an [`Element`](../Element.md "interface in javax.swing.text"). Elements can be obtained from an HTML document by using
the method [`getElement(Element e, Object attribute, Object value)`](#getElement(javax.swing.text.Element,java.lang.Object,java.lang.Object)). It returns the first descendant element that contains the
specified attribute with the given value, in depth-first order.
For example, `d.getElement(d.getDefaultRootElement(),
StyleConstants.NameAttribute, HTML.Tag.P)` returns the first
paragraph element.

A convenient shortcut for locating elements is the method [`getElement(String)`](#getElement(java.lang.String)); returns an element whose `ID`
attribute matches the specified value. For example,
`d.getElement("BOX")` returns the `DIV`
element.

The [`getIterator(HTML.Tag t)`](#getIterator(javax.swing.text.html.HTML.Tag)) method can also be used for
finding all occurrences of the specified HTML tag in the
document.

### Inserting elements

Elements can be inserted before or after the existing children
of any non-leaf element by using the methods
`insertAfterStart` and `insertBeforeEnd`.
For example, if `e` is the `DIV` element,
`d.insertAfterStart(e, "<ul><li>List
Item</li></ul>")` inserts the list before the first
paragraph, and `d.insertBeforeEnd(e, "<ul><li>List
Item</li></ul>")` inserts the list after the last
paragraph. The `DIV` block becomes the parent of the
newly inserted elements.

Sibling elements can be inserted before or after any element by
using the methods `insertBeforeStart` and
`insertAfterEnd`. For example, if `e` is the
`DIV` element, `d.insertBeforeStart(e,
"<ul><li>List Item</li></ul>")` inserts the list
before the `DIV` element, and `d.insertAfterEnd(e,
"<ul><li>List Item</li></ul>")` inserts the list
after the `DIV` element. The newly inserted elements
become siblings of the `DIV` element.

### Replacing elements

Elements and all their descendants can be replaced by using the
methods `setInnerHTML` and `setOuterHTML`.
For example, if `e` is the `DIV` element,
`d.setInnerHTML(e, "<ul><li>List
Item</li></ul>")` replaces all children paragraphs with
the list, and `d.setOuterHTML(e, "<ul><li>List
Item</li></ul>")` replaces the `DIV` element
itself. In latter case the parent of the list is the
`BODY` element.

### Summary

The following table shows the example document and the results
of various methods described above.

HTML Content of example above

| Example | `insertAfterStart` | `insertBeforeEnd` | `insertBeforeStart` | `insertAfterEnd` | `setInnerHTML` | `setOuterHTML` |
| Paragraph 1  Paragraph 2 | * List Item   Paragraph 1  Paragraph 2 | Paragraph 1  Paragraph 2   * List Item | * List Item   Paragraph 1  Paragraph 2 | Paragraph 1  Paragraph 2   * List Item | * List Item | * List Item |

**Warning:** Serialized objects of this class will
not be compatible with future Swing releases. The current
serialization support is appropriate for short term storage or RMI
between applications running the same version of Swing. As of 1.4,
support for long term storage of all JavaBeans
has been added to the
`java.beans` package. Please see [`XMLEncoder`](../../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `class`

  `HTMLDocument.BlockElement`

  An element that represents a structural *block* of
  HTML.

  `class`

  `HTMLDocument.HTMLReader`

  An HTML reader to load an HTML document with an HTML
  element structure.

  `static class`

  `HTMLDocument.Iterator`

  An iterator to iterate over a particular type of
  tag.

  `class`

  `HTMLDocument.RunElement`

  An element that represents a chunk of text that has
  a set of HTML character level attributes assigned to
  it.

  ## Nested classes/interfaces inherited from class javax.swing.text.[DefaultStyledDocument](../DefaultStyledDocument.md "class in javax.swing.text")

  `DefaultStyledDocument.AttributeUndoableEdit, DefaultStyledDocument.ElementBuffer, DefaultStyledDocument.ElementSpec, DefaultStyledDocument.SectionElement`

  ## Nested classes/interfaces inherited from class javax.swing.text.[AbstractDocument](../AbstractDocument.md "class in javax.swing.text")

  `AbstractDocument.AbstractElement, AbstractDocument.AttributeContext, AbstractDocument.BranchElement, AbstractDocument.Content, AbstractDocument.DefaultDocumentEvent, AbstractDocument.ElementEdit, AbstractDocument.LeafElement`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `AdditionalComments`

  Document property key value.

  ### Fields inherited from class javax.swing.text.[DefaultStyledDocument](../DefaultStyledDocument.md "class in javax.swing.text")

  `buffer, BUFFER_SIZE_DEFAULT`

  ### Fields inherited from class javax.swing.text.[AbstractDocument](../AbstractDocument.md "class in javax.swing.text")

  `BAD_LOCATION, BidiElementName, ContentElementName, ElementNameAttribute, listenerList, ParagraphElementName, SectionElementName`

  ### Fields inherited from interface javax.swing.text.[Document](../Document.md "interface in javax.swing.text")

  `StreamDescriptionProperty, TitleProperty`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `HTMLDocument()`

  Constructs an HTML document using the default buffer size
  and a default `StyleSheet`.

  `HTMLDocument(AbstractDocument.Content c,
  StyleSheet styles)`

  Constructs an HTML document with the given content
  storage implementation and the given style/attribute
  storage mechanism.

  `HTMLDocument(StyleSheet styles)`

  Constructs an HTML document with the default content
  storage implementation and the specified style/attribute
  storage mechanism.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `create(DefaultStyledDocument.ElementSpec[] data)`

  Replaces the contents of the document with the given
  element specifications.

  `protected Element`

  `createBranchElement(Element parent,
  AttributeSet a)`

  Creates a document branch element, that can contain other elements.

  `protected AbstractDocument.AbstractElement`

  `createDefaultRoot()`

  Creates the root element to be used to represent the
  default document structure.

  `protected Element`

  `createLeafElement(Element parent,
  AttributeSet a,
  int p0,
  int p1)`

  Creates a document leaf element that directly represents
  text (doesn't have any children).

  `protected void`

  `fireChangedUpdate(DocumentEvent e)`

  Notifies all listeners that have registered interest for
  notification on this event type.

  `protected void`

  `fireUndoableEditUpdate(UndoableEditEvent e)`

  Notifies all listeners that have registered interest for
  notification on this event type.

  `URL`

  `getBase()`

  Returns the location to resolve relative URLs against.

  `Element`

  `getElement(String id)`

  Returns the element that has the given id `Attribute`.

  `Element`

  `getElement(Element e,
  Object attribute,
  Object value)`

  Returns the child element of `e` that contains the
  attribute, `attribute` with value `value`, or
  `null` if one isn't found.

  `HTMLDocument.Iterator`

  `getIterator(HTML.Tag t)`

  Fetches an iterator for the specified HTML tag.

  `HTMLEditorKit.Parser`

  `getParser()`

  Returns the parser that is used when inserting HTML into the existing
  document.

  `boolean`

  `getPreservesUnknownTags()`

  Returns the behavior the parser observes when encountering
  unknown tags.

  `HTMLEditorKit.ParserCallback`

  `getReader(int pos)`

  Fetches the reader for the parser to use when loading the document
  with HTML.

  `HTMLEditorKit.ParserCallback`

  `getReader(int pos,
  int popDepth,
  int pushDepth,
  HTML.Tag insertTag)`

  Returns the reader for the parser to use to load the document
  with HTML.

  `StyleSheet`

  `getStyleSheet()`

  Fetches the `StyleSheet` with the document-specific display
  rules (CSS) that were specified in the HTML document itself.

  `int`

  `getTokenThreshold()`

  Gets the number of tokens to buffer before trying to update
  the documents element structure.

  `protected void`

  `insert(int offset,
  DefaultStyledDocument.ElementSpec[] data)`

  Inserts new elements in bulk.

  `void`

  `insertAfterEnd(Element elem,
  String htmlText)`

  Inserts the HTML specified as a string after the end of the
  given element.

  `void`

  `insertAfterStart(Element elem,
  String htmlText)`

  Inserts the HTML specified as a string at the start
  of the element.

  `void`

  `insertBeforeEnd(Element elem,
  String htmlText)`

  Inserts the HTML specified as a string at the end of
  the element.

  `void`

  `insertBeforeStart(Element elem,
  String htmlText)`

  Inserts the HTML specified as a string before the start of
  the given element.

  `protected void`

  `insertUpdate(AbstractDocument.DefaultDocumentEvent chng,
  AttributeSet attr)`

  Updates document structure as a result of text insertion.

  `void`

  `processHTMLFrameHyperlinkEvent(HTMLFrameHyperlinkEvent e)`

  Processes `HyperlinkEvents` that
  are generated by documents in an HTML frame.

  `void`

  `setBase(URL u)`

  Sets the location to resolve relative URLs against.

  `void`

  `setInnerHTML(Element elem,
  String htmlText)`

  Replaces the children of the given element with the contents
  specified as an HTML string.

  `void`

  `setOuterHTML(Element elem,
  String htmlText)`

  Replaces the given element in the parent with the contents
  specified as an HTML string.

  `void`

  `setParagraphAttributes(int offset,
  int length,
  AttributeSet s,
  boolean replace)`

  Sets attributes for a paragraph.

  `void`

  `setParser(HTMLEditorKit.Parser parser)`

  Sets the parser that is used by the methods that insert html
  into the existing document, such as `setInnerHTML`,
  and `setOuterHTML`.

  `void`

  `setPreservesUnknownTags(boolean preservesTags)`

  Determines how unknown tags are handled by the parser.

  `void`

  `setTokenThreshold(int n)`

  Sets the number of tokens to buffer before trying to update
  the documents element structure.

  ### Methods inherited from class javax.swing.text.[DefaultStyledDocument](../DefaultStyledDocument.md "class in javax.swing.text")

  `addDocumentListener, addStyle, getBackground, getCharacterElement, getDefaultRootElement, getFont, getForeground, getLogicalStyle, getParagraphElement, getStyle, getStyleNames, removeDocumentListener, removeElement, removeStyle, removeUpdate, setCharacterAttributes, setLogicalStyle, styleChanged`

  ### Methods inherited from class javax.swing.text.[AbstractDocument](../AbstractDocument.md "class in javax.swing.text")

  `addUndoableEditListener, createPosition, dump, fireInsertUpdate, fireRemoveUpdate, getAsynchronousLoadPriority, getAttributeContext, getBidiRootElement, getContent, getCurrentWriter, getDocumentFilter, getDocumentListeners, getDocumentProperties, getEndPosition, getLength, getListeners, getProperty, getRootElements, getStartPosition, getText, getText, getUndoableEditListeners, insertString, postRemoveUpdate, putProperty, readLock, readUnlock, remove, removeUndoableEditListener, render, replace, setAsynchronousLoadPriority, setDocumentFilter, setDocumentProperties, writeLock, writeUnlock`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.swing.text.[Document](../Document.md "interface in javax.swing.text")

  `addUndoableEditListener, createPosition, getEndPosition, getLength, getProperty, getRootElements, getStartPosition, getText, getText, insertString, putProperty, remove, removeUndoableEditListener, render`

* ## Field Details

  + ### AdditionalComments

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") AdditionalComments

    Document property key value. The value for the key will be a Vector
    of Strings that are comments not found in the body.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.text.html.HTMLDocument.AdditionalComments)
* ## Constructor Details

  + ### HTMLDocument

    public HTMLDocument()

    Constructs an HTML document using the default buffer size
    and a default `StyleSheet`. This is a convenience
    method for the constructor
    `HTMLDocument(Content, StyleSheet)`.
  + ### HTMLDocument

    public HTMLDocument([StyleSheet](StyleSheet.md "class in javax.swing.text.html") styles)

    Constructs an HTML document with the default content
    storage implementation and the specified style/attribute
    storage mechanism. This is a convenience method for the
    constructor
    `HTMLDocument(Content, StyleSheet)`.

    Parameters:
    :   `styles` - the styles
  + ### HTMLDocument

    public HTMLDocument([AbstractDocument.Content](../AbstractDocument.Content.md "interface in javax.swing.text") c,
    [StyleSheet](StyleSheet.md "class in javax.swing.text.html") styles)

    Constructs an HTML document with the given content
    storage implementation and the given style/attribute
    storage mechanism.

    Parameters:
    :   `c` - the container for the content
    :   `styles` - the styles
* ## Method Details

  + ### getReader

    public [HTMLEditorKit.ParserCallback](HTMLEditorKit.ParserCallback.md "class in javax.swing.text.html") getReader(int pos)

    Fetches the reader for the parser to use when loading the document
    with HTML. This is implemented to return an instance of
    `HTMLDocument.HTMLReader`.
    Subclasses can reimplement this
    method to change how the document gets structured if desired.
    (For example, to handle custom tags, or structurally represent character
    style elements.)

    Parameters:
    :   `pos` - the starting position

    Returns:
    :   the reader used by the parser to load the document
  + ### getReader

    public [HTMLEditorKit.ParserCallback](HTMLEditorKit.ParserCallback.md "class in javax.swing.text.html") getReader(int pos,
    int popDepth,
    int pushDepth,
    [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") insertTag)

    Returns the reader for the parser to use to load the document
    with HTML. This is implemented to return an instance of
    `HTMLDocument.HTMLReader`.
    Subclasses can reimplement this
    method to change how the document gets structured if desired.
    (For example, to handle custom tags, or structurally represent character
    style elements.)

    This is a convenience method for
    `getReader(int, int, int, HTML.Tag, TRUE)`.

    Parameters:
    :   `pos` - the starting position
    :   `popDepth` - the number of `ElementSpec.EndTagTypes`
        to generate before inserting
    :   `pushDepth` - the number of `ElementSpec.StartTagTypes`
        with a direction of `ElementSpec.JoinNextDirection`
        that should be generated before inserting,
        but after the end tags have been generated
    :   `insertTag` - the first tag to start inserting into document

    Returns:
    :   the reader used by the parser to load the document
  + ### getBase

    public [URL](../../../../../java.base/java/net/URL.md "class in java.net") getBase()

    Returns the location to resolve relative URLs against. By
    default this will be the document's URL if the document
    was loaded from a URL. If a base tag is found and
    can be parsed, it will be used as the base location.

    Returns:
    :   the base location
  + ### setBase

    public void setBase([URL](../../../../../java.base/java/net/URL.md "class in java.net") u)

    Sets the location to resolve relative URLs against. By
    default this will be the document's URL if the document
    was loaded from a URL. If a base tag is found and
    can be parsed, it will be used as the base location.

    This also sets the base of the `StyleSheet`
    to be `u` as well as the base of the document.

    Parameters:
    :   `u` - the desired base URL
  + ### insert

    protected void insert(int offset,
    [DefaultStyledDocument.ElementSpec](../DefaultStyledDocument.ElementSpec.md "class in javax.swing.text")[] data)
    throws [BadLocationException](../BadLocationException.md "class in javax.swing.text")

    Inserts new elements in bulk. This is how elements get created
    in the document. The parsing determines what structure is needed
    and creates the specification as a set of tokens that describe the
    edit while leaving the document free of a write-lock. This method
    can then be called in bursts by the reader to acquire a write-lock
    for a shorter duration (i.e. while the document is actually being
    altered).

    Overrides:
    :   `insert` in class `DefaultStyledDocument`

    Parameters:
    :   `offset` - the starting offset
    :   `data` - the element data

    Throws:
    :   `BadLocationException` - if the given position does not
        represent a valid location in the associated document.
  + ### insertUpdate

    protected void insertUpdate([AbstractDocument.DefaultDocumentEvent](../AbstractDocument.DefaultDocumentEvent.md "class in javax.swing.text") chng,
    [AttributeSet](../AttributeSet.md "interface in javax.swing.text") attr)

    Updates document structure as a result of text insertion. This
    will happen within a write lock. This implementation simply
    parses the inserted content for line breaks and builds up a set
    of instructions for the element buffer.

    Overrides:
    :   `insertUpdate` in class `DefaultStyledDocument`

    Parameters:
    :   `chng` - a description of the document change
    :   `attr` - the attributes
  + ### create

    protected void create([DefaultStyledDocument.ElementSpec](../DefaultStyledDocument.ElementSpec.md "class in javax.swing.text")[] data)

    Replaces the contents of the document with the given
    element specifications. This is called before insert if
    the loading is done in bursts. This is the only method called
    if loading the document entirely in one burst.

    Overrides:
    :   `create` in class `DefaultStyledDocument`

    Parameters:
    :   `data` - the new contents of the document
  + ### setParagraphAttributes

    public void setParagraphAttributes(int offset,
    int length,
    [AttributeSet](../AttributeSet.md "interface in javax.swing.text") s,
    boolean replace)

    Sets attributes for a paragraph.

    This method is thread safe, although most Swing methods
    are not. Please see
    [Concurrency
    in Swing](https://docs.oracle.com/javase/tutorial/uiswing/concurrency/index.html) for more information.

    Specified by:
    :   `setParagraphAttributes` in interface `StyledDocument`

    Overrides:
    :   `setParagraphAttributes` in class `DefaultStyledDocument`

    Parameters:
    :   `offset` - the offset into the paragraph (must be at least 0)
    :   `length` - the number of characters affected (must be at least 0)
    :   `s` - the attributes
    :   `replace` - whether to replace existing attributes, or merge them
  + ### getStyleSheet

    public [StyleSheet](StyleSheet.md "class in javax.swing.text.html") getStyleSheet()

    Fetches the `StyleSheet` with the document-specific display
    rules (CSS) that were specified in the HTML document itself.

    Returns:
    :   the `StyleSheet`
  + ### getIterator

    public [HTMLDocument.Iterator](HTMLDocument.Iterator.md "class in javax.swing.text.html") getIterator([HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") t)

    Fetches an iterator for the specified HTML tag.
    This can be used for things like iterating over the
    set of anchors contained, or iterating over the input
    elements.

    Parameters:
    :   `t` - the requested `HTML.Tag`

    Returns:
    :   the `Iterator` for the given HTML tag

    See Also:
    :   - [`HTML.Tag`](HTML.Tag.md "class in javax.swing.text.html")
  + ### createLeafElement

    protected [Element](../Element.md "interface in javax.swing.text") createLeafElement([Element](../Element.md "interface in javax.swing.text") parent,
    [AttributeSet](../AttributeSet.md "interface in javax.swing.text") a,
    int p0,
    int p1)

    Creates a document leaf element that directly represents
    text (doesn't have any children). This is implemented
    to return an element of type
    `HTMLDocument.RunElement`.

    Overrides:
    :   `createLeafElement` in class `AbstractDocument`

    Parameters:
    :   `parent` - the parent element
    :   `a` - the attributes for the element
    :   `p0` - the beginning of the range (must be at least 0)
    :   `p1` - the end of the range (must be at least p0)

    Returns:
    :   the new element
  + ### createBranchElement

    protected [Element](../Element.md "interface in javax.swing.text") createBranchElement([Element](../Element.md "interface in javax.swing.text") parent,
    [AttributeSet](../AttributeSet.md "interface in javax.swing.text") a)

    Creates a document branch element, that can contain other elements.
    This is implemented to return an element of type
    `HTMLDocument.BlockElement`.

    Overrides:
    :   `createBranchElement` in class `AbstractDocument`

    Parameters:
    :   `parent` - the parent element
    :   `a` - the attributes

    Returns:
    :   the element
  + ### createDefaultRoot

    protected [AbstractDocument.AbstractElement](../AbstractDocument.AbstractElement.md "class in javax.swing.text") createDefaultRoot()

    Creates the root element to be used to represent the
    default document structure.

    Overrides:
    :   `createDefaultRoot` in class `DefaultStyledDocument`

    Returns:
    :   the element base
  + ### setTokenThreshold

    public void setTokenThreshold(int n)

    Sets the number of tokens to buffer before trying to update
    the documents element structure.

    Parameters:
    :   `n` - the number of tokens to buffer
  + ### getTokenThreshold

    public int getTokenThreshold()

    Gets the number of tokens to buffer before trying to update
    the documents element structure. The default value is
    `Integer.MAX_VALUE`.

    Returns:
    :   the number of tokens to buffer
  + ### setPreservesUnknownTags

    public void setPreservesUnknownTags(boolean preservesTags)

    Determines how unknown tags are handled by the parser.
    If set to true, unknown
    tags are put in the model, otherwise they are dropped.

    Parameters:
    :   `preservesTags` - true if unknown tags should be
        saved in the model, otherwise tags are dropped

    See Also:
    :   - [`HTML.Tag`](HTML.Tag.md "class in javax.swing.text.html")
  + ### getPreservesUnknownTags

    public boolean getPreservesUnknownTags()

    Returns the behavior the parser observes when encountering
    unknown tags.

    Returns:
    :   true if unknown tags are to be preserved when parsing

    See Also:
    :   - [`HTML.Tag`](HTML.Tag.md "class in javax.swing.text.html")
  + ### processHTMLFrameHyperlinkEvent

    public void processHTMLFrameHyperlinkEvent([HTMLFrameHyperlinkEvent](HTMLFrameHyperlinkEvent.md "class in javax.swing.text.html") e)

    Processes `HyperlinkEvents` that
    are generated by documents in an HTML frame.
    The `HyperlinkEvent` type, as the parameter suggests,
    is `HTMLFrameHyperlinkEvent`.
    In addition to the typical information contained in a
    `HyperlinkEvent`,
    this event contains the element that corresponds to the frame in
    which the click happened (the source element) and the
    target name. The target name has 4 possible values:
    - \_self- \_parent- \_top- a named frameIf target is \_self, the action is to change the value of the
    `HTML.Attribute.SRC` attribute and fires a
    `ChangedUpdate` event.

    If the target is \_parent, then it deletes the parent element,
    which is a <FRAMESET> element, and inserts a new <FRAME>
    element, and sets its `HTML.Attribute.SRC` attribute
    to have a value equal to the destination URL and fire a
    `RemovedUpdate` and `InsertUpdate`.

    If the target is \_top, this method does nothing. In the implementation
    of the view for a frame, namely the `FrameView`,
    the processing of \_top is handled. Given that \_top implies
    replacing the entire document, it made sense to handle this outside
    of the document that it will replace.

    If the target is a named frame, then the element hierarchy is searched
    for an element with a name equal to the target, its
    `HTML.Attribute.SRC` attribute is updated and a
    `ChangedUpdate` event is fired.

    Parameters:
    :   `e` - the event
  + ### setParser

    public void setParser([HTMLEditorKit.Parser](HTMLEditorKit.Parser.md "class in javax.swing.text.html") parser)

    Sets the parser that is used by the methods that insert html
    into the existing document, such as `setInnerHTML`,
    and `setOuterHTML`.

    `HTMLEditorKit.createDefaultDocument` will set the parser
    for you. If you create an `HTMLDocument` by hand,
    be sure and set the parser accordingly.

    Parameters:
    :   `parser` - the parser to be used for text insertion

    Since:
    :   1.3
  + ### getParser

    public [HTMLEditorKit.Parser](HTMLEditorKit.Parser.md "class in javax.swing.text.html") getParser()

    Returns the parser that is used when inserting HTML into the existing
    document.

    Returns:
    :   the parser used for text insertion

    Since:
    :   1.3
  + ### setInnerHTML

    public void setInnerHTML([Element](../Element.md "interface in javax.swing.text") elem,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") htmlText)
    throws [BadLocationException](../BadLocationException.md "class in javax.swing.text"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Replaces the children of the given element with the contents
    specified as an HTML string.

    This will be seen as at least two events, n inserts followed by
    a remove.

    Consider the following structure (the `elem`
    parameter is **in bold**).

    ```
         <body>
           |
         <div>
          /  \
        <p>   <p>
    ```

    Invoking `setInnerHTML(elem, "<ul><li>")`
    results in the following structure (new elements are in blue).

    ```
         <body>
           |
         <div>
             \
             <ul>
               \
               <li>
    ```

    Parameter `elem` must not be a leaf element,
    otherwise an `IllegalArgumentException` is thrown.
    If either `elem` or `htmlText` parameter
    is `null`, no changes are made to the document.

    For this to work correctly, the document must have an
    `HTMLEditorKit.Parser` set. This will be the case
    if the document was created from an HTMLEditorKit via the
    `createDefaultDocument` method.

    Parameters:
    :   `elem` - the branch element whose children will be replaced
    :   `htmlText` - the string to be parsed and assigned to `elem`

    Throws:
    :   `IllegalArgumentException` - if `elem` is a leaf
    :   `IllegalStateException` - if an `HTMLEditorKit.Parser`
        has not been defined
    :   `BadLocationException` - if replacement is impossible because of
        a structural issue
    :   `IOException` - if an I/O exception occurs

    Since:
    :   1.3
  + ### setOuterHTML

    public void setOuterHTML([Element](../Element.md "interface in javax.swing.text") elem,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") htmlText)
    throws [BadLocationException](../BadLocationException.md "class in javax.swing.text"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Replaces the given element in the parent with the contents
    specified as an HTML string.

    This will be seen as at least two events, n inserts followed by
    a remove.

    When replacing a leaf this will attempt to make sure there is
    a newline present if one is needed. This may result in an additional
    element being inserted. Consider, if you were to replace a character
    element that contained a newline with <img> this would create
    two elements, one for the image, and one for the newline.

    If you try to replace the element at length you will most
    likely end up with two elements, eg
    `setOuterHTML(getCharacterElement (getLength()),
    "blah")` will result in two leaf elements at the end, one
    representing 'blah', and the other representing the end
    element.

    Consider the following structure (the `elem`
    parameter is **in bold**).

    ```
         <body>
           |
         <div>
          /  \
        <p>   <p>
    ```

    Invoking `setOuterHTML(elem, "<ul><li>")`
    results in the following structure (new elements are in blue).

    ```
        <body>
          |
         <ul>
           \
           <li>
    ```

    If either `elem` or `htmlText`
    parameter is `null`, no changes are made to the
    document.

    For this to work correctly, the document must have an
    HTMLEditorKit.Parser set. This will be the case if the document
    was created from an HTMLEditorKit via the
    `createDefaultDocument` method.

    Parameters:
    :   `elem` - the element to replace
    :   `htmlText` - the string to be parsed and inserted in place of `elem`

    Throws:
    :   `IllegalStateException` - if an HTMLEditorKit.Parser has not
        been set
    :   `BadLocationException` - if replacement is impossible because of
        a structural issue
    :   `IOException` - if an I/O exception occurs

    Since:
    :   1.3
  + ### insertAfterStart

    public void insertAfterStart([Element](../Element.md "interface in javax.swing.text") elem,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") htmlText)
    throws [BadLocationException](../BadLocationException.md "class in javax.swing.text"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Inserts the HTML specified as a string at the start
    of the element.

    Consider the following structure (the `elem`
    parameter is **in bold**).

    ```
         <body>
           |
         <div>
          /  \
        <p>   <p>
    ```

    Invoking `insertAfterStart(elem,
    "<ul><li>")` results in the following structure
    (new elements are in blue).

    ```
            <body>
              |
            <div>
           /  |  \
        <ul> <p> <p>
         /
      <li>
    ```

    Unlike the `insertBeforeStart` method, new
    elements become *children* of the specified element,
    not siblings.

    Parameter `elem` must not be a leaf element,
    otherwise an `IllegalArgumentException` is thrown.
    If either `elem` or `htmlText` parameter
    is `null`, no changes are made to the document.

    For this to work correctly, the document must have an
    `HTMLEditorKit.Parser` set. This will be the case
    if the document was created from an HTMLEditorKit via the
    `createDefaultDocument` method.

    Parameters:
    :   `elem` - the branch element to be the root for the new text
    :   `htmlText` - the string to be parsed and assigned to `elem`

    Throws:
    :   `IllegalArgumentException` - if `elem` is a leaf
    :   `IllegalStateException` - if an HTMLEditorKit.Parser has not
        been set on the document
    :   `BadLocationException` - if insertion is impossible because of
        a structural issue
    :   `IOException` - if an I/O exception occurs

    Since:
    :   1.3
  + ### insertBeforeEnd

    public void insertBeforeEnd([Element](../Element.md "interface in javax.swing.text") elem,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") htmlText)
    throws [BadLocationException](../BadLocationException.md "class in javax.swing.text"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Inserts the HTML specified as a string at the end of
    the element.

    If `elem`'s children are leaves, and the
    character at a `elem.getEndOffset() - 1` is a newline,
    this will insert before the newline so that there isn't text after
    the newline.

    Consider the following structure (the `elem`
    parameter is **in bold**).

    ```
         <body>
           |
         <div>
          /  \
        <p>   <p>
    ```

    Invoking `insertBeforeEnd(elem, "<ul><li>")`
    results in the following structure (new elements are in blue).

    ```
            <body>
              |
            <div>
           /  |  \
         <p> <p> <ul>
                   \
                   <li>
    ```

    Unlike the `insertAfterEnd` method, new elements
    become *children* of the specified element, not
    siblings.

    Parameter `elem` must not be a leaf element,
    otherwise an `IllegalArgumentException` is thrown.
    If either `elem` or `htmlText` parameter
    is `null`, no changes are made to the document.

    For this to work correctly, the document must have an
    `HTMLEditorKit.Parser` set. This will be the case
    if the document was created from an HTMLEditorKit via the
    `createDefaultDocument` method.

    Parameters:
    :   `elem` - the element to be the root for the new text
    :   `htmlText` - the string to be parsed and assigned to `elem`

    Throws:
    :   `IllegalArgumentException` - if `elem` is a leaf
    :   `IllegalStateException` - if an HTMLEditorKit.Parser has not
        been set on the document
    :   `BadLocationException` - if insertion is impossible because of
        a structural issue
    :   `IOException` - if an I/O exception occurs

    Since:
    :   1.3
  + ### insertBeforeStart

    public void insertBeforeStart([Element](../Element.md "interface in javax.swing.text") elem,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") htmlText)
    throws [BadLocationException](../BadLocationException.md "class in javax.swing.text"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Inserts the HTML specified as a string before the start of
    the given element.

    Consider the following structure (the `elem`
    parameter is **in bold**).

    ```
         <body>
           |
         <div>
          /  \
        <p>   <p>
    ```

    Invoking `insertBeforeStart(elem,
    "<ul><li>")` results in the following structure
    (new elements are in blue).

    ```
            <body>
             /  \
          <ul> <div>
           /    /  \
         <li> <p>  <p>
    ```

    Unlike the `insertAfterStart` method, new
    elements become *siblings* of the specified element, not
    children.

    If either `elem` or `htmlText`
    parameter is `null`, no changes are made to the
    document.

    For this to work correctly, the document must have an
    `HTMLEditorKit.Parser` set. This will be the case
    if the document was created from an HTMLEditorKit via the
    `createDefaultDocument` method.

    Parameters:
    :   `elem` - the element the content is inserted before
    :   `htmlText` - the string to be parsed and inserted before `elem`

    Throws:
    :   `IllegalStateException` - if an HTMLEditorKit.Parser has not
        been set on the document
    :   `BadLocationException` - if insertion is impossible because of
        a structural issue
    :   `IOException` - if an I/O exception occurs

    Since:
    :   1.3
  + ### insertAfterEnd

    public void insertAfterEnd([Element](../Element.md "interface in javax.swing.text") elem,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") htmlText)
    throws [BadLocationException](../BadLocationException.md "class in javax.swing.text"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Inserts the HTML specified as a string after the end of the
    given element.

    Consider the following structure (the `elem`
    parameter is **in bold**).

    ```
         <body>
           |
         <div>
          /  \
        <p>   <p>
    ```

    Invoking `insertAfterEnd(elem, "<ul><li>")`
    results in the following structure (new elements are in blue).

    ```
            <body>
             /  \
          <div> <ul>
           / \    \
         <p> <p>  <li>
    ```

    Unlike the `insertBeforeEnd` method, new elements
    become *siblings* of the specified element, not
    children.

    If either `elem` or `htmlText`
    parameter is `null`, no changes are made to the
    document.

    For this to work correctly, the document must have an
    `HTMLEditorKit.Parser` set. This will be the case
    if the document was created from an HTMLEditorKit via the
    `createDefaultDocument` method.

    Parameters:
    :   `elem` - the element the content is inserted after
    :   `htmlText` - the string to be parsed and inserted after `elem`

    Throws:
    :   `IllegalStateException` - if an HTMLEditorKit.Parser has not
        been set on the document
    :   `BadLocationException` - if insertion is impossible because of
        a structural issue
    :   `IOException` - if an I/O exception occurs

    Since:
    :   1.3
  + ### getElement

    public [Element](../Element.md "interface in javax.swing.text") getElement([String](../../../../../java.base/java/lang/String.md "class in java.lang") id)

    Returns the element that has the given id `Attribute`.
    If the element can't be found, `null` is returned.
    Note that this method works on an `Attribute`,
    *not* a character tag. In the following HTML snippet:
    `<a id="HelloThere">` the attribute is
    'id' and the character tag is 'a'.
    This is a convenience method for
    `getElement(RootElement, HTML.Attribute.id, id)`.
    This is not thread-safe.

    Parameters:
    :   `id` - the string representing the desired `Attribute`

    Returns:
    :   the element with the specified `Attribute`
        or `null` if it can't be found,
        or `null` if `id` is `null`

    Since:
    :   1.3

    See Also:
    :   - [`HTML.Attribute`](HTML.Attribute.md "class in javax.swing.text.html")
  + ### getElement

    public [Element](../Element.md "interface in javax.swing.text") getElement([Element](../Element.md "interface in javax.swing.text") e,
    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") attribute,
    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") value)

    Returns the child element of `e` that contains the
    attribute, `attribute` with value `value`, or
    `null` if one isn't found. This is not thread-safe.

    Parameters:
    :   `e` - the root element where the search begins
    :   `attribute` - the desired `Attribute`
    :   `value` - the values for the specified `Attribute`

    Returns:
    :   the element with the specified `Attribute`
        and the specified `value`, or `null`
        if it can't be found

    Since:
    :   1.3

    See Also:
    :   - [`HTML.Attribute`](HTML.Attribute.md "class in javax.swing.text.html")
  + ### fireChangedUpdate

    protected void fireChangedUpdate([DocumentEvent](../../event/DocumentEvent.md "interface in javax.swing.event") e)

    Notifies all listeners that have registered interest for
    notification on this event type. The event instance
    is lazily created using the parameters passed into
    the fire method.

    Overrides:
    :   `fireChangedUpdate` in class `AbstractDocument`

    Parameters:
    :   `e` - the event

    See Also:
    :   - [`EventListenerList`](../../event/EventListenerList.md "class in javax.swing.event")
  + ### fireUndoableEditUpdate

    protected void fireUndoableEditUpdate([UndoableEditEvent](../../event/UndoableEditEvent.md "class in javax.swing.event") e)

    Notifies all listeners that have registered interest for
    notification on this event type. The event instance
    is lazily created using the parameters passed into
    the fire method.

    Overrides:
    :   `fireUndoableEditUpdate` in class `AbstractDocument`

    Parameters:
    :   `e` - the event

    See Also:
    :   - [`EventListenerList`](../../event/EventListenerList.md "class in javax.swing.event")