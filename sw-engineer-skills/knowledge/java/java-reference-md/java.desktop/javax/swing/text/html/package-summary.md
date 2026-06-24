Module [java.desktop](../../../../module-summary.md)

# Package javax.swing.text.html

---

package javax.swing.text.html

Provides the class `HTMLEditorKit` and supporting classes for creating
HTML text editors.

**Note:**
Most of the Swing API is *not* thread safe. For details, see
[Concurrency in Swing](https://docs.oracle.com/javase/tutorial/uiswing/concurrency/index.html),
a section in
*[The Java Tutorial](https://docs.oracle.com/javase/tutorial/)*.

## Package Specification

* [HTML 3.2 Reference Specification](http://www.w3.org/TR/REC-html32.html) - The HTML specification on
  which HTMLEditorKit is based.

Since:
:   1.2

* Related Packages

  Package

  Description

  [javax.swing.text](../package-summary.md)

  Provides classes and interfaces that deal with editable and noneditable text
  components.

  [javax.swing.text.html.parser](parser/package-summary.md)

  Provides the default HTML parser, along with support classes.

  [javax.swing.text.rtf](../rtf/package-summary.md)

  Provides a class (`RTFEditorKit`) for creating Rich-Text-Format text
  editors.
* All Classes and InterfacesClassesEnum Classes

  Class

  Description

  [BlockView](BlockView.md "class in javax.swing.text.html")

  A view implementation to display a block (as a box)
  with CSS specifications.

  [CSS](CSS.md "class in javax.swing.text.html")

  Defines a set of
  [CSS attributes](http://www.w3.org/TR/REC-CSS1)
  as a typesafe enumeration.

  [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html")

  Definitions to be used as a key on AttributeSet's
  that might hold CSS attributes.

  [FormSubmitEvent](FormSubmitEvent.md "class in javax.swing.text.html")

  FormSubmitEvent is used to notify interested
  parties that a form was submitted.

  [FormSubmitEvent.MethodType](FormSubmitEvent.MethodType.md "enum class in javax.swing.text.html")

  Represents an HTML form method type.

  [FormView](FormView.md "class in javax.swing.text.html")

  Component decorator that implements the view interface
  for form elements, <input>, <textarea>,
  and <select>.

  [HTML](HTML.md "class in javax.swing.text.html")

  Constants used in the `HTMLDocument`.

  [HTML.Attribute](HTML.Attribute.md "class in javax.swing.text.html")

  Typesafe enumeration representing an HTML
  attribute.

  [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html")

  Typesafe enumeration for an HTML tag.

  [HTML.UnknownTag](HTML.UnknownTag.md "class in javax.swing.text.html")

  Class represents unknown HTML tag.

  [HTMLDocument](HTMLDocument.md "class in javax.swing.text.html")

  A document that models HTML.

  [HTMLDocument.Iterator](HTMLDocument.Iterator.md "class in javax.swing.text.html")

  An iterator to iterate over a particular type of
  tag.

  [HTMLEditorKit](HTMLEditorKit.md "class in javax.swing.text.html")

  The Swing JEditorPane text component supports different kinds
  of content via a plug-in mechanism called an EditorKit.

  [HTMLEditorKit.HTMLFactory](HTMLEditorKit.HTMLFactory.md "class in javax.swing.text.html")

  A factory to build views for HTML.

  [HTMLEditorKit.HTMLTextAction](HTMLEditorKit.HTMLTextAction.md "class in javax.swing.text.html")

  An abstract Action providing some convenience methods that may
  be useful in inserting HTML into an existing document.

  [HTMLEditorKit.InsertHTMLTextAction](HTMLEditorKit.InsertHTMLTextAction.md "class in javax.swing.text.html")

  InsertHTMLTextAction can be used to insert an arbitrary string of HTML
  into an existing HTML document.

  [HTMLEditorKit.LinkController](HTMLEditorKit.LinkController.md "class in javax.swing.text.html")

  Class to watch the associated component and fire
  hyperlink events on it when appropriate.

  [HTMLEditorKit.Parser](HTMLEditorKit.Parser.md "class in javax.swing.text.html")

  Interface to be supported by the parser.

  [HTMLEditorKit.ParserCallback](HTMLEditorKit.ParserCallback.md "class in javax.swing.text.html")

  The result of parsing drives these callback methods.

  [HTMLFrameHyperlinkEvent](HTMLFrameHyperlinkEvent.md "class in javax.swing.text.html")

  HTMLFrameHyperlinkEvent is used to notify interested
  parties that link was activated in a frame.

  [HTMLWriter](HTMLWriter.md "class in javax.swing.text.html")

  This is a writer for HTMLDocuments.

  [ImageView](ImageView.md "class in javax.swing.text.html")

  View of an Image, intended to support the HTML <IMG> tag.

  [InlineView](InlineView.md "class in javax.swing.text.html")

  Displays the inline element styles
  based upon css attributes.

  [ListView](ListView.md "class in javax.swing.text.html")

  A view implementation to display an html list

  [MinimalHTMLWriter](MinimalHTMLWriter.md "class in javax.swing.text.html")

  MinimalHTMLWriter is a fallback writer used by the
  HTMLEditorKit to write out HTML for a document that
  is a not produced by the EditorKit.

  [ObjectView](ObjectView.md "class in javax.swing.text.html")

  Component decorator that implements the view interface
  for <object> elements.

  [Option](Option.md "class in javax.swing.text.html")

  Value for the ListModel used to represent
  <option> elements.

  [ParagraphView](ParagraphView.md "class in javax.swing.text.html")

  Displays the paragraph and uses CSS attributes for its
  configuration.

  [StyleSheet](StyleSheet.md "class in javax.swing.text.html")

  Support for defining the visual characteristics of
  HTML views being rendered.

  [StyleSheet.BoxPainter](StyleSheet.BoxPainter.md "class in javax.swing.text.html")

  Class to carry out some of the duties of
  CSS formatting.

  [StyleSheet.ListPainter](StyleSheet.ListPainter.md "class in javax.swing.text.html")

  Class to carry out some of the duties of CSS list
  formatting.