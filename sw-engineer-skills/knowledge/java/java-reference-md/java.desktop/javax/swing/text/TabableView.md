Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Interface TabableView

All Known Implementing Classes:
:   `GlyphView`, `InlineView`, `LabelView`

---

public interface TabableView

Interface for `View`s that have size dependent upon tabs.

See Also:
:   * [`TabExpander`](TabExpander.md "interface in javax.swing.text")
    * [`LabelView`](LabelView.md "class in javax.swing.text")
    * [`ParagraphView`](ParagraphView.md "class in javax.swing.text")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `float`

  `getPartialSpan(int p0,
  int p1)`

  Determines the span along the same axis as tab
  expansion for a portion of the view.

  `float`

  `getTabbedSpan(float x,
  TabExpander e)`

  Determines the desired span when using the given
  tab expansion implementation.

* ## Method Details

  + ### getTabbedSpan

    float getTabbedSpan(float x,
    [TabExpander](TabExpander.md "interface in javax.swing.text") e)

    Determines the desired span when using the given
    tab expansion implementation. If a container
    calls this method, it will do so prior to the
    normal layout which would call getPreferredSpan.
    A view implementing this should give the same
    result in any subsequent calls to getPreferredSpan
    along the axis of tab expansion.

    Parameters:
    :   `x` - the position the view would be located
        at for the purpose of tab expansion >= 0.
    :   `e` - how to expand the tabs when encountered.

    Returns:
    :   the desired span >= 0
  + ### getPartialSpan

    float getPartialSpan(int p0,
    int p1)

    Determines the span along the same axis as tab
    expansion for a portion of the view. This is
    intended for use by the TabExpander for cases
    where the tab expansion involves aligning the
    portion of text that doesn't have whitespace
    relative to the tab stop. There is therefore
    an assumption that the range given does not
    contain tabs.

    Parameters:
    :   `p0` - the starting location in the text document >= 0
    :   `p1` - the ending location in the text document >= p0

    Returns:
    :   the span >= 0