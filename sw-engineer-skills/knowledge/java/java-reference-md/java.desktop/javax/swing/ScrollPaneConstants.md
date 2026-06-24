Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Interface ScrollPaneConstants

All Known Implementing Classes:
:   `BasicScrollPaneUI`, `JScrollPane`, `MetalScrollPaneUI`, `ScrollPaneLayout`, `ScrollPaneLayout.UIResource`, `SynthScrollPaneUI`

---

public interface ScrollPaneConstants

Constants used with the JScrollPane component.

Since:
:   1.2

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `COLUMN_HEADER`

  Identifies the area at the top the viewport between the
  upper left corner and the upper right corner.

  `static final String`

  `HORIZONTAL_SCROLLBAR`

  Identifies a horizontal scrollbar.

  `static final int`

  `HORIZONTAL_SCROLLBAR_ALWAYS`

  Used to set the horizontal scroll bar policy so that
  horizontal scrollbars are always displayed.

  `static final int`

  `HORIZONTAL_SCROLLBAR_AS_NEEDED`

  Used to set the horizontal scroll bar policy so that
  horizontal scrollbars are displayed only when needed.

  `static final int`

  `HORIZONTAL_SCROLLBAR_NEVER`

  Used to set the horizontal scroll bar policy so that
  horizontal scrollbars are never displayed.

  `static final String`

  `HORIZONTAL_SCROLLBAR_POLICY`

  Identifies the horizontal scroll bar policy property.

  `static final String`

  `LOWER_LEADING_CORNER`

  Identifies the lower leading edge corner of the viewport.

  `static final String`

  `LOWER_LEFT_CORNER`

  Identifies the lower left corner of the viewport.

  `static final String`

  `LOWER_RIGHT_CORNER`

  Identifies the lower right corner of the viewport.

  `static final String`

  `LOWER_TRAILING_CORNER`

  Identifies the lower trailing edge corner of the viewport.

  `static final String`

  `ROW_HEADER`

  Identifies the area along the left side of the viewport between the
  upper left corner and the lower left corner.

  `static final String`

  `UPPER_LEADING_CORNER`

  Identifies the upper leading edge corner of the viewport.

  `static final String`

  `UPPER_LEFT_CORNER`

  Identifies the upper left corner of the viewport.

  `static final String`

  `UPPER_RIGHT_CORNER`

  Identifies the upper right corner of the viewport.

  `static final String`

  `UPPER_TRAILING_CORNER`

  Identifies the upper trailing edge corner of the viewport.

  `static final String`

  `VERTICAL_SCROLLBAR`

  Identifies a vertical scrollbar.

  `static final int`

  `VERTICAL_SCROLLBAR_ALWAYS`

  Used to set the vertical scroll bar policy so that
  vertical scrollbars are always displayed.

  `static final int`

  `VERTICAL_SCROLLBAR_AS_NEEDED`

  Used to set the vertical scroll bar policy so that
  vertical scrollbars are displayed only when needed.

  `static final int`

  `VERTICAL_SCROLLBAR_NEVER`

  Used to set the vertical scroll bar policy so that
  vertical scrollbars are never displayed.

  `static final String`

  `VERTICAL_SCROLLBAR_POLICY`

  Identifies the vertical scroll bar policy property.

  `static final String`

  `VIEWPORT`

  Identifies a "viewport" or display area, within which
  scrolled contents are visible.

