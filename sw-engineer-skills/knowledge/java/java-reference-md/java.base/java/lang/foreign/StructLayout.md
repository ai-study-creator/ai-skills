Module [java.base](../../../module-summary.md)

Package [java.lang.foreign](package-summary.md)

# Interface StructLayout

All Superinterfaces:
:   `GroupLayoutPREVIEW`, `MemoryLayoutPREVIEW`

---

public sealed interface StructLayout
extends [GroupLayout](GroupLayout.md "interface in java.lang.foreign")[PREVIEW](GroupLayout.md#preview-java.lang.foreign.GroupLayout)

`StructLayout` is a preview API of the Java platform.

Programs can only use `StructLayout` when preview features are enabled.

Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

A group layout whose member layouts are laid out one after the other.

Since:
:   20

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface java.lang.foreign.[MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)

  `MemoryLayout.PathElementPREVIEW`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `StructLayoutPREVIEW`

  `withByteAlignment(long byteAlignment)`

  Returns a memory layout with the same characteristics as this layout, but with the given
  alignment constraint (in bytes).

  `StructLayoutPREVIEW`

  `withName(String name)`

  Returns a memory layout with the same characteristics as this layout, but with the given name.

  `StructLayoutPREVIEW`

  `withoutName()`

  Returns a memory layout with the same characteristics as this layout, but with no name.

  ### Methods inherited from interface java.lang.foreign.[GroupLayout](GroupLayout.md "interface in java.lang.foreign")[PREVIEW](GroupLayout.md#preview-java.lang.foreign.GroupLayout)

  `memberLayouts`

  ### Methods inherited from interface java.lang.foreign.[MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)

  `byteAlignment, byteOffset, byteOffsetHandle, byteSize, equals, hashCode, name, select, sliceHandle, toString, varHandle`

* ## Method Details

  + ### withName

    [StructLayout](StructLayout.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.StructLayout) withName([String](../String.md "class in java.lang") name)

    Returns a memory layout with the same characteristics as this layout, but with the given name.

    Specified by:
    :   `withName` in interface `GroupLayoutPREVIEW`

    Specified by:
    :   `withName` in interface `MemoryLayoutPREVIEW`

    Parameters:
    :   `name` - the layout name.

    Returns:
    :   a memory layout with the same characteristics as this layout, but with the given name

    See Also:
    :   - [`MemoryLayout.name()`](MemoryLayout.md#name())[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)
  + ### withoutName

    [StructLayout](StructLayout.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.StructLayout) withoutName()

    Returns a memory layout with the same characteristics as this layout, but with no name.

    Specified by:
    :   `withoutName` in interface `GroupLayoutPREVIEW`

    Specified by:
    :   `withoutName` in interface `MemoryLayoutPREVIEW`

    Returns:
    :   a memory layout with the same characteristics as this layout, but with no name

    See Also:
    :   - [`MemoryLayout.name()`](MemoryLayout.md#name())[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)
  + ### withByteAlignment

    [StructLayout](StructLayout.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.StructLayout) withByteAlignment(long byteAlignment)

    Returns a memory layout with the same characteristics as this layout, but with the given
    alignment constraint (in bytes).

    Specified by:
    :   `withByteAlignment` in interface `GroupLayoutPREVIEW`

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