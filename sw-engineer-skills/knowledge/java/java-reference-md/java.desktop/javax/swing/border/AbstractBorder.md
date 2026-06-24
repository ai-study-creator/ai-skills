Module [java.desktop](../../../module-summary.md)

Package [javax.swing.border](package-summary.md)

# Class AbstractBorder

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.border.AbstractBorder

All Implemented Interfaces:
:   `Serializable`, `Border`

Direct Known Subclasses:
:   `BasicBorders.ButtonBorder`, `BasicBorders.FieldBorder`, `BasicBorders.MarginBorder`, `BasicBorders.MenuBarBorder`, `BevelBorder`, `CompoundBorder`, `EmptyBorder`, `EtchedBorder`, `LineBorder`, `MetalBorders.ButtonBorder`, `MetalBorders.Flush3DBorder`, `MetalBorders.InternalFrameBorder`, `MetalBorders.MenuBarBorder`, `MetalBorders.MenuItemBorder`, `MetalBorders.OptionDialogBorder`, `MetalBorders.PaletteBorder`, `MetalBorders.PopupMenuBorder`, `MetalBorders.ScrollPaneBorder`, `MetalBorders.TableHeaderBorder`, `MetalBorders.ToolBarBorder`, `StrokeBorder`, `TitledBorder`

---

