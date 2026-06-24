Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalBorders.ToolBarBorder

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.border.AbstractBorder](../../border/AbstractBorder.md "class in javax.swing.border")

javax.swing.plaf.metal.MetalBorders.ToolBarBorder

All Implemented Interfaces:
:   `Serializable`, `Border`, `UIResource`, `SwingConstants`

Enclosing class:
:   `MetalBorders`

---

public static class MetalBorders.ToolBarBorder
extends [AbstractBorder](../../border/AbstractBorder.md "class in javax.swing.border")
implements [UIResource](../UIResource.md "interface in javax.swing.plaf"), [SwingConstants](../../SwingConstants.md "interface in javax.swing")

The class represents the border of a `JToolBar`.

* ## Field Summary

  ### Fields inherited from interface javax.swing.[SwingConstants](../../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ToolBarBorder()`

  Constructs a `ToolBarBorder`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Insets`

  `getBorderInsets(Component c,
  Insets newInsets)`

  Reinitializes the insets parameter with this Border's current Insets.

  `void`

  `paintBorder(Component c,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  This default implementation does no painting.

  ### Methods inherited from class javax.swing.border.[AbstractBorder](../../border/AbstractBorder.md "class in javax.swing.border")

  `getBaseline, getBaselineResizeBehavior, getBorderInsets, getInteriorRectangle, getInteriorRectangle, isBorderOpaque`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ToolBarBorder

    public ToolBarBorder()

    Constructs a `ToolBarBorder`.
* ## Method Details

  + ### paintBorder

    public void paintBorder([Component](../../../../java/awt/Component.md "class in java.awt") c,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Description copied from class: `AbstractBorder`

    This default implementation does no painting.

    Specified by:
    :   `paintBorder` in interface `Border`

    Overrides:
    :   `paintBorder` in class `AbstractBorder`

    Parameters:
    :   `c` - the component for which this border is being painted
    :   `g` - the paint graphics
    :   `x` - the x position of the painted border
    :   `y` - the y position of the painted border
    :   `w` - the width of the painted border
    :   `h` - the height of the painted border
  + ### getBorderInsets

    public [Insets](../../../../java/awt/Insets.md "class in java.awt") getBorderInsets([Component](../../../../java/awt/Component.md "class in java.awt") c,
    [Insets](../../../../java/awt/Insets.md "class in java.awt") newInsets)

    Description copied from class: `AbstractBorder`

    Reinitializes the insets parameter with this Border's current Insets.

    Overrides:
    :   `getBorderInsets` in class `AbstractBorder`

    Parameters:
    :   `c` - the component for which this border insets value applies
    :   `newInsets` - the object to be reinitialized

    Returns:
    :   the `insets` object