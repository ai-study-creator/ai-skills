Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Interface Scrollable

All Known Implementing Classes:
:   `DefaultTreeCellEditor.DefaultTextField`, `JEditorPane`, `JFormattedTextField`, `JLayer`, `JList`, `JPasswordField`, `JTable`, `JTextArea`, `JTextComponent`, `JTextField`, `JTextPane`, `JTree`

---

public interface Scrollable

An interface that provides information to a scrolling container
like JScrollPane. A complex component that's likely to be used
as a viewing a JScrollPane viewport (or other scrolling container)
should implement this interface.

Since:
:   1.2

See Also:
:   * [`JViewport`](JViewport.md "class in javax.swing")
    * [`JScrollPane`](JScrollPane.md "class in javax.swing")
    * [`JScrollBar`](JScrollBar.md "class in javax.swing")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Dimension`

  `getPreferredScrollableViewportSize()`

  Returns the preferred size of the viewport for a view component.

  `int`

  `getScrollableBlockIncrement(Rectangle visibleRect,
  int orientation,
  int direction)`

  Components that display logical rows or columns should compute
  the scroll increment that will completely expose one block
  of rows or columns, depending on the value of orientation.

  `boolean`

  `getScrollableTracksViewportHeight()`

  Return true if a viewport should always force the height of this
  Scrollable to match the height of the viewport.

  `boolean`

  `getScrollableTracksViewportWidth()`

  Return true if a viewport should always force the width of this
  `Scrollable` to match the width of the viewport.

  `int`

  `getScrollableUnitIncrement(Rectangle visibleRect,
  int orientation,
  int direction)`

  Components that display logical rows or columns should compute
  the scroll increment that will completely expose one new row
  or column, depending on the value of orientation.

* ## Method Details

  + ### getPreferredScrollableViewportSize

    [Dimension](../../java/awt/Dimension.md "class in java.awt") getPreferredScrollableViewportSize()

    Returns the preferred size of the viewport for a view component.
    For example, the preferred size of a `JList` component
    is the size required to accommodate all of the cells in its list.
    However, the value of `preferredScrollableViewportSize`
    is the size required for `JList.getVisibleRowCount` rows.
    A component without any properties that would affect the viewport
    size should just return `getPreferredSize` here.

    Returns:
    :   the preferredSize of a `JViewport` whose view
        is this `Scrollable`

    See Also:
    :   - [`JComponent.getPreferredSize()`](JComponent.md#getPreferredSize())
  + ### getScrollableUnitIncrement

    int getScrollableUnitIncrement([Rectangle](../../java/awt/Rectangle.md "class in java.awt") visibleRect,
    int orientation,
    int direction)

    Components that display logical rows or columns should compute
    the scroll increment that will completely expose one new row
    or column, depending on the value of orientation. Ideally,
    components should handle a partially exposed row or column by
    returning the distance required to completely expose the item.

    Scrolling containers, like JScrollPane, will use this method
    each time the user requests a unit scroll.

    Parameters:
    :   `visibleRect` - The view area visible within the viewport
    :   `orientation` - Either SwingConstants.VERTICAL or SwingConstants.HORIZONTAL.
    :   `direction` - Less than zero to scroll up/left, greater than zero for down/right.

    Returns:
    :   The "unit" increment for scrolling in the specified direction.
        This value should always be positive.

    See Also:
    :   - [`JScrollBar.setUnitIncrement(int)`](JScrollBar.md#setUnitIncrement(int))
  + ### getScrollableBlockIncrement

    int getScrollableBlockIncrement([Rectangle](../../java/awt/Rectangle.md "class in java.awt") visibleRect,
    int orientation,
    int direction)

    Components that display logical rows or columns should compute
    the scroll increment that will completely expose one block
    of rows or columns, depending on the value of orientation.

    Scrolling containers, like JScrollPane, will use this method
    each time the user requests a block scroll.

    Parameters:
    :   `visibleRect` - The view area visible within the viewport
    :   `orientation` - Either SwingConstants.VERTICAL or SwingConstants.HORIZONTAL.
    :   `direction` - Less than zero to scroll up/left, greater than zero for down/right.

    Returns:
    :   The "block" increment for scrolling in the specified direction.
        This value should always be positive.

    See Also:
    :   - [`JScrollBar.setBlockIncrement(int)`](JScrollBar.md#setBlockIncrement(int))
  + ### getScrollableTracksViewportWidth

    boolean getScrollableTracksViewportWidth()

    Return true if a viewport should always force the width of this
    `Scrollable` to match the width of the viewport.
    For example a normal
    text view that supported line wrapping would return true here, since it
    would be undesirable for wrapped lines to disappear beyond the right
    edge of the viewport. Note that returning true for a Scrollable
    whose ancestor is a JScrollPane effectively disables horizontal
    scrolling.

    Scrolling containers, like JViewport, will use this method each
    time they are validated.

    Returns:
    :   True if a viewport should force the Scrollables width to match its own.
  + ### getScrollableTracksViewportHeight

    boolean getScrollableTracksViewportHeight()

    Return true if a viewport should always force the height of this
    Scrollable to match the height of the viewport. For example a
    columnar text view that flowed text in left to right columns
    could effectively disable vertical scrolling by returning
    true here.

    Scrolling containers, like JViewport, will use this method each
    time they are validated.

    Returns:
    :   True if a viewport should force the Scrollables height to match its own.