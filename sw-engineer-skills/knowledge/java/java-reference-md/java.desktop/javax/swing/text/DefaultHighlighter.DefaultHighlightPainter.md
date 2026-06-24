Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class DefaultHighlighter.DefaultHighlightPainter

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.LayeredHighlighter.LayerPainter](LayeredHighlighter.LayerPainter.md "class in javax.swing.text")

javax.swing.text.DefaultHighlighter.DefaultHighlightPainter

All Implemented Interfaces:
:   `Highlighter.HighlightPainter`

Enclosing class:
:   `DefaultHighlighter`

---

public static class DefaultHighlighter.DefaultHighlightPainter
extends [LayeredHighlighter.LayerPainter](LayeredHighlighter.LayerPainter.md "class in javax.swing.text")

Simple highlight painter that fills a highlighted area with
a solid color.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DefaultHighlightPainter(Color c)`

  Constructs a new highlight painter.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Color`

  `getColor()`

  Returns the color of the highlight.

  `void`

  `paint(Graphics g,
  int offs0,
  int offs1,
  Shape bounds,
  JTextComponent c)`

  Paints a highlight.

  `Shape`

  `paintLayer(Graphics g,
  int offs0,
  int offs1,
  Shape bounds,
  JTextComponent c,
  View view)`

  Paints a portion of a highlight.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DefaultHighlightPainter

    public DefaultHighlightPainter([Color](../../../java/awt/Color.md "class in java.awt") c)

    Constructs a new highlight painter. If `c` is null,
    the JTextComponent will be queried for its selection color.

    Parameters:
    :   `c` - the color for the highlight
* ## Method Details

  + ### getColor

    public [Color](../../../java/awt/Color.md "class in java.awt") getColor()

    Returns the color of the highlight.

    Returns:
    :   the color
  + ### paint

    public void paint([Graphics](../../../java/awt/Graphics.md "class in java.awt") g,
    int offs0,
    int offs1,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") bounds,
    [JTextComponent](JTextComponent.md "class in javax.swing.text") c)

    Paints a highlight.

    Parameters:
    :   `g` - the graphics context
    :   `offs0` - the starting model offset >= 0
    :   `offs1` - the ending model offset >= offs1
    :   `bounds` - the bounding box for the highlight
    :   `c` - the editor
  + ### paintLayer

    public [Shape](../../../java/awt/Shape.md "interface in java.awt") paintLayer([Graphics](../../../java/awt/Graphics.md "class in java.awt") g,
    int offs0,
    int offs1,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") bounds,
    [JTextComponent](JTextComponent.md "class in javax.swing.text") c,
    [View](View.md "class in javax.swing.text") view)

    Paints a portion of a highlight.

    Specified by:
    :   `paintLayer` in class `LayeredHighlighter.LayerPainter`

    Parameters:
    :   `g` - the graphics context
    :   `offs0` - the starting model offset >= 0
    :   `offs1` - the ending model offset >= offs1
    :   `bounds` - the bounding box of the view, which is not
        necessarily the region to paint.
    :   `c` - the editor
    :   `view` - View painting for

    Returns:
    :   region drawing occurred in