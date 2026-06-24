Module [java.desktop](../../../module-summary.md)

Package [javax.swing.plaf](package-summary.md)

# Class BorderUIResource.TitledBorderUIResource

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.border.AbstractBorder](../border/AbstractBorder.md "class in javax.swing.border")

[javax.swing.border.TitledBorder](../border/TitledBorder.md "class in javax.swing.border")

javax.swing.plaf.BorderUIResource.TitledBorderUIResource

All Implemented Interfaces:
:   `Serializable`, `Border`, `UIResource`

Enclosing class:
:   `BorderUIResource`

---

public static class BorderUIResource.TitledBorderUIResource
extends [TitledBorder](../border/TitledBorder.md "class in javax.swing.border")
implements [UIResource](UIResource.md "interface in javax.swing.plaf")

A titled border UI resource.

* ## Field Summary

  ### Fields inherited from class javax.swing.border.[TitledBorder](../border/TitledBorder.md "class in javax.swing.border")

  `ABOVE_BOTTOM, ABOVE_TOP, BELOW_BOTTOM, BELOW_TOP, border, BOTTOM, CENTER, DEFAULT_JUSTIFICATION, DEFAULT_POSITION, EDGE_SPACING, LEADING, LEFT, RIGHT, TEXT_INSET_H, TEXT_SPACING, title, titleColor, titleFont, titleJustification, titlePosition, TOP, TRAILING`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TitledBorderUIResource(String title)`

  Constructs a `TitledBorderUIResource`.

  `TitledBorderUIResource(Border border)`

  Constructs a `TitledBorderUIResource`.

  `TitledBorderUIResource(Border border,
  String title)`

  Constructs a `TitledBorderUIResource`.

  `TitledBorderUIResource(Border border,
  String title,
  int titleJustification,
  int titlePosition)`

  Constructs a `TitledBorderUIResource`.

  `TitledBorderUIResource(Border border,
  String title,
  int titleJustification,
  int titlePosition,
  Font titleFont)`

  Constructs a `TitledBorderUIResource`.

  `TitledBorderUIResource(Border border,
  String title,
  int titleJustification,
  int titlePosition,
  Font titleFont,
  Color titleColor)`

  Constructs a `TitledBorderUIResource`.
* ## Method Summary

  ### Methods inherited from class javax.swing.border.[TitledBorder](../border/TitledBorder.md "class in javax.swing.border")

  `getBaseline, getBaselineResizeBehavior, getBorder, getBorderInsets, getFont, getMinimumSize, getTitle, getTitleColor, getTitleFont, getTitleJustification, getTitlePosition, isBorderOpaque, paintBorder, setBorder, setTitle, setTitleColor, setTitleFont, setTitleJustification, setTitlePosition`

  ### Methods inherited from class javax.swing.border.[AbstractBorder](../border/AbstractBorder.md "class in javax.swing.border")

  `getBorderInsets, getInteriorRectangle, getInteriorRectangle`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### TitledBorderUIResource

    public TitledBorderUIResource([String](../../../../java.base/java/lang/String.md "class in java.lang") title)

    Constructs a `TitledBorderUIResource`.

    Parameters:
    :   `title` - the title the border should display
  + ### TitledBorderUIResource

    public TitledBorderUIResource([Border](../border/Border.md "interface in javax.swing.border") border)

    Constructs a `TitledBorderUIResource`.

    Parameters:
    :   `border` - the border
  + ### TitledBorderUIResource

    public TitledBorderUIResource([Border](../border/Border.md "interface in javax.swing.border") border,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") title)

    Constructs a `TitledBorderUIResource`.

    Parameters:
    :   `border` - the border
    :   `title` - the title the border should display
  + ### TitledBorderUIResource

    public TitledBorderUIResource([Border](../border/Border.md "interface in javax.swing.border") border,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") title,
    int titleJustification,
    int titlePosition)

    Constructs a `TitledBorderUIResource`.

    Parameters:
    :   `border` - the border
    :   `title` - the title the border should display
    :   `titleJustification` - the justification for the title
    :   `titlePosition` - the position for the title
  + ### TitledBorderUIResource

    public TitledBorderUIResource([Border](../border/Border.md "interface in javax.swing.border") border,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") title,
    int titleJustification,
    int titlePosition,
    [Font](../../../java/awt/Font.md "class in java.awt") titleFont)

    Constructs a `TitledBorderUIResource`.

    Parameters:
    :   `border` - the border
    :   `title` - the title the border should display
    :   `titleJustification` - the justification for the title
    :   `titlePosition` - the position for the title
    :   `titleFont` - the font for rendering the title
  + ### TitledBorderUIResource

    [@ConstructorProperties](../../../java/beans/ConstructorProperties.md "annotation interface in java.beans")({"border","title","titleJustification","titlePosition","titleFont","titleColor"})
    public TitledBorderUIResource([Border](../border/Border.md "interface in javax.swing.border") border,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") title,
    int titleJustification,
    int titlePosition,
    [Font](../../../java/awt/Font.md "class in java.awt") titleFont,
    [Color](../../../java/awt/Color.md "class in java.awt") titleColor)

    Constructs a `TitledBorderUIResource`.

    Parameters:
    :   `border` - the border
    :   `title` - the title the border should display
    :   `titleJustification` - the justification for the title
    :   `titlePosition` - the position for the title
    :   `titleFont` - the font for rendering the title
    :   `titleColor` - the color of the title