Module [java.desktop](../../../module-summary.md)

Package [java.awt.font](package-summary.md)

# Class LineMetrics

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.font.LineMetrics

---

public abstract class LineMetrics
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

The `LineMetrics` class allows access to the
metrics needed to layout characters along a line
and to layout of a set of lines. A `LineMetrics`
object encapsulates the measurement information associated
with a run of text.

Fonts can have different metrics for different ranges of
characters. The `getLineMetrics` methods of
[`Font`](../Font.md "class in java.awt") take some text as an argument
and return a `LineMetrics` object describing the
metrics of the initial number of characters in that text, as
returned by [`getNumChars()`](#getNumChars()).

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `LineMetrics()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract float`

  `getAscent()`

  Returns the ascent of the text.

  `abstract int`

  `getBaselineIndex()`

  Returns the baseline index of the text.

  `abstract float[]`

  `getBaselineOffsets()`

  Returns the baseline offsets of the text,
  relative to the baseline of the text.

  `abstract float`

  `getDescent()`

  Returns the descent of the text.

  `abstract float`

  `getHeight()`

  Returns the height of the text.

  `abstract float`

  `getLeading()`

  Returns the leading of the text.

  `abstract int`

  `getNumChars()`

  Returns the number of characters (`char` values) in the text whose
  metrics are encapsulated by this `LineMetrics`
  object.

  `abstract float`

  `getStrikethroughOffset()`

  Returns the position of the strike-through line
  relative to the baseline.

  `abstract float`

  `getStrikethroughThickness()`

  Returns the thickness of the strike-through line.

  `abstract float`

  `getUnderlineOffset()`

  Returns the position of the underline relative to
  the baseline.

  `abstract float`

  `getUnderlineThickness()`

  Returns the thickness of the underline.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### LineMetrics

    protected LineMetrics()

    Constructor for subclasses to call.
* ## Method Details

  + ### getNumChars

    public abstract int getNumChars()

    Returns the number of characters (`char` values) in the text whose
    metrics are encapsulated by this `LineMetrics`
    object.

    Returns:
    :   the number of characters (`char` values) in the text with which
        this `LineMetrics` was created.
  + ### getAscent

    public abstract float getAscent()

    Returns the ascent of the text. The ascent
    is the distance from the baseline
    to the ascender line. The ascent usually represents the
    the height of the capital letters of the text. Some characters
    can extend above the ascender line.

    Returns:
    :   the ascent of the text.
  + ### getDescent

    public abstract float getDescent()

    Returns the descent of the text. The descent
    is the distance from the baseline
    to the descender line. The descent usually represents
    the distance to the bottom of lower case letters like
    'p'. Some characters can extend below the descender
    line.

    Returns:
    :   the descent of the text.
  + ### getLeading

    public abstract float getLeading()

    Returns the leading of the text. The
    leading is the recommended
    distance from the bottom of the descender line to the
    top of the next line.

    Returns:
    :   the leading of the text.
  + ### getHeight

    public abstract float getHeight()

    Returns the height of the text. The
    height is equal to the sum of the ascent, the
    descent and the leading.

    Returns:
    :   the height of the text.
  + ### getBaselineIndex

    public abstract int getBaselineIndex()

    Returns the baseline index of the text.
    The index is one of
    [`ROMAN_BASELINE`](../Font.md#ROMAN_BASELINE),
    [`CENTER_BASELINE`](../Font.md#CENTER_BASELINE),
    [`HANGING_BASELINE`](../Font.md#HANGING_BASELINE).

    Returns:
    :   the baseline of the text.
  + ### getBaselineOffsets

    public abstract float[] getBaselineOffsets()

    Returns the baseline offsets of the text,
    relative to the baseline of the text. The
    offsets are indexed by baseline index. For
    example, if the baseline index is
    `CENTER_BASELINE` then
    `offsets[HANGING_BASELINE]` is usually
    negative, `offsets[CENTER_BASELINE]`
    is zero, and `offsets[ROMAN_BASELINE]`
    is usually positive.

    Returns:
    :   the baseline offsets of the text.
  + ### getStrikethroughOffset

    public abstract float getStrikethroughOffset()

    Returns the position of the strike-through line
    relative to the baseline.

    Returns:
    :   the position of the strike-through line.
  + ### getStrikethroughThickness

    public abstract float getStrikethroughThickness()

    Returns the thickness of the strike-through line.

    Returns:
    :   the thickness of the strike-through line.
  + ### getUnderlineOffset

    public abstract float getUnderlineOffset()

    Returns the position of the underline relative to
    the baseline.

    Returns:
    :   the position of the underline.
  + ### getUnderlineThickness

    public abstract float getUnderlineThickness()

    Returns the thickness of the underline.

    Returns:
    :   the thickness of the underline.