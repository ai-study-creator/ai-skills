Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicGraphicsUtils

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicGraphicsUtils

---

public class BasicGraphicsUtils
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

Convenient util class.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicGraphicsUtils()`

  Constructs a `BasicGraphicsUtils`.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static void`

  `drawBezel(Graphics g,
  int x,
  int y,
  int w,
  int h,
  boolean isPressed,
  boolean isDefault,
  Color shadow,
  Color darkShadow,
  Color highlight,
  Color lightHighlight)`

  Draws a bezel.

  `static void`

  `drawDashedRect(Graphics g,
  int x,
  int y,
  int width,
  int height)`

  Draws dashed rectangle.

  `static void`

  `drawEtchedRect(Graphics g,
  int x,
  int y,
  int w,
  int h,
  Color shadow,
  Color darkShadow,
  Color highlight,
  Color lightHighlight)`

  Draws an etched rectangle.

  `static void`

  `drawGroove(Graphics g,
  int x,
  int y,
  int w,
  int h,
  Color shadow,
  Color highlight)`

  Draws a groove.

  `static void`

  `drawLoweredBezel(Graphics g,
  int x,
  int y,
  int w,
  int h,
  Color shadow,
  Color darkShadow,
  Color highlight,
  Color lightHighlight)`

  Draws a lowered bezel.

  `static void`

  `drawString(Graphics g,
  String text,
  int underlinedChar,
  int x,
  int y)`

  Draw a string with the graphics `g` at location (x,y)
  just like `g.drawString` would.

  `static void`

  `drawString(JComponent c,
  Graphics2D g,
  String string,
  float x,
  float y)`

  Draws the given string at the specified location using text properties
  and anti-aliasing hints from the provided component.

  `static void`

  `drawStringUnderlineCharAt(Graphics g,
  String text,
  int underlinedIndex,
  int x,
  int y)`

  Draw a string with the graphics `g` at location
  (`x`, `y`)
  just like `g.drawString` would.

  `static void`

  `drawStringUnderlineCharAt(JComponent c,
  Graphics2D g,
  String string,
  int underlinedIndex,
  float x,
  float y)`

  Draws the given string at the specified location underlining
  the specified character.

  `static String`

  `getClippedString(JComponent c,
  FontMetrics fm,
  String string,
  int availTextWidth)`

  Clips the passed in string to the space provided.

  `static Insets`

  `getEtchedInsets()`

  Returns the amount of space taken up by a border drawn by
  `drawEtchedRect()`

  `static Insets`

  `getGrooveInsets()`

  Returns the amount of space taken up by a border drawn by
  `drawGroove()`

  `static Dimension`

  `getPreferredButtonSize(AbstractButton b,
  int textIconGap)`

  Returns the preferred size of the button.

  `static float`

  `getStringWidth(JComponent c,
  FontMetrics fm,
  String string)`

  Returns the width of the passed in string using text properties
  and anti-aliasing hints from the provided component.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### BasicGraphicsUtils

    public BasicGraphicsUtils()

    Constructs a `BasicGraphicsUtils`.
