Module [java.desktop](../../../module-summary.md)

Package [javax.swing.plaf](package-summary.md)

# Class BorderUIResource.CompoundBorderUIResource

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.border.AbstractBorder](../border/AbstractBorder.md "class in javax.swing.border")

[javax.swing.border.CompoundBorder](../border/CompoundBorder.md "class in javax.swing.border")

javax.swing.plaf.BorderUIResource.CompoundBorderUIResource

All Implemented Interfaces:
:   `Serializable`, `Border`, `UIResource`

Enclosing class:
:   `BorderUIResource`

---

public static class BorderUIResource.CompoundBorderUIResource
extends [CompoundBorder](../border/CompoundBorder.md "class in javax.swing.border")
implements [UIResource](UIResource.md "interface in javax.swing.plaf")

A compound border UI resource.

* ## Field Summary

  ### Fields inherited from class javax.swing.border.[CompoundBorder](../border/CompoundBorder.md "class in javax.swing.border")

  `insideBorder, outsideBorder`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CompoundBorderUIResource(Border outsideBorder,
  Border insideBorder)`

  Constructs a `CompoundBorderUIResource`.
* ## Method Summary

  ### Methods inherited from class javax.swing.border.[CompoundBorder](../border/CompoundBorder.md "class in javax.swing.border")

  `getBorderInsets, getInsideBorder, getOutsideBorder, isBorderOpaque, paintBorder`

  ### Methods inherited from class javax.swing.border.[AbstractBorder](../border/AbstractBorder.md "class in javax.swing.border")

  `getBaseline, getBaselineResizeBehavior, getBorderInsets, getInteriorRectangle, getInteriorRectangle`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### CompoundBorderUIResource

    [@ConstructorProperties](../../../java/beans/ConstructorProperties.md "annotation interface in java.beans")({"outsideBorder","insideBorder"})
    public CompoundBorderUIResource([Border](../border/Border.md "interface in javax.swing.border") outsideBorder,
    [Border](../border/Border.md "interface in javax.swing.border") insideBorder)

    Constructs a `CompoundBorderUIResource`.

    Parameters:
    :   `outsideBorder` - the outside border
    :   `insideBorder` - the inside border