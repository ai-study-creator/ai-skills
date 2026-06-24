Module [java.desktop](../../../module-summary.md)

Package [java.awt.font](package-summary.md)

# Class GlyphJustificationInfo

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.font.GlyphJustificationInfo

---

public final class GlyphJustificationInfo
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

The `GlyphJustificationInfo` class represents information
about the justification properties of a glyph. A glyph is the visual
representation of one or more characters. Many different glyphs can
be used to represent a single character or combination of characters.
The four justification properties represented by
`GlyphJustificationInfo` are weight, priority, absorb and
limit.

Weight is the overall 'weight' of the glyph in the line. Generally it is
proportional to the size of the font. Glyphs with larger weight are
allocated a correspondingly larger amount of the change in space.

Priority determines the justification phase in which this glyph is used.
All glyphs of the same priority are examined before glyphs of the next
priority. If all the change in space can be allocated to these glyphs
without exceeding their limits, then glyphs of the next priority are not
examined. There are four priorities, kashida, whitespace, interchar,
and none. KASHIDA is the first priority examined. NONE is the last
priority examined.

Absorb determines whether a glyph absorbs all change in space. Within a
given priority, some glyphs may absorb all the change in space. If any of
these glyphs are present, no glyphs of later priority are examined.

Limit determines the maximum or minimum amount by which the glyph can
change. Left and right sides of the glyph can have different limits.

Each `GlyphJustificationInfo` represents two sets of
metrics, which are *growing* and *shrinking*. Growing
metrics are used when the glyphs on a line are to be
spread apart to fit a larger width. Shrinking metrics are used when
the glyphs are to be moved together to fit a smaller width.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `final boolean`

  `growAbsorb`

  If `true`, this glyph absorbs all extra
  space at this and lower priority levels when it grows.

  `final float`

  `growLeftLimit`

  The maximum amount by which the left side of this glyph can grow.

  `final int`

  `growPriority`

  The priority level of this glyph as it is growing.

  `final float`

  `growRightLimit`

  The maximum amount by which the right side of this glyph can grow.

  `static final int`

  `PRIORITY_INTERCHAR`

  The second lowest justification priority.

  `static final int`

  `PRIORITY_KASHIDA`

  The highest justification priority.

  `static final int`

  `PRIORITY_NONE`

  The lowest justification priority.

  `static final int`

  `PRIORITY_WHITESPACE`

  The second highest justification priority.

  `final boolean`

  `shrinkAbsorb`

  If `true`, this glyph absorbs all remaining shrinkage at
  this and lower priority levels as it shrinks.

  `final float`

  `shrinkLeftLimit`

  The maximum amount by which the left side of this glyph can shrink
  (a positive number).

  `final int`

  `shrinkPriority`

  The priority level of this glyph as it is shrinking.

  `final float`

  `shrinkRightLimit`

  The maximum amount by which the right side of this glyph can shrink
  (a positive number).

  `final float`

  `weight`

  The weight of this glyph.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `GlyphJustificationInfo(float weight,
  boolean growAbsorb,
  int growPriority,
  float growLeftLimit,
  float growRightLimit,
  boolean shrinkAbsorb,
  int shrinkPriority,
  float shrinkLeftLimit,
  float shrinkRightLimit)`

  Constructs information about the justification properties of a
  glyph.
* ## Method Summary

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### PRIORITY\_KASHIDA

    public static final int PRIORITY\_KASHIDA

    The highest justification priority.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.font.GlyphJustificationInfo.PRIORITY_KASHIDA)
  + ### PRIORITY\_WHITESPACE

    public static final int PRIORITY\_WHITESPACE

    The second highest justification priority.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.font.GlyphJustificationInfo.PRIORITY_WHITESPACE)
  + ### PRIORITY\_INTERCHAR

    public static final int PRIORITY\_INTERCHAR

    The second lowest justification priority.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.font.GlyphJustificationInfo.PRIORITY_INTERCHAR)
  + ### PRIORITY\_NONE

    public static final int PRIORITY\_NONE

    The lowest justification priority.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.font.GlyphJustificationInfo.PRIORITY_NONE)
  + ### weight

    public final float weight

    The weight of this glyph.
  + ### growPriority

    public final int growPriority

    The priority level of this glyph as it is growing.
  + ### growAbsorb

    public final boolean growAbsorb

    If `true`, this glyph absorbs all extra
    space at this and lower priority levels when it grows.
  + ### growLeftLimit

    public final float growLeftLimit

    The maximum amount by which the left side of this glyph can grow.
  + ### growRightLimit

    public final float growRightLimit

    The maximum amount by which the right side of this glyph can grow.
  + ### shrinkPriority

    public final int shrinkPriority

    The priority level of this glyph as it is shrinking.
  + ### shrinkAbsorb

    public final boolean shrinkAbsorb

    If `true`, this glyph absorbs all remaining shrinkage at
    this and lower priority levels as it shrinks.
  + ### shrinkLeftLimit

    public final float shrinkLeftLimit

    The maximum amount by which the left side of this glyph can shrink
    (a positive number).
  + ### shrinkRightLimit

    public final float shrinkRightLimit

    The maximum amount by which the right side of this glyph can shrink
    (a positive number).
* ## Constructor Details

  + ### GlyphJustificationInfo

    public GlyphJustificationInfo(float weight,
    boolean growAbsorb,
    int growPriority,
    float growLeftLimit,
    float growRightLimit,
    boolean shrinkAbsorb,
    int shrinkPriority,
    float shrinkLeftLimit,
    float shrinkRightLimit)

    Constructs information about the justification properties of a
    glyph.

    Parameters:
    :   `weight` - the weight of this glyph when allocating space. Must be non-negative.
    :   `growAbsorb` - if `true` this glyph absorbs
        all extra space at this priority and lower priority levels when it
        grows
    :   `growPriority` - the priority level of this glyph when it
        grows
    :   `growLeftLimit` - the maximum amount by which the left side of this
        glyph can grow. Must be non-negative.
    :   `growRightLimit` - the maximum amount by which the right side of this
        glyph can grow. Must be non-negative.
    :   `shrinkAbsorb` - if `true`, this glyph absorbs all
        remaining shrinkage at this and lower priority levels when it
        shrinks
    :   `shrinkPriority` - the priority level of this glyph when
        it shrinks
    :   `shrinkLeftLimit` - the maximum amount by which the left side of this
        glyph can shrink. Must be non-negative.
    :   `shrinkRightLimit` - the maximum amount by which the right side
        of this glyph can shrink. Must be non-negative.