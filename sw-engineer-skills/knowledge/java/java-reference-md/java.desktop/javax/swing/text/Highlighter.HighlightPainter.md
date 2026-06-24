Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Interface Highlighter.HighlightPainter

All Known Implementing Classes:
:   `DefaultHighlighter.DefaultHighlightPainter`, `LayeredHighlighter.LayerPainter`

Enclosing interface:
:   `Highlighter`

---

public static interface Highlighter.HighlightPainter

Highlight renderer.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `paint(Graphics g,
  int p0,
  int p1,
  Shape bounds,
  JTextComponent c)`

  Renders the highlight.

* ## Method Details

  + ### paint

    void paint([Graphics](../../../java/awt/Graphics.md "class in java.awt") g,
    int p0,
    int p1,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") bounds,
    [JTextComponent](JTextComponent.md "class in javax.swing.text") c)

    Renders the highlight.

    Parameters:
    :   `g` - the graphics context
    :   `p0` - the starting offset in the model >= 0
    :   `p1` - the ending offset in the model >= p0
    :   `bounds` - the bounding box for the highlight
    :   `c` - the editor