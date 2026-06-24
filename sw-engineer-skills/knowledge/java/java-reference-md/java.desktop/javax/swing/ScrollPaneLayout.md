Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class ScrollPaneLayout

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.ScrollPaneLayout

All Implemented Interfaces:
:   `LayoutManager`, `Serializable`, `ScrollPaneConstants`

Direct Known Subclasses:
:   `ScrollPaneLayout.UIResource`

---

public class ScrollPaneLayout
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [LayoutManager](../../java/awt/LayoutManager.md "interface in java.awt"), [ScrollPaneConstants](ScrollPaneConstants.md "interface in javax.swing"), [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

The layout manager used by `JScrollPane`.
`JScrollPaneLayout` is
responsible for nine components: a viewport, two scrollbars,
a row header, a column header, and four "corner" components.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../java/beans/XMLEncoder.md "class in java.beans").

Since:
:   1.2

See Also:
:   * [`JScrollPane`](JScrollPane.md "class in javax.swing")
    * [`JViewport`](JViewport.md "class in javax.swing")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static class`

  `ScrollPaneLayout.UIResource`

  The UI resource version of `ScrollPaneLayout`.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected JViewport`

  `colHead`

  The column header child.

  `protected JScrollBar`

  `hsb`

  The scrollpane's horizontal scrollbar child.

  `protected int`

  `hsbPolicy`

  The display policy for the horizontal scrollbar.

  `protected Component`

  `lowerLeft`

  The component to display in the lower left corner.

  `protected Component`

  `lowerRight`

  The component to display in the lower right corner.

  `protected JViewport`

  `rowHead`

  The row header child.

  `protected Component`

  `upperLeft`

  The component to display in the upper left corner.

  `protected Component`

  `upperRight`

  The component to display in the upper right corner.

  `protected JViewport`

  `viewport`

  The scrollpane's viewport child.

  `protected JScrollBar`

  `vsb`

  The scrollpane's vertical scrollbar child.

  `protected int`

  `vsbPolicy`

  The display policy for the vertical scrollbar.

  ### Fields inherited from interface javax.swing.[ScrollPaneConstants](ScrollPaneConstants.md "interface in javax.swing")

  `COLUMN_HEADER, HORIZONTAL_SCROLLBAR, HORIZONTAL_SCROLLBAR_ALWAYS, HORIZONTAL_SCROLLBAR_AS_NEEDED, HORIZONTAL_SCROLLBAR_NEVER, HORIZONTAL_SCROLLBAR_POLICY, LOWER_LEADING_CORNER, LOWER_LEFT_CORNER, LOWER_RIGHT_CORNER, LOWER_TRAILING_CORNER, ROW_HEADER, UPPER_LEADING_CORNER, UPPER_LEFT_CORNER, UPPER_RIGHT_CORNER, UPPER_TRAILING_CORNER, VERTICAL_SCROLLBAR, VERTICAL_SCROLLBAR_ALWAYS, VERTICAL_SCROLLBAR_AS_NEEDED, VERTICAL_SCROLLBAR_NEVER, VERTICAL_SCROLLBAR_POLICY, VIEWPORT`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ScrollPaneLayout()`

  Constructs a `ScrollPaneLayout`.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `addLayoutComponent(String s,
  Component c)`

  Adds the specified component to the layout.

  `protected Component`

  `addSingletonComponent(Component oldC,
  Component newC)`

  Removes an existing component.

  `JViewport`

  `getColumnHeader()`

  Returns the `JViewport` object that is the column header.

  `Component`

  `getCorner(String key)`

  Returns the `Component` at the specified corner.

  `JScrollBar`

  `getHorizontalScrollBar()`

  Returns the `JScrollBar` object that handles horizontal scrolling.

  `int`

  `getHorizontalScrollBarPolicy()`

  Returns the horizontal scrollbar-display policy.

  `JViewport`

  `getRowHeader()`

  Returns the `JViewport` object that is the row header.

  `JScrollBar`

  `getVerticalScrollBar()`

  Returns the `JScrollBar` object that handles vertical scrolling.

  `int`

  `getVerticalScrollBarPolicy()`

  Returns the vertical scrollbar-display policy.

  `JViewport`

  `getViewport()`

  Returns the `JViewport` object that displays the
  scrollable contents.

  `Rectangle`

  `getViewportBorderBounds(JScrollPane scrollpane)`

  Deprecated.

  As of JDK version Swing1.1
  replaced by `JScrollPane.getViewportBorderBounds()`.

  `void`

  `layoutContainer(Container parent)`

  Lays out the scrollpane.

  `Dimension`

  `minimumLayoutSize(Container parent)`

  The minimum size of a `ScrollPane` is the size of the insets
  plus minimum size of the viewport, plus the scrollpane's
  viewportBorder insets, plus the minimum size
  of the visible headers, plus the minimum size of the
  scrollbars whose displayPolicy isn't NEVER.

  `Dimension`

  `preferredLayoutSize(Container parent)`

  The preferred size of a `ScrollPane` is the size of the insets,
  plus the preferred size of the viewport, plus the preferred size of
  the visible headers, plus the preferred size of the scrollbars
  that will appear given the current view and the current
  scrollbar displayPolicies.

  `void`

  `removeLayoutComponent(Component c)`

  Removes the specified component from the layout.

  `void`

  `setHorizontalScrollBarPolicy(int x)`

  Sets the horizontal scrollbar-display policy.

  `void`

  `setVerticalScrollBarPolicy(int x)`

  Sets the vertical scrollbar-display policy.

  `void`

  `syncWithScrollPane(JScrollPane sp)`

  This method is invoked after the ScrollPaneLayout is set as the
  LayoutManager of a `JScrollPane`.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### viewport

    protected [JViewport](JViewport.md "class in javax.swing") viewport

    The scrollpane's viewport child.
    Default is an empty `JViewport`.

    See Also:
    :   - [`JScrollPane.setViewport(javax.swing.JViewport)`](JScrollPane.md#setViewport(javax.swing.JViewport))
  + ### vsb

    protected [JScrollBar](JScrollBar.md "class in javax.swing") vsb

    The scrollpane's vertical scrollbar child.
    Default is a `JScrollBar`.

    See Also:
    :   - [`JScrollPane.setVerticalScrollBar(javax.swing.JScrollBar)`](JScrollPane.md#setVerticalScrollBar(javax.swing.JScrollBar))
  + ### hsb

    protected [JScrollBar](JScrollBar.md "class in javax.swing") hsb

    The scrollpane's horizontal scrollbar child.
    Default is a `JScrollBar`.

    See Also:
    :   - [`JScrollPane.setHorizontalScrollBar(javax.swing.JScrollBar)`](JScrollPane.md#setHorizontalScrollBar(javax.swing.JScrollBar))
  + ### rowHead

    protected [JViewport](JViewport.md "class in javax.swing") rowHead

    The row header child. Default is `null`.

    See Also:
    :   - [`JScrollPane.setRowHeader(javax.swing.JViewport)`](JScrollPane.md#setRowHeader(javax.swing.JViewport))
  + ### colHead

    protected [JViewport](JViewport.md "class in javax.swing") colHead

    The column header child. Default is `null`.

    See Also:
    :   - [`JScrollPane.setColumnHeader(javax.swing.JViewport)`](JScrollPane.md#setColumnHeader(javax.swing.JViewport))
  + ### lowerLeft

    protected [Component](../../java/awt/Component.md "class in java.awt") lowerLeft

    The component to display in the lower left corner.
    Default is `null`.

    See Also:
    :   - [`JScrollPane.setCorner(java.lang.String, java.awt.Component)`](JScrollPane.md#setCorner(java.lang.String,java.awt.Component))
  + ### lowerRight

    protected [Component](../../java/awt/Component.md "class in java.awt") lowerRight

    The component to display in the lower right corner.
    Default is `null`.

    See Also:
    :   - [`JScrollPane.setCorner(java.lang.String, java.awt.Component)`](JScrollPane.md#setCorner(java.lang.String,java.awt.Component))
  + ### upperLeft

    protected [Component](../../java/awt/Component.md "class in java.awt") upperLeft

    The component to display in the upper left corner.
    Default is `null`.

    See Also:
    :   - [`JScrollPane.setCorner(java.lang.String, java.awt.Component)`](JScrollPane.md#setCorner(java.lang.String,java.awt.Component))
  + ### upperRight

    protected [Component](../../java/awt/Component.md "class in java.awt") upperRight

    The component to display in the upper right corner.
    Default is `null`.

    See Also:
    :   - [`JScrollPane.setCorner(java.lang.String, java.awt.Component)`](JScrollPane.md#setCorner(java.lang.String,java.awt.Component))
  + ### vsbPolicy

    protected int vsbPolicy

    The display policy for the vertical scrollbar.
    The default is `ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED`.

    This field is obsolete, please use the `JScrollPane` field instead.

    See Also:
    :   - [`JScrollPane.setVerticalScrollBarPolicy(int)`](JScrollPane.md#setVerticalScrollBarPolicy(int))
  + ### hsbPolicy

    protected int hsbPolicy

    The display policy for the horizontal scrollbar.
    The default is `ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED`.

    This field is obsolete, please use the `JScrollPane` field instead.

    See Also:
    :   - [`JScrollPane.setHorizontalScrollBarPolicy(int)`](JScrollPane.md#setHorizontalScrollBarPolicy(int))
* ## Constructor Details

  + ### ScrollPaneLayout

    public ScrollPaneLayout()

    Constructs a `ScrollPaneLayout`.
* ## Method Details

  + ### syncWithScrollPane

    public void syncWithScrollPane([JScrollPane](JScrollPane.md "class in javax.swing") sp)

    This method is invoked after the ScrollPaneLayout is set as the
    LayoutManager of a `JScrollPane`.
    It initializes all of the internal fields that
    are ordinarily set by `addLayoutComponent`. For example:

    ```
     ScrollPaneLayout mySPLayout = new ScrollPanelLayout() {
         public void layoutContainer(Container p) {
             super.layoutContainer(p);
             // do some extra work here ...
         }
     };
     scrollpane.setLayout(mySPLayout):
    ```

    Parameters:
    :   `sp` - an instance of the `JScrollPane`
  + ### addSingletonComponent

    protected [Component](../../java/awt/Component.md "class in java.awt") addSingletonComponent([Component](../../java/awt/Component.md "class in java.awt") oldC,
    [Component](../../java/awt/Component.md "class in java.awt") newC)

    Removes an existing component. When a new component, such as
    the left corner, or vertical scrollbar, is added, the old one,
    if it exists, must be removed.

    This method returns `newC`. If `oldC` is
    not equal to `newC` and is non-`null`,
    it will be removed from its parent.

    Parameters:
    :   `oldC` - the `Component` to replace
    :   `newC` - the `Component` to add

    Returns:
    :   the `newC`
  + ### addLayoutComponent

    public void addLayoutComponent([String](../../../java.base/java/lang/String.md "class in java.lang") s,
    [Component](../../java/awt/Component.md "class in java.awt") c)

    Adds the specified component to the layout. The layout is
    identified using one of:
    - ScrollPaneConstants.VIEWPORT- ScrollPaneConstants.VERTICAL\_SCROLLBAR- ScrollPaneConstants.HORIZONTAL\_SCROLLBAR- ScrollPaneConstants.ROW\_HEADER- ScrollPaneConstants.COLUMN\_HEADER- ScrollPaneConstants.LOWER\_LEFT\_CORNER- ScrollPaneConstants.LOWER\_RIGHT\_CORNER- ScrollPaneConstants.UPPER\_LEFT\_CORNER- ScrollPaneConstants.UPPER\_RIGHT\_CORNER

    Specified by:
    :   `addLayoutComponent` in interface `LayoutManager`

    Parameters:
    :   `s` - the component identifier
    :   `c` - the component to be added

    Throws:
    :   `IllegalArgumentException` - if `s` is an invalid key
  + ### removeLayoutComponent

    public void removeLayoutComponent([Component](../../java/awt/Component.md "class in java.awt") c)

    Removes the specified component from the layout.

    Specified by:
    :   `removeLayoutComponent` in interface `LayoutManager`

    Parameters:
    :   `c` - the component to remove
  + ### getVerticalScrollBarPolicy

    public int getVerticalScrollBarPolicy()

    Returns the vertical scrollbar-display policy.

    Returns:
    :   an integer giving the display policy

    See Also:
    :   - [`setVerticalScrollBarPolicy(int)`](#setVerticalScrollBarPolicy(int))
  + ### setVerticalScrollBarPolicy

    public void setVerticalScrollBarPolicy(int x)

    Sets the vertical scrollbar-display policy. The options
    are:
    - ScrollPaneConstants.VERTICAL\_SCROLLBAR\_AS\_NEEDED- ScrollPaneConstants.VERTICAL\_SCROLLBAR\_NEVER- ScrollPaneConstants.VERTICAL\_SCROLLBAR\_ALWAYSNote: Applications should use the `JScrollPane` version
    of this method. It only exists for backwards compatibility
    with the Swing 1.0.2 (and earlier) versions of this class.

    Parameters:
    :   `x` - an integer giving the display policy

    Throws:
    :   `IllegalArgumentException` - if `x` is an invalid
        vertical scroll bar policy, as listed above
  + ### getHorizontalScrollBarPolicy

    public int getHorizontalScrollBarPolicy()

    Returns the horizontal scrollbar-display policy.

    Returns:
    :   an integer giving the display policy

    See Also:
    :   - [`setHorizontalScrollBarPolicy(int)`](#setHorizontalScrollBarPolicy(int))
  + ### setHorizontalScrollBarPolicy

    public void setHorizontalScrollBarPolicy(int x)

    Sets the horizontal scrollbar-display policy.
    The options are:
    - ScrollPaneConstants.HORIZONTAL\_SCROLLBAR\_AS\_NEEDED- ScrollPaneConstants.HORIZONTAL\_SCROLLBAR\_NEVER- ScrollPaneConstants.HORIZONTAL\_SCROLLBAR\_ALWAYSNote: Applications should use the `JScrollPane` version
    of this method. It only exists for backwards compatibility
    with the Swing 1.0.2 (and earlier) versions of this class.

    Parameters:
    :   `x` - an int giving the display policy

    Throws:
    :   `IllegalArgumentException` - if `x` is not a valid
        horizontal scrollbar policy, as listed above
  + ### getViewport

    public [JViewport](JViewport.md "class in javax.swing") getViewport()

    Returns the `JViewport` object that displays the
    scrollable contents.

    Returns:
    :   the `JViewport` object that displays the scrollable contents

    See Also:
    :   - [`JScrollPane.getViewport()`](JScrollPane.md#getViewport())
  + ### getHorizontalScrollBar

    public [JScrollBar](JScrollBar.md "class in javax.swing") getHorizontalScrollBar()

    Returns the `JScrollBar` object that handles horizontal scrolling.

    Returns:
    :   the `JScrollBar` object that handles horizontal scrolling

    See Also:
    :   - [`JScrollPane.getHorizontalScrollBar()`](JScrollPane.md#getHorizontalScrollBar())
  + ### getVerticalScrollBar

    public [JScrollBar](JScrollBar.md "class in javax.swing") getVerticalScrollBar()

    Returns the `JScrollBar` object that handles vertical scrolling.

    Returns:
    :   the `JScrollBar` object that handles vertical scrolling

    See Also:
    :   - [`JScrollPane.getVerticalScrollBar()`](JScrollPane.md#getVerticalScrollBar())
  + ### getRowHeader

    public [JViewport](JViewport.md "class in javax.swing") getRowHeader()

    Returns the `JViewport` object that is the row header.

    Returns:
    :   the `JViewport` object that is the row header

    See Also:
    :   - [`JScrollPane.getRowHeader()`](JScrollPane.md#getRowHeader())
  + ### getColumnHeader

    public [JViewport](JViewport.md "class in javax.swing") getColumnHeader()

    Returns the `JViewport` object that is the column header.

    Returns:
    :   the `JViewport` object that is the column header

    See Also:
    :   - [`JScrollPane.getColumnHeader()`](JScrollPane.md#getColumnHeader())
  + ### getCorner

    public [Component](../../java/awt/Component.md "class in java.awt") getCorner([String](../../../java.base/java/lang/String.md "class in java.lang") key)

    Returns the `Component` at the specified corner.

    Parameters:
    :   `key` - the `String` specifying the corner

    Returns:
    :   the `Component` at the specified corner, as defined in
        [`ScrollPaneConstants`](ScrollPaneConstants.md "interface in javax.swing"); if `key` is not one of the
        four corners, `null` is returned

    See Also:
    :   - [`JScrollPane.getCorner(java.lang.String)`](JScrollPane.md#getCorner(java.lang.String))
  + ### preferredLayoutSize

    public [Dimension](../../java/awt/Dimension.md "class in java.awt") preferredLayoutSize([Container](../../java/awt/Container.md "class in java.awt") parent)

    The preferred size of a `ScrollPane` is the size of the insets,
    plus the preferred size of the viewport, plus the preferred size of
    the visible headers, plus the preferred size of the scrollbars
    that will appear given the current view and the current
    scrollbar displayPolicies.

    Note that the rowHeader is calculated as part of the preferred width
    and the colHeader is calculated as part of the preferred size.

    Specified by:
    :   `preferredLayoutSize` in interface `LayoutManager`

    Parameters:
    :   `parent` - the `Container` that will be laid out

    Returns:
    :   a `Dimension` object specifying the preferred size of the
        viewport and any scrollbars

    See Also:
    :   - [`ViewportLayout`](ViewportLayout.md "class in javax.swing")
        - [`LayoutManager`](../../java/awt/LayoutManager.md "interface in java.awt")
  + ### minimumLayoutSize

    public [Dimension](../../java/awt/Dimension.md "class in java.awt") minimumLayoutSize([Container](../../java/awt/Container.md "class in java.awt") parent)

    The minimum size of a `ScrollPane` is the size of the insets
    plus minimum size of the viewport, plus the scrollpane's
    viewportBorder insets, plus the minimum size
    of the visible headers, plus the minimum size of the
    scrollbars whose displayPolicy isn't NEVER.

    Specified by:
    :   `minimumLayoutSize` in interface `LayoutManager`

    Parameters:
    :   `parent` - the `Container` that will be laid out

    Returns:
    :   a `Dimension` object specifying the minimum size

    See Also:
    :   - [`LayoutManager.preferredLayoutSize(java.awt.Container)`](../../java/awt/LayoutManager.md#preferredLayoutSize(java.awt.Container))
  + ### layoutContainer

    public void layoutContainer([Container](../../java/awt/Container.md "class in java.awt") parent)

    Lays out the scrollpane. The positioning of components depends on
    the following constraints:
    - The row header, if present and visible, gets its preferred
      width and the viewport's height.- The column header, if present and visible, gets its preferred
        height and the viewport's width.- If a vertical scrollbar is needed, i.e. if the viewport's extent
          height is smaller than its view height or if the `displayPolicy`
          is ALWAYS, it's treated like the row header with respect to its
          dimensions and is made visible.- If a horizontal scrollbar is needed, it is treated like the
            column header (see the paragraph above regarding the vertical scrollbar).- If the scrollpane has a non-`null`
              `viewportBorder`, then space is allocated for that.- The viewport gets the space available after accounting for
                the previous constraints.- The corner components, if provided, are aligned with the
                  ends of the scrollbars and headers. If there is a vertical
                  scrollbar, the right corners appear; if there is a horizontal
                  scrollbar, the lower corners appear; a row header gets left
                  corners, and a column header gets upper corners.

    Specified by:
    :   `layoutContainer` in interface `LayoutManager`

    Parameters:
    :   `parent` - the `Container` to lay out
  + ### getViewportBorderBounds

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public [Rectangle](../../java/awt/Rectangle.md "class in java.awt") getViewportBorderBounds([JScrollPane](JScrollPane.md "class in javax.swing") scrollpane)

    Deprecated.

    As of JDK version Swing1.1
    replaced by `JScrollPane.getViewportBorderBounds()`.

    Returns the bounds of the border around the specified scroll pane's
    viewport.

    Parameters:
    :   `scrollpane` - an instance of the `JScrollPane`

    Returns:
    :   the size and position of the viewport border