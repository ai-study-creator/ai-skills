Module [java.desktop](../../../module-summary.md)

Package [javax.swing.plaf](package-summary.md)

# Class BorderUIResource.LineBorderUIResource

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.border.AbstractBorder](../border/AbstractBorder.md "class in javax.swing.border")

[javax.swing.border.LineBorder](../border/LineBorder.md "class in javax.swing.border")

javax.swing.plaf.BorderUIResource.LineBorderUIResource

All Implemented Interfaces:
:   `Serializable`, `Border`, `UIResource`

Enclosing class:
:   `BorderUIResource`

---

public static class BorderUIResource.LineBorderUIResource
extends [LineBorder](../border/LineBorder.md "class in javax.swing.border")
implements [UIResource](UIResource.md "interface in javax.swing.plaf")

A line border UI resource.

* ## Field Summary

  ### Fields inherited from class javax.swing.border.[LineBorder](../border/LineBorder.md "class in javax.swing.border")

  `lineColor, roundedCorners, thickness`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `LineBorderUIResource(Color color)`

  Constructs a `LineBorderUIResource`.

  `LineBorderUIResource(Color color,
  int thickness)`

  Constructs a `LineBorderUIResource`.
* ## Method Summary

  ### Methods inherited from class javax.swing.border.[LineBorder](../border/LineBorder.md "class in javax.swing.border")

  `createBlackLineBorder, createGrayLineBorder, getBorderInsets, getLineColor, getRoundedCorners, getThickness, isBorderOpaque, paintBorder`

  ### Methods inherited from class javax.swing.border.[AbstractBorder](../border/AbstractBorder.md "class in javax.swing.border")

  `getBaseline, getBaselineResizeBehavior, getBorderInsets, getInteriorRectangle, getInteriorRectangle`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### LineBorderUIResource

    public LineBorderUIResource([Color](../../../java/awt/Color.md "class in java.awt") color)

    Constructs a `LineBorderUIResource`.

    Parameters:
    :   `color` - the color for the border
  + ### LineBorderUIResource

    [@ConstructorProperties](../../../java/beans/ConstructorProperties.md "annotation interface in java.beans")({"lineColor","thickness"})
    public LineBorderUIResource([Color](../../../java/awt/Color.md "class in java.awt") color,
    int thickness)

    Constructs a `LineBorderUIResource`.

    Parameters:
    :   `color` - the color for the border
    :   `thickness` - the thickness of the border