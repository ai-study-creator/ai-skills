Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class LayeredHighlighter

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.LayeredHighlighter

All Implemented Interfaces:
:   `Highlighter`

Direct Known Subclasses:
:   `DefaultHighlighter`

---

public abstract class LayeredHighlighter
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Highlighter](Highlighter.md "interface in javax.swing.text")

Implementation of `Highlighter` interface to mark up the
background of leaf views with colored areas.

See Also:
:   * [`Highlighter`](Highlighter.md "interface in javax.swing.text")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static class`

  `LayeredHighlighter.LayerPainter`

  Layered highlight renderer.

  ## Nested classes/interfaces inherited from interface javax.swing.text.[Highlighter](Highlighter.md "interface in javax.swing.text")

  `Highlighter.Highlight, Highlighter.HighlightPainter`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `LayeredHighlighter()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract void`

  `paintLayeredHighlights(Graphics g,
  int p0,
  int p1,
  Shape viewBounds,
  JTextComponent editor,
  View view)`

  When leaf Views (such as LabelView) are rendering they should
  call into this method.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.swing.text.[Highlighter](Highlighter.md "interface in javax.swing.text")

  `addHighlight, changeHighlight, deinstall, getHighlights, install, paint, removeAllHighlights, removeHighlight`

* ## Constructor Details

  + ### LayeredHighlighter

    protected LayeredHighlighter()

    Constructor for subclasses to call.
* ## Method Details

  + ### paintLayeredHighlights

    public abstract void paintLayeredHighlights([Graphics](../../../java/awt/Graphics.md "class in java.awt") g,
    int p0,
    int p1,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") viewBounds,
    [JTextComponent](JTextComponent.md "class in javax.swing.text") editor,
    [View](View.md "class in javax.swing.text") view)

    When leaf Views (such as LabelView) are rendering they should
    call into this method. If a highlight is in the given region it will
    be drawn immediately.

    Parameters:
    :   `g` - Graphics used to draw
    :   `p0` - starting offset of view
    :   `p1` - ending offset of view
    :   `viewBounds` - Bounds of View
    :   `editor` - JTextComponent
    :   `view` - View instance being rendered