Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.synth](package-summary.md)

# Class SynthGraphicsUtils

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.synth.SynthGraphicsUtils

---

public class SynthGraphicsUtils
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

Wrapper for primitive graphics calls.

Since:
:   1.5

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SynthGraphicsUtils()`

  Creates a `SynthGraphicsUtils`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `computeStringWidth(SynthContext ss,
  Font font,
  FontMetrics metrics,
  String text)`

  Returns the size of the passed in string.

  `void`

  `drawLine(SynthContext context,
  Object paintKey,
  Graphics g,
  int x1,
  int y1,
  int x2,
  int y2)`

  Draws a line between the two end points.

  `void`

  `drawLine(SynthContext context,
  Object paintKey,
  Graphics g,
  int x1,
  int y1,
  int x2,
  int y2,
  Object styleKey)`

  Draws a line between the two end points.

  `static int`

  `getIconHeight(Icon icon,
  SynthContext context)`

  Returns the icon's height.

  `static int`

  `getIconWidth(Icon icon,
  SynthContext context)`

  Returns the icon's width.

  `int`

  `getMaximumCharHeight(SynthContext context)`

  Returns the maximum height of the Font from the passed in
  SynthContext.

  `Dimension`

  `getMaximumSize(SynthContext ss,
  Font font,
  String text,
  Icon icon,
  int hAlign,
  int vAlign,
  int hTextPosition,
  int vTextPosition,
  int iconTextGap,
  int mnemonicIndex)`

  Returns the maximum size needed to properly render an icon and text.

  `Dimension`

  `getMinimumSize(SynthContext ss,
  Font font,
  String text,
  Icon icon,
  int hAlign,
  int vAlign,
  int hTextPosition,
  int vTextPosition,
  int iconTextGap,
  int mnemonicIndex)`

  Returns the minimum size needed to properly render an icon and text.

  `Dimension`

  `getPreferredSize(SynthContext ss,
  Font font,
  String text,
  Icon icon,
  int hAlign,
  int vAlign,
  int hTextPosition,
  int vTextPosition,
  int iconTextGap,
  int mnemonicIndex)`

  Returns the preferred size needed to properly render an icon and text.

  `String`

  `layoutText(SynthContext ss,
  FontMetrics fm,
  String text,
  Icon icon,
  int hAlign,
  int vAlign,
  int hTextPosition,
  int vTextPosition,
  Rectangle viewR,
  Rectangle iconR,
  Rectangle textR,
  int iconTextGap)`

  Lays out text and an icon returning, by reference, the location to
  place the icon and text.

  `static void`

  `paintIcon(Icon icon,
  SynthContext context,
  Graphics g,
  int x,
  int y,
  int width,
  int height)`

  Paints the icon.

  `void`

  `paintText(SynthContext ss,
  Graphics g,
  String text,
  int x,
  int y,
  int mnemonicIndex)`

  Paints text at the specified location.

  `void`

  `paintText(SynthContext ss,
  Graphics g,
  String text,
  Rectangle bounds,
  int mnemonicIndex)`

  Paints text at the specified location.

  `void`

  `paintText(SynthContext ss,
  Graphics g,
  String text,
  Icon icon,
  int hAlign,
  int vAlign,
  int hTextPosition,
  int vTextPosition,
  int iconTextGap,
  int mnemonicIndex,
  int textOffset)`

  Paints an icon and text.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SynthGraphicsUtils

    public SynthGraphicsUtils()

    Creates a `SynthGraphicsUtils`.
* ## Method Details

  + ### drawLine

    public void drawLine([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") paintKey,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x1,
    int y1,
    int x2,
    int y2)

    Draws a line between the two end points.

    Parameters:
    :   `context` - Identifies hosting region.
    :   `paintKey` - Identifies the portion of the component being asked
        to paint, may be null.
    :   `g` - Graphics object to paint to
    :   `x1` - x origin
    :   `y1` - y origin
    :   `x2` - x destination
    :   `y2` - y destination
  + ### drawLine

    public void drawLine([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") paintKey,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x1,
    int y1,
    int x2,
    int y2,
    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") styleKey)

    Draws a line between the two end points.

    This implementation supports only one line style key,
    `"dashed"`. The `"dashed"` line style is applied
    only to vertical and horizontal lines.

    Specifying `null` or any key different from
    `"dashed"` will draw solid lines.

    Parameters:
    :   `context` - identifies hosting region
    :   `paintKey` - identifies the portion of the component being asked
        to paint, may be null
    :   `g` - Graphics object to paint to
    :   `x1` - x origin
    :   `y1` - y origin
    :   `x2` - x destination
    :   `y2` - y destination
    :   `styleKey` - identifies the requested style of the line (e.g. "dashed")

    Since:
    :   1.6
  + ### layoutText

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") layoutText([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") ss,
    [FontMetrics](../../../../java/awt/FontMetrics.md "class in java.awt") fm,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") text,
    [Icon](../../Icon.md "interface in javax.swing") icon,
    int hAlign,
    int vAlign,
    int hTextPosition,
    int vTextPosition,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") viewR,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") iconR,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") textR,
    int iconTextGap)

    Lays out text and an icon returning, by reference, the location to
    place the icon and text.

    Parameters:
    :   `ss` - SynthContext
    :   `fm` - FontMetrics for the Font to use, this may be ignored
    :   `text` - Text to layout
    :   `icon` - Icon to layout
    :   `hAlign` - horizontal alignment
    :   `vAlign` - vertical alignment
    :   `hTextPosition` - horizontal text position
    :   `vTextPosition` - vertical text position
    :   `viewR` - Rectangle to layout text and icon in.
    :   `iconR` - Rectangle to place icon bounds in
    :   `textR` - Rectangle to place text in
    :   `iconTextGap` - gap between icon and text

    Returns:
    :   by reference, the location to
        place the icon and text.
  + ### computeStringWidth

    public int computeStringWidth([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") ss,
    [Font](../../../../java/awt/Font.md "class in java.awt") font,
    [FontMetrics](../../../../java/awt/FontMetrics.md "class in java.awt") metrics,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") text)

    Returns the size of the passed in string.

    Parameters:
    :   `ss` - SynthContext
    :   `font` - Font to use
    :   `metrics` - FontMetrics, may be ignored
    :   `text` - Text to get size of.

    Returns:
    :   the size of the passed in string.
  + ### getMinimumSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMinimumSize([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") ss,
    [Font](../../../../java/awt/Font.md "class in java.awt") font,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") text,
    [Icon](../../Icon.md "interface in javax.swing") icon,
    int hAlign,
    int vAlign,
    int hTextPosition,
    int vTextPosition,
    int iconTextGap,
    int mnemonicIndex)

    Returns the minimum size needed to properly render an icon and text.

    Parameters:
    :   `ss` - SynthContext
    :   `font` - Font to use
    :   `text` - Text to layout
    :   `icon` - Icon to layout
    :   `hAlign` - horizontal alignment
    :   `vAlign` - vertical alignment
    :   `hTextPosition` - horizontal text position
    :   `vTextPosition` - vertical text position
    :   `iconTextGap` - gap between icon and text
    :   `mnemonicIndex` - Index into text to render the mnemonic at, -1
        indicates no mnemonic.

    Returns:
    :   the minimum size needed to properly render an icon and text.
  + ### getMaximumSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMaximumSize([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") ss,
    [Font](../../../../java/awt/Font.md "class in java.awt") font,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") text,
    [Icon](../../Icon.md "interface in javax.swing") icon,
    int hAlign,
    int vAlign,
    int hTextPosition,
    int vTextPosition,
    int iconTextGap,
    int mnemonicIndex)

    Returns the maximum size needed to properly render an icon and text.

    Parameters:
    :   `ss` - SynthContext
    :   `font` - Font to use
    :   `text` - Text to layout
    :   `icon` - Icon to layout
    :   `hAlign` - horizontal alignment
    :   `vAlign` - vertical alignment
    :   `hTextPosition` - horizontal text position
    :   `vTextPosition` - vertical text position
    :   `iconTextGap` - gap between icon and text
    :   `mnemonicIndex` - Index into text to render the mnemonic at, -1
        indicates no mnemonic.

    Returns:
    :   the maximum size needed to properly render an icon and text.
  + ### getMaximumCharHeight

    public int getMaximumCharHeight([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context)

    Returns the maximum height of the Font from the passed in
    SynthContext.

    Parameters:
    :   `context` - SynthContext used to determine font.

    Returns:
    :   maximum height of the characters for the font from the passed
        in context.
  + ### getPreferredSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getPreferredSize([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") ss,
    [Font](../../../../java/awt/Font.md "class in java.awt") font,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") text,
    [Icon](../../Icon.md "interface in javax.swing") icon,
    int hAlign,
    int vAlign,
    int hTextPosition,
    int vTextPosition,
    int iconTextGap,
    int mnemonicIndex)

    Returns the preferred size needed to properly render an icon and text.

    Parameters:
    :   `ss` - SynthContext
    :   `font` - Font to use
    :   `text` - Text to layout
    :   `icon` - Icon to layout
    :   `hAlign` - horizontal alignment
    :   `vAlign` - vertical alignment
    :   `hTextPosition` - horizontal text position
    :   `vTextPosition` - vertical text position
    :   `iconTextGap` - gap between icon and text
    :   `mnemonicIndex` - Index into text to render the mnemonic at, -1
        indicates no mnemonic.

    Returns:
    :   the preferred size needed to properly render an icon and text.
  + ### paintText

    public void paintText([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") ss,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") text,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") bounds,
    int mnemonicIndex)

    Paints text at the specified location. This will not attempt to
    render the text as html nor will it offset by the insets of the
    component.

    Parameters:
    :   `ss` - SynthContext
    :   `g` - Graphics used to render string in.
    :   `text` - Text to render
    :   `bounds` - Bounds of the text to be drawn.
    :   `mnemonicIndex` - Index to draw string at.
  + ### paintText

    public void paintText([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") ss,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") text,
    int x,
    int y,
    int mnemonicIndex)

    Paints text at the specified location. This will not attempt to
    render the text as html nor will it offset by the insets of the
    component.

    Parameters:
    :   `ss` - SynthContext
    :   `g` - Graphics used to render string in.
    :   `text` - Text to render
    :   `x` - X location to draw text at.
    :   `y` - Upper left corner to draw text at.
    :   `mnemonicIndex` - Index to draw string at.
  + ### paintText

    public void paintText([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") ss,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") text,
    [Icon](../../Icon.md "interface in javax.swing") icon,
    int hAlign,
    int vAlign,
    int hTextPosition,
    int vTextPosition,
    int iconTextGap,
    int mnemonicIndex,
    int textOffset)

    Paints an icon and text. This will render the text as html, if
    necessary, and offset the location by the insets of the component.

    Parameters:
    :   `ss` - SynthContext
    :   `g` - Graphics to render string and icon into
    :   `text` - Text to layout
    :   `icon` - Icon to layout
    :   `hAlign` - horizontal alignment
    :   `vAlign` - vertical alignment
    :   `hTextPosition` - horizontal text position
    :   `vTextPosition` - vertical text position
    :   `iconTextGap` - gap between icon and text
    :   `mnemonicIndex` - Index into text to render the mnemonic at, -1
        indicates no mnemonic.
    :   `textOffset` - Amount to offset the text when painting
  + ### getIconWidth

    public static int getIconWidth([Icon](../../Icon.md "interface in javax.swing") icon,
    [SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context)

    Returns the icon's width.
    The `getIconWidth(context)` method is called for `SynthIcon`.

    Parameters:
    :   `icon` - the icon
    :   `context` - `SynthContext` requesting the icon, may be null.

    Returns:
    :   an int specifying the width of the icon.
  + ### getIconHeight

    public static int getIconHeight([Icon](../../Icon.md "interface in javax.swing") icon,
    [SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context)

    Returns the icon's height.
    The `getIconHeight(context)` method is called for `SynthIcon`.

    Parameters:
    :   `icon` - the icon
    :   `context` - `SynthContext` requesting the icon, may be null.

    Returns:
    :   an int specifying the height of the icon.
  + ### paintIcon

    public static void paintIcon([Icon](../../Icon.md "interface in javax.swing") icon,
    [SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int width,
    int height)

    Paints the icon. The `paintIcon(context, g, x, y, width, height)`
    method is called for `SynthIcon`.

    Parameters:
    :   `icon` - the icon
    :   `context` - identifies hosting region, may be null.
    :   `g` - the graphics context
    :   `x` - the x location to paint to
    :   `y` - the y location to paint to
    :   `width` - the width of the region to paint to, may be 0
    :   `height` - the height of the region to paint to, may be 0