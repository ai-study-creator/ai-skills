Module [java.base](../../../module-summary.md)

Package [java.lang.foreign](package-summary.md)

# Interface GroupLayout

All Superinterfaces:
:   `MemoryLayoutPREVIEW`

All Known Subinterfaces:
:   `StructLayoutPREVIEW`, `UnionLayoutPREVIEW`

---

public sealed interface GroupLayout
extends [MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)
permits [StructLayout](StructLayout.md "interface in java.lang.foreign")[PREVIEW](StructLayout.md#preview-java.lang.foreign.StructLayout), [UnionLayout](UnionLayout.md "interface in java.lang.foreign")[PREVIEW](UnionLayout.md#preview-java.lang.foreign.UnionLayout)

`GroupLayout` is a preview API of the Java platform.

Programs can only use `GroupLayout` when preview features are enabled.

Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

A compound layout that is an aggregation of multiple, heterogeneous *member layouts*. There are two ways in which member layouts
can be combined: if member layouts are laid out one after the other, the resulting group layout is a
[struct layout](StructLayout.md "interface in java.lang.foreign")[PREVIEW](StructLayout.md#preview-java.lang.foreign.StructLayout); conversely, if all member layouts are laid out at the same starting offset,
the resulting group layout is a [union layout](UnionLayout.md "interface in java.lang.foreign")[PREVIEW](UnionLayout.md#preview-java.lang.foreign.UnionLayout).

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

  `List<MemoryLayoutPREVIEW>`

  `memberLayouts()`

  Returns the member layouts of this group layout.

  `GroupLayoutPREVIEW`

  `withByteAlignment(long byteAlignment)`

  Returns a memory layout with the same characteristics as this layout, but with the given
  alignment constraint (in bytes).

  `GroupLayoutPREVIEW`

  `withName(String name)`

  Returns a memory layout with the same characteristics as this layout, but with the given name.

  `GroupLayoutPREVIEW`

  `withoutName()`

  Returns a memory layout with the same characteristics as this layout, but with no name.

  ### Methods inherited from interface java.lang.foreign.[MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)

  `byteAlignment, byteOffset, byteOffsetHandle, byteSize, equals, hashCode, name, select, sliceHandle, toString, varHandle`

* ## Method Details

  + ### memberLayouts

    [List](../../util/List.md "interface in java.util")<[MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)> memberLayouts()

    Returns the member layouts of this group layout.

    Returns:
    :   the member layouts of this group layout
  + ### withName

    [GroupLayout](GroupLayout.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.GroupLayout) withName([String](../String.md "class in java.lang") name)

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

    [GroupLayout](GroupLayout.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.GroupLayout) withoutName()

    Returns a memory layout with the same characteristics as this layout, but with no name.

    Specified by:
    :   `withoutName` in interface `MemoryLayoutPREVIEW`

    Returns:
    :   a memory layout with the same characteristics as this layout, but with no name

    See Also:
    :   - [`MemoryLayout.name()`](MemoryLayout.md#name())[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)
  + ### withByteAlignment

    [GroupLayout](GroupLayout.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.GroupLayout) withByteAlignment(long byteAlignment)

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
    :   `IllegalArgumentException` - if `byteAlignment` is less than `M`, where `M` is the maximum alignment
        constraint in any of the member layouts associated with this group layout.