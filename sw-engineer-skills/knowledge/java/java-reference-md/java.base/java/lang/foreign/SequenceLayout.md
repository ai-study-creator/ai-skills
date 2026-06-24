Module [java.base](../../../module-summary.md)

Package [java.lang.foreign](package-summary.md)

# Interface SequenceLayout

All Superinterfaces:
:   `MemoryLayoutPREVIEW`

---

public sealed interface SequenceLayout
extends [MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)

`SequenceLayout` is a preview API of the Java platform.

Programs can only use `SequenceLayout` when preview features are enabled.

Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

A compound layout that denotes a homogeneous repetition of a given *element layout*.
The repetition count is said to be the sequence layout's *element count*. A sequence layout can be thought of as a
struct layout where the sequence layout's element layout is repeated a number of times that is equal to the sequence
layout's element count. In other words this layout:

Copy![Copy snippet](../../../../copy.svg)

```
MemoryLayout.sequenceLayout(3, ValueLayout.JAVA_INT.withOrder(ByteOrder.BIG_ENDIAN));
```

is equivalent to the following layout:

Copy![Copy snippet](../../../../copy.svg)

```
MemoryLayout.structLayout(
    ValueLayout.JAVA_INT.withOrder(ByteOrder.BIG_ENDIAN),
    ValueLayout.JAVA_INT.withOrder(ByteOrder.BIG_ENDIAN),
    ValueLayout.JAVA_INT.withOrder(ByteOrder.BIG_ENDIAN));
```

Since:
:   19

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface java.lang.foreign.[MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)

  `MemoryLayout.PathElementPREVIEW`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `long`

  `elementCount()`

  Returns the element count of this sequence layout.

  `MemoryLayoutPREVIEW`

  `elementLayout()`

  Returns the element layout of this sequence layout.

  `SequenceLayoutPREVIEW`

  `flatten()`

  Returns a flattened sequence layout.

  `SequenceLayoutPREVIEW`

  `reshape(long... elementCounts)`

  Rearranges the elements in this sequence layout into a multi-dimensional sequence layout.

  `SequenceLayoutPREVIEW`

  `withByteAlignment(long byteAlignment)`

  Returns a memory layout with the same characteristics as this layout, but with the given
  alignment constraint (in bytes).

  `SequenceLayoutPREVIEW`

  `withElementCount(long elementCount)`

  Returns a sequence layout with the same characteristics of this layout, but with the given element count.

  `SequenceLayoutPREVIEW`

  `withName(String name)`

  Returns a memory layout with the same characteristics as this layout, but with the given name.

  `MemoryLayoutPREVIEW`

  `withoutName()`

  Returns a memory layout with the same characteristics as this layout, but with no name.

  ### Methods inherited from interface java.lang.foreign.[MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)

  `byteAlignment, byteOffset, byteOffsetHandle, byteSize, equals, hashCode, name, select, sliceHandle, toString, varHandle`

