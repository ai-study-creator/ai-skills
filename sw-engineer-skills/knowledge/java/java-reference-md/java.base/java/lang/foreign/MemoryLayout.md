Module [java.base](../../../module-summary.md)

Package [java.lang.foreign](package-summary.md)

# Interface MemoryLayout

All Known Subinterfaces:
:   `AddressLayoutPREVIEW`, `GroupLayoutPREVIEW`, `PaddingLayoutPREVIEW`, `SequenceLayoutPREVIEW`, `StructLayoutPREVIEW`, `UnionLayoutPREVIEW`, `ValueLayoutPREVIEW`, `ValueLayout.OfBooleanPREVIEW`, `ValueLayout.OfBytePREVIEW`, `ValueLayout.OfCharPREVIEW`, `ValueLayout.OfDoublePREVIEW`, `ValueLayout.OfFloatPREVIEW`, `ValueLayout.OfIntPREVIEW`, `ValueLayout.OfLongPREVIEW`, `ValueLayout.OfShortPREVIEW`

---

public sealed interface MemoryLayout
permits [SequenceLayout](SequenceLayout.md "interface in java.lang.foreign")[PREVIEW](SequenceLayout.md#preview-java.lang.foreign.SequenceLayout), [GroupLayout](GroupLayout.md "interface in java.lang.foreign")[PREVIEW](GroupLayout.md#preview-java.lang.foreign.GroupLayout), [PaddingLayout](PaddingLayout.md "interface in java.lang.foreign")[PREVIEW](PaddingLayout.md#preview-java.lang.foreign.PaddingLayout), [ValueLayout](ValueLayout.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout)

`MemoryLayout` is a preview API of the Java platform.

Programs can only use `MemoryLayout` when preview features are enabled.

Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

A memory layout describes the contents of a memory segment.

There are two leaves in the layout hierarchy, [value layouts](ValueLayout.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout), which are used to represent values of given size and kind (see
and [padding layouts](PaddingLayout.md "interface in java.lang.foreign")[PREVIEW](PaddingLayout.md#preview-java.lang.foreign.PaddingLayout) which are used, as the name suggests, to represent a portion of a memory
segment whose contents should be ignored, and which are primarily present for alignment reasons.
Some common value layout constants, such as [`ValueLayout.JAVA_INT`](ValueLayout.md#JAVA_INT)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout) and [`ValueLayout.JAVA_FLOAT_UNALIGNED`](ValueLayout.md#JAVA_FLOAT_UNALIGNED)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout)
are defined in the [`ValueLayout`](ValueLayout.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout) class. A special kind of value layout, namely an [address layout](AddressLayout.md "interface in java.lang.foreign")[PREVIEW](AddressLayout.md#preview-java.lang.foreign.AddressLayout),
is used to model values that denote the address of a region of memory.

More complex layouts can be derived from simpler ones: a [sequence layout](SequenceLayout.md "interface in java.lang.foreign")[PREVIEW](SequenceLayout.md#preview-java.lang.foreign.SequenceLayout) denotes a
homogeneous repetition of zero or more occurrences of an element layout; a [group layout](GroupLayout.md "interface in java.lang.foreign")[PREVIEW](GroupLayout.md#preview-java.lang.foreign.GroupLayout)
denotes a heterogeneous aggregation of zero or more member layouts. Group layouts come in two
flavors: [struct layouts](StructLayout.md "interface in java.lang.foreign")[PREVIEW](StructLayout.md#preview-java.lang.foreign.StructLayout), where member layouts are laid out one after the other, and
[union layouts](UnionLayout.md "interface in java.lang.foreign")[PREVIEW](UnionLayout.md#preview-java.lang.foreign.UnionLayout) where member layouts are laid out at the same starting offset.

Layouts can be optionally associated with a *name*. A layout name can be referred to when
constructing [*layout paths*](MemoryLayout.md#layout-paths).

Consider the following struct declaration in C:

Copy![Copy snippet](../../../../copy.svg)

```
typedef struct {
    char kind;
    int value;
} TaggedValues[5];
```

The above declaration can be modelled using a layout object, as follows:

Copy![Copy snippet](../../../../copy.svg)

```
SequenceLayout taggedValues = MemoryLayout.sequenceLayout(5,
    MemoryLayout.structLayout(
        ValueLayout.JAVA_BYTE.withName("kind"),
        MemoryLayout.paddingLayout(3),
        ValueLayout.JAVA_INT.withName("value")
    )
).withName("TaggedValues");
```

## Characteristics of memory layouts

All layouts have a *size* (expressed in bytes), which is defined as follows:

* The size of a value layout is determined by the [ValueLayout.carrier()](ValueLayout.md#carrier())[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout)
  associated with the value layout. That is, the constant [`ValueLayout.JAVA_INT`](ValueLayout.md#JAVA_INT)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout) has carrier `int`, and
  size of 4 bytes;
* The size of an address layout is platform-dependent. That is, the constant [`ValueLayout.ADDRESS`](ValueLayout.md#ADDRESS)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout)
  has size of 8 bytes on a 64-bit platform;
* The size of a padding layout is always provided explicitly, on [construction](#paddingLayout(long));
* The size of a sequence layout whose element layout is *E* and element count is *L*,
  is the size of *E*, multiplied by *L*;
* The size of a struct layout with member layouts *M1*, *M2*, ... *Mn* whose sizes are
  *S1*, *S2*, ... *Sn*, respectively, is *S1 + S2 + ... + Sn*;
* The size of a union layout *U* with member layouts *M1*, *M2*, ... *Mn* whose sizes are
  *S1*, *S2*, ... *Sn*, respectively, is *max(S1, S2, ... Sn).*

Furthermore, all layouts have a *natural alignment* (expressed in bytes) which is defined as follows:

* The natural alignment of a padding layout is 1;
* The natural alignment of a value layout whose size is *N* is *N*;
* The natural alignment of a sequence layout whose element layout is *E* is the alignment of *E*;
* The natural alignment of a group layout with member layouts *M1*, *M2*, ... *Mn* whose
  alignments are *A1*, *A2*, ... *An*, respectively, is *max(A1, A2 ... An)*.

A layout's alignment can be overridden if needed (see [`withByteAlignment(long)`](#withByteAlignment(long))), which can be useful to describe
layouts with weaker or stronger alignment constraints.

## Layout paths

A *layout path* is used to unambiguously select a layout that is nested in some other layout.
Layout paths are typically expressed as a sequence of one or more [path elements](MemoryLayout.PathElement.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.PathElement.md#preview-java.lang.foreign.MemoryLayout.PathElement).
(A more formal definition of layout paths is provided [below](#well-formedness)).

Layout paths can be used to:

* obtain [offsets](#byteOffset(java.lang.foreign.MemoryLayout.PathElement...)) of arbitrarily nested layouts;
* obtain a [var handle](#varHandle(java.lang.foreign.MemoryLayout.PathElement...)) that can be used to access the value corresponding
  to the selected layout;
* [select](#select(java.lang.foreign.MemoryLayout.PathElement...)) an arbitrarily nested layout.

For instance, given the `taggedValues` sequence layout constructed above, we can obtain the offset,
in bytes, of the member layout named `value` in the *first* sequence element, as follows:

Copy![Copy snippet](../../../../copy.svg)

```
long valueOffset = taggedValues.byteOffset(PathElement.sequenceElement(0),
                                          PathElement.groupElement("value")); // yields 4
```

Similarly, we can select the member layout named `value`, as follows:

Copy![Copy snippet](../../../../copy.svg)

```
MemoryLayout value = taggedValues.select(PathElement.sequenceElement(),
                                         PathElement.groupElement("value"));
```

### Open path elements

Some layout path elements, said *open path elements*, can select multiple layouts at once. For instance,
the open path elements [`MemoryLayout.PathElement.sequenceElement()`](MemoryLayout.PathElement.md#sequenceElement())[PREVIEW](MemoryLayout.PathElement.md#preview-java.lang.foreign.MemoryLayout.PathElement), [`MemoryLayout.PathElement.sequenceElement(long, long)`](MemoryLayout.PathElement.md#sequenceElement(long,long))[PREVIEW](MemoryLayout.PathElement.md#preview-java.lang.foreign.MemoryLayout.PathElement) select
an unspecified element in a sequence layout. A var handle derived from a layout path containing one or more
open path element features additional coordinates of type `long`, which can be used by clients to *bind*
the open elements in the path:

Copy![Copy snippet](../../../../copy.svg)

```
VarHandle valueHandle = taggedValues.varHandle(PathElement.sequenceElement(),
                                               PathElement.groupElement("value"));
MemorySegment valuesSegment = ...
int val = (int) valueHandle.get(valuesSegment, 2); // reads the "value" field of the third struct in the array
```

Open path elements also affects the creation of
[offset-computing method handles](#byteOffsetHandle(java.lang.foreign.MemoryLayout.PathElement...)). Each open path element becomes
an additional `long` parameter in the obtained method handle. This parameter can be used to specify the index
of the sequence element whose offset is to be computed:

Copy![Copy snippet](../../../../copy.svg)

```
MethodHandle offsetHandle = taggedValues.byteOffsetHandle(PathElement.sequenceElement(),
                                                          PathElement.groupElement("kind"));
long offset1 = (long) offsetHandle.invokeExact(1L); // 8
long offset2 = (long) offsetHandle.invokeExact(2L); // 16
```

### Dereference path elements

A special kind of path element, called *dereference path element*, allows var handles obtained from
memory layouts to follow pointers. Consider the following layout:

Copy![Copy snippet](../../../../copy.svg)

```
StructLayout RECTANGLE = MemoryLayout.structLayout(
        ValueLayout.ADDRESS.withTargetLayout(
                MemoryLayout.sequenceLayout(4,
                        MemoryLayout.structLayout(
                                ValueLayout.JAVA_INT.withName("x"),
                                ValueLayout.JAVA_INT.withName("y")
                        ).withName("point")
                 )
         ).withName("points")
);
```

This layout is a struct layout which describe a rectangle. It contains a single field, namely `points`,
an address layout whose [target layout](AddressLayout.md#targetLayout())[PREVIEW](AddressLayout.md#preview-java.lang.foreign.AddressLayout) is a sequence layout of four
struct layouts. Each struct layout describes a two-dimensional point, and is defined as a pair or
[`ValueLayout.JAVA_INT`](ValueLayout.md#JAVA_INT)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout) coordinates, with names `x` and `y`, respectively.

With dereference path elements, we can obtain a var handle which accesses the `y` coordinate of one of the
point in the rectangle, as follows:

Copy![Copy snippet](../../../../copy.svg)

```
VarHandle rectPointYs = RECTANGLE.varHandle(
        PathElement.groupElement("points"),
        PathElement.dereferenceElement(),
        PathElement.sequenceElement(),
        PathElement.groupElement("y")
);

MemorySegment rect = ...
int rect_y_4 = (int) rectPointYs.get(rect, 2); // rect.points[2]->y
```

### Layout path well-formedness

A layout path is applied to a layout `C_0`, also called the *initial layout*. Each path element in a
layout path can be thought of as a function which updates the current layout `C_i-1` to some other layout
`C_i`. That is, for each path element `E1, E2, ... En`, in a layout path `P`, we compute
`C_i = f_i(C_i-1)`, where `f_i` is the selection function associated with the path element under consideration,
denoted as `E_i`. The final layout `C_i` is also called the *selected layout*.

A layout path `P` is considered well-formed for an initial layout `C_0` if all its path elements
`E1, E2, ... En` are well-formed for their corresponding input layouts `C_0, C_1, ... C_n-1`.
A path element `E` is considered well-formed for a layout `L` if any of the following is true:

* `L` is a sequence layout and `E` is a sequence path element (one of [`MemoryLayout.PathElement.sequenceElement(long)`](MemoryLayout.PathElement.md#sequenceElement(long))[PREVIEW](MemoryLayout.PathElement.md#preview-java.lang.foreign.MemoryLayout.PathElement),
  [`MemoryLayout.PathElement.sequenceElement(long, long)`](MemoryLayout.PathElement.md#sequenceElement(long,long))[PREVIEW](MemoryLayout.PathElement.md#preview-java.lang.foreign.MemoryLayout.PathElement) or [`MemoryLayout.PathElement.sequenceElement()`](MemoryLayout.PathElement.md#sequenceElement())[PREVIEW](MemoryLayout.PathElement.md#preview-java.lang.foreign.MemoryLayout.PathElement)). Moreover, if `E`
  contains one or more sequence indices, such indices have to be compatible with the sequence layout's element count;
* `L` is a group layout and `E` is a group path element (one of [`MemoryLayout.PathElement.groupElement(String)`](MemoryLayout.PathElement.md#groupElement(java.lang.String))[PREVIEW](MemoryLayout.PathElement.md#preview-java.lang.foreign.MemoryLayout.PathElement)
  or [`MemoryLayout.PathElement.groupElement(long)`](MemoryLayout.PathElement.md#groupElement(long))[PREVIEW](MemoryLayout.PathElement.md#preview-java.lang.foreign.MemoryLayout.PathElement)). Moreover, the group path element must refer to a valid member layout in
  `L`, either by name, or index;
* `L` is an address layout and `E` is a [dereference path element](MemoryLayout.PathElement.md#dereferenceElement())[PREVIEW](MemoryLayout.PathElement.md#preview-java.lang.foreign.MemoryLayout.PathElement).
  Moreover, `L` must define some [target layout](AddressLayout.md#targetLayout())[PREVIEW](AddressLayout.md#preview-java.lang.foreign.AddressLayout).

Any attempt to provide a layout path `P` that is not well-formed for an initial layout `C_0` will result
in an [`IllegalArgumentException`](../IllegalArgumentException.md "class in java.lang").

Since:
:   19

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static interface`

  `MemoryLayout.PathElementPREVIEW`

  Preview.

  An element in a [*layout path*](MemoryLayout.md#layout-paths).
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `long`

  `byteAlignment()`

  Returns the alignment constraint associated with this layout, expressed in bytes.

  `default long`

  `byteOffset(MemoryLayout.PathElementPREVIEW... elements)`

  Computes the offset, in bytes, of the layout selected by the given layout path, where the initial layout in the
  path is this layout.

  `default MethodHandle`

  `byteOffsetHandle(MemoryLayout.PathElementPREVIEW... elements)`

  Creates a method handle that computes the offset, in bytes, of the layout selected
  by the given layout path, where the initial layout in the path is this layout.

  `long`

  `byteSize()`

  Returns the layout size, in bytes.

  `boolean`

  `equals(Object other)`

  Compares the specified object with this layout for equality.

  `int`

  `hashCode()`

  Returns the hash code value for this layout.

  `Optional<String>`

  `name()`

  Returns the name (if any) associated with this layout.

  `static PaddingLayoutPREVIEW`

  `paddingLayout(long byteSize)`

  Creates a padding layout with the given byte size.

  `default MemoryLayoutPREVIEW`

  `select(MemoryLayout.PathElementPREVIEW... elements)`

  Returns the layout selected from the provided path, where the initial layout in the path is this layout.

  `static SequenceLayoutPREVIEW`

  `sequenceLayout(long elementCount,
  MemoryLayoutPREVIEW elementLayout)`

  Creates a sequence layout with the given element layout and element count.

  `static SequenceLayoutPREVIEW`

  `sequenceLayout(MemoryLayoutPREVIEW elementLayout)`

  Creates a sequence layout with the given element layout and the maximum element
  count such that it does not overflow a `long`.

  `default MethodHandle`

  `sliceHandle(MemoryLayout.PathElementPREVIEW... elements)`

  Creates a method handle which, given a memory segment, returns a [slice](MemorySegment.md#asSlice(long,long))[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment)
  corresponding to the layout selected by the given layout path, where the initial layout in the path is this layout.

  `static StructLayoutPREVIEW`

  `structLayout(MemoryLayoutPREVIEW... elements)`

  Creates a struct layout with the given member layouts.

  `String`

  `toString()`

  Returns the string representation of this layout.

  `static UnionLayoutPREVIEW`

  `unionLayout(MemoryLayoutPREVIEW... elements)`

  Creates a union layout with the given member layouts.

  `default VarHandle`

  `varHandle(MemoryLayout.PathElementPREVIEW... elements)`

  Creates a var handle that accesses a memory segment at the offset selected by the given layout path,
  where the initial layout in the path is this layout.

  `MemoryLayoutPREVIEW`

  `withByteAlignment(long byteAlignment)`

  Returns a memory layout with the same characteristics as this layout, but with the given
  alignment constraint (in bytes).

  `MemoryLayoutPREVIEW`

  `withName(String name)`

  Returns a memory layout with the same characteristics as this layout, but with the given name.

  `MemoryLayoutPREVIEW`

  `withoutName()`

  Returns a memory layout with the same characteristics as this layout, but with no name.

* ## Method Details

  + ### byteSize

    long byteSize()

    Returns the layout size, in bytes.

    Returns:
    :   the layout size, in bytes
  + ### name

    [Optional](../../util/Optional.md "class in java.util")<[String](../String.md "class in java.lang")> name()

    Returns the name (if any) associated with this layout.

    Returns:
    :   the name (if any) associated with this layout

    See Also:
    :   - [`withName(String)`](#withName(java.lang.String))
  + ### withName

    [MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.MemoryLayout) withName([String](../String.md "class in java.lang") name)

    Returns a memory layout with the same characteristics as this layout, but with the given name.

    Parameters:
    :   `name` - the layout name.

    Returns:
    :   a memory layout with the same characteristics as this layout, but with the given name

    See Also:
    :   - [`name()`](#name())
  + ### withoutName

    [MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.MemoryLayout) withoutName()

    Returns a memory layout with the same characteristics as this layout, but with no name.

    Returns:
    :   a memory layout with the same characteristics as this layout, but with no name

    See Also:
    :   - [`name()`](#name())
  + ### byteAlignment

    long byteAlignment()

    Returns the alignment constraint associated with this layout, expressed in bytes. Layout alignment defines a power
    of two `A` which is the byte-wise alignment of the layout, where `A` is the number of bytes that must be aligned
    for any pointer that correctly points to this layout. Thus:
    - `A=1` means unaligned (in the usual sense), which is common in packets.
    - `A=8` means word aligned (on LP64), `A=4` int aligned, `A=2` short aligned, etc.
    - `A=64` is the most strict alignment required by the x86/SV ABI (for AVX-512 data).If no explicit alignment constraint was set on this layout (see [`withByteAlignment(long)`](#withByteAlignment(long))),
    then this method returns the [natural alignment](#layout-align) constraint (in bytes) associated with this layout.

    Returns:
    :   the alignment constraint associated with this layout, expressed in bytes
  + ### withByteAlignment

    [MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.MemoryLayout) withByteAlignment(long byteAlignment)

    Returns a memory layout with the same characteristics as this layout, but with the given
    alignment constraint (in bytes).

    Parameters:
    :   `byteAlignment` - the layout alignment constraint, expressed in bytes.

    Returns:
    :   a memory layout with the same characteristics as this layout, but with the given
        alignment constraint (in bytes)

    Throws:
    :   `IllegalArgumentException` - if `byteAlignment` is not a power of two.
  + ### byteOffset

    default long byteOffset([MemoryLayout.PathElement](MemoryLayout.PathElement.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.PathElement.md#preview-java.lang.foreign.MemoryLayout.PathElement)... elements)

    Computes the offset, in bytes, of the layout selected by the given layout path, where the initial layout in the
    path is this layout.

    Parameters:
    :   `elements` - the layout path elements.

    Returns:
    :   The offset, in bytes, of the layout selected by the layout path in `elements`.

    Throws:
    :   `IllegalArgumentException` - if the layout path is not [well-formed](#well-formedness) for this layout.
    :   `IllegalArgumentException` - if the layout path contains one or more [open path elements](#open-path-elements).
    :   `IllegalArgumentException` - if the layout path contains one or more [dereference path elements](#deref-path-elements).
  + ### byteOffsetHandle

    default [MethodHandle](../invoke/MethodHandle.md "class in java.lang.invoke") byteOffsetHandle([MemoryLayout.PathElement](MemoryLayout.PathElement.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.PathElement.md#preview-java.lang.foreign.MemoryLayout.PathElement)... elements)

    Creates a method handle that computes the offset, in bytes, of the layout selected
    by the given layout path, where the initial layout in the path is this layout.

    The returned method handle has the following characteristics:
    - its return type is `long`;
    - it has as zero or more parameters of type `long`, one for each [open path element](#open-path-elements)
      in the provided layout path. The order of these parameters corresponds to the order in which the open path
      elements occur in the provided layout path.

    The final offset returned by the method handle is computed as follows:
    > ```
    >  offset = c_1 + c_2 + ... + c_m + (x_1 * s_1) + (x_2 * s_2) + ... + (x_n * s_n)
    > ```

    where `x_1`, `x_2`, ... `x_n` are *dynamic* values provided as `long`
    arguments, whereas `c_1`, `c_2`, ... `c_m` are *static* offset constants
    and `s_0`, `s_1`, ... `s_n` are *static* stride constants which are derived from
    the layout path.

    Parameters:
    :   `elements` - the layout path elements.

    Returns:
    :   a method handle that computes the offset, in bytes, of the layout selected by the given layout path.

    Throws:
    :   `IllegalArgumentException` - if the layout path is not [well-formed](#well-formedness) for this layout.
    :   `IllegalArgumentException` - if the layout path contains one or more [dereference path elements](#deref-path-elements).
  + ### varHandle

    default [VarHandle](../invoke/VarHandle.md "class in java.lang.invoke") varHandle([MemoryLayout.PathElement](MemoryLayout.PathElement.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.PathElement.md#preview-java.lang.foreign.MemoryLayout.PathElement)... elements)

    Creates a var handle that accesses a memory segment at the offset selected by the given layout path,
    where the initial layout in the path is this layout.

    The returned var handle has the following characteristics:
    - its type is derived from the [carrier](ValueLayout.md#carrier())[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout) of the
      selected value layout;
    - it has as zero or more access coordinates of type `long`, one for each
      [open path element](#open-path-elements) in the provided layout path. The order of these access
      coordinates corresponds to the order in which the open path elements occur in the provided
      layout path.

    The final address accessed by the returned var handle can be computed as follows:
    > ```
    >  address = base(segment) + offset
    > ```

    Where `base(segment)` denotes a function that returns the physical base address of the accessed
    memory segment. For native segments, this function just returns the native segment's
    [address](MemorySegment.md#address())[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment). For heap segments, this function is more complex, as the address
    of heap segments is virtualized. The `offset` value can be expressed in the following form:
    > ```
    >  offset = c_1 + c_2 + ... + c_m + (x_1 * s_1) + (x_2 * s_2) + ... + (x_n * s_n)
    > ```

    where `x_1`, `x_2`, ... `x_n` are *dynamic* values provided as `long`
    arguments, whereas `c_1`, `c_2`, ... `c_m` are *static* offset constants
    and `s_1`, `s_2`, ... `s_n` are *static* stride constants which are derived from
    the layout path.

    Additionally, the provided dynamic values must conform to bounds which are derived from the layout path, that is,
    `0 <= x_i < b_i`, where `1 <= i <= n`, or [`IndexOutOfBoundsException`](../IndexOutOfBoundsException.md "class in java.lang") is thrown.

    The base address must be [aligned](MemorySegment.md#segment-alignment) according to the [alignment constraint](#byteAlignment()) of the root layout (this layout). Note that this can be more strict
    (but not less) than the alignment constraint of the selected value layout.

    Multiple paths can be chained, with [dereference path elements](#deref-path-elements).
    A dereference path element constructs a fresh native memory segment whose base address is the address value
    read obtained by accessing a memory segment at the offset determined by the layout path elements immediately preceding
    the dereference path element. In other words, if a layout path contains one or more dereference path elements,
    the final address accessed by the returned var handle can be computed as follows:
    > ```
    >  address_1 = base(segment) + offset_1
    >  address_2 = base(segment_1) + offset_2
    >  ...
    >  address_k = base(segment_k-1) + offset_k
    > ```

    where `k` is the number of dereference path elements in a layout path, `segment` is the input segment,
    `segment_1`, ... `segment_k-1` are the segments obtained by dereferencing the address associated with
    a given dereference path element (e.g. `segment_1` is a native segment whose base address is `address_1`),
    and `offset_1`, `offset_2`, ... `offset_k` are the offsets computed by evaluating
    the path elements after a given dereference operation (these offsets are obtained using the computation described
    above). In these more complex access operations, all memory accesses immediately preceding a dereference operation
    (e.g. those at addresses `address_1`, `address_2`, ..., `address_k-1` are performed using the
    [`VarHandle.AccessMode.GET`](../invoke/VarHandle.AccessMode.md#GET) access mode.

    Parameters:
    :   `elements` - the layout path elements.

    Returns:
    :   a var handle that accesses a memory segment at the offset selected by the given layout path.

    Throws:
    :   `IllegalArgumentException` - if the layout path is not [well-formed](#well-formedness) for this layout.
    :   `IllegalArgumentException` - if the layout selected by the provided path is not a [value layout](ValueLayout.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout).

    See Also:
    :   - [`MethodHandles.memorySegmentViewVarHandle(ValueLayout)`](../invoke/MethodHandles.md#memorySegmentViewVarHandle(java.lang.foreign.ValueLayout))[PREVIEW](../invoke/MethodHandles.md#preview-memorySegmentViewVarHandle(java.lang.foreign.ValueLayout))
  + ### sliceHandle

    default [MethodHandle](../invoke/MethodHandle.md "class in java.lang.invoke") sliceHandle([MemoryLayout.PathElement](MemoryLayout.PathElement.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.PathElement.md#preview-java.lang.foreign.MemoryLayout.PathElement)... elements)

    Creates a method handle which, given a memory segment, returns a [slice](MemorySegment.md#asSlice(long,long))[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment)
    corresponding to the layout selected by the given layout path, where the initial layout in the path is this layout.

    The returned method handle has the following characteristics:
    - its return type is `MemorySegment`;
    - it has a leading parameter of type `MemorySegment`, corresponding to the memory segment
      to be sliced;
    - it has as zero or more parameters of type `long`, one for each [open path element](#open-path-elements)
      in the provided layout path. The order of these parameters corresponds to the order in which the open path
      elements occur in the provided layout path.

    The offset of the returned segment is computed as follows:

    Copy![Copy snippet](../../../../copy.svg)

    ```
    long offset = byteOffset(elements);
    long size = select(elements).byteSize();
    MemorySegment slice = segment.asSlice(offset, size);
    ```

    The segment to be sliced must be [aligned](MemorySegment.md#segment-alignment) according to the
    [alignment constraint](#byteAlignment()) of the root layout (this layout). Note that this can be more
    strict (but not less) than the alignment constraint of the selected value layout.

    Parameters:
    :   `elements` - the layout path elements.

    Returns:
    :   a method handle which is used to slice a memory segment at the offset selected by the given layout path.

    Throws:
    :   `IllegalArgumentException` - if the layout path is not [well-formed](#well-formedness) for this layout.
    :   `IllegalArgumentException` - if the layout path contains one or more [dereference path elements](#deref-path-elements).
  + ### select

    default [MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.MemoryLayout) select([MemoryLayout.PathElement](MemoryLayout.PathElement.md "interface in java.lang.foreign")[PREVIEW](MemoryLayout.PathElement.md#preview-java.lang.foreign.MemoryLayout.PathElement)... elements)

    Returns the layout selected from the provided path, where the initial layout in the path is this layout.

    Parameters:
    :   `elements` - the layout path elements.

    Returns:
    :   the layout selected by the layout path in `elements`.

    Throws:
    :   `IllegalArgumentException` - if the layout path is not [well-formed](#well-formedness) for this layout.
    :   `IllegalArgumentException` - if the layout path contains one or more [dereference path elements](#deref-path-elements).
    :   `IllegalArgumentException` - if the layout path contains one or more path elements that select one or more
        sequence element indices, such as [`MemoryLayout.PathElement.sequenceElement(long)`](MemoryLayout.PathElement.md#sequenceElement(long))[PREVIEW](MemoryLayout.PathElement.md#preview-java.lang.foreign.MemoryLayout.PathElement) and [`MemoryLayout.PathElement.sequenceElement(long, long)`](MemoryLayout.PathElement.md#sequenceElement(long,long))[PREVIEW](MemoryLayout.PathElement.md#preview-java.lang.foreign.MemoryLayout.PathElement)).
  + ### equals

    boolean equals([Object](../Object.md "class in java.lang") other)

    Compares the specified object with this layout for equality. Returns `true` if and only if the specified
    object is also a layout, and it is equal to this layout. Two layouts are considered equal if they are of
    the same kind, have the same size, name and alignment constraint. Furthermore, depending on the layout kind, additional
    conditions must be satisfied:
    - two value layouts are considered equal if they have the same [order](ValueLayout.md#order())[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout),
      and [carrier](ValueLayout.md#carrier())[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout). Additionally, two address layouts are considered equal if they
      also have the same [target layout](AddressLayout.md#targetLayout())[PREVIEW](AddressLayout.md#preview-java.lang.foreign.AddressLayout);
    - two sequence layouts are considered equal if they have the same element count (see [`SequenceLayout.elementCount()`](SequenceLayout.md#elementCount())[PREVIEW](SequenceLayout.md#preview-java.lang.foreign.SequenceLayout)), and
      if their element layouts (see [`SequenceLayout.elementLayout()`](SequenceLayout.md#elementLayout())[PREVIEW](SequenceLayout.md#preview-java.lang.foreign.SequenceLayout)) are also equal;
    - two group layouts are considered equal if they are of the same type (see [`StructLayout`](StructLayout.md "interface in java.lang.foreign")[PREVIEW](StructLayout.md#preview-java.lang.foreign.StructLayout),
      [`UnionLayout`](UnionLayout.md "interface in java.lang.foreign")[PREVIEW](UnionLayout.md#preview-java.lang.foreign.UnionLayout)) and if their member layouts (see [`GroupLayout.memberLayouts()`](GroupLayout.md#memberLayouts())[PREVIEW](GroupLayout.md#preview-java.lang.foreign.GroupLayout)) are also equal.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `other` - the object to be compared for equality with this layout.

    Returns:
    :   `true` if the specified object is equal to this layout.

    See Also:
    :   - [`Object.hashCode()`](../Object.md#hashCode())
        - [`HashMap`](../../util/HashMap.md "class in java.util")
  + ### hashCode

    int hashCode()

    Returns the hash code value for this layout.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   the hash code value for this layout

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../System.md#identityHashCode(java.lang.Object))
  + ### toString

    [String](../String.md "class in java.lang") toString()

    Returns the string representation of this layout.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   the string representation of this layout
  + ### paddingLayout

    static [PaddingLayout](PaddingLayout.md "interface in java.lang.foreign")[PREVIEW](PaddingLayout.md#preview-java.lang.foreign.PaddingLayout) paddingLayout(long byteSize)

    Creates a padding layout with the given byte size. The alignment constraint of the returned layout
    is 1. As such, regardless of its size, in the absence of an [explicit](#withByteAlignment(long))
    alignment constraint, a padding layout does not affect the natural alignment of the group or sequence layout
    it is nested into.

    Parameters:
    :   `byteSize` - the padding size (expressed in bytes).

    Returns:
    :   the new selector layout.

    Throws:
    :   `IllegalArgumentException` - if `byteSize <= 0`.
  + ### sequenceLayout

    static [SequenceLayout](SequenceLayout.md "interface in java.lang.foreign")[PREVIEW](SequenceLayout.md#preview-java.lang.foreign.SequenceLayout) sequenceLayout(long elementCount,
    [MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.MemoryLayout) elementLayout)

    Creates a sequence layout with the given element layout and element count.

    Parameters:
    :   `elementCount` - the sequence element count.
    :   `elementLayout` - the sequence element layout.

    Returns:
    :   the new sequence layout with the given element layout and size.

    Throws:
    :   `IllegalArgumentException` - if `elementCount` is negative.
    :   `IllegalArgumentException` - if `elementLayout.byteSize() * elementCount` overflows.
    :   `IllegalArgumentException` - if `elementLayout.byteSize() % elementLayout.byteAlignment() != 0`.
  + ### sequenceLayout

    static [SequenceLayout](SequenceLayout.md "interface in java.lang.foreign")[PREVIEW](SequenceLayout.md#preview-java.lang.foreign.SequenceLayout) sequenceLayout([MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.MemoryLayout) elementLayout)

    Creates a sequence layout with the given element layout and the maximum element
    count such that it does not overflow a `long`.
    This is equivalent to the following code:

    Copy![Copy snippet](../../../../copy.svg)

    ```
    sequenceLayout(Long.MAX_VALUE / elementLayout.byteSize(), elementLayout);
    ```

    Parameters:
    :   `elementLayout` - the sequence element layout.

    Returns:
    :   a new sequence layout with the given element layout and maximum element count.

    Throws:
    :   `IllegalArgumentException` - if `elementLayout.byteSize() % elementLayout.byteAlignment() != 0`.
  + ### structLayout

    static [StructLayout](StructLayout.md "interface in java.lang.foreign")[PREVIEW](StructLayout.md#preview-java.lang.foreign.StructLayout) structLayout([MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.MemoryLayout)... elements)

    Creates a struct layout with the given member layouts.

    Parameters:
    :   `elements` - The member layouts of the struct layout.

    Returns:
    :   a struct layout with the given member layouts.

    Throws:
    :   `IllegalArgumentException` - if the sum of the [byte sizes](#byteSize()) of the member layouts
        overflows.
    :   `IllegalArgumentException` - if a member layout in `elements` occurs at an offset (relative to the start
        of the struct layout) which is not compatible with its alignment constraint.
  + ### unionLayout

    static [UnionLayout](UnionLayout.md "interface in java.lang.foreign")[PREVIEW](UnionLayout.md#preview-java.lang.foreign.UnionLayout) unionLayout([MemoryLayout](MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.MemoryLayout)... elements)

    Creates a union layout with the given member layouts.

    Parameters:
    :   `elements` - The member layouts of the union layout.

    Returns:
    :   a union layout with the given member layouts.