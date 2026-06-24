Module [java.desktop](../../../module-summary.md)

Package [javax.swing.plaf](package-summary.md)

# Class BorderUIResource.MatteBorderUIResource

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.border.AbstractBorder](../border/AbstractBorder.md "class in javax.swing.border")

[javax.swing.border.EmptyBorder](../border/EmptyBorder.md "class in javax.swing.border")

[javax.swing.border.MatteBorder](../border/MatteBorder.md "class in javax.swing.border")

javax.swing.plaf.BorderUIResource.MatteBorderUIResource

All Implemented Interfaces:
:   `Serializable`, `Border`, `UIResource`

Enclosing class:
:   `BorderUIResource`

---

public static class BorderUIResource.MatteBorderUIResource
extends [MatteBorder](../border/MatteBorder.md "class in javax.swing.border")
implements [UIResource](UIResource.md "interface in javax.swing.plaf")

A matte border UI resource.

* ## Field Summary

  ### Fields inherited from class javax.swing.border.[MatteBorder](../border/MatteBorder.md "class in javax.swing.border")

  `color, tileIcon`

  ### Fields inherited from class javax.swing.border.[EmptyBorder](../border/EmptyBorder.md "class in javax.swing.border")

  `bottom, left, right, top`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MatteBorderUIResource(int top,
  int left,
  int bottom,
  int right,
  Color color)`

  Constructs a `MatteBorderUIResource`.

  `MatteBorderUIResource(int top,
  int left,
  int bottom,
  int right,
  Icon tileIcon)`

  Constructs a `MatteBorderUIResource`.

  `MatteBorderUIResource(Icon tileIcon)`

  Constructs a `MatteBorderUIResource`.
* ## Method Summary

  ### Methods inherited from class javax.swing.border.[MatteBorder](../border/MatteBorder.md "class in javax.swing.border")

  `getBorderInsets, getBorderInsets, getMatteColor, getTileIcon, isBorderOpaque, paintBorder`

  ### Methods inherited from class javax.swing.border.[AbstractBorder](../border/AbstractBorder.md "class in javax.swing.border")

  `getBaseline, getBaselineResizeBehavior, getBorderInsets, getInteriorRectangle, getInteriorRectangle`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MatteBorderUIResource

    public MatteBorderUIResource(int top,
    int left,
    int bottom,
    int right,
    [Color](../../../java/awt/Color.md "class in java.awt") color)

    Constructs a `MatteBorderUIResource`.

    Parameters:
    :   `top` - the top inset of the border
    :   `left` - the left inset of the border
    :   `bottom` - the bottom inset of the border
    :   `right` - the right inset of the border
    :   `color` - the color rendered for the border
  + ### MatteBorderUIResource

    public MatteBorderUIResource(int top,
    int left,
    int bottom,
    int right,
    [Icon](../Icon.md "interface in javax.swing") tileIcon)

    Constructs a `MatteBorderUIResource`.

    Parameters:
    :   `top` - the top inset of the border
    :   `left` - the left inset of the border
    :   `bottom` - the bottom inset of the border
    :   `right` - the right inset of the border
    :   `tileIcon` - the icon to be used for tiling the border
  + ### MatteBorderUIResource

    public MatteBorderUIResource([Icon](../Icon.md "interface in javax.swing") tileIcon)

    Constructs a `MatteBorderUIResource`.

    Parameters:
    :   `tileIcon` - the icon to be used for tiling the border