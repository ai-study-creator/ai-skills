Module [java.desktop](../../../module-summary.md)

Package [javax.swing.plaf](package-summary.md)

# Class BorderUIResource.BevelBorderUIResource

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.border.AbstractBorder](../border/AbstractBorder.md "class in javax.swing.border")

[javax.swing.border.BevelBorder](../border/BevelBorder.md "class in javax.swing.border")

javax.swing.plaf.BorderUIResource.BevelBorderUIResource

All Implemented Interfaces:
:   `Serializable`, `Border`, `UIResource`

Enclosing class:
:   `BorderUIResource`

---

public static class BorderUIResource.BevelBorderUIResource
extends [BevelBorder](../border/BevelBorder.md "class in javax.swing.border")
implements [UIResource](UIResource.md "interface in javax.swing.plaf")

A bevel border UI resource.

* ## Field Summary

  ### Fields inherited from class javax.swing.border.[BevelBorder](../border/BevelBorder.md "class in javax.swing.border")

  `bevelType, highlightInner, highlightOuter, LOWERED, RAISED, shadowInner, shadowOuter`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BevelBorderUIResource(int bevelType)`

  Constructs a `BevelBorderUIResource`.

  `BevelBorderUIResource(int bevelType,
  Color highlight,
  Color shadow)`

  Constructs a `BevelBorderUIResource`.

  `BevelBorderUIResource(int bevelType,
  Color highlightOuter,
  Color highlightInner,
  Color shadowOuter,
  Color shadowInner)`

  Constructs a `BevelBorderUIResource`.
* ## Method Summary

  ### Methods inherited from class javax.swing.border.[BevelBorder](../border/BevelBorder.md "class in javax.swing.border")

  `getBevelType, getBorderInsets, getHighlightInnerColor, getHighlightInnerColor, getHighlightOuterColor, getHighlightOuterColor, getShadowInnerColor, getShadowInnerColor, getShadowOuterColor, getShadowOuterColor, isBorderOpaque, paintBorder, paintLoweredBevel, paintRaisedBevel`

  ### Methods inherited from class javax.swing.border.[AbstractBorder](../border/AbstractBorder.md "class in javax.swing.border")

  `getBaseline, getBaselineResizeBehavior, getBorderInsets, getInteriorRectangle, getInteriorRectangle`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### BevelBorderUIResource

    public BevelBorderUIResource(int bevelType)

    Constructs a `BevelBorderUIResource`.

    Parameters:
    :   `bevelType` - the type of bevel for the border
  + ### BevelBorderUIResource

    public BevelBorderUIResource(int bevelType,
    [Color](../../../java/awt/Color.md "class in java.awt") highlight,
    [Color](../../../java/awt/Color.md "class in java.awt") shadow)

    Constructs a `BevelBorderUIResource`.
    The bevel outer highlight color and bevel inner highlight color
    will be derived from specified highlight color and
    bevel outer shadow color and bevel inner shadow color
    will be derived from specified shadow color.

    Parameters:
    :   `bevelType` - the type of bevel for the border
    :   `highlight` - the color to use for the bevel highlight
    :   `shadow` - the color to use for the bevel shadow
  + ### BevelBorderUIResource

    [@ConstructorProperties](../../../java/beans/ConstructorProperties.md "annotation interface in java.beans")({"bevelType","highlightOuterColor","highlightInnerColor","shadowOuterColor","shadowInnerColor"})
    public BevelBorderUIResource(int bevelType,
    [Color](../../../java/awt/Color.md "class in java.awt") highlightOuter,
    [Color](../../../java/awt/Color.md "class in java.awt") highlightInner,
    [Color](../../../java/awt/Color.md "class in java.awt") shadowOuter,
    [Color](../../../java/awt/Color.md "class in java.awt") shadowInner)

    Constructs a `BevelBorderUIResource`.

    Parameters:
    :   `bevelType` - the type of bevel for the border
    :   `highlightOuter` - the color to use for the bevel outer highlight
    :   `highlightInner` - the color to use for the bevel inner highlight
    :   `shadowOuter` - the color to use for the bevel outer shadow
    :   `shadowInner` - the color to use for the bevel inner shadow