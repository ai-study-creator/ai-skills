Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class FontMetrics

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.FontMetrics

All Implemented Interfaces:
:   `Serializable`

---

public abstract class FontMetrics
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

The `FontMetrics` class defines a font metrics object, which
encapsulates information about the rendering of a particular font on a
particular screen.

**Note to subclassers**: Since many of these methods form closed,
mutually recursive loops, you must take care that you implement
at least one of the methods in each such loop to prevent
infinite recursion when your subclass is used.
In particular, the following is the minimal suggested set of methods
to override in order to ensure correctness and prevent infinite
recursion (though other subsets are equally feasible):

* [`getAscent()`](#getAscent())* [`getLeading()`](#getLeading())* [`getMaxAdvance()`](#getMaxAdvance())* [`charWidth(char)`](#charWidth(char))* [`charsWidth(char[], int, int)`](#charsWidth(char%5B%5D,int,int))

![The letter 'p' showing its 'reference point'](doc-files/FontMetrics-1.gif)
Note that the implementations of these methods are
inefficient, so they are usually overridden with more efficient
toolkit-specific implementations.

When an application asks to place a character at the position
(*x*, *y*), the character is placed so that its
reference point (shown as the dot in the accompanying image) is
put at that position. The reference point specifies a horizontal
line called the *baseline* of the character. In normal
printing, the baselines of characters should align.

In addition, every character in a font has an *ascent*, a
*descent*, and an *advance width*. The ascent is the
amount by which the character ascends above the baseline. The
descent is the amount by which the character descends below the
baseline. The advance width indicates the position at which AWT
should place the next character.

An array of characters or a string can also have an ascent, a
descent, and an advance width. The ascent of the array is the
maximum ascent of any character in the array. The descent is the
maximum descent of any character in the array. The advance width
is the sum of the advance widths of each of the characters in the
character array. The advance of a `String` is the
distance along the baseline of the `String`. This
distance is the width that should be used for centering or
right-aligning the `String`.

Note that the advance of a `String` is not necessarily
the sum of the advances of its characters measured in isolation
because the width of a character can vary depending on its context.
For example, in Arabic text, the shape of a character can change
in order to connect to other characters. Also, in some scripts,
certain character sequences can be represented by a single shape,
called a *ligature*. Measuring characters individually does
not account for these transformations.

Font metrics are baseline-relative, meaning that they are
generally independent of the rotation applied to the font (modulo
possible grid hinting effects). See [`Font`](Font.md "class in java.awt").

Since:
:   1.0

See Also:
:   * [`Font`](Font.md "class in java.awt")
    * [Serialized Form](../../../serialized-form.md#java.awt.FontMetrics)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Font`

  `font`

  The actual [`Font`](Font.md "class in java.awt") from which the font metrics are
  created.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `FontMetrics(Font font)`

  Creates a new `FontMetrics` object for finding out
  height and width information about the specified `Font`
  and specific character glyphs in that `Font`.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `int`

  `bytesWidth(byte[] data,
  int off,
  int len)`

  Returns the total advance width for showing the specified array
  of bytes in this `Font`.

  `int`

  `charsWidth(char[] data,
  int off,
  int len)`

  Returns the total advance width for showing the specified array
  of characters in this `Font`.

  `int`

  `charWidth(char ch)`

  Returns the advance width of the specified character in this
  `Font`.

  `int`

  `charWidth(int codePoint)`

  Returns the advance width of the specified character in this
  `Font`.

  `int`

  `getAscent()`

  Determines the *font ascent* of the `Font`
  described by this `FontMetrics` object.

  `int`

  `getDescent()`

  Determines the *font descent* of the `Font`
  described by this
  `FontMetrics` object.

  `Font`

  `getFont()`

  Gets the `Font` described by this
  `FontMetrics` object.

  `FontRenderContext`

  `getFontRenderContext()`

  Gets the `FontRenderContext` used by this
  `FontMetrics` object to measure text.

  `int`

  `getHeight()`

  Gets the standard height of a line of text in this font.

  `int`

  `getLeading()`

  Determines the *standard leading* of the
  `Font` described by this `FontMetrics`
  object.

  `LineMetrics`

  `getLineMetrics(char[] chars,
  int beginIndex,
  int limit,
  Graphics context)`

  Returns the [`LineMetrics`](font/LineMetrics.md "class in java.awt.font") object for the specified
  character array in the specified [`Graphics`](Graphics.md "class in java.awt") context.

  `LineMetrics`

  `getLineMetrics(String str,
  int beginIndex,
  int limit,
  Graphics context)`

  Returns the [`LineMetrics`](font/LineMetrics.md "class in java.awt.font") object for the specified
  `String` in the specified [`Graphics`](Graphics.md "class in java.awt") context.

  `LineMetrics`

  `getLineMetrics(String str,
  Graphics context)`

  Returns the [`LineMetrics`](font/LineMetrics.md "class in java.awt.font") object for the specified
  `String` in the specified [`Graphics`](Graphics.md "class in java.awt") context.

  `LineMetrics`

  `getLineMetrics(CharacterIterator ci,
  int beginIndex,
  int limit,
  Graphics context)`

  Returns the [`LineMetrics`](font/LineMetrics.md "class in java.awt.font") object for the specified
  [`CharacterIterator`](../../../java.base/java/text/CharacterIterator.md "interface in java.text") in the specified [`Graphics`](Graphics.md "class in java.awt")
  context.

  `int`

  `getMaxAdvance()`

  Returns an estimate of the maximum advance width of any character
  in the `Font` described by this `FontMetrics` object,
  with important caveats, enumerated below.

  `int`

  `getMaxAscent()`

  Determines the maximum ascent of the `Font`
  described by this `FontMetrics` object.

  `Rectangle2D`

  `getMaxCharBounds(Graphics context)`

  Returns the bounds for the character with the maximum bounds
  in the specified `Graphics` context.

  `int`

  `getMaxDecent()`

  Deprecated.

  As of JDK version 1.1.1,
  replaced by `getMaxDescent()`.

  `int`

  `getMaxDescent()`

  Determines the maximum descent of the `Font`
  described by this `FontMetrics` object.

  `Rectangle2D`

  `getStringBounds(char[] chars,
  int beginIndex,
  int limit,
  Graphics context)`

  Returns the bounds of the specified array of characters
  in the specified `Graphics` context.

  `Rectangle2D`

  `getStringBounds(String str,
  int beginIndex,
  int limit,
  Graphics context)`

  Returns the bounds of the specified `String` in the
  specified `Graphics` context.

  `Rectangle2D`

  `getStringBounds(String str,
  Graphics context)`

  Returns the bounds of the specified `String` in the
  specified `Graphics` context.

  `Rectangle2D`

  `getStringBounds(CharacterIterator ci,
  int beginIndex,
  int limit,
  Graphics context)`

  Returns the bounds of the characters indexed in the specified
  `CharacterIterator` in the
  specified `Graphics` context.

  `int[]`

  `getWidths()`

  Gets the advance widths of the first 256 characters in the
  `Font`.

  `boolean`

  `hasUniformLineMetrics()`

  Checks to see if the `Font` has uniform line metrics.

  `int`

  `stringWidth(String str)`

  Returns the total advance width for showing the specified
  `String` in this `Font`.

  `String`

  `toString()`

  Returns a representation of this `FontMetrics`
  object's values as a `String`.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### font

    protected [Font](Font.md "class in java.awt") font

    The actual [`Font`](Font.md "class in java.awt") from which the font metrics are
    created.
    This cannot be null.

    See Also:
    :   - [`getFont()`](#getFont())
* ## Constructor Details

  + ### FontMetrics

    protected FontMetrics([Font](Font.md "class in java.awt") font)

    Creates a new `FontMetrics` object for finding out
    height and width information about the specified `Font`
    and specific character glyphs in that `Font`.

    Parameters:
    :   `font` - the `Font`

    See Also:
    :   - [`Font`](Font.md "class in java.awt")
* ## Method Details

  + ### getFont

    public [Font](Font.md "class in java.awt") getFont()

    Gets the `Font` described by this
    `FontMetrics` object.

    Returns:
    :   the `Font` described by this
        `FontMetrics` object.
  + ### getFontRenderContext

    public [FontRenderContext](font/FontRenderContext.md "class in java.awt.font") getFontRenderContext()

    Gets the `FontRenderContext` used by this
    `FontMetrics` object to measure text.

    Note that methods in this class which take a `Graphics`
    parameter measure text using the `FontRenderContext`
    of that `Graphics` object, and not this
    `FontRenderContext`

    Returns:
    :   the `FontRenderContext` used by this
        `FontMetrics` object.

    Since:
    :   1.6
  + ### getLeading

    public int getLeading()

    Determines the *standard leading* of the
    `Font` described by this `FontMetrics`
    object. The standard leading, or
    interline spacing, is the logical amount of space to be reserved
    between the descent of one line of text and the ascent of the next
    line. The height metric is calculated to include this extra space.

    Returns:
    :   the standard leading of the `Font`.

    See Also:
    :   - [`getHeight()`](#getHeight())
        - [`getAscent()`](#getAscent())
        - [`getDescent()`](#getDescent())
  + ### getAscent

    public int getAscent()

    Determines the *font ascent* of the `Font`
    described by this `FontMetrics` object. The font ascent
    is the distance from the font's baseline to the top of most
    alphanumeric characters. Some characters in the `Font`
    might extend above the font ascent line.

    Returns:
    :   the font ascent of the `Font`.

    See Also:
    :   - [`getMaxAscent()`](#getMaxAscent())
  + ### getDescent

    public int getDescent()

    Determines the *font descent* of the `Font`
    described by this
    `FontMetrics` object. The font descent is the distance
    from the font's baseline to the bottom of most alphanumeric
    characters with descenders. Some characters in the
    `Font` might extend
    below the font descent line.

    Returns:
    :   the font descent of the `Font`.

    See Also:
    :   - [`getMaxDescent()`](#getMaxDescent())
  + ### getHeight

    public int getHeight()

    Gets the standard height of a line of text in this font. This
    is the distance between the baseline of adjacent lines of text.
    It is the sum of the leading + ascent + descent. Due to rounding
    this may not be the same as getAscent() + getDescent() + getLeading().
    There is no guarantee that lines of text spaced at this distance are
    disjoint; such lines may overlap if some characters overshoot
    either the standard ascent or the standard descent metric.

    Returns:
    :   the standard height of the font.

    See Also:
    :   - [`getLeading()`](#getLeading())
        - [`getAscent()`](#getAscent())
        - [`getDescent()`](#getDescent())
  + ### getMaxAscent

    public int getMaxAscent()

    Determines the maximum ascent of the `Font`
    described by this `FontMetrics` object. No character
    extends further above the font's baseline than this height.

    Returns:
    :   the maximum ascent of any character in the
        `Font`.

    See Also:
    :   - [`getAscent()`](#getAscent())
  + ### getMaxDescent

    public int getMaxDescent()

    Determines the maximum descent of the `Font`
    described by this `FontMetrics` object. No character
    extends further below the font's baseline than this height.

    Returns:
    :   the maximum descent of any character in the
        `Font`.

    See Also:
    :   - [`getDescent()`](#getDescent())
  + ### getMaxDecent

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public int getMaxDecent()

    Deprecated.

    As of JDK version 1.1.1,
    replaced by `getMaxDescent()`.

    For backward compatibility only.

    Returns:
    :   the maximum descent of any character in the
        `Font`.

    See Also:
    :   - [`getMaxDescent()`](#getMaxDescent())
  + ### getMaxAdvance

    public int getMaxAdvance()

    Returns an estimate of the maximum advance width of any character
    in the `Font` described by this `FontMetrics` object,
    with important caveats, enumerated below.

    The advance is the distance from the leftmost point used to position
    the character to the rightmost point along the baseline.
    This is not the same thing as the visible width of the glyph image
    representing the character.

    The advance of a `String` is not necessarily the sum of the
    advances of its characters. It may differ substantially if
    complex text layout is required for proper rendering.

    Some of the caveats of the reported value include
    - The returned value is relying upon information from some
      underlying system font, and the correctness of that information
      is outside of AWT's control.- When specific characters are mapped into glyphs
        in some rendering context, instructions in the font itself
        together with the rasterization process may cause some glyph
        to have a wider advance than reported.- When a font is requested in some style, eg `Font.BOLD`,
          for which no exact match is available, then techniques to satisfy
          the requested rendering may similarly result in glyphs that are
          wider than the reported maximum.- Depending on the implementation, an AWT logical font or
            physical font may need to locate some characters from one or more
            "fall back" fonts, when the primary underlying physical font does not
            support the character. These fonts may not all be known or considered
            in the calculation of the reported maximum advance. It is common
            for the design center of such fall back fonts to be for a different
            script than the design center of the primary font, so their
            advances can be quite different. This can also lead to the
            unexpected result that a font such as `Font.MONOSPACED` can
            render glyphs that are not all the same width.None of these caveats are exposed as they are all implementation details,
    and there is no practical way to determine when these are in effect.
    An application which needs a better estimate of the maximum advance,
    and knows the subset of characters it expects to display can query
    the advance of each such character to find the widest, however,
    as discussed above, since the displayed width of a `String`
    is not necessarily the sum of the advances the value still needs
    to be used with caution.

    In summary, this method makes no absolute guarantee, nor can
    it even make a guarantee to be correct within some margin of error.
    So it should be used at most only for estimating the total space
    sufficient to display some number of as yet unknown characters from
    the font. And that might be either an overestimate, or an
    underestimate depending on the specific text and rendering context.

    Returns:
    :   an estimate of the maximum advance width of any character
        in the `Font`, or `-1` if the
        maximum advance width is not known.
  + ### charWidth

    public int charWidth(int codePoint)

    Returns the advance width of the specified character in this
    `Font`. The advance is the
    distance from the leftmost point to the rightmost point on the
    character's baseline. Note that the advance of a
    `String` is not necessarily the sum of the advances
    of its characters.

    This method doesn't validate the specified character to be a
    valid Unicode code point. The caller must validate the
    character value using [`Character.isValidCodePoint`](../../../java.base/java/lang/Character.md#isValidCodePoint(int)) if necessary.

    Parameters:
    :   `codePoint` - the character (Unicode code point) to be measured

    Returns:
    :   the advance width of the specified character
        in the `Font` described by this
        `FontMetrics` object.

    See Also:
    :   - [`charsWidth(char[], int, int)`](#charsWidth(char%5B%5D,int,int))
        - [`stringWidth(String)`](#stringWidth(java.lang.String))
  + ### charWidth

    public int charWidth(char ch)

    Returns the advance width of the specified character in this
    `Font`. The advance is the
    distance from the leftmost point to the rightmost point on the
    character's baseline. Note that the advance of a
    `String` is not necessarily the sum of the advances
    of its characters.

    **Note:** This method cannot handle [supplementary characters](../../../java.base/java/lang/Character.md#supplementary).
    To support all Unicode characters, including
    supplementary characters, use the [`charWidth(int)`](#charWidth(int)) method.

    Parameters:
    :   `ch` - the character to be measured

    Returns:
    :   the advance width of the specified character
        in the `Font` described by this
        `FontMetrics` object.

    See Also:
    :   - [`charsWidth(char[], int, int)`](#charsWidth(char%5B%5D,int,int))
        - [`stringWidth(String)`](#stringWidth(java.lang.String))
  + ### stringWidth

    public int stringWidth([String](../../../java.base/java/lang/String.md "class in java.lang") str)

    Returns the total advance width for showing the specified
    `String` in this `Font`. The advance
    is the distance from the leftmost point to the rightmost point
    on the string's baseline.

    Note that the advance of a `String` is
    not necessarily the sum of the advances of its characters.

    Parameters:
    :   `str` - the `String` to be measured

    Returns:
    :   the advance width of the specified `String`
        in the `Font` described by this
        `FontMetrics`.

    Throws:
    :   `NullPointerException` - if str is null.

    See Also:
    :   - [`bytesWidth(byte[], int, int)`](#bytesWidth(byte%5B%5D,int,int))
        - [`charsWidth(char[], int, int)`](#charsWidth(char%5B%5D,int,int))
        - [`getStringBounds(String, Graphics)`](#getStringBounds(java.lang.String,java.awt.Graphics))
  + ### charsWidth

    public int charsWidth(char[] data,
    int off,
    int len)

    Returns the total advance width for showing the specified array
    of characters in this `Font`. The advance is the
    distance from the leftmost point to the rightmost point on the
    string's baseline. The advance of a `String`
    is not necessarily the sum of the advances of its characters.
    This is equivalent to measuring a `String` of the
    characters in the specified range.

    Parameters:
    :   `data` - the array of characters to be measured
    :   `off` - the start offset of the characters in the array
    :   `len` - the number of characters to be measured from the array

    Returns:
    :   the advance width of the subarray of the specified
        `char` array in the font described by
        this `FontMetrics` object.

    Throws:
    :   `NullPointerException` - if `data` is null.
    :   `IndexOutOfBoundsException` - if the `off`
        and `len` arguments index characters outside
        the bounds of the `data` array.

    See Also:
    :   - [`charWidth(int)`](#charWidth(int))
        - [`charWidth(char)`](#charWidth(char))
        - [`bytesWidth(byte[], int, int)`](#bytesWidth(byte%5B%5D,int,int))
        - [`stringWidth(String)`](#stringWidth(java.lang.String))
  + ### bytesWidth

    public int bytesWidth(byte[] data,
    int off,
    int len)

    Returns the total advance width for showing the specified array
    of bytes in this `Font`. The advance is the
    distance from the leftmost point to the rightmost point on the
    string's baseline. The advance of a `String`
    is not necessarily the sum of the advances of its characters.
    This is equivalent to measuring a `String` of the
    characters in the specified range.

    Parameters:
    :   `data` - the array of bytes to be measured
    :   `off` - the start offset of the bytes in the array
    :   `len` - the number of bytes to be measured from the array

    Returns:
    :   the advance width of the subarray of the specified
        `byte` array in the `Font`
        described by
        this `FontMetrics` object.

    Throws:
    :   `NullPointerException` - if `data` is null.
    :   `IndexOutOfBoundsException` - if the `off`
        and `len` arguments index bytes outside
        the bounds of the `data` array.

    See Also:
    :   - [`charsWidth(char[], int, int)`](#charsWidth(char%5B%5D,int,int))
        - [`stringWidth(String)`](#stringWidth(java.lang.String))
  + ### getWidths

    public int[] getWidths()

    Gets the advance widths of the first 256 characters in the
    `Font`. The advance is the
    distance from the leftmost point to the rightmost point on the
    character's baseline. Note that the advance of a
    `String` is not necessarily the sum of the advances
    of its characters.

    Returns:
    :   an array storing the advance widths of the
        characters in the `Font`
        described by this `FontMetrics` object.
  + ### hasUniformLineMetrics

    public boolean hasUniformLineMetrics()

    Checks to see if the `Font` has uniform line metrics. A
    composite font may consist of several different fonts to cover
    various character sets. In such cases, the
    `FontLineMetrics` objects are not uniform.
    Different fonts may have a different ascent, descent, metrics and
    so on. This information is sometimes necessary for line
    measuring and line breaking.

    Returns:
    :   `true` if the font has uniform line metrics;
        `false` otherwise.

    See Also:
    :   - [`Font.hasUniformLineMetrics()`](Font.md#hasUniformLineMetrics())
  + ### getLineMetrics

    public [LineMetrics](font/LineMetrics.md "class in java.awt.font") getLineMetrics([String](../../../java.base/java/lang/String.md "class in java.lang") str,
    [Graphics](Graphics.md "class in java.awt") context)

    Returns the [`LineMetrics`](font/LineMetrics.md "class in java.awt.font") object for the specified
    `String` in the specified [`Graphics`](Graphics.md "class in java.awt") context.

    Parameters:
    :   `str` - the specified `String`
    :   `context` - the specified `Graphics` context

    Returns:
    :   a `LineMetrics` object created with the
        specified `String` and `Graphics` context.

    See Also:
    :   - [`Font.getLineMetrics(String, FontRenderContext)`](Font.md#getLineMetrics(java.lang.String,java.awt.font.FontRenderContext))
  + ### getLineMetrics

    public [LineMetrics](font/LineMetrics.md "class in java.awt.font") getLineMetrics([String](../../../java.base/java/lang/String.md "class in java.lang") str,
    int beginIndex,
    int limit,
    [Graphics](Graphics.md "class in java.awt") context)

    Returns the [`LineMetrics`](font/LineMetrics.md "class in java.awt.font") object for the specified
    `String` in the specified [`Graphics`](Graphics.md "class in java.awt") context.

    Parameters:
    :   `str` - the specified `String`
    :   `beginIndex` - the initial offset of `str`
    :   `limit` - the end offset of `str`
    :   `context` - the specified `Graphics` context

    Returns:
    :   a `LineMetrics` object created with the
        specified `String` and `Graphics` context.

    See Also:
    :   - [`Font.getLineMetrics(String, int, int, FontRenderContext)`](Font.md#getLineMetrics(java.lang.String,int,int,java.awt.font.FontRenderContext))
  + ### getLineMetrics

    public [LineMetrics](font/LineMetrics.md "class in java.awt.font") getLineMetrics(char[] chars,
    int beginIndex,
    int limit,
    [Graphics](Graphics.md "class in java.awt") context)

    Returns the [`LineMetrics`](font/LineMetrics.md "class in java.awt.font") object for the specified
    character array in the specified [`Graphics`](Graphics.md "class in java.awt") context.

    Parameters:
    :   `chars` - the specified character array
    :   `beginIndex` - the initial offset of `chars`
    :   `limit` - the end offset of `chars`
    :   `context` - the specified `Graphics` context

    Returns:
    :   a `LineMetrics` object created with the
        specified character array and `Graphics` context.

    See Also:
    :   - [`Font.getLineMetrics(char[], int, int, FontRenderContext)`](Font.md#getLineMetrics(char%5B%5D,int,int,java.awt.font.FontRenderContext))
  + ### getLineMetrics

    public [LineMetrics](font/LineMetrics.md "class in java.awt.font") getLineMetrics([CharacterIterator](../../../java.base/java/text/CharacterIterator.md "interface in java.text") ci,
    int beginIndex,
    int limit,
    [Graphics](Graphics.md "class in java.awt") context)

    Returns the [`LineMetrics`](font/LineMetrics.md "class in java.awt.font") object for the specified
    [`CharacterIterator`](../../../java.base/java/text/CharacterIterator.md "interface in java.text") in the specified [`Graphics`](Graphics.md "class in java.awt")
    context.

    Parameters:
    :   `ci` - the specified `CharacterIterator`
    :   `beginIndex` - the initial offset in `ci`
    :   `limit` - the end index of `ci`
    :   `context` - the specified `Graphics` context

    Returns:
    :   a `LineMetrics` object created with the
        specified arguments.

    See Also:
    :   - [`Font.getLineMetrics(CharacterIterator, int, int, FontRenderContext)`](Font.md#getLineMetrics(java.text.CharacterIterator,int,int,java.awt.font.FontRenderContext))
  + ### getStringBounds

    public [Rectangle2D](geom/Rectangle2D.md "class in java.awt.geom") getStringBounds([String](../../../java.base/java/lang/String.md "class in java.lang") str,
    [Graphics](Graphics.md "class in java.awt") context)

    Returns the bounds of the specified `String` in the
    specified `Graphics` context. The bounds is used
    to layout the `String`.

    Note: The returned bounds is in baseline-relative coordinates
    (see [`class notes`](FontMetrics.md "class in java.awt")).

    Parameters:
    :   `str` - the specified `String`
    :   `context` - the specified `Graphics` context

    Returns:
    :   a [`Rectangle2D`](geom/Rectangle2D.md "class in java.awt.geom") that is the bounding box of the
        specified `String` in the specified
        `Graphics` context.

    See Also:
    :   - [`Font.getStringBounds(String, FontRenderContext)`](Font.md#getStringBounds(java.lang.String,java.awt.font.FontRenderContext))
  + ### getStringBounds

    public [Rectangle2D](geom/Rectangle2D.md "class in java.awt.geom") getStringBounds([String](../../../java.base/java/lang/String.md "class in java.lang") str,
    int beginIndex,
    int limit,
    [Graphics](Graphics.md "class in java.awt") context)

    Returns the bounds of the specified `String` in the
    specified `Graphics` context. The bounds is used
    to layout the `String`.

    Note: The returned bounds is in baseline-relative coordinates
    (see [`class notes`](FontMetrics.md "class in java.awt")).

    Parameters:
    :   `str` - the specified `String`
    :   `beginIndex` - the offset of the beginning of `str`
    :   `limit` - the end offset of `str`
    :   `context` - the specified `Graphics` context

    Returns:
    :   a `Rectangle2D` that is the bounding box of the
        specified `String` in the specified
        `Graphics` context.

    See Also:
    :   - [`Font.getStringBounds(String, int, int, FontRenderContext)`](Font.md#getStringBounds(java.lang.String,int,int,java.awt.font.FontRenderContext))
  + ### getStringBounds

    public [Rectangle2D](geom/Rectangle2D.md "class in java.awt.geom") getStringBounds(char[] chars,
    int beginIndex,
    int limit,
    [Graphics](Graphics.md "class in java.awt") context)

    Returns the bounds of the specified array of characters
    in the specified `Graphics` context.
    The bounds is used to layout the `String`
    created with the specified array of characters,
    `beginIndex` and `limit`.

    Note: The returned bounds is in baseline-relative coordinates
    (see [`class notes`](FontMetrics.md "class in java.awt")).

    Parameters:
    :   `chars` - an array of characters
    :   `beginIndex` - the initial offset of the array of
        characters
    :   `limit` - the end offset of the array of characters
    :   `context` - the specified `Graphics` context

    Returns:
    :   a `Rectangle2D` that is the bounding box of the
        specified character array in the specified
        `Graphics` context.

    See Also:
    :   - [`Font.getStringBounds(char[], int, int, FontRenderContext)`](Font.md#getStringBounds(char%5B%5D,int,int,java.awt.font.FontRenderContext))
  + ### getStringBounds

    public [Rectangle2D](geom/Rectangle2D.md "class in java.awt.geom") getStringBounds([CharacterIterator](../../../java.base/java/text/CharacterIterator.md "interface in java.text") ci,
    int beginIndex,
    int limit,
    [Graphics](Graphics.md "class in java.awt") context)

    Returns the bounds of the characters indexed in the specified
    `CharacterIterator` in the
    specified `Graphics` context.

    Note: The returned bounds is in baseline-relative coordinates
    (see [`class notes`](FontMetrics.md "class in java.awt")).

    Parameters:
    :   `ci` - the specified `CharacterIterator`
    :   `beginIndex` - the initial offset in `ci`
    :   `limit` - the end index of `ci`
    :   `context` - the specified `Graphics` context

    Returns:
    :   a `Rectangle2D` that is the bounding box of the
        characters indexed in the specified `CharacterIterator`
        in the specified `Graphics` context.

    See Also:
    :   - [`Font.getStringBounds(CharacterIterator, int, int, FontRenderContext)`](Font.md#getStringBounds(java.text.CharacterIterator,int,int,java.awt.font.FontRenderContext))
  + ### getMaxCharBounds

    public [Rectangle2D](geom/Rectangle2D.md "class in java.awt.geom") getMaxCharBounds([Graphics](Graphics.md "class in java.awt") context)

    Returns the bounds for the character with the maximum bounds
    in the specified `Graphics` context.

    Parameters:
    :   `context` - the specified `Graphics` context

    Returns:
    :   a `Rectangle2D` that is the
        bounding box for the character with the maximum bounds.

    See Also:
    :   - [`Font.getMaxCharBounds(FontRenderContext)`](Font.md#getMaxCharBounds(java.awt.font.FontRenderContext))
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a representation of this `FontMetrics`
    object's values as a `String`.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a `String` representation of this
        `FontMetrics` object.