* ## Method Details

  + ### drawEtchedRect

    public static void drawEtchedRect([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    [Color](../../../../java/awt/Color.md "class in java.awt") shadow,
    [Color](../../../../java/awt/Color.md "class in java.awt") darkShadow,
    [Color](../../../../java/awt/Color.md "class in java.awt") highlight,
    [Color](../../../../java/awt/Color.md "class in java.awt") lightHighlight)

    Draws an etched rectangle.

    Parameters:
    :   `g` - an instance of `Graphics`
    :   `x` - an X coordinate
    :   `y` - an Y coordinate
    :   `w` - a width
    :   `h` - a height
    :   `shadow` - a color of shadow
    :   `darkShadow` - a color of dark shadow
    :   `highlight` - a color highlighting
    :   `lightHighlight` - a color of light highlighting
  + ### getEtchedInsets

    public static [Insets](../../../../java/awt/Insets.md "class in java.awt") getEtchedInsets()

    Returns the amount of space taken up by a border drawn by
    `drawEtchedRect()`

    Returns:
    :   the inset of an etched rect
  + ### drawGroove

    public static void drawGroove([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    [Color](../../../../java/awt/Color.md "class in java.awt") shadow,
    [Color](../../../../java/awt/Color.md "class in java.awt") highlight)

    Draws a groove.

    Parameters:
    :   `g` - an instance of `Graphics`
    :   `x` - an X coordinate
    :   `y` - an Y coordinate
    :   `w` - a width
    :   `h` - a height
    :   `shadow` - a color of shadow
    :   `highlight` - a color highlighting
  + ### getGrooveInsets

    public static [Insets](../../../../java/awt/Insets.md "class in java.awt") getGrooveInsets()

    Returns the amount of space taken up by a border drawn by
    `drawGroove()`

    Returns:
    :   the inset of a groove border
  + ### drawBezel

    public static void drawBezel([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    boolean isPressed,
    boolean isDefault,
    [Color](../../../../java/awt/Color.md "class in java.awt") shadow,
    [Color](../../../../java/awt/Color.md "class in java.awt") darkShadow,
    [Color](../../../../java/awt/Color.md "class in java.awt") highlight,
    [Color](../../../../java/awt/Color.md "class in java.awt") lightHighlight)

    Draws a bezel.

    Parameters:
    :   `g` - an instance of `Graphics`
    :   `x` - an X coordinate
    :   `y` - an Y coordinate
    :   `w` - a width
    :   `h` - a height
    :   `isPressed` - is component pressed
    :   `isDefault` - is default drawing
    :   `shadow` - a color of shadow
    :   `darkShadow` - a color of dark shadow
    :   `highlight` - a color highlighting
    :   `lightHighlight` - a color of light highlighting
  + ### drawLoweredBezel

    public static void drawLoweredBezel([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    [Color](../../../../java/awt/Color.md "class in java.awt") shadow,
    [Color](../../../../java/awt/Color.md "class in java.awt") darkShadow,
    [Color](../../../../java/awt/Color.md "class in java.awt") highlight,
    [Color](../../../../java/awt/Color.md "class in java.awt") lightHighlight)

    Draws a lowered bezel.

    Parameters:
    :   `g` - an instance of `Graphics`
    :   `x` - an X coordinate
    :   `y` - an Y coordinate
    :   `w` - a width
    :   `h` - a height
    :   `shadow` - a color of shadow
    :   `darkShadow` - a color of dark shadow
    :   `highlight` - a color highlighting
    :   `lightHighlight` - a color of light highlighting
  + ### drawString

    public static void drawString([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") text,
    int underlinedChar,
    int x,
    int y)

    Draw a string with the graphics `g` at location (x,y)
    just like `g.drawString` would. The first occurrence
    of `underlineChar` in text will be underlined.
    The matching algorithm is not case sensitive.

    Parameters:
    :   `g` - an instance of `Graphics`
    :   `text` - a text
    :   `underlinedChar` - an underlined char
    :   `x` - an X coordinate
    :   `y` - an Y coordinate
  + ### drawStringUnderlineCharAt

    public static void drawStringUnderlineCharAt([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") text,
    int underlinedIndex,
    int x,
    int y)

    Draw a string with the graphics `g` at location
    (`x`, `y`)
    just like `g.drawString` would.
    The character at index `underlinedIndex`
    in text will be underlined. If `index` is beyond the
    bounds of `text` (including < 0), nothing will be
    underlined.

    Parameters:
    :   `g` - Graphics to draw with
    :   `text` - String to draw
    :   `underlinedIndex` - Index of character in text to underline
    :   `x` - x coordinate to draw at
    :   `y` - y coordinate to draw at

    Since:
    :   1.4
  + ### drawDashedRect

    public static void drawDashedRect([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int width,
    int height)

    Draws dashed rectangle.

    Parameters:
    :   `g` - an instance of `Graphics`
    :   `x` - an X coordinate
    :   `y` - an Y coordinate
    :   `width` - a width of rectangle
    :   `height` - a height of rectangle
  + ### getPreferredButtonSize

    public static [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getPreferredButtonSize([AbstractButton](../../AbstractButton.md "class in javax.swing") b,
    int textIconGap)

    Returns the preferred size of the button.

    Parameters:
    :   `b` - an instance of `AbstractButton`
    :   `textIconGap` - a gap between text and icon

    Returns:
    :   the preferred size of the button
  + ### drawString

    public static void drawString([JComponent](../../JComponent.md "class in javax.swing") c,
    [Graphics2D](../../../../java/awt/Graphics2D.md "class in java.awt") g,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") string,
    float x,
    float y)

    Draws the given string at the specified location using text properties
    and anti-aliasing hints from the provided component.
    Nothing is drawn for the null string.

    Parameters:
    :   `c` - the component that will display the string, may be null
    :   `g` - the graphics context, must not be null
    :   `string` - the string to display, may be null
    :   `x` - the x coordinate to draw the text at
    :   `y` - the y coordinate to draw the text at

    Throws:
    :   `NullPointerException` - if the specified `g` is `null`

    Since:
    :   9
  + ### drawStringUnderlineCharAt

    public static void drawStringUnderlineCharAt([JComponent](../../JComponent.md "class in javax.swing") c,
    [Graphics2D](../../../../java/awt/Graphics2D.md "class in java.awt") g,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") string,
    int underlinedIndex,
    float x,
    float y)

    Draws the given string at the specified location underlining
    the specified character. The provided component is used to query text
    properties and anti-aliasing hints.

    The `underlinedIndex` parameter points to a char value
    (Unicode code unit) in the given string.
    If the char value specified at the underlined index is in
    the high-surrogate range and the char value at the following index is in
    the low-surrogate range then the supplementary character corresponding
    to this surrogate pair is underlined.

    No character is underlined if the index is negative or greater
    than the string length `(index < 0 || index >= string.length())`
    or if the char value specified at the given index
    is in the low-surrogate range.

    Parameters:
    :   `c` - the component that will display the string, may be null
    :   `g` - the graphics context, must not be null
    :   `string` - the string to display, may be null
    :   `underlinedIndex` - index of a char value (Unicode code unit)
        in the string to underline
    :   `x` - the x coordinate to draw the text at
    :   `y` - the y coordinate to draw the text at

    Throws:
    :   `NullPointerException` - if the specified `g` is `null`

    Since:
    :   9

    See Also:
    :   - [`getStringWidth(javax.swing.JComponent, java.awt.FontMetrics, java.lang.String)`](#getStringWidth(javax.swing.JComponent,java.awt.FontMetrics,java.lang.String))
  + ### getClippedString

    public static [String](../../../../../java.base/java/lang/String.md "class in java.lang") getClippedString([JComponent](../../JComponent.md "class in javax.swing") c,
    [FontMetrics](../../../../java/awt/FontMetrics.md "class in java.awt") fm,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") string,
    int availTextWidth)

    Clips the passed in string to the space provided.
    The provided component is used to query text properties and anti-aliasing hints.
    The unchanged string is returned if the space provided is greater than
    the string width.

    Parameters:
    :   `c` - the component, may be null
    :   `fm` - the FontMetrics used to measure the string width, must be
        obtained from the correct font and graphics. Must not be null.
    :   `string` - the string to clip, may be null
    :   `availTextWidth` - the amount of space that the string can be drawn in

    Returns:
    :   the clipped string that fits in the provided space, an empty
        string if the given string argument is `null` or empty

    Throws:
    :   `NullPointerException` - if the specified `fm` is `null`

    Since:
    :   9

    See Also:
    :   - [`getStringWidth(javax.swing.JComponent, java.awt.FontMetrics, java.lang.String)`](#getStringWidth(javax.swing.JComponent,java.awt.FontMetrics,java.lang.String))
  + ### getStringWidth

    public static float getStringWidth([JComponent](../../JComponent.md "class in javax.swing") c,
    [FontMetrics](../../../../java/awt/FontMetrics.md "class in java.awt") fm,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") string)

    Returns the width of the passed in string using text properties
    and anti-aliasing hints from the provided component.
    If the passed string is `null`, returns zero.

    Parameters:
    :   `c` - the component, may be null
    :   `fm` - the FontMetrics used to measure the advance string width, must
        be obtained from the correct font and graphics. Must not be null.
    :   `string` - the string to get the advance width of, may be null

    Returns:
    :   the advance width of the specified string, zero is returned for
        `null` string

    Throws:
    :   `NullPointerException` - if the specified `fm` is `null`

    Since:
    :   9