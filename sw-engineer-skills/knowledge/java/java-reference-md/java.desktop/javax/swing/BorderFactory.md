Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class BorderFactory

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.BorderFactory

---

public class BorderFactory
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

Factory class for vending standard `Border` objects. Wherever
possible, this factory will hand out references to shared
`Border` instances.
For further information and examples see
[How
to Use Borders](https://docs.oracle.com/javase/tutorial/uiswing/components/border.html),
a section in *The Java Tutorial*.

Since:
:   1.2

* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Border`

  `createBevelBorder(int type)`

  Creates a beveled border of the specified type, using
  brighter shades of the component's current background color
  for highlighting, and darker shading for shadows.

  `static Border`

  `createBevelBorder(int type,
  Color highlight,
  Color shadow)`

  Creates a beveled border of the specified type, using
  the specified highlighting and shadowing.

  `static Border`

  `createBevelBorder(int type,
  Color highlightOuter,
  Color highlightInner,
  Color shadowOuter,
  Color shadowInner)`

  Creates a beveled border of the specified type, using
  the specified colors for the inner and outer highlight
  and shadow areas.

  `static CompoundBorder`

  `createCompoundBorder()`

  Creates a compound border with a `null` inside edge and a
  `null` outside edge.

  `static CompoundBorder`

  `createCompoundBorder(Border outsideBorder,
  Border insideBorder)`

  Creates a compound border specifying the border objects to use
  for the outside and inside edges.

  `static Border`

  `createDashedBorder(Paint paint)`

  Creates a dashed border of the specified `paint`.

  `static Border`

  `createDashedBorder(Paint paint,
  float length,
  float spacing)`

  Creates a dashed border of the specified `paint`,
  relative `length`, and relative `spacing`.

  `static Border`

  `createDashedBorder(Paint paint,
  float thickness,
  float length,
  float spacing,
  boolean rounded)`

  Creates a dashed border of the specified `paint`, `thickness`,
  line shape, relative `length`, and relative `spacing`.

  `static Border`

  `createEmptyBorder()`

  Creates an empty border that takes up no space.

  `static Border`

  `createEmptyBorder(int top,
  int left,
  int bottom,
  int right)`

  Creates an empty border that takes up space but which does
  no drawing, specifying the width of the top, left, bottom, and
  right sides.

  `static Border`

  `createEtchedBorder()`

  Creates a border with an "etched" look using
  the component's current background color for
  highlighting and shading.

  `static Border`

  `createEtchedBorder(int type)`

  Creates a border with an "etched" look using
  the component's current background color for
  highlighting and shading.

  `static Border`

  `createEtchedBorder(int type,
  Color highlight,
  Color shadow)`

  Creates a border with an "etched" look using
  the specified highlighting and shading colors.

  `static Border`

  `createEtchedBorder(Color highlight,
  Color shadow)`

  Creates a border with an "etched" look using
  the specified highlighting and shading colors.

  `static Border`

  `createLineBorder(Color color)`

  Creates a line border with the specified color.

  `static Border`

  `createLineBorder(Color color,
  int thickness)`

  Creates a line border with the specified color
  and width.

  `static Border`

  `createLineBorder(Color color,
  int thickness,
  boolean rounded)`

  Creates a line border with the specified color, thickness, and corner shape.

  `static Border`

  `createLoweredBevelBorder()`

  Creates a border with a lowered beveled edge, using
  brighter shades of the component's current background color
  for highlighting, and darker shading for shadows.

  `static Border`

  `createLoweredSoftBevelBorder()`

  Creates a beveled border with a lowered edge and softened corners,
  using brighter shades of the component's current background color
  for highlighting, and darker shading for shadows.

  `static MatteBorder`

  `createMatteBorder(int top,
  int left,
  int bottom,
  int right,
  Color color)`

  Creates a matte-look border using a solid color.

  `static MatteBorder`

  `createMatteBorder(int top,
  int left,
  int bottom,
  int right,
  Icon tileIcon)`

  Creates a matte-look border that consists of multiple tiles of a
  specified icon.

  `static Border`

  `createRaisedBevelBorder()`

  Creates a border with a raised beveled edge, using
  brighter shades of the component's current background color
  for highlighting, and darker shading for shadows.

  `static Border`

  `createRaisedSoftBevelBorder()`

  Creates a beveled border with a raised edge and softened corners,
  using brighter shades of the component's current background color
  for highlighting, and darker shading for shadows.

  `static Border`

  `createSoftBevelBorder(int type)`

  Creates a beveled border of the specified type with softened corners,
  using brighter shades of the component's current background color
  for highlighting, and darker shading for shadows.

  `static Border`

  `createSoftBevelBorder(int type,
  Color highlight,
  Color shadow)`

  Creates a beveled border of the specified type with softened corners,
  using the specified highlighting and shadowing.

  `static Border`

  `createSoftBevelBorder(int type,
  Color highlightOuter,
  Color highlightInner,
  Color shadowOuter,
  Color shadowInner)`

  Creates a beveled border of the specified type with softened corners,
  using the specified colors for the inner and outer edges
  of the highlight and the shadow areas.

  `static Border`

  `createStrokeBorder(BasicStroke stroke)`

  Creates a border of the specified `stroke`.

  `static Border`

  `createStrokeBorder(BasicStroke stroke,
  Paint paint)`

  Creates a border of the specified `stroke` and `paint`.

  `static TitledBorder`

  `createTitledBorder(String title)`

  Creates a new titled border with the specified title,
  the default border type (determined by the current look and feel),
  the default text position (determined by the current look and feel),
  the default justification (leading), and the default
  font and text color (determined by the current look and feel).

  `static TitledBorder`

  `createTitledBorder(Border border)`

  Creates a new titled border with an empty title,
  the specified border object,
  the default text position (determined by the current look and feel),
  the default justification (leading), and the default
  font and text color (determined by the current look and feel).

  `static TitledBorder`

  `createTitledBorder(Border border,
  String title)`

  Adds a title to an existing border,
  with default positioning (determined by the current look and feel),
  default justification (leading) and the default
  font and text color (determined by the current look and feel).

  `static TitledBorder`

  `createTitledBorder(Border border,
  String title,
  int titleJustification,
  int titlePosition)`

  Adds a title to an existing border, with the specified
  positioning and using the default
  font and text color (determined by the current look and feel).

  `static TitledBorder`

  `createTitledBorder(Border border,
  String title,
  int titleJustification,
  int titlePosition,
  Font titleFont)`

  Adds a title to an existing border, with the specified
  positioning and font, and using the default text color
  (determined by the current look and feel).

  `static TitledBorder`

  `createTitledBorder(Border border,
  String title,
  int titleJustification,
  int titlePosition,
  Font titleFont,
  Color titleColor)`

  Adds a title to an existing border, with the specified
  positioning, font and color.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### createLineBorder

    public static [Border](border/Border.md "interface in javax.swing.border") createLineBorder([Color](../../java/awt/Color.md "class in java.awt") color)

    Creates a line border with the specified color.

    Parameters:
    :   `color` - a `Color` to use for the line

    Returns:
    :   the `Border` object
  + ### createLineBorder

    public static [Border](border/Border.md "interface in javax.swing.border") createLineBorder([Color](../../java/awt/Color.md "class in java.awt") color,
    int thickness)

    Creates a line border with the specified color
    and width. The width applies to all four sides of the
    border. To specify widths individually for the top,
    bottom, left, and right, use
    [`createMatteBorder(int,int,int,int,Color)`](#createMatteBorder(int,int,int,int,java.awt.Color)).

    Parameters:
    :   `color` - a `Color` to use for the line
    :   `thickness` - an integer specifying the width in pixels

    Returns:
    :   the `Border` object
  + ### createLineBorder

    public static [Border](border/Border.md "interface in javax.swing.border") createLineBorder([Color](../../java/awt/Color.md "class in java.awt") color,
    int thickness,
    boolean rounded)

    Creates a line border with the specified color, thickness, and corner shape.

    Parameters:
    :   `color` - the color of the border
    :   `thickness` - the thickness of the border
    :   `rounded` - whether or not border corners should be round

    Returns:
    :   the `Border` object

    Since:
    :   1.7

    See Also:
    :   - [`LineBorder(Color, int, boolean)`](border/LineBorder.md#%3Cinit%3E(java.awt.Color,int,boolean))
  + ### createRaisedBevelBorder

    public static [Border](border/Border.md "interface in javax.swing.border") createRaisedBevelBorder()

    Creates a border with a raised beveled edge, using
    brighter shades of the component's current background color
    for highlighting, and darker shading for shadows.
    (In a raised border, highlights are on top and shadows
    are underneath.)

    Returns:
    :   the `Border` object
  + ### createLoweredBevelBorder

    public static [Border](border/Border.md "interface in javax.swing.border") createLoweredBevelBorder()

    Creates a border with a lowered beveled edge, using
    brighter shades of the component's current background color
    for highlighting, and darker shading for shadows.
    (In a lowered border, shadows are on top and highlights
    are underneath.)

    Returns:
    :   the `Border` object
  + ### createBevelBorder

    public static [Border](border/Border.md "interface in javax.swing.border") createBevelBorder(int type)

    Creates a beveled border of the specified type, using
    brighter shades of the component's current background color
    for highlighting, and darker shading for shadows.
    (In a lowered border, shadows are on top and highlights
    are underneath.)

    Parameters:
    :   `type` - an integer specifying either
        `BevelBorder.LOWERED` or
        `BevelBorder.RAISED`

    Returns:
    :   the `Border` object
  + ### createBevelBorder

    public static [Border](border/Border.md "interface in javax.swing.border") createBevelBorder(int type,
    [Color](../../java/awt/Color.md "class in java.awt") highlight,
    [Color](../../java/awt/Color.md "class in java.awt") shadow)

    Creates a beveled border of the specified type, using
    the specified highlighting and shadowing. The outer
    edge of the highlighted area uses a brighter shade of
    the highlight color. The inner edge of the shadow area
    uses a brighter shade of the shadow color.

    Parameters:
    :   `type` - an integer specifying either
        `BevelBorder.LOWERED` or
        `BevelBorder.RAISED`
    :   `highlight` - a `Color` object for highlights
    :   `shadow` - a `Color` object for shadows

    Returns:
    :   the `Border` object
  + ### createBevelBorder

    public static [Border](border/Border.md "interface in javax.swing.border") createBevelBorder(int type,
    [Color](../../java/awt/Color.md "class in java.awt") highlightOuter,
    [Color](../../java/awt/Color.md "class in java.awt") highlightInner,
    [Color](../../java/awt/Color.md "class in java.awt") shadowOuter,
    [Color](../../java/awt/Color.md "class in java.awt") shadowInner)

    Creates a beveled border of the specified type, using
    the specified colors for the inner and outer highlight
    and shadow areas.

    Parameters:
    :   `type` - an integer specifying either
        `BevelBorder.LOWERED` or
        `BevelBorder.RAISED`
    :   `highlightOuter` - a `Color` object for the
        outer edge of the highlight area
    :   `highlightInner` - a `Color` object for the
        inner edge of the highlight area
    :   `shadowOuter` - a `Color` object for the
        outer edge of the shadow area
    :   `shadowInner` - a `Color` object for the
        inner edge of the shadow area

    Returns:
    :   the `Border` object
  + ### createRaisedSoftBevelBorder

    public static [Border](border/Border.md "interface in javax.swing.border") createRaisedSoftBevelBorder()

    Creates a beveled border with a raised edge and softened corners,
    using brighter shades of the component's current background color
    for highlighting, and darker shading for shadows.
    In a raised border, highlights are on top and shadows are underneath.

    Returns:
    :   the `Border` object

    Since:
    :   1.7
  + ### createLoweredSoftBevelBorder

    public static [Border](border/Border.md "interface in javax.swing.border") createLoweredSoftBevelBorder()

    Creates a beveled border with a lowered edge and softened corners,
    using brighter shades of the component's current background color
    for highlighting, and darker shading for shadows.
    In a lowered border, shadows are on top and highlights are underneath.

    Returns:
    :   the `Border` object

    Since:
    :   1.7
  + ### createSoftBevelBorder

    public static [Border](border/Border.md "interface in javax.swing.border") createSoftBevelBorder(int type)

    Creates a beveled border of the specified type with softened corners,
    using brighter shades of the component's current background color
    for highlighting, and darker shading for shadows.
    The type is either [`BevelBorder.RAISED`](border/BevelBorder.md#RAISED) or [`BevelBorder.LOWERED`](border/BevelBorder.md#LOWERED).

    Parameters:
    :   `type` - a type of a bevel

    Returns:
    :   the `Border` object or `null`
        if the specified type is not valid

    Since:
    :   1.7

    See Also:
    :   - [`BevelBorder(int)`](border/BevelBorder.md#%3Cinit%3E(int))
  + ### createSoftBevelBorder

    public static [Border](border/Border.md "interface in javax.swing.border") createSoftBevelBorder(int type,
    [Color](../../java/awt/Color.md "class in java.awt") highlight,
    [Color](../../java/awt/Color.md "class in java.awt") shadow)

    Creates a beveled border of the specified type with softened corners,
    using the specified highlighting and shadowing.
    The type is either [`BevelBorder.RAISED`](border/BevelBorder.md#RAISED) or [`BevelBorder.LOWERED`](border/BevelBorder.md#LOWERED).
    The outer edge of the highlight area uses
    a brighter shade of the `highlight` color.
    The inner edge of the shadow area uses
    a brighter shade of the `shadow` color.

    Parameters:
    :   `type` - a type of a bevel
    :   `highlight` - a basic color of the highlight area
    :   `shadow` - a basic color of the shadow area

    Returns:
    :   the `Border` object

    Since:
    :   1.7

    See Also:
    :   - [`BevelBorder(int, Color, Color)`](border/BevelBorder.md#%3Cinit%3E(int,java.awt.Color,java.awt.Color))
  + ### createSoftBevelBorder

    public static [Border](border/Border.md "interface in javax.swing.border") createSoftBevelBorder(int type,
    [Color](../../java/awt/Color.md "class in java.awt") highlightOuter,
    [Color](../../java/awt/Color.md "class in java.awt") highlightInner,
    [Color](../../java/awt/Color.md "class in java.awt") shadowOuter,
    [Color](../../java/awt/Color.md "class in java.awt") shadowInner)

    Creates a beveled border of the specified type with softened corners,
    using the specified colors for the inner and outer edges
    of the highlight and the shadow areas.
    The type is either [`BevelBorder.RAISED`](border/BevelBorder.md#RAISED) or [`BevelBorder.LOWERED`](border/BevelBorder.md#LOWERED).
    Note: The shadow inner and outer colors are switched
    for a lowered bevel border.

    Parameters:
    :   `type` - a type of a bevel
    :   `highlightOuter` - a color of the outer edge of the highlight area
    :   `highlightInner` - a color of the inner edge of the highlight area
    :   `shadowOuter` - a color of the outer edge of the shadow area
    :   `shadowInner` - a color of the inner edge of the shadow area

    Returns:
    :   the `Border` object

    Since:
    :   1.7

    See Also:
    :   - [`BevelBorder(int, Color, Color, Color, Color)`](border/BevelBorder.md#%3Cinit%3E(int,java.awt.Color,java.awt.Color,java.awt.Color,java.awt.Color))
  + ### createEtchedBorder

    public static [Border](border/Border.md "interface in javax.swing.border") createEtchedBorder()

    Creates a border with an "etched" look using
    the component's current background color for
    highlighting and shading.

    Returns:
    :   the `Border` object
  + ### createEtchedBorder

    public static [Border](border/Border.md "interface in javax.swing.border") createEtchedBorder([Color](../../java/awt/Color.md "class in java.awt") highlight,
    [Color](../../java/awt/Color.md "class in java.awt") shadow)

    Creates a border with an "etched" look using
    the specified highlighting and shading colors.

    Parameters:
    :   `highlight` - a `Color` object for the border highlights
    :   `shadow` - a `Color` object for the border shadows

    Returns:
    :   the `Border` object
  + ### createEtchedBorder

    public static [Border](border/Border.md "interface in javax.swing.border") createEtchedBorder(int type)

    Creates a border with an "etched" look using
    the component's current background color for
    highlighting and shading.

    Parameters:
    :   `type` - one of `EtchedBorder.RAISED`, or
        `EtchedBorder.LOWERED`

    Returns:
    :   the `Border` object

    Throws:
    :   `IllegalArgumentException` - if type is not either
        `EtchedBorder.RAISED` or
        `EtchedBorder.LOWERED`

    Since:
    :   1.3
  + ### createEtchedBorder

    public static [Border](border/Border.md "interface in javax.swing.border") createEtchedBorder(int type,
    [Color](../../java/awt/Color.md "class in java.awt") highlight,
    [Color](../../java/awt/Color.md "class in java.awt") shadow)

    Creates a border with an "etched" look using
    the specified highlighting and shading colors.

    Parameters:
    :   `type` - one of `EtchedBorder.RAISED`, or
        `EtchedBorder.LOWERED`
    :   `highlight` - a `Color` object for the border highlights
    :   `shadow` - a `Color` object for the border shadows

    Returns:
    :   the `Border` object

    Since:
    :   1.3
  + ### createTitledBorder

    public static [TitledBorder](border/TitledBorder.md "class in javax.swing.border") createTitledBorder([String](../../../java.base/java/lang/String.md "class in java.lang") title)

    Creates a new titled border with the specified title,
    the default border type (determined by the current look and feel),
    the default text position (determined by the current look and feel),
    the default justification (leading), and the default
    font and text color (determined by the current look and feel).

    Parameters:
    :   `title` - a `String` containing the text of the title

    Returns:
    :   the `TitledBorder` object
  + ### createTitledBorder

    public static [TitledBorder](border/TitledBorder.md "class in javax.swing.border") createTitledBorder([Border](border/Border.md "interface in javax.swing.border") border)

    Creates a new titled border with an empty title,
    the specified border object,
    the default text position (determined by the current look and feel),
    the default justification (leading), and the default
    font and text color (determined by the current look and feel).

    Parameters:
    :   `border` - the `Border` object to add the title to; if
        `null` the `Border` is determined
        by the current look and feel.

    Returns:
    :   the `TitledBorder` object
  + ### createTitledBorder

    public static [TitledBorder](border/TitledBorder.md "class in javax.swing.border") createTitledBorder([Border](border/Border.md "interface in javax.swing.border") border,
    [String](../../../java.base/java/lang/String.md "class in java.lang") title)

    Adds a title to an existing border,
    with default positioning (determined by the current look and feel),
    default justification (leading) and the default
    font and text color (determined by the current look and feel).

    Parameters:
    :   `border` - the `Border` object to add the title to
    :   `title` - a `String` containing the text of the title

    Returns:
    :   the `TitledBorder` object
  + ### createTitledBorder

    public static [TitledBorder](border/TitledBorder.md "class in javax.swing.border") createTitledBorder([Border](border/Border.md "interface in javax.swing.border") border,
    [String](../../../java.base/java/lang/String.md "class in java.lang") title,
    int titleJustification,
    int titlePosition)

    Adds a title to an existing border, with the specified
    positioning and using the default
    font and text color (determined by the current look and feel).

    Parameters:
    :   `border` - the `Border` object to add the title to
    :   `title` - a `String` containing the text of the title
    :   `titleJustification` - an integer specifying the justification
        of the title -- one of the following:
        - `TitledBorder.LEFT`- `TitledBorder.CENTER`- `TitledBorder.RIGHT`- `TitledBorder.LEADING`- `TitledBorder.TRAILING`- `TitledBorder.DEFAULT_JUSTIFICATION` (leading)
    :   `titlePosition` - an integer specifying the vertical position of
        the text in relation to the border -- one of the following:
        - `TitledBorder.ABOVE_TOP`- `TitledBorder.TOP` (sitting on the top line)- `TitledBorder.BELOW_TOP`- `TitledBorder.ABOVE_BOTTOM`- `TitledBorder.BOTTOM` (sitting on the bottom line)- `TitledBorder.BELOW_BOTTOM`- `TitledBorder.DEFAULT_POSITION` (the title position
                      is determined by the current look and feel)

    Returns:
    :   the `TitledBorder` object
  + ### createTitledBorder

    public static [TitledBorder](border/TitledBorder.md "class in javax.swing.border") createTitledBorder([Border](border/Border.md "interface in javax.swing.border") border,
    [String](../../../java.base/java/lang/String.md "class in java.lang") title,
    int titleJustification,
    int titlePosition,
    [Font](../../java/awt/Font.md "class in java.awt") titleFont)

    Adds a title to an existing border, with the specified
    positioning and font, and using the default text color
    (determined by the current look and feel).

    Parameters:
    :   `border` - the `Border` object to add the title to
    :   `title` - a `String` containing the text of the title
    :   `titleJustification` - an integer specifying the justification
        of the title -- one of the following:
        - `TitledBorder.LEFT`- `TitledBorder.CENTER`- `TitledBorder.RIGHT`- `TitledBorder.LEADING`- `TitledBorder.TRAILING`- `TitledBorder.DEFAULT_JUSTIFICATION` (leading)
    :   `titlePosition` - an integer specifying the vertical position of
        the text in relation to the border -- one of the following:
        - `TitledBorder.ABOVE_TOP`- `TitledBorder.TOP` (sitting on the top line)- `TitledBorder.BELOW_TOP`- `TitledBorder.ABOVE_BOTTOM`- `TitledBorder.BOTTOM` (sitting on the bottom line)- `TitledBorder.BELOW_BOTTOM`- `TitledBorder.DEFAULT_POSITION` (the title position
                      is determined by the current look and feel)
    :   `titleFont` - a Font object specifying the title font

    Returns:
    :   the TitledBorder object
  + ### createTitledBorder

    public static [TitledBorder](border/TitledBorder.md "class in javax.swing.border") createTitledBorder([Border](border/Border.md "interface in javax.swing.border") border,
    [String](../../../java.base/java/lang/String.md "class in java.lang") title,
    int titleJustification,
    int titlePosition,
    [Font](../../java/awt/Font.md "class in java.awt") titleFont,
    [Color](../../java/awt/Color.md "class in java.awt") titleColor)

    Adds a title to an existing border, with the specified
    positioning, font and color.

    Parameters:
    :   `border` - the `Border` object to add the title to
    :   `title` - a `String` containing the text of the title
    :   `titleJustification` - an integer specifying the justification
        of the title -- one of the following:
        - `TitledBorder.LEFT`- `TitledBorder.CENTER`- `TitledBorder.RIGHT`- `TitledBorder.LEADING`- `TitledBorder.TRAILING`- `TitledBorder.DEFAULT_JUSTIFICATION` (leading)
    :   `titlePosition` - an integer specifying the vertical position of
        the text in relation to the border -- one of the following:
        - `TitledBorder.ABOVE_TOP`- `TitledBorder.TOP` (sitting on the top line)- `TitledBorder.BELOW_TOP`- `TitledBorder.ABOVE_BOTTOM`- `TitledBorder.BOTTOM` (sitting on the bottom line)- `TitledBorder.BELOW_BOTTOM`- `TitledBorder.DEFAULT_POSITION` (the title position
                      is determined by the current look and feel)
    :   `titleFont` - a `Font` object specifying the title font
    :   `titleColor` - a `Color` object specifying the title color

    Returns:
    :   the `TitledBorder` object
  + ### createEmptyBorder

    public static [Border](border/Border.md "interface in javax.swing.border") createEmptyBorder()

    Creates an empty border that takes up no space. (The width
    of the top, bottom, left, and right sides are all zero.)

    Returns:
    :   the `Border` object
  + ### createEmptyBorder

    public static [Border](border/Border.md "interface in javax.swing.border") createEmptyBorder(int top,
    int left,
    int bottom,
    int right)

    Creates an empty border that takes up space but which does
    no drawing, specifying the width of the top, left, bottom, and
    right sides.

    Parameters:
    :   `top` - an integer specifying the width of the top,
        in pixels
    :   `left` - an integer specifying the width of the left side,
        in pixels
    :   `bottom` - an integer specifying the width of the bottom,
        in pixels
    :   `right` - an integer specifying the width of the right side,
        in pixels

    Returns:
    :   the `Border` object
  + ### createCompoundBorder

    public static [CompoundBorder](border/CompoundBorder.md "class in javax.swing.border") createCompoundBorder()

    Creates a compound border with a `null` inside edge and a
    `null` outside edge.

    Returns:
    :   the `CompoundBorder` object
  + ### createCompoundBorder

    public static [CompoundBorder](border/CompoundBorder.md "class in javax.swing.border") createCompoundBorder([Border](border/Border.md "interface in javax.swing.border") outsideBorder,
    [Border](border/Border.md "interface in javax.swing.border") insideBorder)

    Creates a compound border specifying the border objects to use
    for the outside and inside edges.

    Parameters:
    :   `outsideBorder` - a `Border` object for the outer
        edge of the compound border
    :   `insideBorder` - a `Border` object for the inner
        edge of the compound border

    Returns:
    :   the `CompoundBorder` object
  + ### createMatteBorder

    public static [MatteBorder](border/MatteBorder.md "class in javax.swing.border") createMatteBorder(int top,
    int left,
    int bottom,
    int right,
    [Color](../../java/awt/Color.md "class in java.awt") color)

    Creates a matte-look border using a solid color. (The difference between
    this border and a line border is that you can specify the individual
    border dimensions.)

    Parameters:
    :   `top` - an integer specifying the width of the top,
        in pixels
    :   `left` - an integer specifying the width of the left side,
        in pixels
    :   `bottom` - an integer specifying the width of the right side,
        in pixels
    :   `right` - an integer specifying the width of the bottom,
        in pixels
    :   `color` - a `Color` to use for the border

    Returns:
    :   the `MatteBorder` object
  + ### createMatteBorder

    public static [MatteBorder](border/MatteBorder.md "class in javax.swing.border") createMatteBorder(int top,
    int left,
    int bottom,
    int right,
    [Icon](Icon.md "interface in javax.swing") tileIcon)

    Creates a matte-look border that consists of multiple tiles of a
    specified icon. Multiple copies of the icon are placed side-by-side
    to fill up the border area.

    Note:  
    If the icon doesn't load, the border area is painted gray.

    Parameters:
    :   `top` - an integer specifying the width of the top,
        in pixels
    :   `left` - an integer specifying the width of the left side,
        in pixels
    :   `bottom` - an integer specifying the width of the right side,
        in pixels
    :   `right` - an integer specifying the width of the bottom,
        in pixels
    :   `tileIcon` - the `Icon` object used for the border tiles

    Returns:
    :   the `MatteBorder` object
  + ### createStrokeBorder

    public static [Border](border/Border.md "interface in javax.swing.border") createStrokeBorder([BasicStroke](../../java/awt/BasicStroke.md "class in java.awt") stroke)

    Creates a border of the specified `stroke`.
    The component's foreground color will be used to render the border.

    Parameters:
    :   `stroke` - the [`BasicStroke`](../../java/awt/BasicStroke.md "class in java.awt") object used to stroke a shape

    Returns:
    :   the `Border` object

    Throws:
    :   `NullPointerException` - if the specified `stroke` is `null`

    Since:
    :   1.7
  + ### createStrokeBorder

    public static [Border](border/Border.md "interface in javax.swing.border") createStrokeBorder([BasicStroke](../../java/awt/BasicStroke.md "class in java.awt") stroke,
    [Paint](../../java/awt/Paint.md "interface in java.awt") paint)

    Creates a border of the specified `stroke` and `paint`.
    If the specified `paint` is `null`,
    the component's foreground color will be used to render the border.

    Parameters:
    :   `stroke` - the [`BasicStroke`](../../java/awt/BasicStroke.md "class in java.awt") object used to stroke a shape
    :   `paint` - the [`Paint`](../../java/awt/Paint.md "interface in java.awt") object used to generate a color

    Returns:
    :   the `Border` object

    Throws:
    :   `NullPointerException` - if the specified `stroke` is `null`

    Since:
    :   1.7
  + ### createDashedBorder

    public static [Border](border/Border.md "interface in javax.swing.border") createDashedBorder([Paint](../../java/awt/Paint.md "interface in java.awt") paint)

    Creates a dashed border of the specified `paint`.
    If the specified `paint` is `null`,
    the component's foreground color will be used to render the border.
    The width of a dash line is equal to `1`.
    The relative length of a dash line and
    the relative spacing between dash lines are equal to `1`.
    A dash line is not rounded.

    Parameters:
    :   `paint` - the [`Paint`](../../java/awt/Paint.md "interface in java.awt") object used to generate a color

    Returns:
    :   the `Border` object

    Since:
    :   1.7
  + ### createDashedBorder

    public static [Border](border/Border.md "interface in javax.swing.border") createDashedBorder([Paint](../../java/awt/Paint.md "interface in java.awt") paint,
    float length,
    float spacing)

    Creates a dashed border of the specified `paint`,
    relative `length`, and relative `spacing`.
    If the specified `paint` is `null`,
    the component's foreground color will be used to render the border.
    The width of a dash line is equal to `1`.
    A dash line is not rounded.

    Parameters:
    :   `paint` - the [`Paint`](../../java/awt/Paint.md "interface in java.awt") object used to generate a color
    :   `length` - the relative length of a dash line
    :   `spacing` - the relative spacing between dash lines

    Returns:
    :   the `Border` object

    Throws:
    :   `IllegalArgumentException` - if the specified `length` is less than `1`, or
        if the specified `spacing` is less than `0`

    Since:
    :   1.7
  + ### createDashedBorder

    public static [Border](border/Border.md "interface in javax.swing.border") createDashedBorder([Paint](../../java/awt/Paint.md "interface in java.awt") paint,
    float thickness,
    float length,
    float spacing,
    boolean rounded)

    Creates a dashed border of the specified `paint`, `thickness`,
    line shape, relative `length`, and relative `spacing`.
    If the specified `paint` is `null`,
    the component's foreground color will be used to render the border.

    Parameters:
    :   `paint` - the [`Paint`](../../java/awt/Paint.md "interface in java.awt") object used to generate a color
    :   `thickness` - the width of a dash line
    :   `length` - the relative length of a dash line
    :   `spacing` - the relative spacing between dash lines
    :   `rounded` - whether or not line ends should be round

    Returns:
    :   the `Border` object

    Throws:
    :   `IllegalArgumentException` - if the specified `thickness` is less than `1`, or
        if the specified `length` is less than `1`, or
        if the specified `spacing` is less than `0`

    Since:
    :   1.7