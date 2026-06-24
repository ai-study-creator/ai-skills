Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Interface Highlighter

All Known Implementing Classes:
:   `BasicTextUI.BasicHighlighter`, `DefaultHighlighter`, `LayeredHighlighter`

---

public interface Highlighter

An interface for an object that allows one to mark up the background
with colored areas.

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static interface`

  `Highlighter.Highlight`

  A highlight.

  `static interface`

  `Highlighter.HighlightPainter`

  Highlight renderer.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Object`

  `addHighlight(int p0,
  int p1,
  Highlighter.HighlightPainter p)`

  Adds a highlight to the view.

  `void`

  `changeHighlight(Object tag,
  int p0,
  int p1)`

  Changes the given highlight to span a different portion of
  the document.

  `void`

  `deinstall(JTextComponent c)`

  Called when the UI is being removed from the
  interface of a JTextComponent.

  `Highlighter.Highlight[]`

  `getHighlights()`

  Fetches the current list of highlights.

  `void`

  `install(JTextComponent c)`

  Called when the UI is being installed into the
  interface of a JTextComponent.

  `void`

  `paint(Graphics g)`

  Renders the highlights.

  `void`

  `removeAllHighlights()`

  Removes all highlights this highlighter is responsible for.

  `void`

  `removeHighlight(Object tag)`

  Removes a highlight from the view.

* ## Method Details

  + ### install

    void install([JTextComponent](JTextComponent.md "class in javax.swing.text") c)

    Called when the UI is being installed into the
    interface of a JTextComponent. This can be used
    to gain access to the model that is being navigated
    by the implementation of this interface.

    Parameters:
    :   `c` - the JTextComponent editor
  + ### deinstall

    void deinstall([JTextComponent](JTextComponent.md "class in javax.swing.text") c)

    Called when the UI is being removed from the
    interface of a JTextComponent. This is used to
    unregister any listeners that were attached.

    Parameters:
    :   `c` - the JTextComponent editor
  + ### paint

    void paint([Graphics](../../../java/awt/Graphics.md "class in java.awt") g)

    Renders the highlights.

    Parameters:
    :   `g` - the graphics context.
  + ### addHighlight

    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") addHighlight(int p0,
    int p1,
    [Highlighter.HighlightPainter](Highlighter.HighlightPainter.md "interface in javax.swing.text") p)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Adds a highlight to the view. Returns a tag that can be used
    to refer to the highlight.

    Parameters:
    :   `p0` - the beginning of the range >= 0
    :   `p1` - the end of the range >= p0
    :   `p` - the painter to use for the actual highlighting

    Returns:
    :   an object that refers to the highlight

    Throws:
    :   `BadLocationException` - for an invalid range specification
  + ### removeHighlight

    void removeHighlight([Object](../../../../java.base/java/lang/Object.md "class in java.lang") tag)

    Removes a highlight from the view.

    Parameters:
    :   `tag` - which highlight to remove
  + ### removeAllHighlights

    void removeAllHighlights()

    Removes all highlights this highlighter is responsible for.
  + ### changeHighlight

    void changeHighlight([Object](../../../../java.base/java/lang/Object.md "class in java.lang") tag,
    int p0,
    int p1)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Changes the given highlight to span a different portion of
    the document. This may be more efficient than a remove/add
    when a selection is expanding/shrinking (such as a sweep
    with a mouse) by damaging only what changed.

    Parameters:
    :   `tag` - which highlight to change
    :   `p0` - the beginning of the range >= 0
    :   `p1` - the end of the range >= p0

    Throws:
    :   `BadLocationException` - for an invalid range specification
  + ### getHighlights

    [Highlighter.Highlight](Highlighter.Highlight.md "interface in javax.swing.text")[] getHighlights()

    Fetches the current list of highlights.

    Returns:
    :   the highlight list