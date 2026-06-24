Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicBorders.MenuBarBorder

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.border.AbstractBorder](../../border/AbstractBorder.md "class in javax.swing.border")

javax.swing.plaf.basic.BasicBorders.MenuBarBorder

All Implemented Interfaces:
:   `Serializable`, `Border`, `UIResource`

Enclosing class:
:   `BasicBorders`

---

public static class BasicBorders.MenuBarBorder
extends [AbstractBorder](../../border/AbstractBorder.md "class in javax.swing.border")
implements [UIResource](../UIResource.md "interface in javax.swing.plaf")

Draws the border around a menu bar.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MenuBarBorder(Color shadow,
  Color highlight)`

  Constructs a new instance of a `MenuBarBorder`.
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

  + ### MenuBarBorder

    public MenuBarBorder([Color](../../../../java/awt/Color.md "class in java.awt") shadow,
    [Color](../../../../java/awt/Color.md "class in java.awt") highlight)

    Constructs a new instance of a `MenuBarBorder`.

    Parameters:
    :   `shadow` - a color of shadow
    :   `highlight` - a color of highlight
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
    :   `paintBorder` in class `AbstractBorder`

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
    :   `getBorderInsets` in class `AbstractBorder`

    Parameters:
    :   `c` - the component for which this border insets value applies
    :   `insets` - the object to be reinitialized

    Returns:
    :   the `insets` object