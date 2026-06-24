Module [java.desktop](../../../module-summary.md)

# Package javax.swing.text

---

package javax.swing.text

Provides classes and interfaces that deal with editable and noneditable text
components. Examples of text components are text fields and text areas, of
which password fields and document editors are special instantiations.
Features that are supported by this package include selection/highlighting,
editing, style, and key mapping.

**Note:**
Most of the Swing API is *not* thread safe. For details, see
[Concurrency in Swing](https://docs.oracle.com/javase/tutorial/uiswing/concurrency/index.html),
a section in
*[The Java Tutorial](https://docs.oracle.com/javase/tutorial/)*.

## Related Documentation

For overviews, tutorials, examples, guides, and tool documentation,
please see:

* [Using Text Components](https://docs.oracle.com/javase/tutorial/uiswing/components/text.html),
  a section in *The Java Tutorial*

Since:
:   1.2

* Related Packages

  Package

  Description

  [javax.swing](../package-summary.md)

  Provides a set of "lightweight" (all-Java language) components
  that, to the maximum degree possible, work the same on all platforms.

  [javax.swing.text.html](html/package-summary.md)

  Provides the class `HTMLEditorKit` and supporting classes for creating
  HTML text editors.

  [javax.swing.text.rtf](rtf/package-summary.md)

  Provides a class (`RTFEditorKit`) for creating Rich-Text-Format text
  editors.
* All Classes and InterfacesInterfacesClassesException Classes

  Class

  Description

  [AbstractDocument](AbstractDocument.md "class in javax.swing.text")

  An implementation of the document interface to serve as a
  basis for implementing various kinds of documents.

  [AbstractDocument.AttributeContext](AbstractDocument.AttributeContext.md "interface in javax.swing.text")

  An interface that can be used to allow MutableAttributeSet
  implementations to use pluggable attribute compression
  techniques.

  [AbstractDocument.Content](AbstractDocument.Content.md "interface in javax.swing.text")

  Interface to describe a sequence of character content that
  can be edited.

  [AbstractDocument.ElementEdit](AbstractDocument.ElementEdit.md "class in javax.swing.text")

  An implementation of ElementChange that can be added to the document
  event.

  [AbstractWriter](AbstractWriter.md "class in javax.swing.text")

  AbstractWriter is an abstract class that actually
  does the work of writing out the element tree
  including the attributes.

  [AsyncBoxView](AsyncBoxView.md "class in javax.swing.text")

  A box that does layout asynchronously.

  [AttributeSet](AttributeSet.md "interface in javax.swing.text")

  A collection of unique attributes.

  [AttributeSet.CharacterAttribute](AttributeSet.CharacterAttribute.md "interface in javax.swing.text")

  This interface is the type signature that is expected
  to be present on any attribute key that contributes to
  character level presentation.

  [AttributeSet.ColorAttribute](AttributeSet.ColorAttribute.md "interface in javax.swing.text")

  This interface is the type signature that is expected
  to be present on any attribute key that contributes to
  presentation of color.

  [AttributeSet.FontAttribute](AttributeSet.FontAttribute.md "interface in javax.swing.text")

  This interface is the type signature that is expected
  to be present on any attribute key that contributes to
  the determination of what font to use to render some
  text.

  [AttributeSet.ParagraphAttribute](AttributeSet.ParagraphAttribute.md "interface in javax.swing.text")

  This interface is the type signature that is expected
  to be present on any attribute key that contributes to
  the paragraph level presentation.

  [BadLocationException](BadLocationException.md "class in javax.swing.text")

  This exception is to report bad locations within a document model
  (that is, attempts to reference a location that doesn't exist).

  [BoxView](BoxView.md "class in javax.swing.text")

  A view that arranges its children into a box shape by tiling
  its children along an axis.

  [Caret](Caret.md "interface in javax.swing.text")

  A place within a document view that represents where
  things can be inserted into the document model.

  [ChangedCharSetException](ChangedCharSetException.md "class in javax.swing.text")

  ChangedCharSetException as the name indicates is an exception
  thrown when the charset is changed.

  [ComponentView](ComponentView.md "class in javax.swing.text")

  Component decorator that implements the view interface.

  [CompositeView](CompositeView.md "class in javax.swing.text")

  `CompositeView` is an abstract `View`
  implementation which manages one or more child views.

  [DateFormatter](DateFormatter.md "class in javax.swing.text")

  DateFormatter is an `InternationalFormatter` that does its
  formatting by way of an instance of `java.text.DateFormat`.

  [DefaultCaret](DefaultCaret.md "class in javax.swing.text")

  A default implementation of Caret.

  [DefaultEditorKit](DefaultEditorKit.md "class in javax.swing.text")

  This is the set of things needed by a text component
  to be a reasonably functioning editor for some *type*
  of text document.

  [DefaultEditorKit.BeepAction](DefaultEditorKit.BeepAction.md "class in javax.swing.text")

  Creates a beep.

  [DefaultEditorKit.CopyAction](DefaultEditorKit.CopyAction.md "class in javax.swing.text")

  Copies the selected region and place its contents
  into the system clipboard.

  [DefaultEditorKit.CutAction](DefaultEditorKit.CutAction.md "class in javax.swing.text")

  Cuts the selected region and place its contents
  into the system clipboard.

  [DefaultEditorKit.DefaultKeyTypedAction](DefaultEditorKit.DefaultKeyTypedAction.md "class in javax.swing.text")

  The action that is executed by default if
  a *key typed event* is received and there
  is no keymap entry.

  [DefaultEditorKit.InsertBreakAction](DefaultEditorKit.InsertBreakAction.md "class in javax.swing.text")

  Places a line/paragraph break into the document.

  [DefaultEditorKit.InsertContentAction](DefaultEditorKit.InsertContentAction.md "class in javax.swing.text")

  Places content into the associated document.

  [DefaultEditorKit.InsertTabAction](DefaultEditorKit.InsertTabAction.md "class in javax.swing.text")

  Places a tab character into the document.

  [DefaultEditorKit.PasteAction](DefaultEditorKit.PasteAction.md "class in javax.swing.text")

  Pastes the contents of the system clipboard into the
  selected region, or before the caret if nothing is
  selected.

  [DefaultFormatter](DefaultFormatter.md "class in javax.swing.text")

  `DefaultFormatter` formats arbitrary objects.

  [DefaultFormatterFactory](DefaultFormatterFactory.md "class in javax.swing.text")

  An implementation of
  `JFormattedTextField.AbstractFormatterFactory`.

  [DefaultHighlighter](DefaultHighlighter.md "class in javax.swing.text")

  Implements the Highlighter interfaces.

  [DefaultHighlighter.DefaultHighlightPainter](DefaultHighlighter.DefaultHighlightPainter.md "class in javax.swing.text")

  Simple highlight painter that fills a highlighted area with
  a solid color.

  [DefaultStyledDocument](DefaultStyledDocument.md "class in javax.swing.text")

  A document that can be marked up with character and paragraph
  styles in a manner similar to the Rich Text Format.

  [DefaultStyledDocument.AttributeUndoableEdit](DefaultStyledDocument.AttributeUndoableEdit.md "class in javax.swing.text")

  An UndoableEdit used to remember AttributeSet changes to an
  Element.

  [DefaultStyledDocument.ElementSpec](DefaultStyledDocument.ElementSpec.md "class in javax.swing.text")

  Specification for building elements.

  [DefaultTextUI](DefaultTextUI.md "class in javax.swing.text")

  Deprecated.

  [Document](Document.md "interface in javax.swing.text")

  The `Document` is a container for text that serves
  as the model for swing text components.

  [DocumentFilter](DocumentFilter.md "class in javax.swing.text")

  `DocumentFilter`, as the name implies, is a filter for the
  `Document` mutation methods.

  [DocumentFilter.FilterBypass](DocumentFilter.FilterBypass.md "class in javax.swing.text")

  Used as a way to circumvent calling back into the Document to
  change it.

  [EditorKit](EditorKit.md "class in javax.swing.text")

  Establishes the set of things needed by a text component
  to be a reasonably functioning editor for some *type*
  of text content.

  [Element](Element.md "interface in javax.swing.text")

  Interface to describe a structural piece of a document.

  [ElementIterator](ElementIterator.md "class in javax.swing.text")

  `ElementIterator`, as the name suggests, iterates over the
  `Element` tree.

  [FieldView](FieldView.md "class in javax.swing.text")

  Extends the multi-line plain text view to be suitable
  for a single-line editor view.

  [FlowView](FlowView.md "class in javax.swing.text")

  A View that tries to flow it's children into some
  partially constrained space.

  [FlowView.FlowStrategy](FlowView.FlowStrategy.md "class in javax.swing.text")

  Strategy for maintaining the physical form
  of the flow.

  [GapContent](GapContent.md "class in javax.swing.text")

  An implementation of the AbstractDocument.Content interface
  implemented using a gapped buffer similar to that used by emacs.

  [GlyphView](GlyphView.md "class in javax.swing.text")

  A GlyphView is a styled chunk of text that represents a view
  mapped over an element in the text model.

  [GlyphView.GlyphPainter](GlyphView.GlyphPainter.md "class in javax.swing.text")

  A class to perform rendering of the glyphs.

  [Highlighter](Highlighter.md "interface in javax.swing.text")

  An interface for an object that allows one to mark up the background
  with colored areas.

  [Highlighter.Highlight](Highlighter.Highlight.md "interface in javax.swing.text")

  A highlight.

  [Highlighter.HighlightPainter](Highlighter.HighlightPainter.md "interface in javax.swing.text")

  Highlight renderer.

  [IconView](IconView.md "class in javax.swing.text")

  Icon decorator that implements the view interface.

  [InternationalFormatter](InternationalFormatter.md "class in javax.swing.text")

  `InternationalFormatter` extends `DefaultFormatter`,
  using an instance of `java.text.Format` to handle the
  conversion to a String, and the conversion from a String.

  [JTextComponent](JTextComponent.md "class in javax.swing.text")

  `JTextComponent` is the base class for swing text
  components.

  [JTextComponent.DropLocation](JTextComponent.DropLocation.md "class in javax.swing.text")

  Represents a drop location for `JTextComponent`s.

  [JTextComponent.KeyBinding](JTextComponent.KeyBinding.md "class in javax.swing.text")

  Binding record for creating key bindings.

  [Keymap](Keymap.md "interface in javax.swing.text")

  A collection of bindings of KeyStrokes to actions.

  [LabelView](LabelView.md "class in javax.swing.text")

  A `LabelView` is a styled chunk of text
  that represents a view mapped over an element in the
  text model.

  [LayeredHighlighter](LayeredHighlighter.md "class in javax.swing.text")

  Implementation of `Highlighter` interface to mark up the
  background of leaf views with colored areas.

  [LayeredHighlighter.LayerPainter](LayeredHighlighter.LayerPainter.md "class in javax.swing.text")

  Layered highlight renderer.

  [LayoutQueue](LayoutQueue.md "class in javax.swing.text")

  A queue of text layout tasks.

  [MaskFormatter](MaskFormatter.md "class in javax.swing.text")

  `MaskFormatter` is used to format and edit strings.

  [MutableAttributeSet](MutableAttributeSet.md "interface in javax.swing.text")

  A generic interface for a mutable collection of unique attributes.

  [NavigationFilter](NavigationFilter.md "class in javax.swing.text")

  `NavigationFilter` can be used to restrict where the cursor can
  be positioned.

  [NavigationFilter.FilterBypass](NavigationFilter.FilterBypass.md "class in javax.swing.text")

  Used as a way to circumvent calling back into the caret to
  position the cursor.

  [NumberFormatter](NumberFormatter.md "class in javax.swing.text")

  `NumberFormatter` subclasses `InternationalFormatter`
  adding special behavior for numbers.

  [ParagraphView](ParagraphView.md "class in javax.swing.text")

  View of a simple line-wrapping paragraph that supports
  multiple fonts, colors, components, icons, etc.

  [PasswordView](PasswordView.md "class in javax.swing.text")

  Implements a View suitable for use in JPasswordField
  UI implementations.

  [PlainDocument](PlainDocument.md "class in javax.swing.text")

  A plain document that maintains no character attributes.

  [PlainView](PlainView.md "class in javax.swing.text")

  Implements View interface for a simple multi-line text view
  that has text in one font and color.

  [Position](Position.md "interface in javax.swing.text")

  Represents a location within a document.

  [Position.Bias](Position.Bias.md "class in javax.swing.text")

  A typesafe enumeration to indicate bias to a position
  in the model.

  [Segment](Segment.md "class in javax.swing.text")

  A segment of a character array representing a fragment
  of text.

  [SimpleAttributeSet](SimpleAttributeSet.md "class in javax.swing.text")

  A straightforward implementation of MutableAttributeSet using a
  hash table.

  [StringContent](StringContent.md "class in javax.swing.text")

  An implementation of the AbstractDocument.Content interface that is
  a brute force implementation that is useful for relatively small
  documents and/or debugging.

  [Style](Style.md "interface in javax.swing.text")

  A collection of attributes to associate with an element in a document.

  [StyleConstants](StyleConstants.md "class in javax.swing.text")

  A collection of *well known* or common attribute keys
  and methods to apply to an AttributeSet or MutableAttributeSet
  to get/set the properties in a typesafe manner.

  [StyleConstants.CharacterConstants](StyleConstants.CharacterConstants.md "class in javax.swing.text")

  This is a typesafe enumeration of the *well-known*
  attributes that contribute to a character style.

  [StyleConstants.ColorConstants](StyleConstants.ColorConstants.md "class in javax.swing.text")

  This is a typesafe enumeration of the *well-known*
  attributes that contribute to a color.

  [StyleConstants.FontConstants](StyleConstants.FontConstants.md "class in javax.swing.text")

  This is a typesafe enumeration of the *well-known*
  attributes that contribute to a font.

  [StyleConstants.ParagraphConstants](StyleConstants.ParagraphConstants.md "class in javax.swing.text")

  This is a typesafe enumeration of the *well-known*
  attributes that contribute to a paragraph style.

  [StyleContext](StyleContext.md "class in javax.swing.text")

  A pool of styles and their associated resources.

  [StyledDocument](StyledDocument.md "interface in javax.swing.text")

  Interface for a generic styled document.

  [StyledEditorKit](StyledEditorKit.md "class in javax.swing.text")

  This is the set of things needed by a text component
  to be a reasonably functioning editor for some *type*
  of text document.

  [StyledEditorKit.AlignmentAction](StyledEditorKit.AlignmentAction.md "class in javax.swing.text")

  An action to set paragraph alignment.

  [StyledEditorKit.BoldAction](StyledEditorKit.BoldAction.md "class in javax.swing.text")

  An action to toggle the bold attribute.

  [StyledEditorKit.FontFamilyAction](StyledEditorKit.FontFamilyAction.md "class in javax.swing.text")

  An action to set the font family in the associated
  JEditorPane.

  [StyledEditorKit.FontSizeAction](StyledEditorKit.FontSizeAction.md "class in javax.swing.text")

  An action to set the font size in the associated
  JEditorPane.

  [StyledEditorKit.ForegroundAction](StyledEditorKit.ForegroundAction.md "class in javax.swing.text")

  An action to set foreground color.

  [StyledEditorKit.ItalicAction](StyledEditorKit.ItalicAction.md "class in javax.swing.text")

  An action to toggle the italic attribute.

  [StyledEditorKit.StyledTextAction](StyledEditorKit.StyledTextAction.md "class in javax.swing.text")

  An action that assumes it's being fired on a JEditorPane
  with a StyledEditorKit (or subclass) installed.

  [StyledEditorKit.UnderlineAction](StyledEditorKit.UnderlineAction.md "class in javax.swing.text")

  An action to toggle the underline attribute.

  [TabableView](TabableView.md "interface in javax.swing.text")

  Interface for `View`s that have size dependent upon tabs.

  [TabExpander](TabExpander.md "interface in javax.swing.text")

  Simple interface to allow for different types of
  implementations of tab expansion.

  [TableView](TableView.md "class in javax.swing.text")

  Implements View interface for a table, that is composed of an
  element structure where the child elements of the element
  this view is responsible for represent rows and the child
  elements of the row elements are cells.

  [TabSet](TabSet.md "class in javax.swing.text")

  A TabSet is comprised of many TabStops.

  [TabStop](TabStop.md "class in javax.swing.text")

  This class encapsulates a single tab stop (basically as tab stops
  are thought of by RTF).

  [TextAction](TextAction.md "class in javax.swing.text")

  An Action implementation useful for key bindings that are
  shared across a number of different text components.

  [Utilities](Utilities.md "class in javax.swing.text")

  A collection of methods to deal with various text
  related activities.

  [View](View.md "class in javax.swing.text")

  A very important part of the text package is the `View` class.

  [ViewFactory](ViewFactory.md "interface in javax.swing.text")

  A factory to create a view of some portion of document subject.

  [WrappedPlainView](WrappedPlainView.md "class in javax.swing.text")

  View of plain text (text with only one font and color)
  that does line-wrapping.

  [ZoneView](ZoneView.md "class in javax.swing.text")

  ZoneView is a View implementation that creates zones for which
  the child views are not created or stored until they are needed
  for display or model/view translations.