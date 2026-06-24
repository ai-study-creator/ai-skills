Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.html](package-summary.md)

# Class HTMLEditorKit

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.EditorKit](../EditorKit.md "class in javax.swing.text")

[javax.swing.text.DefaultEditorKit](../DefaultEditorKit.md "class in javax.swing.text")

[javax.swing.text.StyledEditorKit](../StyledEditorKit.md "class in javax.swing.text")

javax.swing.text.html.HTMLEditorKit

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Accessible`

---

public class HTMLEditorKit
extends [StyledEditorKit](../StyledEditorKit.md "class in javax.swing.text")
implements [Accessible](../../../accessibility/Accessible.md "interface in javax.accessibility")

The Swing JEditorPane text component supports different kinds
of content via a plug-in mechanism called an EditorKit. Because
HTML is a very popular format of content, some support is provided
by default. The default support is provided by this class, which
supports HTML version 3.2 (with some extensions), and is migrating
toward version 4.0.
The <applet> tag is not supported, but some support is provided
for the <object> tag.

There are several goals of the HTML EditorKit provided, that have
an effect upon the way that HTML is modeled. These
have influenced its design in a substantial way.

Support editing: It might seem fairly obvious that a plug-in for JEditorPane should provide editing support, but that fact has several design considerations. There are a substantial number of HTML documents that don't properly conform to an HTML specification. These must be normalized somewhat into a correct form if one is to edit them. Additionally, users don't like to be presented with an excessive amount of structure editing, so using traditional text editing gestures is preferred over using the HTML structure exactly as defined in the HTML document. The modeling of HTML is provided by the class `HTMLDocument`. Its documentation describes the details of how the HTML is modeled. The editing support leverages heavily off of the text package. Extendable/Scalable: To maximize the usefulness of this kit, a great deal of effort has gone into making it extendable. These are some of the features. 1. The parser is replaceable. The default parser is the Hot Java parser which is DTD based. A different DTD can be used, or an entirely different parser can be used. To change the parser, reimplement the getParser method. The default parser is dynamically loaded when first asked for, so the class files will never be loaded if an alternative parser is used. The default parser is in a separate package called parser below this package.- The parser drives the ParserCallback, which is provided by HTMLDocument. To change the callback, subclass HTMLDocument and reimplement the createDefaultDocument method to return document that produces a different reader. The reader controls how the document is structured. Although the Document provides HTML support by default, there is nothing preventing support of non-HTML tags that result in alternative element structures.- The default view of the models are provided as a hierarchy of View implementations, so one can easily customize how a particular element is displayed or add capabilities for new kinds of elements by providing new View implementations. The default set of views are provided by the `HTMLFactory` class. This can be easily changed by subclassing or replacing the HTMLFactory and reimplementing the getViewFactory method to return the alternative factory.- The View implementations work primarily off of CSS attributes, which are kept in the views. This makes it possible to have multiple views mapped over the same model that appear substantially different. This can be especially useful for printing. For most HTML attributes, the HTML attributes are converted to CSS attributes for display. This helps make the View implementations more general purpose Asynchronous Loading: Larger documents involve a lot of parsing and take some time to load. By default, this kit produces documents that will be loaded asynchronously if loaded using `JEditorPane.setPage`. This is controlled by a property on the document. The method [`createDefaultDocument`](#createDefaultDocument()) can be overridden to change this. The batching of work is done by the `HTMLDocument.HTMLReader` class. The actual work is done by the `DefaultStyledDocument` and `AbstractDocument` classes in the text package. Customization from current LAF: HTML provides a well known set of features without exactly specifying the display characteristics. Swing has a theme mechanism for its look-and-feel implementations. It is desirable for the look-and-feel to feed display characteristics into the HTML views. An user with poor vision for example would want high contrast and larger than typical fonts. The support for this is provided by the `StyleSheet` class. The presentation of the HTML can be heavily influenced by the setting of the StyleSheet property on the EditorKit. Not lossy: An EditorKit has the ability to be read and save documents. It is generally the most pleasing to users if there is no loss of data between the two operation. The policy of the HTMLEditorKit will be to store things not recognized or not necessarily visible so they can be subsequently written out. The model of the HTML document should therefore contain all information discovered while reading the document. This is constrained in some ways by the need to support editing (i.e. incorrect documents sometimes must be normalized). The guiding principle is that information shouldn't be lost, but some might be synthesized to produce a more correct model or it might be rearranged.

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static class`

  `HTMLEditorKit.HTMLFactory`

  A factory to build views for HTML.

  `static class`

  `HTMLEditorKit.HTMLTextAction`

  An abstract Action providing some convenience methods that may
  be useful in inserting HTML into an existing document.

  `static class`

  `HTMLEditorKit.InsertHTMLTextAction`

  InsertHTMLTextAction can be used to insert an arbitrary string of HTML
  into an existing HTML document.

  `static class`

  `HTMLEditorKit.LinkController`

  Class to watch the associated component and fire
  hyperlink events on it when appropriate.

  `static class`

  `HTMLEditorKit.Parser`

  Interface to be supported by the parser.

  `static class`

  `HTMLEditorKit.ParserCallback`

  The result of parsing drives these callback methods.

  ## Nested classes/interfaces inherited from class javax.swing.text.[StyledEditorKit](../StyledEditorKit.md "class in javax.swing.text")

  `StyledEditorKit.AlignmentAction, StyledEditorKit.BoldAction, StyledEditorKit.FontFamilyAction, StyledEditorKit.FontSizeAction, StyledEditorKit.ForegroundAction, StyledEditorKit.ItalicAction, StyledEditorKit.StyledTextAction, StyledEditorKit.UnderlineAction`

  ## Nested classes/interfaces inherited from class javax.swing.text.[DefaultEditorKit](../DefaultEditorKit.md "class in javax.swing.text")

  `DefaultEditorKit.BeepAction, DefaultEditorKit.CopyAction, DefaultEditorKit.CutAction, DefaultEditorKit.DefaultKeyTypedAction, DefaultEditorKit.InsertBreakAction, DefaultEditorKit.InsertContentAction, DefaultEditorKit.InsertTabAction, DefaultEditorKit.PasteAction`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `BOLD_ACTION`

  The bold action identifier

  `static final String`

  `COLOR_ACTION`

  The Color choice action identifier
  The color is passed as an argument

  `static final String`

  `DEFAULT_CSS`

  Default Cascading Style Sheet file that sets
  up the tag views.

  `static final String`

  `FONT_CHANGE_BIGGER`

  The font size increase to next value action identifier

  `static final String`

  `FONT_CHANGE_SMALLER`

  The font size decrease to next value action identifier

  `static final String`

  `IMG_ALIGN_BOTTOM`

  Align images at the bottom.

  `static final String`

  `IMG_ALIGN_MIDDLE`

  Align images in the middle.

  `static final String`

  `IMG_ALIGN_TOP`

  Align images at the top.

  `static final String`

  `IMG_BORDER`

  Align images at the border.

  `static final String`

  `ITALIC_ACTION`

  The italic action identifier

  `static final String`

  `LOGICAL_STYLE_ACTION`

  The logical style choice action identifier
  The logical style is passed in as an argument

  `static final String`

  `PARA_INDENT_LEFT`

  The paragraph left indent action identifier

  `static final String`

  `PARA_INDENT_RIGHT`

  The paragraph right indent action identifier

  ### Fields inherited from class javax.swing.text.[DefaultEditorKit](../DefaultEditorKit.md "class in javax.swing.text")

  `backwardAction, beepAction, beginAction, beginLineAction, beginLineUpAction, beginParagraphAction, beginWordAction, copyAction, cutAction, defaultKeyTypedAction, deleteNextCharAction, deleteNextWordAction, deletePrevCharAction, deletePrevWordAction, downAction, endAction, endLineAction, endLineDownAction, EndOfLineStringProperty, endParagraphAction, endWordAction, forwardAction, insertBreakAction, insertContentAction, insertTabAction, nextWordAction, pageDownAction, pageUpAction, pasteAction, previousWordAction, readOnlyAction, selectAllAction, selectionBackwardAction, selectionBeginAction, selectionBeginLineAction, selectionBeginParagraphAction, selectionBeginWordAction, selectionDownAction, selectionEndAction, selectionEndLineAction, selectionEndParagraphAction, selectionEndWordAction, selectionForwardAction, selectionNextWordAction, selectionPreviousWordAction, selectionUpAction, selectLineAction, selectParagraphAction, selectWordAction, upAction, writableAction`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `HTMLEditorKit()`

  Constructs an HTMLEditorKit, creates a StyleContext,
  and loads the style sheet.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Creates a copy of the editor kit.

  `Document`

  `createDefaultDocument()`

  Create an uninitialized text storage model
  that is appropriate for this type of editor.

  `protected void`

  `createInputAttributes(Element element,
  MutableAttributeSet set)`

  Copies the key/values in `element`s AttributeSet into
  `set`.

  `void`

  `deinstall(JEditorPane c)`

  Called when the kit is being removed from the
  JEditorPane.

  `AccessibleContext`

  `getAccessibleContext()`

  returns the AccessibleContext associated with this editor kit

  `Action[]`

  `getActions()`

  Fetches the command list for the editor.

  `String`

  `getContentType()`

  Get the MIME type of the data that this
  kit represents support for.

  `Cursor`

  `getDefaultCursor()`

  Returns the default cursor.

  `MutableAttributeSet`

  `getInputAttributes()`

  Gets the input attributes used for the styled
  editing actions.

  `Cursor`

  `getLinkCursor()`

  Returns the cursor to use over hyper links.

  `protected HTMLEditorKit.Parser`

  `getParser()`

  Fetch the parser to use for reading HTML streams.

  `StyleSheet`

  `getStyleSheet()`

  Get the set of styles currently being used to render the
  HTML elements.

  `ViewFactory`

  `getViewFactory()`

  Fetch a factory that is suitable for producing
  views of any models that are produced by this
  kit.

  `void`

  `insertHTML(HTMLDocument doc,
  int offset,
  String html,
  int popDepth,
  int pushDepth,
  HTML.Tag insertTag)`

  Inserts HTML into an existing document.

  `void`

  `install(JEditorPane c)`

  Called when the kit is being installed into the
  a JEditorPane.

  `boolean`

  `isAutoFormSubmission()`

  Indicates whether an html form submission is processed automatically
  or only `FormSubmitEvent` is fired.

  `void`

  `read(Reader in,
  Document doc,
  int pos)`

  Inserts content from the given stream.

  `void`

  `setAutoFormSubmission(boolean isAuto)`

  Specifies if an html form submission is processed
  automatically or only `FormSubmitEvent` is fired.

  `void`

  `setDefaultCursor(Cursor cursor)`

  Sets the default cursor.

  `void`

  `setLinkCursor(Cursor cursor)`

  Sets the cursor to use over links.

  `void`

  `setStyleSheet(StyleSheet s)`

  Set the set of styles to be used to render the various
  HTML elements.

  `void`

  `write(Writer out,
  Document doc,
  int pos,
  int len)`

  Write content from a document to the given stream
  in a format appropriate for this kind of content handler.

  ### Methods inherited from class javax.swing.text.[StyledEditorKit](../StyledEditorKit.md "class in javax.swing.text")

  `getCharacterAttributeRun`

  ### Methods inherited from class javax.swing.text.[DefaultEditorKit](../DefaultEditorKit.md "class in javax.swing.text")

  `createCaret, read, write`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### DEFAULT\_CSS

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") DEFAULT\_CSS

    Default Cascading Style Sheet file that sets
    up the tag views.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.text.html.HTMLEditorKit.DEFAULT_CSS)
  + ### BOLD\_ACTION

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") BOLD\_ACTION

    The bold action identifier

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.text.html.HTMLEditorKit.BOLD_ACTION)
  + ### ITALIC\_ACTION

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") ITALIC\_ACTION

    The italic action identifier

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.text.html.HTMLEditorKit.ITALIC_ACTION)
  + ### PARA\_INDENT\_LEFT

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") PARA\_INDENT\_LEFT

    The paragraph left indent action identifier

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.text.html.HTMLEditorKit.PARA_INDENT_LEFT)
  + ### PARA\_INDENT\_RIGHT

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") PARA\_INDENT\_RIGHT

    The paragraph right indent action identifier

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.text.html.HTMLEditorKit.PARA_INDENT_RIGHT)
  + ### FONT\_CHANGE\_BIGGER

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") FONT\_CHANGE\_BIGGER

    The font size increase to next value action identifier

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.text.html.HTMLEditorKit.FONT_CHANGE_BIGGER)
  + ### FONT\_CHANGE\_SMALLER

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") FONT\_CHANGE\_SMALLER

    The font size decrease to next value action identifier

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.text.html.HTMLEditorKit.FONT_CHANGE_SMALLER)
  + ### COLOR\_ACTION

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") COLOR\_ACTION

    The Color choice action identifier
    The color is passed as an argument

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.text.html.HTMLEditorKit.COLOR_ACTION)
  + ### LOGICAL\_STYLE\_ACTION

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") LOGICAL\_STYLE\_ACTION

    The logical style choice action identifier
    The logical style is passed in as an argument

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.text.html.HTMLEditorKit.LOGICAL_STYLE_ACTION)
  + ### IMG\_ALIGN\_TOP

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") IMG\_ALIGN\_TOP

    Align images at the top.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.text.html.HTMLEditorKit.IMG_ALIGN_TOP)
  + ### IMG\_ALIGN\_MIDDLE

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") IMG\_ALIGN\_MIDDLE

    Align images in the middle.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.text.html.HTMLEditorKit.IMG_ALIGN_MIDDLE)
  + ### IMG\_ALIGN\_BOTTOM

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") IMG\_ALIGN\_BOTTOM

    Align images at the bottom.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.text.html.HTMLEditorKit.IMG_ALIGN_BOTTOM)
  + ### IMG\_BORDER

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") IMG\_BORDER

    Align images at the border.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.text.html.HTMLEditorKit.IMG_BORDER)
