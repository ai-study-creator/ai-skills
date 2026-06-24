Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Interface Highlighter.Highlight

Enclosing interface:
:   `Highlighter`

---

public static interface Highlighter.Highlight

A highlight.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `int`

  `getEndOffset()`

  Gets the ending model offset for the highlight.

  `Highlighter.HighlightPainter`

  `getPainter()`

  Gets the painter for the highlighter.

  `int`

  `getStartOffset()`

  Gets the starting model offset for the highlight.

* ## Method Details

  + ### getStartOffset

    int getStartOffset()

    Gets the starting model offset for the highlight.

    Returns:
    :   the starting offset >= 0
  + ### getEndOffset

    int getEndOffset()

    Gets the ending model offset for the highlight.

    Returns:
    :   the ending offset >= 0
  + ### getPainter

    [Highlighter.HighlightPainter](Highlighter.HighlightPainter.md "interface in javax.swing.text") getPainter()

    Gets the painter for the highlighter.

    Returns:
    :   the painter