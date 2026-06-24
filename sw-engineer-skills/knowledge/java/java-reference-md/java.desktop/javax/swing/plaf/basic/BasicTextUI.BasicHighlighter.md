Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicTextUI.BasicHighlighter

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.LayeredHighlighter](../../text/LayeredHighlighter.md "class in javax.swing.text")

[javax.swing.text.DefaultHighlighter](../../text/DefaultHighlighter.md "class in javax.swing.text")

javax.swing.plaf.basic.BasicTextUI.BasicHighlighter

All Implemented Interfaces:
:   `UIResource`, `Highlighter`

Enclosing class:
:   `BasicTextUI`

---

public static class BasicTextUI.BasicHighlighter
extends [DefaultHighlighter](../../text/DefaultHighlighter.md "class in javax.swing.text")
implements [UIResource](../UIResource.md "interface in javax.swing.plaf")

Default implementation of the interface `Highlighter`.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.text.[DefaultHighlighter](../../text/DefaultHighlighter.md "class in javax.swing.text")

  `DefaultHighlighter.DefaultHighlightPainter`

  ## Nested classes/interfaces inherited from class javax.swing.text.[LayeredHighlighter](../../text/LayeredHighlighter.md "class in javax.swing.text")

  `LayeredHighlighter.LayerPainter`

  ## Nested classes/interfaces inherited from interface javax.swing.text.[Highlighter](../../text/Highlighter.md "interface in javax.swing.text")

  `Highlighter.Highlight, Highlighter.HighlightPainter`
* ## Field Summary

  ### Fields inherited from class javax.swing.text.[DefaultHighlighter](../../text/DefaultHighlighter.md "class in javax.swing.text")

  `DefaultPainter`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicHighlighter()`

  Constructs a `BasicHighlighter`.
* ## Method Summary

  ### Methods inherited from class javax.swing.text.[DefaultHighlighter](../../text/DefaultHighlighter.md "class in javax.swing.text")

  `addHighlight, changeHighlight, deinstall, getDrawsLayeredHighlights, getHighlights, install, paint, paintLayeredHighlights, removeAllHighlights, removeHighlight, setDrawsLayeredHighlights`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### BasicHighlighter

    public BasicHighlighter()

    Constructs a `BasicHighlighter`.