* ## Constructor Details

  + ### HTMLEditorKit

    public HTMLEditorKit()

    Constructs an HTMLEditorKit, creates a StyleContext,
    and loads the style sheet.
* ## Method Details

  + ### getContentType

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getContentType()

    Get the MIME type of the data that this
    kit represents support for. This kit supports
    the type `text/html`.

    Overrides:
    :   `getContentType` in class `DefaultEditorKit`

    Returns:
    :   the type
  + ### getViewFactory

    public [ViewFactory](../ViewFactory.md "interface in javax.swing.text") getViewFactory()

    Fetch a factory that is suitable for producing
    views of any models that are produced by this
    kit.

    Overrides:
    :   `getViewFactory` in class `StyledEditorKit`

    Returns:
    :   the factory
  + ### createDefaultDocument

    public [Document](../Document.md "interface in javax.swing.text") createDefaultDocument()

    Create an uninitialized text storage model
    that is appropriate for this type of editor.

    Overrides:
    :   `createDefaultDocument` in class `StyledEditorKit`

    Returns:
    :   the model
  + ### read

    public void read([Reader](../../../../../java.base/java/io/Reader.md "class in java.io") in,
    [Document](../Document.md "interface in javax.swing.text") doc,
    int pos)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [BadLocationException](../BadLocationException.md "class in javax.swing.text")

    Inserts content from the given stream. If `doc` is
    an instance of HTMLDocument, this will read
    HTML 3.2 text. Inserting HTML into a non-empty document must be inside
    the body Element, if you do not insert into the body an exception will
    be thrown. When inserting into a non-empty document all tags outside
    of the body (head, title) will be dropped.

    Overrides:
    :   `read` in class `DefaultEditorKit`

    Parameters:
    :   `in` - the stream to read from
    :   `doc` - the destination for the insertion
    :   `pos` - the location in the document to place the
        content

    Throws:
    :   `IOException` - on any I/O error
    :   `BadLocationException` - if pos represents an invalid
        location within the document
    :   `RuntimeException` - (will eventually be a BadLocationException)
        if pos is invalid
  + ### insertHTML

    public void insertHTML([HTMLDocument](HTMLDocument.md "class in javax.swing.text.html") doc,
    int offset,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") html,
    int popDepth,
    int pushDepth,
    [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") insertTag)
    throws [BadLocationException](../BadLocationException.md "class in javax.swing.text"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Inserts HTML into an existing document.

    Parameters:
    :   `doc` - the document to insert into
    :   `offset` - the offset to insert HTML at
    :   `html` - the HTML string
    :   `popDepth` - the number of ElementSpec.EndTagTypes to generate
        before inserting
    :   `pushDepth` - the number of ElementSpec.StartTagTypes with a direction
        of ElementSpec.JoinNextDirection that should be generated
        before inserting, but after the end tags have been generated
    :   `insertTag` - the first tag to start inserting into document

    Throws:
    :   `BadLocationException` - if `offset` is invalid
    :   `IOException` - on I/O error
    :   `RuntimeException` - (will eventually be a BadLocationException)
        if pos is invalid
  + ### write

    public void write([Writer](../../../../../java.base/java/io/Writer.md "class in java.io") out,
    [Document](../Document.md "interface in javax.swing.text") doc,
    int pos,
    int len)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [BadLocationException](../BadLocationException.md "class in javax.swing.text")

    Write content from a document to the given stream
    in a format appropriate for this kind of content handler.

    Overrides:
    :   `write` in class `DefaultEditorKit`

    Parameters:
    :   `out` - the stream to write to
    :   `doc` - the source for the write
    :   `pos` - the location in the document to fetch the
        content
    :   `len` - the amount to write out

    Throws:
    :   `IOException` - on any I/O error
    :   `BadLocationException` - if `pos` represents an invalid
        location within the document
  + ### install

    public void install([JEditorPane](../../JEditorPane.md "class in javax.swing") c)

    Called when the kit is being installed into the
    a JEditorPane.

    Overrides:
    :   `install` in class `StyledEditorKit`

    Parameters:
    :   `c` - the JEditorPane
  + ### deinstall

    public void deinstall([JEditorPane](../../JEditorPane.md "class in javax.swing") c)

    Called when the kit is being removed from the
    JEditorPane. This is used to unregister any
    listeners that were attached.

    Overrides:
    :   `deinstall` in class `StyledEditorKit`

    Parameters:
    :   `c` - the JEditorPane
  + ### setStyleSheet

    public void setStyleSheet([StyleSheet](StyleSheet.md "class in javax.swing.text.html") s)

    Set the set of styles to be used to render the various
    HTML elements. These styles are specified in terms of
    CSS specifications. Each document produced by the kit
    will have a copy of the sheet which it can add the
    document specific styles to. By default, the StyleSheet
    specified is shared by all HTMLEditorKit instances.
    This should be reimplemented to provide a finer granularity
    if desired.

    Parameters:
    :   `s` - a StyleSheet
  + ### getStyleSheet

    public [StyleSheet](StyleSheet.md "class in javax.swing.text.html") getStyleSheet()

    Get the set of styles currently being used to render the
    HTML elements. By default the resource specified by
    DEFAULT\_CSS gets loaded, and is shared by all HTMLEditorKit
    instances.

    Returns:
    :   the StyleSheet
  + ### getActions

    public [Action](../../Action.md "interface in javax.swing")[] getActions()

    Fetches the command list for the editor. This is
    the list of commands supported by the superclass
    augmented by the collection of commands defined
    locally for style operations.

    Overrides:
    :   `getActions` in class `StyledEditorKit`

    Returns:
    :   the command list
  + ### createInputAttributes

    protected void createInputAttributes([Element](../Element.md "interface in javax.swing.text") element,
    [MutableAttributeSet](../MutableAttributeSet.md "interface in javax.swing.text") set)

    Copies the key/values in `element`s AttributeSet into
    `set`. This does not copy component, icon, or element
    names attributes. Subclasses may wish to refine what is and what
    isn't copied here. But be sure to first remove all the attributes that
    are in `set`.

    This is called anytime the caret moves over a different location.

    Overrides:
    :   `createInputAttributes` in class `StyledEditorKit`

    Parameters:
    :   `element` - the element
    :   `set` - the attributes
  + ### getInputAttributes

    public [MutableAttributeSet](../MutableAttributeSet.md "interface in javax.swing.text") getInputAttributes()

    Gets the input attributes used for the styled
    editing actions.

    Overrides:
    :   `getInputAttributes` in class `StyledEditorKit`

    Returns:
    :   the attribute set
  + ### setDefaultCursor

    public void setDefaultCursor([Cursor](../../../../java/awt/Cursor.md "class in java.awt") cursor)

    Sets the default cursor.

    Parameters:
    :   `cursor` - a cursor

    Since:
    :   1.3
  + ### getDefaultCursor

    public [Cursor](../../../../java/awt/Cursor.md "class in java.awt") getDefaultCursor()

    Returns the default cursor.

    Returns:
    :   the cursor

    Since:
    :   1.3
  + ### setLinkCursor

    public void setLinkCursor([Cursor](../../../../java/awt/Cursor.md "class in java.awt") cursor)

    Sets the cursor to use over links.

    Parameters:
    :   `cursor` - a cursor

    Since:
    :   1.3
  + ### getLinkCursor

    public [Cursor](../../../../java/awt/Cursor.md "class in java.awt") getLinkCursor()

    Returns the cursor to use over hyper links.

    Returns:
    :   the cursor

    Since:
    :   1.3
  + ### isAutoFormSubmission

    public boolean isAutoFormSubmission()

    Indicates whether an html form submission is processed automatically
    or only `FormSubmitEvent` is fired.

    Returns:
    :   true if html form submission is processed automatically,
        false otherwise.

    Since:
    :   1.5

    See Also:
    :   - [`setAutoFormSubmission(boolean)`](#setAutoFormSubmission(boolean))
  + ### setAutoFormSubmission

    public void setAutoFormSubmission(boolean isAuto)

    Specifies if an html form submission is processed
    automatically or only `FormSubmitEvent` is fired.
    By default it is set to true.

    Parameters:
    :   `isAuto` - if `true`, html form submission is processed automatically.

    Since:
    :   1.5

    See Also:
    :   - [`isAutoFormSubmission()`](#isAutoFormSubmission())
        - [`FormSubmitEvent`](FormSubmitEvent.md "class in javax.swing.text.html")
  + ### clone

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") clone()

    Creates a copy of the editor kit.

    Overrides:
    :   `clone` in class `StyledEditorKit`

    Returns:
    :   the copy

    See Also:
    :   - [`Cloneable`](../../../../../java.base/java/lang/Cloneable.md "interface in java.lang")
  + ### getParser

    protected [HTMLEditorKit.Parser](HTMLEditorKit.Parser.md "class in javax.swing.text.html") getParser()

    Fetch the parser to use for reading HTML streams.
    This can be reimplemented to provide a different
    parser. The default implementation is loaded dynamically
    to avoid the overhead of loading the default parser if
    it's not used. The default parser is the HotJava parser
    using an HTML 3.2 DTD.

    Returns:
    :   the parser
  + ### getAccessibleContext

    public [AccessibleContext](../../../accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    returns the AccessibleContext associated with this editor kit

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Returns:
    :   the AccessibleContext associated with this editor kit

    Since:
    :   1.4