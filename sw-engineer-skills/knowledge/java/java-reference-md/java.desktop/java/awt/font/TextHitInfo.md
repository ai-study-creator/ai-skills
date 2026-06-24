Module [java.desktop](../../../module-summary.md)

Package [java.awt.font](package-summary.md)

# Class TextHitInfo

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.font.TextHitInfo

---

public final class TextHitInfo
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

The `TextHitInfo` class represents a character position in a
text model, and a **bias**, or "side," of the character. Biases are
either *leading* (the left edge, for a left-to-right character)
or *trailing* (the right edge, for a left-to-right character).
Instances of `TextHitInfo` are used to specify caret and
insertion positions within text.

For example, consider the text "abc". TextHitInfo.trailing(1)
corresponds to the right side of the 'b' in the text.

`TextHitInfo` is used primarily by [`TextLayout`](TextLayout.md "class in java.awt.font") and
clients of `TextLayout`. Clients of `TextLayout`
query `TextHitInfo` instances for an insertion offset, where
new text is inserted into the text model. The insertion offset is equal
to the character position in the `TextHitInfo` if the bias
is leading, and one character after if the bias is trailing. The
insertion offset for TextHitInfo.trailing(1) is 2.

Sometimes it is convenient to construct a `TextHitInfo` with
the same insertion offset as an existing one, but on the opposite
character. The `getOtherHit` method constructs a new
`TextHitInfo` with the same insertion offset as an existing
one, with a hit on the character on the other side of the insertion offset.
Calling `getOtherHit` on trailing(1) would return leading(2).
In general, `getOtherHit` for trailing(n) returns
leading(n+1) and `getOtherHit` for leading(n)
returns trailing(n-1).

**Example**:

Converting a graphical point to an insertion point within a text
model
> ```
>  TextLayout layout = ...;
>  Point2D.Float hitPoint = ...;
>  TextHitInfo hitInfo = layout.hitTestChar(hitPoint.x, hitPoint.y);
>  int insPoint = hitInfo.getInsertionIndex();
>  // insPoint is relative to layout;  may need to adjust for use
>  // in a text model
> ```

See Also:
:   * [`TextLayout`](TextLayout.md "class in java.awt.font")

* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static TextHitInfo`

  `afterOffset(int offset)`

  Creates a `TextHitInfo` at the specified offset,
  associated with the character after the offset.

  `static TextHitInfo`

  `beforeOffset(int offset)`

  Creates a `TextHitInfo` at the specified offset,
  associated with the character before the offset.

  `boolean`

  `equals(TextHitInfo hitInfo)`

  Returns `true` if the specified `TextHitInfo`
  has the same `charIndex` and `isLeadingEdge`
  as this `TextHitInfo`.

  `boolean`

  `equals(Object obj)`

  Returns `true` if the specified `Object` is a
  `TextHitInfo` and equals this `TextHitInfo`.

  `int`

  `getCharIndex()`

  Returns the index of the character hit.

  `int`

  `getInsertionIndex()`

  Returns the insertion index.

  `TextHitInfo`

  `getOffsetHit(int delta)`

  Creates a `TextHitInfo` whose character index is offset
  by `delta` from the `charIndex` of this
  `TextHitInfo`.

  `TextHitInfo`

  `getOtherHit()`

  Creates a `TextHitInfo` on the other side of the
  insertion point.

  `int`

  `hashCode()`

  Returns the hash code.

  `boolean`

  `isLeadingEdge()`

  Returns `true` if the leading edge of the character was
  hit.

  `static TextHitInfo`

  `leading(int charIndex)`

  Creates a `TextHitInfo` on the leading edge of the
  character at the specified `charIndex`.

  `String`

  `toString()`

  Returns a `String` representing the hit for debugging
  use only.

  `static TextHitInfo`

  `trailing(int charIndex)`

  Creates a hit on the trailing edge of the character at
  the specified `charIndex`.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Method Details

  + ### getCharIndex

    public int getCharIndex()

    Returns the index of the character hit.

    Returns:
    :   the index of the character hit.
  + ### isLeadingEdge

    public boolean isLeadingEdge()

    Returns `true` if the leading edge of the character was
    hit.

    Returns:
    :   `true` if the leading edge of the character was
        hit; `false` otherwise.
  + ### getInsertionIndex

    public int getInsertionIndex()

    Returns the insertion index. This is the character index if
    the leading edge of the character was hit, and one greater
    than the character index if the trailing edge was hit.

    Returns:
    :   the insertion index.
  + ### hashCode

    public int hashCode()

    Returns the hash code.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   the hash code of this `TextHitInfo`, which is
        also the `charIndex` of this `TextHitInfo`.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Returns `true` if the specified `Object` is a
    `TextHitInfo` and equals this `TextHitInfo`.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the `Object` to test for equality

    Returns:
    :   `true` if the specified `Object`
        equals this `TextHitInfo`; `false` otherwise.

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### equals

    public boolean equals([TextHitInfo](TextHitInfo.md "class in java.awt.font") hitInfo)

    Returns `true` if the specified `TextHitInfo`
    has the same `charIndex` and `isLeadingEdge`
    as this `TextHitInfo`. This is not the same as having
    the same insertion offset.

    Parameters:
    :   `hitInfo` - a specified `TextHitInfo`

    Returns:
    :   `true` if the specified `TextHitInfo`
        has the same `charIndex` and `isLeadingEdge`
        as this `TextHitInfo`.
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a `String` representing the hit for debugging
    use only.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a `String` representing this
        `TextHitInfo`.
  + ### leading

    public static [TextHitInfo](TextHitInfo.md "class in java.awt.font") leading(int charIndex)

    Creates a `TextHitInfo` on the leading edge of the
    character at the specified `charIndex`.

    Parameters:
    :   `charIndex` - the index of the character hit

    Returns:
    :   a `TextHitInfo` on the leading edge of the
        character at the specified `charIndex`.
  + ### trailing

    public static [TextHitInfo](TextHitInfo.md "class in java.awt.font") trailing(int charIndex)

    Creates a hit on the trailing edge of the character at
    the specified `charIndex`.

    Parameters:
    :   `charIndex` - the index of the character hit

    Returns:
    :   a `TextHitInfo` on the trailing edge of the
        character at the specified `charIndex`.
  + ### beforeOffset

    public static [TextHitInfo](TextHitInfo.md "class in java.awt.font") beforeOffset(int offset)

    Creates a `TextHitInfo` at the specified offset,
    associated with the character before the offset.

    Parameters:
    :   `offset` - an offset associated with the character before
        the offset

    Returns:
    :   a `TextHitInfo` at the specified offset.
  + ### afterOffset

    public static [TextHitInfo](TextHitInfo.md "class in java.awt.font") afterOffset(int offset)

    Creates a `TextHitInfo` at the specified offset,
    associated with the character after the offset.

    Parameters:
    :   `offset` - an offset associated with the character after
        the offset

    Returns:
    :   a `TextHitInfo` at the specified offset.
  + ### getOtherHit

    public [TextHitInfo](TextHitInfo.md "class in java.awt.font") getOtherHit()

    Creates a `TextHitInfo` on the other side of the
    insertion point. This `TextHitInfo` remains unchanged.

    Returns:
    :   a `TextHitInfo` on the other side of the
        insertion point.
  + ### getOffsetHit

    public [TextHitInfo](TextHitInfo.md "class in java.awt.font") getOffsetHit(int delta)

    Creates a `TextHitInfo` whose character index is offset
    by `delta` from the `charIndex` of this
    `TextHitInfo`. This `TextHitInfo` remains
    unchanged.

    Parameters:
    :   `delta` - the value to offset this `charIndex`

    Returns:
    :   a `TextHitInfo` whose `charIndex` is
        offset by `delta` from the `charIndex` of
        this `TextHitInfo`.