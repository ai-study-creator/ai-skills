Module [java.desktop](../../../module-summary.md)

Package [javax.swing.plaf](package-summary.md)

# Class BorderUIResource.EtchedBorderUIResource

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.border.AbstractBorder](../border/AbstractBorder.md "class in javax.swing.border")

[javax.swing.border.EtchedBorder](../border/EtchedBorder.md "class in javax.swing.border")

javax.swing.plaf.BorderUIResource.EtchedBorderUIResource

All Implemented Interfaces:
:   `Serializable`, `Border`, `UIResource`

Enclosing class:
:   `BorderUIResource`

---

public static class BorderUIResource.EtchedBorderUIResource
extends [EtchedBorder](../border/EtchedBorder.md "class in javax.swing.border")
implements [UIResource](UIResource.md "interface in javax.swing.plaf")

An etched border UI resource.

* ## Field Summary

  ### Fields inherited from class javax.swing.border.[EtchedBorder](../border/EtchedBorder.md "class in javax.swing.border")

  `etchType, highlight, LOWERED, RAISED, shadow`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `EtchedBorderUIResource()`

  Constructs an `EtchedBorderUIResource`.

  `EtchedBorderUIResource(int etchType)`

  Constructs an `EtchedBorderUIResource`.

  `EtchedBorderUIResource(int etchType,
  Color highlight,
  Color shadow)`

  Constructs an `EtchedBorderUIResource`.

  `EtchedBorderUIResource(Color highlight,
  Color shadow)`

  Constructs an `EtchedBorderUIResource`.
* ## Method Summary

  ### Methods inherited from class javax.swing.border.[EtchedBorder](../border/EtchedBorder.md "class in javax.swing.border")

  `getBorderInsets, getEtchType, getHighlightColor, getHighlightColor, getShadowColor, getShadowColor, isBorderOpaque, paintBorder`

  ### Methods inherited from class javax.swing.border.[AbstractBorder](../border/AbstractBorder.md "class in javax.swing.border")

  `getBaseline, getBaselineResizeBehavior, getBorderInsets, getInteriorRectangle, getInteriorRectangle`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### EtchedBorderUIResource

    public EtchedBorderUIResource()

    Constructs an `EtchedBorderUIResource`.
  + ### EtchedBorderUIResource

    public EtchedBorderUIResource(int etchType)

    Constructs an `EtchedBorderUIResource`.

    Parameters:
    :   `etchType` - the type of etch to be drawn by the border
  + ### EtchedBorderUIResource

    public EtchedBorderUIResource([Color](../../../java/awt/Color.md "class in java.awt") highlight,
    [Color](../../../java/awt/Color.md "class in java.awt") shadow)

    Constructs an `EtchedBorderUIResource`.

    Parameters:
    :   `highlight` - the color to use for the etched highlight
    :   `shadow` - the color to use for the etched shadow
  + ### EtchedBorderUIResource

    [@ConstructorProperties](../../../java/beans/ConstructorProperties.md "annotation interface in java.beans")({"etchType","highlightColor","shadowColor"})
    public EtchedBorderUIResource(int etchType,
    [Color](../../../java/awt/Color.md "class in java.awt") highlight,
    [Color](../../../java/awt/Color.md "class in java.awt") shadow)

    Constructs an `EtchedBorderUIResource`.

    Parameters:
    :   `etchType` - the type of etch to be drawn by the border
    :   `highlight` - the color to use for the etched highlight
    :   `shadow` - the color to use for the etched shadow