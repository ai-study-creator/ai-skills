Module [java.desktop](../../../module-summary.md)

Package [javax.swing.plaf](package-summary.md)

# Class BorderUIResource.EmptyBorderUIResource

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.border.AbstractBorder](../border/AbstractBorder.md "class in javax.swing.border")

[javax.swing.border.EmptyBorder](../border/EmptyBorder.md "class in javax.swing.border")

javax.swing.plaf.BorderUIResource.EmptyBorderUIResource

All Implemented Interfaces:
:   `Serializable`, `Border`, `UIResource`

Enclosing class:
:   `BorderUIResource`

---

public static class BorderUIResource.EmptyBorderUIResource
extends [EmptyBorder](../border/EmptyBorder.md "class in javax.swing.border")
implements [UIResource](UIResource.md "interface in javax.swing.plaf")

An empty border UI resource.

* ## Field Summary

  ### Fields inherited from class javax.swing.border.[EmptyBorder](../border/EmptyBorder.md "class in javax.swing.border")

  `bottom, left, right, top`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `EmptyBorderUIResource(int top,
  int left,
  int bottom,
  int right)`

  Constructs an `EmptyBorderUIResource`.

  `EmptyBorderUIResource(Insets insets)`

  Constructs an `EmptyBorderUIResource`.
* ## Method Summary

  ### Methods inherited from class javax.swing.border.[EmptyBorder](../border/EmptyBorder.md "class in javax.swing.border")

  `getBorderInsets, getBorderInsets, isBorderOpaque, paintBorder`

  ### Methods inherited from class javax.swing.border.[AbstractBorder](../border/AbstractBorder.md "class in javax.swing.border")

  `getBaseline, getBaselineResizeBehavior, getBorderInsets, getInteriorRectangle, getInteriorRectangle`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### EmptyBorderUIResource

    public EmptyBorderUIResource(int top,
    int left,
    int bottom,
    int right)

    Constructs an `EmptyBorderUIResource`.

    Parameters:
    :   `top` - the top inset of the border
    :   `left` - the left inset of the border
    :   `bottom` - the bottom inset of the border
    :   `right` - the right inset of the border
  + ### EmptyBorderUIResource

    [@ConstructorProperties](../../../java/beans/ConstructorProperties.md "annotation interface in java.beans")("borderInsets")
    public EmptyBorderUIResource([Insets](../../../java/awt/Insets.md "class in java.awt") insets)

    Constructs an `EmptyBorderUIResource`.

    Parameters:
    :   `insets` - the insets of the border

    Throws:
    :   `NullPointerException` - if the spcecified `insets`
        is `null`