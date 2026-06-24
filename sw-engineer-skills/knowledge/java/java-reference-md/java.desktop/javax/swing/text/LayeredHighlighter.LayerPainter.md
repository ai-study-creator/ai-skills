Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class LayeredHighlighter.LayerPainter

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.LayeredHighlighter.LayerPainter

All Implemented Interfaces:
:   `Highlighter.HighlightPainter`

Direct Known Subclasses:
:   `DefaultHighlighter.DefaultHighlightPainter`

Enclosing class:
:   `LayeredHighlighter`

---

public abstract static class LayeredHighlighter.LayerPainter
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Highlighter.HighlightPainter](Highlighter.HighlightPainter.md "interface in javax.swing.text")

Layered highlight renderer.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `LayerPainter()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract Shape`

  `paintLayer(Graphics g,
  int p0,
  int p1,
  Shape viewBounds,
  JTextComponent editor,
  View view)`

  Paints a portion of a highlight.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.swing.text.[Highlighter.HighlightPainter](Highlighter.HighlightPainter.md "interface in javax.swing.text")

  `paint`

* ## Constructor Details

  + ### LayerPainter

    protected LayerPainter()

    Constructor for subclasses to call.
* ## Method Details

  + ### paintLayer

    public abstract [Shape](../../../java/awt/Shape.md "interface in java.awt") paintLayer([Graphics](../../../java/awt/Graphics.md "class in java.awt") g,
    int p0,
    int p1,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") viewBounds,
    [JTextComponent](JTextComponent.md "class in javax.swing.text") editor,
    [View](View.md "class in javax.swing.text") view)

    Paints a portion of a highlight.

    Parameters:
    :   `g` - Graphics used to draw
    :   `p0` - starting offset of view
    :   `p1` - ending offset of view
    :   `viewBounds` - Bounds of View
    :   `editor` - JTextComponent
    :   `view` - View instance being rendered

    Returns:
    :   a shape