public abstract class AbstractBorder
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Border](Border.md "interface in javax.swing.border"), [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

A class that implements an empty border with no size.
This provides a convenient base class from which other border
classes can be easily derived.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AbstractBorder()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getBaseline(Component c,
  int width,
  int height)`

  Returns the baseline.

  `Component.BaselineResizeBehavior`

  `getBaselineResizeBehavior(Component c)`

  Returns an enum indicating how the baseline of a component
  changes as the size changes.

  `Insets`

  `getBorderInsets(Component c)`

  This default implementation returns a new [`Insets`](../../../java/awt/Insets.md "class in java.awt") object
  that is initialized by the [`getBorderInsets(Component,Insets)`](#getBorderInsets(java.awt.Component,java.awt.Insets))
  method.

  `Insets`

  `getBorderInsets(Component c,
  Insets insets)`

  Reinitializes the insets parameter with this Border's current Insets.

  `Rectangle`

  `getInteriorRectangle(Component c,
  int x,
  int y,
  int width,
  int height)`

  This convenience method calls the static method.

  `static Rectangle`

  `getInteriorRectangle(Component c,
  Border b,
  int x,
  int y,
  int width,
  int height)`

  Returns a rectangle using the arguments minus the
  insets of the border.

  `boolean`

  `isBorderOpaque()`

  This default implementation returns false.

  `void`

  `paintBorder(Component c,
  Graphics g,
  int x,
  int y,
  int width,
  int height)`

  This default implementation does no painting.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AbstractBorder

    protected AbstractBorder()

    Constructor for subclasses to call.
* ## Method Details

  + ### paintBorder

    public void paintBorder([Component](../../../java/awt/Component.md "class in java.awt") c,
    [Graphics](../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int width,
    int height)

    This default implementation does no painting.

    Specified by:
    :   `paintBorder` in interface `Border`

    Parameters:
    :   `c` - the component for which this border is being painted
    :   `g` - the paint graphics
    :   `x` - the x position of the painted border
    :   `y` - the y position of the painted border
    :   `width` - the width of the painted border
    :   `height` - the height of the painted border
  + ### getBorderInsets

    public [Insets](../../../java/awt/Insets.md "class in java.awt") getBorderInsets([Component](../../../java/awt/Component.md "class in java.awt") c)

    This default implementation returns a new [`Insets`](../../../java/awt/Insets.md "class in java.awt") object
    that is initialized by the [`getBorderInsets(Component,Insets)`](#getBorderInsets(java.awt.Component,java.awt.Insets))
    method.
    By default the `top`, `left`, `bottom`,
    and `right` fields are set to `0`.

    Specified by:
    :   `getBorderInsets` in interface `Border`

    Parameters:
    :   `c` - the component for which this border insets value applies

    Returns:
    :   a new [`Insets`](../../../java/awt/Insets.md "class in java.awt") object
  + ### getBorderInsets

    public [Insets](../../../java/awt/Insets.md "class in java.awt") getBorderInsets([Component](../../../java/awt/Component.md "class in java.awt") c,
    [Insets](../../../java/awt/Insets.md "class in java.awt") insets)

    Reinitializes the insets parameter with this Border's current Insets.

    Parameters:
    :   `c` - the component for which this border insets value applies
    :   `insets` - the object to be reinitialized

    Returns:
    :   the `insets` object

    Throws:
    :   `NullPointerException` - if the specified `insets`
        is `null`
  + ### isBorderOpaque

    public boolean isBorderOpaque()

    This default implementation returns false.

    Specified by:
    :   `isBorderOpaque` in interface `Border`

    Returns:
    :   false
  + ### getInteriorRectangle

    public [Rectangle](../../../java/awt/Rectangle.md "class in java.awt") getInteriorRectangle([Component](../../../java/awt/Component.md "class in java.awt") c,
    int x,
    int y,
    int width,
    int height)

    This convenience method calls the static method.

    Parameters:
    :   `c` - the component for which this border is being computed
    :   `x` - the x position of the border
    :   `y` - the y position of the border
    :   `width` - the width of the border
    :   `height` - the height of the border

    Returns:
    :   a `Rectangle` containing the interior coordinates
  + ### getInteriorRectangle

    public static [Rectangle](../../../java/awt/Rectangle.md "class in java.awt") getInteriorRectangle([Component](../../../java/awt/Component.md "class in java.awt") c,
    [Border](Border.md "interface in javax.swing.border") b,
    int x,
    int y,
    int width,
    int height)

    Returns a rectangle using the arguments minus the
    insets of the border. This is useful for determining the area
    that components should draw in that will not intersect the border.

    Parameters:
    :   `c` - the component for which this border is being computed
    :   `b` - the `Border` object
    :   `x` - the x position of the border
    :   `y` - the y position of the border
    :   `width` - the width of the border
    :   `height` - the height of the border

    Returns:
    :   a `Rectangle` containing the interior coordinates
  + ### getBaseline

    public int getBaseline([Component](../../../java/awt/Component.md "class in java.awt") c,
    int width,
    int height)

    Returns the baseline. A return value less than 0 indicates the border
    does not have a reasonable baseline.

    The default implementation returns -1. Subclasses that support
    baseline should override appropriately. If a value >= 0 is
    returned, then the component has a valid baseline for any
    size >= the minimum size and `getBaselineResizeBehavior`
    can be used to determine how the baseline changes with size.

    Parameters:
    :   `c` - `Component` baseline is being requested for
    :   `width` - the width to get the baseline for
    :   `height` - the height to get the baseline for

    Returns:
    :   the baseline or < 0 indicating there is no reasonable
        baseline

    Throws:
    :   `IllegalArgumentException` - if width or height is < 0

    Since:
    :   1.6

    See Also:
    :   - [`Component.getBaseline(int,int)`](../../../java/awt/Component.md#getBaseline(int,int))
        - [`Component.getBaselineResizeBehavior()`](../../../java/awt/Component.md#getBaselineResizeBehavior())
  + ### getBaselineResizeBehavior

    public [Component.BaselineResizeBehavior](../../../java/awt/Component.BaselineResizeBehavior.md "enum class in java.awt") getBaselineResizeBehavior([Component](../../../java/awt/Component.md "class in java.awt") c)

    Returns an enum indicating how the baseline of a component
    changes as the size changes. This method is primarily meant for
    layout managers and GUI builders.

    The default implementation returns
    `BaselineResizeBehavior.OTHER`, subclasses that support
    baseline should override appropriately. Subclasses should
    never return `null`; if the baseline can not be
    calculated return `BaselineResizeBehavior.OTHER`. Callers
    should first ask for the baseline using
    `getBaseline` and if a value >= 0 is returned use
    this method. It is acceptable for this method to return a
    value other than `BaselineResizeBehavior.OTHER` even if
    `getBaseline` returns a value less than 0.

    Parameters:
    :   `c` - `Component` to return baseline resize behavior for

    Returns:
    :   an enum indicating how the baseline changes as the border is
        resized

    Throws:
    :   `NullPointerException` - if `Component` is `null`

    Since:
    :   1.6

    See Also:
    :   - [`Component.getBaseline(int,int)`](../../../java/awt/Component.md#getBaseline(int,int))
        - [`Component.getBaselineResizeBehavior()`](../../../java/awt/Component.md#getBaselineResizeBehavior())