* ## Method Details

  + ### elementLayout

    [MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout) elementLayout()

    Returns the element layout of this sequence layout.

    Returns:
    :   the element layout of this sequence layout
  + ### elementCount

    long elementCount()

    Returns the element count of this sequence layout.

    Returns:
    :   the element count of this sequence layout
  + ### withElementCount

    [SequenceLayout](SequenceLayout.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.SequenceLayout) withElementCount(long elementCount)

    Returns a sequence layout with the same characteristics of this layout, but with the given element count.

    Parameters:
    :   `elementCount` - the new element count.

    Returns:
    :   a sequence layout with the same characteristics of this layout, but with the given element count

    Throws:
    :   `IllegalArgumentException` - if `elementCount` is negative.
    :   `IllegalArgumentException` - if `elementLayout.bitSize() * elementCount` overflows.
  + ### reshape

    [SequenceLayout](SequenceLayout.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.SequenceLayout) reshape(long... elementCounts)

    Rearranges the elements in this sequence layout into a multi-dimensional sequence layout.
    The resulting layout is a sequence layout where element layouts in the [flattened projection](#flatten())
    of this sequence layout are rearranged into one or more nested sequence layouts
    according to the provided element counts. This transformation preserves the layout size;
    that is, multiplying the provided element counts must yield the same element count
    as the flattened projection of this sequence layout.

    For instance, given a sequence layout of the kind:

    Copy![Copy snippet](../../../../copy.svg)

    ```
    var seq = MemoryLayout.sequenceLayout(4, MemoryLayout.sequenceLayout(3, ValueLayout.JAVA_INT));
    ```

    calling `seq.reshape(2, 6)` will yield the following sequence layout:

    Copy![Copy snippet](../../../../copy.svg)

    ```
    var reshapeSeq = MemoryLayout.sequenceLayout(2, MemoryLayout.sequenceLayout(6, ValueLayout.JAVA_INT));
    ```

    If one of the provided element count is the special value `-1`, then the element
    count in that position will be inferred from the remaining element counts and the
    element count of the flattened projection of this layout. For instance, a layout equivalent to
    the above `reshapeSeq` can also be computed in the following ways:

    Copy![Copy snippet](../../../../copy.svg)

    ```
    var reshapeSeqImplicit1 = seq.reshape(-1, 6);
    var reshapeSeqImplicit2 = seq.reshape(2, -1);
    ```

    Parameters:
    :   `elementCounts` - an array of element counts, of which at most one can be `-1`.

    Returns:
    :   a sequence layout where element layouts in the [flattened projection](#flatten()) of this
        sequence layout (see [`flatten()`](#flatten())) are re-arranged into one or more nested sequence layouts.

    Throws:
    :   `IllegalArgumentException` - if two or more element counts are set to `-1`, or if one
        or more element count is `<= 0` (but other than `-1`) or, if, after any required inference,
        multiplying the element counts does not yield the same element count as the flattened projection of this
        sequence layout.
  + ### flatten

    [SequenceLayout](SequenceLayout.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.SequenceLayout) flatten()

    Returns a flattened sequence layout. The element layout of the returned sequence layout
    is the first non-sequence layout found by inspecting (recursively, if needed) the element layout of this sequence layout:

    Copy![Copy snippet](../../../../copy.svg)

    ```
    MemoryLayout flatElementLayout(SequenceLayout sequenceLayout) {
       return switch (sequenceLayout.elementLayout()) {
           case SequenceLayout nestedSequenceLayout -> flatElementLayout(nestedSequenceLayout);
           case MemoryLayout layout -> layout;
       };
    }
    ```

    This transformation preserves the layout size; nested sequence layout in this sequence layout will
    be dropped and their element counts will be incorporated into that of the returned sequence layout.
    For instance, given a sequence layout of the kind:

    Copy![Copy snippet](../../../../copy.svg)

    ```
    var seq = MemoryLayout.sequenceLayout(4, MemoryLayout.sequenceLayout(3, ValueLayout.JAVA_INT));
    ```

    calling `seq.flatten()` will yield the following sequence layout:

    Copy![Copy snippet](../../../../copy.svg)

    ```
    var flattenedSeq = MemoryLayout.sequenceLayout(12, ValueLayout.JAVA_INT);
    ```

    Returns:
    :   a sequence layout with the same size as this layout (but, possibly, with different
        element count), whose element layout is not a sequence layout.
  + ### withName

    [SequenceLayout](SequenceLayout.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.SequenceLayout) withName([String](../String.md "class in java.lang") name)

    Returns a memory layout with the same characteristics as this layout, but with the given name.

    Specified by:
    :   `withName` in interface `MemoryLayoutPREVIEW`

    Parameters:
    :   `name` - the layout name.

    Returns:
    :   a memory layout with the same characteristics as this layout, but with the given name

    See Also:
    :   - [`MemoryLayout.name()`](MemoryLayout.md#name())[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)
  + ### withoutName

    [MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout) withoutName()

    Returns a memory layout with the same characteristics as this layout, but with no name.

    Specified by:
    :   `withoutName` in interface `MemoryLayoutPREVIEW`

    Returns:
    :   a memory layout with the same characteristics as this layout, but with no name

    See Also:
    :   - [`MemoryLayout.name()`](MemoryLayout.md#name())[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)
  + ### withByteAlignment

    [SequenceLayout](SequenceLayout.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.SequenceLayout) withByteAlignment(long byteAlignment)

    Returns a memory layout with the same characteristics as this layout, but with the given
    alignment constraint (in bytes).

    Specified by:
    :   `withByteAlignment` in interface `MemoryLayoutPREVIEW`

    Parameters:
    :   `byteAlignment` - the layout alignment constraint, expressed in bytes.

    Returns:
    :   a memory layout with the same characteristics as this layout, but with the given
        alignment constraint (in bytes)

    Throws:
    :   `IllegalArgumentException` - if `byteAlignment` is not a power of two.
    :   `IllegalArgumentException` - if `byteAlignment < elementLayout().byteAlignment()`.