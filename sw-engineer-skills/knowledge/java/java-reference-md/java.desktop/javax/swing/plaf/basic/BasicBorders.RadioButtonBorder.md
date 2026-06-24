Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicBorders.RadioButtonBorder

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.border.AbstractBorder](../../border/AbstractBorder.md "class in javax.swing.border")

[javax.swing.plaf.basic.BasicBorders.ButtonBorder](BasicBorders.ButtonBorder.md "class in javax.swing.plaf.basic")

javax.swing.plaf.basic.BasicBorders.RadioButtonBorder

All Implemented Interfaces:
:   `Serializable`, `Border`, `UIResource`

Enclosing class:
:   `BasicBorders`

---

public static class BasicBorders.RadioButtonBorder
extends [BasicBorders.ButtonBorder](BasicBorders.ButtonBorder.md "class in javax.swing.plaf.basic")

Draws the border around a radio button.

* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicBorders.ButtonBorder](BasicBorders.ButtonBorder.md "class in javax.swing.plaf.basic")

  `darkShadow, highlight, lightHighlight, shadow`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RadioButtonBorder(Color shadow,
  Color darkShadow,
  Color highlight,
  Color lightHighlight)`

  Constructs a new instance of a `RadioButtonBorder`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Insets`

  `getBorderInsets(Component c,
  Insets insets)`

  Reinitializes the insets parameter with this Border's current Insets.

  `void`

  `paintBorder(Component c,
  Graphics g,
  int x,
  int y,
  int width,
  int height)`

  This default implementation does no painting.

  ### Methods inherited from class javax.swing.border.[AbstractBorder](../../border/AbstractBorder.md "class in javax.swing.border")

  `getBaseline, getBaselineResizeBehavior, getBorderInsets, getInteriorRectangle, getInteriorRectangle, isBorderOpaque`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### RadioButtonBorder

    public RadioButtonBorder([Color](../../../../java/awt/Color.md "class in java.awt") shadow,
    [Color](../../../../java/awt/Color.md "class in java.awt") darkShadow,
    [Color](../../../../java/awt/Color.md "class in java.awt") highlight,
    [Color](../../../../java/awt/Color.md "class in java.awt") lightHighlight)

    Constructs a new instance of a `RadioButtonBorder`.

    Parameters:
    :   `shadow` - a color of shadow
    :   `darkShadow` - a color of dark shadow
    :   `highlight` - a color of highlight
    :   `lightHighlight` - a color of light highlight
* ## Method Details

  + ### paintBorder

    public void paintBorder([Component](../../../../java/awt/Component.md "class in java.awt") c,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int width,
    int height)

    Description copied from class: `AbstractBorder`

    This default implementation does no painting.

    Specified by:
    :   `paintBorder` in interface `Border`

    Overrides:
    :   `paintBorder` in class `BasicBorders.ButtonBorder`

    Parameters:
    :   `c` - the component for which this border is being painted
    :   `g` - the paint graphics
    :   `x` - the x position of the painted border
    :   `y` - the y position of the painted border
    :   `width` - the width of the painted border
    :   `height` - the height of the painted border
  + ### getBorderInsets

    public [Insets](../../../../java/awt/Insets.md "class in java.awt") getBorderInsets([Component](../../../../java/awt/Component.md "class in java.awt") c,
    [Insets](../../../../java/awt/Insets.md "class in java.awt") insets)

    Description copied from class: `AbstractBorder`

    Reinitializes the insets parameter with this Border's current Insets.

    Overrides:
    :   `getBorderInsets` in class `BasicBorders.ButtonBorder`

    Parameters:
    :   `c` - the component for which this border insets value applies
    :   `insets` - the object to be reinitialized

    Returns:
    :   the `insets` object