* ## Field Details

  + ### VIEWPORT

    static final [String](../../../java.base/java/lang/String.md "class in java.lang") VIEWPORT

    Identifies a "viewport" or display area, within which
    scrolled contents are visible.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.ScrollPaneConstants.VIEWPORT)
  + ### VERTICAL\_SCROLLBAR

    static final [String](../../../java.base/java/lang/String.md "class in java.lang") VERTICAL\_SCROLLBAR

    Identifies a vertical scrollbar.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.ScrollPaneConstants.VERTICAL_SCROLLBAR)
  + ### HORIZONTAL\_SCROLLBAR

    static final [String](../../../java.base/java/lang/String.md "class in java.lang") HORIZONTAL\_SCROLLBAR

    Identifies a horizontal scrollbar.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.ScrollPaneConstants.HORIZONTAL_SCROLLBAR)
  + ### ROW\_HEADER

    static final [String](../../../java.base/java/lang/String.md "class in java.lang") ROW\_HEADER

    Identifies the area along the left side of the viewport between the
    upper left corner and the lower left corner.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.ScrollPaneConstants.ROW_HEADER)
  + ### COLUMN\_HEADER

    static final [String](../../../java.base/java/lang/String.md "class in java.lang") COLUMN\_HEADER

    Identifies the area at the top the viewport between the
    upper left corner and the upper right corner.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.ScrollPaneConstants.COLUMN_HEADER)
  + ### LOWER\_LEFT\_CORNER

    static final [String](../../../java.base/java/lang/String.md "class in java.lang") LOWER\_LEFT\_CORNER

    Identifies the lower left corner of the viewport.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.ScrollPaneConstants.LOWER_LEFT_CORNER)
  + ### LOWER\_RIGHT\_CORNER

    static final [String](../../../java.base/java/lang/String.md "class in java.lang") LOWER\_RIGHT\_CORNER

    Identifies the lower right corner of the viewport.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.ScrollPaneConstants.LOWER_RIGHT_CORNER)
  + ### UPPER\_LEFT\_CORNER

    static final [String](../../../java.base/java/lang/String.md "class in java.lang") UPPER\_LEFT\_CORNER

    Identifies the upper left corner of the viewport.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.ScrollPaneConstants.UPPER_LEFT_CORNER)
  + ### UPPER\_RIGHT\_CORNER

    static final [String](../../../java.base/java/lang/String.md "class in java.lang") UPPER\_RIGHT\_CORNER

    Identifies the upper right corner of the viewport.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.ScrollPaneConstants.UPPER_RIGHT_CORNER)
  + ### LOWER\_LEADING\_CORNER

    static final [String](../../../java.base/java/lang/String.md "class in java.lang") LOWER\_LEADING\_CORNER

    Identifies the lower leading edge corner of the viewport. The leading edge
    is determined relative to the Scroll Pane's ComponentOrientation property.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.ScrollPaneConstants.LOWER_LEADING_CORNER)
  + ### LOWER\_TRAILING\_CORNER

    static final [String](../../../java.base/java/lang/String.md "class in java.lang") LOWER\_TRAILING\_CORNER

    Identifies the lower trailing edge corner of the viewport. The trailing edge
    is determined relative to the Scroll Pane's ComponentOrientation property.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.ScrollPaneConstants.LOWER_TRAILING_CORNER)
  + ### UPPER\_LEADING\_CORNER

    static final [String](../../../java.base/java/lang/String.md "class in java.lang") UPPER\_LEADING\_CORNER

    Identifies the upper leading edge corner of the viewport. The leading edge
    is determined relative to the Scroll Pane's ComponentOrientation property.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.ScrollPaneConstants.UPPER_LEADING_CORNER)
  + ### UPPER\_TRAILING\_CORNER

    static final [String](../../../java.base/java/lang/String.md "class in java.lang") UPPER\_TRAILING\_CORNER

    Identifies the upper trailing edge corner of the viewport. The trailing edge
    is determined relative to the Scroll Pane's ComponentOrientation property.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.ScrollPaneConstants.UPPER_TRAILING_CORNER)
  + ### VERTICAL\_SCROLLBAR\_POLICY

    static final [String](../../../java.base/java/lang/String.md "class in java.lang") VERTICAL\_SCROLLBAR\_POLICY

    Identifies the vertical scroll bar policy property.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.ScrollPaneConstants.VERTICAL_SCROLLBAR_POLICY)
  + ### HORIZONTAL\_SCROLLBAR\_POLICY

    static final [String](../../../java.base/java/lang/String.md "class in java.lang") HORIZONTAL\_SCROLLBAR\_POLICY

    Identifies the horizontal scroll bar policy property.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.ScrollPaneConstants.HORIZONTAL_SCROLLBAR_POLICY)
  + ### VERTICAL\_SCROLLBAR\_AS\_NEEDED

    static final int VERTICAL\_SCROLLBAR\_AS\_NEEDED

    Used to set the vertical scroll bar policy so that
    vertical scrollbars are displayed only when needed.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED)
  + ### VERTICAL\_SCROLLBAR\_NEVER

    static final int VERTICAL\_SCROLLBAR\_NEVER

    Used to set the vertical scroll bar policy so that
    vertical scrollbars are never displayed.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.ScrollPaneConstants.VERTICAL_SCROLLBAR_NEVER)
  + ### VERTICAL\_SCROLLBAR\_ALWAYS

    static final int VERTICAL\_SCROLLBAR\_ALWAYS

    Used to set the vertical scroll bar policy so that
    vertical scrollbars are always displayed.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS)
  + ### HORIZONTAL\_SCROLLBAR\_AS\_NEEDED

    static final int HORIZONTAL\_SCROLLBAR\_AS\_NEEDED

    Used to set the horizontal scroll bar policy so that
    horizontal scrollbars are displayed only when needed.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED)
  + ### HORIZONTAL\_SCROLLBAR\_NEVER

    static final int HORIZONTAL\_SCROLLBAR\_NEVER

    Used to set the horizontal scroll bar policy so that
    horizontal scrollbars are never displayed.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER)
  + ### HORIZONTAL\_SCROLLBAR\_ALWAYS

    static final int HORIZONTAL\_SCROLLBAR\_ALWAYS

    Used to set the horizontal scroll bar policy so that
    horizontal scrollbars are always displayed.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.ScrollPaneConstants.HORIZONTAL_SCROLLBAR_ALWAYS)