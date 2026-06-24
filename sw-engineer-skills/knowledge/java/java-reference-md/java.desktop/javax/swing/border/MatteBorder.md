Module [java.desktop](../../../module-summary.md)

Package [javax.swing.border](package-summary.md)

# Class MatteBorder

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.border.AbstractBorder](AbstractBorder.md "class in javax.swing.border")

[javax.swing.border.EmptyBorder](EmptyBorder.md "class in javax.swing.border")

javax.swing.border.MatteBorder

All Implemented Interfaces:
:   `Serializable`, `Border`

Direct Known Subclasses:
:   `BorderUIResource.MatteBorderUIResource`

---

public class MatteBorder
extends [EmptyBorder](EmptyBorder.md "class in javax.swing.border")

A class which provides a matte-like border of either a solid color
or a tiled icon.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Color`

  `color`

  The color rendered for the border.

  `protected Icon`

  `tileIcon`

  The icon to be used for tiling the border.

  ### Fields inherited from class javax.swing.border.[EmptyBorder](EmptyBorder.md "class in javax.swing.border")

  `bottom, left, right, top`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MatteBorder(int top,
  int left,
  int bottom,
  int right,
  Color matteColor)`

  Creates a matte border with the specified insets and color.

  `MatteBorder(int top,
  int left,
  int bottom,
  int right,
  Icon tileIcon)`

  Creates a matte border with the specified insets and tile icon.

  `MatteBorder(Insets borderInsets,
  Color matteColor)`

  Creates a matte border with the specified insets and color.

  `MatteBorder(Insets borderInsets,
  Icon tileIcon)`

  Creates a matte border with the specified insets and tile icon.

  `MatteBorder(Icon tileIcon)`

  Creates a matte border with the specified tile icon.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Insets`

  `getBorderInsets()`

  Returns the insets of the border.

  `Insets`

  `getBorderInsets(Component c,
  Insets insets)`

  Reinitialize the insets parameter with this Border's current Insets.

  `Color`

  `getMatteColor()`

  Returns the color used for tiling the border or null
  if a tile icon is being used.

  `Icon`

  `getTileIcon()`

  Returns the icon used for tiling the border or null
  if a solid color is being used.

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

  Paints the matte border.

  ### Methods inherited from class javax.swing.border.[AbstractBorder](AbstractBorder.md "class in javax.swing.border")

  `getBaseline, getBaselineResizeBehavior, getBorderInsets, getInteriorRectangle, getInteriorRectangle`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### color

    protected [Color](../../../java/awt/Color.md "class in java.awt") color

    The color rendered for the border.
  + ### tileIcon

    protected [Icon](../Icon.md "interface in javax.swing") tileIcon

    The icon to be used for tiling the border.
* ## Constructor Details

  + ### MatteBorder

    public MatteBorder(int top,
    int left,
    int bottom,
    int right,
    [Color](../../../java/awt/Color.md "class in java.awt") matteColor)

    Creates a matte border with the specified insets and color.

    Parameters:
    :   `top` - the top inset of the border
    :   `left` - the left inset of the border
    :   `bottom` - the bottom inset of the border
    :   `right` - the right inset of the border
    :   `matteColor` - the color rendered for the border
  + ### MatteBorder

    public MatteBorder([Insets](../../../java/awt/Insets.md "class in java.awt") borderInsets,
    [Color](../../../java/awt/Color.md "class in java.awt") matteColor)

    Creates a matte border with the specified insets and color.

    Parameters:
    :   `borderInsets` - the insets of the border
    :   `matteColor` - the color rendered for the border

    Throws:
    :   `NullPointerException` - if the specified `borderInsets`
        is `null`

    Since:
    :   1.3
  + ### MatteBorder

    public MatteBorder(int top,
    int left,
    int bottom,
    int right,
    [Icon](../Icon.md "interface in javax.swing") tileIcon)

    Creates a matte border with the specified insets and tile icon.

    Parameters:
    :   `top` - the top inset of the border
    :   `left` - the left inset of the border
    :   `bottom` - the bottom inset of the border
    :   `right` - the right inset of the border
    :   `tileIcon` - the icon to be used for tiling the border
  + ### MatteBorder

    public MatteBorder([Insets](../../../java/awt/Insets.md "class in java.awt") borderInsets,
    [Icon](../Icon.md "interface in javax.swing") tileIcon)

    Creates a matte border with the specified insets and tile icon.

    Parameters:
    :   `borderInsets` - the insets of the border
    :   `tileIcon` - the icon to be used for tiling the border

    Throws:
    :   `NullPointerException` - if the specified `borderInsets`
        is `null`

    Since:
    :   1.3
  + ### MatteBorder

    public MatteBorder([Icon](../Icon.md "interface in javax.swing") tileIcon)

    Creates a matte border with the specified tile icon. The
    insets will be calculated dynamically based on the size of
    the tile icon, where the top and bottom will be equal to the
    tile icon's height, and the left and right will be equal to
    the tile icon's width.

    Parameters:
    :   `tileIcon` - the icon to be used for tiling the border
* ## Method Details

  + ### paintBorder

    public void paintBorder([Component](../../../java/awt/Component.md "class in java.awt") c,
    [Graphics](../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int width,
    int height)

    Paints the matte border.

    Specified by:
    :   `paintBorder` in interface `Border`

    Overrides:
    :   `paintBorder` in class `EmptyBorder`

    Parameters:
    :   `c` - the component for which this border is being painted
    :   `g` - the paint graphics
    :   `x` - the x position of the painted border
    :   `y` - the y position of the painted border
    :   `width` - the width of the painted border
    :   `height` - the height of the painted border
  + ### getBorderInsets

    public [Insets](../../../java/awt/Insets.md "class in java.awt") getBorderInsets([Component](../../../java/awt/Component.md "class in java.awt") c,
    [Insets](../../../java/awt/Insets.md "class in java.awt") insets)

    Reinitialize the insets parameter with this Border's current Insets.

    Overrides:
    :   `getBorderInsets` in class `EmptyBorder`

    Parameters:
    :   `c` - the component for which this border insets value applies
    :   `insets` - the object to be reinitialized

    Returns:
    :   the `insets` object

    Throws:
    :   `NullPointerException` - if the specified `insets`
        is `null`

    Since:
    :   1.3
  + ### getBorderInsets

    public [Insets](../../../java/awt/Insets.md "class in java.awt") getBorderInsets()

    Returns the insets of the border.

    Overrides:
    :   `getBorderInsets` in class `EmptyBorder`

    Returns:
    :   an `Insets` object containing the insets from top, left,
        bottom and right

    Since:
    :   1.3
  + ### getMatteColor

    public [Color](../../../java/awt/Color.md "class in java.awt") getMatteColor()

    Returns the color used for tiling the border or null
    if a tile icon is being used.

    Returns:
    :   the `Color` object used to render the border or `null`
        if a tile icon is used

    Since:
    :   1.3
  + ### getTileIcon

    public [Icon](../Icon.md "interface in javax.swing") getTileIcon()

    Returns the icon used for tiling the border or null
    if a solid color is being used.

    Returns:
    :   the `Icon` used to tile the border or `null` if a
        solid color is used to fill the border

    Since:
    :   1.3
  + ### isBorderOpaque

    public boolean isBorderOpaque()

    Returns whether or not the border is opaque.

    Specified by:
    :   `isBorderOpaque` in interface `Border`

    Overrides:
    :   `isBorderOpaque` in class `EmptyBorder`

    Returns:
    :   `true` if the border is opaque, `false` otherwise