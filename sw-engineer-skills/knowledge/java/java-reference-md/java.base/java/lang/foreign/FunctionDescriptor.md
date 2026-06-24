Module [java.base](../../../module-summary.md)

Package [java.lang.foreign](package-summary.md)

# Interface FunctionDescriptor

---

public sealed interface FunctionDescriptor

`FunctionDescriptor` is a preview API of the Java platform.

Programs can only use `FunctionDescriptor` when preview features are enabled.

Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

A function descriptor models the signature of a foreign function. A function descriptor is made up of zero or more
argument layouts, and zero or one return layout. A function descriptor is used to create
[downcall method handles](Linker.md#downcallHandle(java.lang.foreign.MemorySegment,java.lang.foreign.FunctionDescriptor,java.lang.foreign.Linker.Option...))[PREVIEW](Linker.md#preview-java.lang.foreign.Linker) and
[upcall stubs](Linker.md#upcallStub(java.lang.invoke.MethodHandle,java.lang.foreign.FunctionDescriptor,java.lang.foreign.Arena,java.lang.foreign.Linker.Option...))[PREVIEW](Linker.md#preview-java.lang.foreign.Linker).

Since:
:   19

See Also:
:   * [`MemoryLayout`](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)

* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `FunctionDescriptorPREVIEW`

  `appendArgumentLayouts(MemoryLayoutPREVIEW... addedLayouts)`

  Returns a function descriptor with the given argument layouts appended to the argument layouts
  of this function descriptor.

  `List<MemoryLayoutPREVIEW>`

  `argumentLayouts()`

  Returns the argument layouts of this function descriptor (as an unmodifiable list).

  `FunctionDescriptorPREVIEW`

  `changeReturnLayout(MemoryLayoutPREVIEW newReturn)`

  Returns a function descriptor with the provided return layout.

  `FunctionDescriptorPREVIEW`

  `dropReturnLayout()`

  Returns a new function descriptor, with no return layout.

  `FunctionDescriptorPREVIEW`

  `insertArgumentLayouts(int index,
  MemoryLayoutPREVIEW... addedLayouts)`

  Returns a function descriptor with the given argument layouts inserted at the given index, into the argument
  layout array of this function descriptor.

  `static FunctionDescriptorPREVIEW`

  `of(MemoryLayoutPREVIEW resLayout,
  MemoryLayoutPREVIEW... argLayouts)`

  Creates a function descriptor with the given return and argument layouts.

  `static FunctionDescriptorPREVIEW`

  `ofVoid(MemoryLayoutPREVIEW... argLayouts)`

  Creates a function descriptor with the given argument layouts and no return layout.

  `Optional<MemoryLayoutPREVIEW>`

  `returnLayout()`

  Returns the return layout (if any) of this function descriptor.

  `MethodType`

  `toMethodType()`

  Returns the method type consisting of the carrier types of the layouts in this function descriptor.

* ## Method Details

  + ### returnLayout

    [Optional](../../util/Optional.md "class in java.util")<[MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)> returnLayout()

    Returns the return layout (if any) of this function descriptor.

    Returns:
    :   the return layout (if any) of this function descriptor
  + ### argumentLayouts

    [List](../../util/List.md "interface in java.util")<[MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)> argumentLayouts()

    Returns the argument layouts of this function descriptor (as an unmodifiable list)..

    Returns:
    :   the argument layouts of this function descriptor (as an unmodifiable list)
  + ### appendArgumentLayouts

    [FunctionDescriptor](FunctionDescriptor.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.FunctionDescriptor) appendArgumentLayouts([MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)... addedLayouts)

    Returns a function descriptor with the given argument layouts appended to the argument layouts
    of this function descriptor.

    Parameters:
    :   `addedLayouts` - the argument layouts to append.

    Returns:
    :   a new function descriptor, with the provided additional argument layouts.

    Throws:
    :   `IllegalArgumentException` - if one of the layouts in `addedLayouts` is a padding layout.
  + ### insertArgumentLayouts

    [FunctionDescriptor](FunctionDescriptor.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.FunctionDescriptor) insertArgumentLayouts(int index,
    [MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)... addedLayouts)

    Returns a function descriptor with the given argument layouts inserted at the given index, into the argument
    layout array of this function descriptor.

    Parameters:
    :   `index` - the index at which to insert the arguments
    :   `addedLayouts` - the argument layouts to insert at given index.

    Returns:
    :   a new function descriptor, with the provided additional argument layouts.

    Throws:
    :   `IllegalArgumentException` - if one of the layouts in `addedLayouts` is a padding layout.
    :   `IllegalArgumentException` - if `index < 0 || index > argumentLayouts().size()`.
  + ### changeReturnLayout

    [FunctionDescriptor](FunctionDescriptor.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.FunctionDescriptor) changeReturnLayout([MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout) newReturn)

    Returns a function descriptor with the provided return layout.

    Parameters:
    :   `newReturn` - the new return layout.

    Returns:
    :   a new function descriptor, with the provided return layout.

    Throws:
    :   `IllegalArgumentException` - if `newReturn` is a padding layout.
  + ### dropReturnLayout

    [FunctionDescriptor](FunctionDescriptor.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.FunctionDescriptor) dropReturnLayout()

    Returns a new function descriptor, with no return layout.

    Returns:
    :   a new function descriptor, with no return layout
  + ### toMethodType

    [MethodType](../invoke/MethodType.md "class in java.lang.invoke") toMethodType()

    Returns the method type consisting of the carrier types of the layouts in this function descriptor.

    The carrier type of a layout `L` is determined as follows:
    - If `L` is a [`ValueLayout`](ValueLayout.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout) the carrier type is determined through [`ValueLayout.carrier()`](ValueLayout.md#carrier())[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout).
    - If `L` is a [`GroupLayout`](GroupLayout.md "interface in java.lang.foreign")[PREVIEW](GroupLayout.md#preview-java.lang.foreign.GroupLayout) or a [`SequenceLayout`](SequenceLayout.md "interface in java.lang.foreign")[PREVIEW](SequenceLayout.md#preview-java.lang.foreign.SequenceLayout), the carrier type is [`MemorySegment`](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment).

    Returns:
    :   the method type consisting of the carrier types of the layouts in this function descriptor.
  + ### of

    static [FunctionDescriptor](FunctionDescriptor.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.FunctionDescriptor) of([MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout) resLayout,
    [MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)... argLayouts)

    Creates a function descriptor with the given return and argument layouts.

    Parameters:
    :   `resLayout` - the return layout.
    :   `argLayouts` - the argument layouts.

    Returns:
    :   a new function descriptor with the provided return and argument layouts.

    Throws:
    :   `IllegalArgumentException` - if `resLayout` is a padding layout.
    :   `IllegalArgumentException` - if one of the layouts in `argLayouts` is a padding layout.
  + ### ofVoid

    static [FunctionDescriptor](FunctionDescriptor.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.FunctionDescriptor) ofVoid([MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)... argLayouts)

    Creates a function descriptor with the given argument layouts and no return layout. This is useful to model functions
    that return no values.

    Parameters:
    :   `argLayouts` - the argument layouts.

    Returns:
    :   a new function descriptor with the provided argument layouts.

    Throws:
    :   `IllegalArgumentException` - if one of the layouts in `argLayouts` is a padding layout.