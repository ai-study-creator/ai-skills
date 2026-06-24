Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalBorders.RolloverButtonBorder

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.border.AbstractBorder](../../border/AbstractBorder.md "class in javax.swing.border")

[javax.swing.plaf.metal.MetalBorders.ButtonBorder](MetalBorders.ButtonBorder.md "class in javax.swing.plaf.metal")

javax.swing.plaf.metal.MetalBorders.RolloverButtonBorder

All Implemented Interfaces:
:   `Serializable`, `Border`, `UIResource`

Enclosing class:
:   `MetalBorders`

---

public static class MetalBorders.RolloverButtonBorder
extends [MetalBorders.ButtonBorder](MetalBorders.ButtonBorder.md "class in javax.swing.plaf.metal")

The class represents the border of a rollover `Button`.

* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.metal.[MetalBorders.ButtonBorder](MetalBorders.ButtonBorder.md "class in javax.swing.plaf.metal")

  `borderInsets`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RolloverButtonBorder()`

  Constructs a `RolloverButtonBorder`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `paintBorder(Component c,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  This default implementation does no painting.

  ### Methods inherited from class javax.swing.plaf.metal.[MetalBorders.ButtonBorder](MetalBorders.ButtonBorder.md "class in javax.swing.plaf.metal")

  `getBorderInsets`

  ### Methods inherited from class javax.swing.border.[AbstractBorder](../../border/AbstractBorder.md "class in javax.swing.border")

  `getBaseline, getBaselineResizeBehavior, getBorderInsets, getInteriorRectangle, getInteriorRectangle, isBorderOpaque`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### RolloverButtonBorder

    public RolloverButtonBorder()

    Constructs a `RolloverButtonBorder`.
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
    :   `paintBorder` in class `MetalBorders.ButtonBorder`

    Parameters:
    :   `c` - the component for which this border is being painted
    :   `g` - the paint graphics
    :   `x` - the x position of the painted border
    :   `y` - the y position of the painted border
    :   `w` - the width of the painted border
    :   `h` - the height of the painted border