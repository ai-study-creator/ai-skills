Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicBorders.SplitPaneBorder

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicBorders.SplitPaneBorder

All Implemented Interfaces:
:   `Border`, `UIResource`

Enclosing class:
:   `BasicBorders`

---

public static class BasicBorders.SplitPaneBorder
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Border](../../border/Border.md "interface in javax.swing.border"), [UIResource](../UIResource.md "interface in javax.swing.plaf")

Draws the border around the splitpane. To work correctly you should
also install a border on the divider (property SplitPaneDivider.border).

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Color`

  `highlight`

  The color of highlight

  `protected Color`

  `shadow`

  The color of shadow
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SplitPaneBorder(Color highlight,
  Color shadow)`

  Constructs a new instance of a `SplitPaneBorder`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Insets`

  `getBorderInsets(Component c)`

  Returns the insets of the border.

  `boolean`

  `isBorderOpaque()`

  Returns whether or not the border is opaque.

  `void`

  `paintBorder(Component c,
  Graphics g,
  int x,
  int y,
  int width,
  int height)`

  Paints the border for the specified component with the specified
  position and size.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### highlight

    protected [Color](../../../../java/awt/Color.md "class in java.awt") highlight

    The color of highlight
  + ### shadow

    protected [Color](../../../../java/awt/Color.md "class in java.awt") shadow

    The color of shadow
* ## Constructor Details

  + ### SplitPaneBorder

    public SplitPaneBorder([Color](../../../../java/awt/Color.md "class in java.awt") highlight,
    [Color](../../../../java/awt/Color.md "class in java.awt") shadow)

    Constructs a new instance of a `SplitPaneBorder`.

    Parameters:
    :   `highlight` - a color of highlight
    :   `shadow` - a color of shadow
* ## Method Details

  + ### paintBorder

    public void paintBorder([Component](../../../../java/awt/Component.md "class in java.awt") c,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int width,
    int height)

    Description copied from interface: `Border`

    Paints the border for the specified component with the specified
    position and size.

    Specified by:
    :   `paintBorder` in interface `Border`

    Parameters:
    :   `c` - the component for which this border is being painted
    :   `g` - the paint graphics
    :   `x` - the x position of the painted border
    :   `y` - the y position of the painted border
    :   `width` - the width of the painted border
    :   `height` - the height of the painted border
  + ### getBorderInsets

    public [Insets](../../../../java/awt/Insets.md "class in java.awt") getBorderInsets([Component](../../../../java/awt/Component.md "class in java.awt") c)

    Description copied from interface: `Border`

    Returns the insets of the border.

    Specified by:
    :   `getBorderInsets` in interface `Border`

    Parameters:
    :   `c` - the component for which this border insets value applies

    Returns:
    :   an `Insets` object containing the insets from top, left,
        bottom and right of this `Border`
  + ### isBorderOpaque

    public boolean isBorderOpaque()

    Description copied from interface: `Border`

    Returns whether or not the border is opaque. If the border
    is opaque, it is responsible for filling in it's own
    background when painting.

    Specified by:
    :   `isBorderOpaque` in interface `Border`

    Returns:
    :   true if this `Border` is opaque