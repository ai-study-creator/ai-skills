Module [java.base](../../../module-summary.md)

Package [java.lang.foreign](package-summary.md)

# Interface PaddingLayout

All Superinterfaces:
:   `MemoryLayoutPREVIEW`

---

public sealed interface PaddingLayout
extends [MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)

`PaddingLayout` is a preview API of the Java platform.

Programs can only use `PaddingLayout` when preview features are enabled.

Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

A padding layout. A padding layout specifies the size of extra space which is typically not accessed by applications,
and is typically used for aligning member layouts around word boundaries.

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

  `PaddingLayoutPREVIEW`

  `withByteAlignment(long byteAlignment)`

  Returns a memory layout with the same characteristics as this layout, but with the given
  alignment constraint (in bytes).

  `PaddingLayoutPREVIEW`

  `withName(String name)`

  Returns a memory layout with the same characteristics as this layout, but with the given name.

  `PaddingLayoutPREVIEW`

  `withoutName()`

  Returns a memory layout with the same characteristics as this layout, but with no name.

  ### Methods inherited from interface java.lang.foreign.[MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)

  `byteAlignment, byteOffset, byteOffsetHandle, byteSize, equals, hashCode, name, select, sliceHandle, toString, varHandle`

* ## Method Details

  + ### withName

    [PaddingLayout](PaddingLayout.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.PaddingLayout) withName([String](../String.md "class in java.lang") name)

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

    [PaddingLayout](PaddingLayout.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.PaddingLayout) withoutName()

    Returns a memory layout with the same characteristics as this layout, but with no name.

    Specified by:
    :   `withoutName` in interface `MemoryLayoutPREVIEW`

    Returns:
    :   a memory layout with the same characteristics as this layout, but with no name

    See Also:
    :   - [`MemoryLayout.name()`](MemoryLayout.md#name())[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)
  + ### withByteAlignment

    [PaddingLayout](PaddingLayout.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.PaddingLayout) withByteAlignment(long byteAlignment)

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