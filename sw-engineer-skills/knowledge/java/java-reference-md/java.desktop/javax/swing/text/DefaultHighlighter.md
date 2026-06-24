Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class DefaultHighlighter

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.LayeredHighlighter](LayeredHighlighter.md "class in javax.swing.text")

javax.swing.text.DefaultHighlighter

All Implemented Interfaces:
:   `Highlighter`

Direct Known Subclasses:
:   `BasicTextUI.BasicHighlighter`

---

public class DefaultHighlighter
extends [LayeredHighlighter](LayeredHighlighter.md "class in javax.swing.text")

Implements the Highlighter interfaces. Implements a simple highlight
painter that renders in a solid color.

See Also:
:   * [`Highlighter`](Highlighter.md "interface in javax.swing.text")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static class`

  `DefaultHighlighter.DefaultHighlightPainter`

  Simple highlight painter that fills a highlighted area with
  a solid color.

  ## Nested classes/interfaces inherited from class javax.swing.text.[LayeredHighlighter](LayeredHighlighter.md "class in javax.swing.text")

  `LayeredHighlighter.LayerPainter`

  ## Nested classes/interfaces inherited from interface javax.swing.text.[Highlighter](Highlighter.md "interface in javax.swing.text")

  `Highlighter.Highlight, Highlighter.HighlightPainter`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final LayeredHighlighter.LayerPainter`

  `DefaultPainter`

  Default implementation of LayeredHighlighter.LayerPainter that can
  be used for painting highlights.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DefaultHighlighter()`

  Creates a new DefaultHighlighter object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

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

  Changes a highlight.

  `void`

  `deinstall(JTextComponent c)`

  Called when the UI is being removed from the interface of
  a JTextComponent.

  `boolean`

  `getDrawsLayeredHighlights()`

  Return the draw layered highlights.

  `Highlighter.Highlight[]`

  `getHighlights()`

  Makes a copy of the highlights.

  `void`

  `install(JTextComponent c)`

  Called when the UI is being installed into the
  interface of a JTextComponent.

  `void`

  `paint(Graphics g)`

  Renders the highlights.

  `void`

  `paintLayeredHighlights(Graphics g,
  int p0,
  int p1,
  Shape viewBounds,
  JTextComponent editor,
  View view)`

  When leaf Views (such as LabelView) are rendering they should
  call into this method.

  `void`

  `removeAllHighlights()`

  Removes all highlights.

  `void`

  `removeHighlight(Object tag)`

  Removes a highlight from the view.

  `void`

  `setDrawsLayeredHighlights(boolean newValue)`

  If true, highlights are drawn as the Views draw the text.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### DefaultPainter

    public static final [LayeredHighlighter.LayerPainter](LayeredHighlighter.LayerPainter.md "class in javax.swing.text") DefaultPainter

    Default implementation of LayeredHighlighter.LayerPainter that can
    be used for painting highlights.

    As of 1.4 this field is final.
* ## Constructor Details

  + ### DefaultHighlighter

    public DefaultHighlighter()

    Creates a new DefaultHighlighter object.
* ## Method Details

  + ### paint

    public void paint([Graphics](../../../java/awt/Graphics.md "class in java.awt") g)

    Renders the highlights.

    Parameters:
    :   `g` - the graphics context
  + ### install

    public void install([JTextComponent](JTextComponent.md "class in javax.swing.text") c)

    Called when the UI is being installed into the
    interface of a JTextComponent. Installs the editor, and
    removes any existing highlights.

    Parameters:
    :   `c` - the editor component

    See Also:
    :   - [`Highlighter.install(javax.swing.text.JTextComponent)`](Highlighter.md#install(javax.swing.text.JTextComponent))
  + ### deinstall

    public void deinstall([JTextComponent](JTextComponent.md "class in javax.swing.text") c)

    Called when the UI is being removed from the interface of
    a JTextComponent.

    Parameters:
    :   `c` - the component

    See Also:
    :   - [`Highlighter.deinstall(javax.swing.text.JTextComponent)`](Highlighter.md#deinstall(javax.swing.text.JTextComponent))
  + ### addHighlight

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") addHighlight(int p0,
    int p1,
    [Highlighter.HighlightPainter](Highlighter.HighlightPainter.md "interface in javax.swing.text") p)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Adds a highlight to the view. Returns a tag that can be used
    to refer to the highlight.

    Parameters:
    :   `p0` - the start offset of the range to highlight >= 0
    :   `p1` - the end offset of the range to highlight >= p0
    :   `p` - the painter to use to actually render the highlight

    Returns:
    :   an object that can be used as a tag
        to refer to the highlight

    Throws:
    :   `BadLocationException` - if the specified location is invalid
  + ### removeHighlight

    public void removeHighlight([Object](../../../../java.base/java/lang/Object.md "class in java.lang") tag)

    Removes a highlight from the view.

    Parameters:
    :   `tag` - the reference to the highlight
  + ### removeAllHighlights

    public void removeAllHighlights()

    Removes all highlights.
  + ### changeHighlight

    public void changeHighlight([Object](../../../../java.base/java/lang/Object.md "class in java.lang") tag,
    int p0,
    int p1)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Changes a highlight.

    Parameters:
    :   `tag` - the highlight tag
    :   `p0` - the beginning of the range >= 0
    :   `p1` - the end of the range >= p0

    Throws:
    :   `BadLocationException` - if the specified location is invalid
  + ### getHighlights

    public [Highlighter.Highlight](Highlighter.Highlight.md "interface in javax.swing.text")[] getHighlights()

    Makes a copy of the highlights. Does not actually clone each highlight,
    but only makes references to them.

    Returns:
    :   the copy

    See Also:
    :   - [`Highlighter.getHighlights()`](Highlighter.md#getHighlights())
  + ### paintLayeredHighlights

    public void paintLayeredHighlights([Graphics](../../../java/awt/Graphics.md "class in java.awt") g,
    int p0,
    int p1,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") viewBounds,
    [JTextComponent](JTextComponent.md "class in javax.swing.text") editor,
    [View](View.md "class in javax.swing.text") view)

    When leaf Views (such as LabelView) are rendering they should
    call into this method. If a highlight is in the given region it will
    be drawn immediately.

    Specified by:
    :   `paintLayeredHighlights` in class `LayeredHighlighter`

    Parameters:
    :   `g` - Graphics used to draw
    :   `p0` - starting offset of view
    :   `p1` - ending offset of view
    :   `viewBounds` - Bounds of View
    :   `editor` - JTextComponent
    :   `view` - View instance being rendered
  + ### setDrawsLayeredHighlights

    public void setDrawsLayeredHighlights(boolean newValue)

    If true, highlights are drawn as the Views draw the text. That is
    the Views will call into `paintLayeredHighlight` which
    will result in a rectangle being drawn before the text is drawn
    (if the offsets are in a highlighted region that is). For this to
    work the painter supplied must be an instance of
    LayeredHighlightPainter.

    Parameters:
    :   `newValue` - the new value
  + ### getDrawsLayeredHighlights

    public boolean getDrawsLayeredHighlights()

    Return the draw layered highlights.

    Returns:
    :   the draw layered highlights