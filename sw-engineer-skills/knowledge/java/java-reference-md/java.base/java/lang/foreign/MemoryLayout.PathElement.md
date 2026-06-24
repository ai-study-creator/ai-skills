Module [java.base](../../../module-summary.md)

Package [java.lang.foreign](package-summary.md)

# Interface MemoryLayout.PathElement

Enclosing interface:
:   `MemoryLayoutPREVIEW`

---

public static sealed interface MemoryLayout.PathElement

`PathElement` is a preview API of the Java platform.

Programs can only use `PathElement` when preview features are enabled.

Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

An element in a [*layout path*](MemoryLayout.md#layout-paths). There
are three kinds of path elements:

* *group path elements*, used to select a member layout within a [`GroupLayout`](GroupLayout.md "interface in java.lang.foreign")[PREVIEW](GroupLayout.md#preview-java.lang.foreign.GroupLayout), either by name or by index;
* *sequence path elements*, used to select one or more sequence element layouts within a [`SequenceLayout`](SequenceLayout.md "interface in java.lang.foreign")[PREVIEW](SequenceLayout.md#preview-java.lang.foreign.SequenceLayout); and
* *dereference path elements*, used to [dereference](MemoryLayout.md#deref-path-elements)
  an address layout as its target layout.

Sequence path elements selecting more than one sequence element layout are called
[open path elements](MemoryLayout.md#open-path-elements).

Since:
:   19

* ## Method Summary

  Static Methods

  Modifier and Type

  Method

  Description

  `static MemoryLayout.PathElementPREVIEW`

  `dereferenceElement()`

  Returns a path element which dereferences an address layout as its
  [target layout](AddressLayout.md#targetLayout())[PREVIEW](AddressLayout.md#preview-java.lang.foreign.AddressLayout) (where set).

  `static MemoryLayout.PathElementPREVIEW`

  `groupElement(long index)`

  Returns a path element which selects a member layout with the given index in a group layout.

  `static MemoryLayout.PathElementPREVIEW`

  `groupElement(String name)`

  Returns a path element which selects a member layout with the given name in a group layout.

  `static MemoryLayout.PathElementPREVIEW`

  `sequenceElement()`

  Returns an [open path element](MemoryLayout.md#open-path-elements) which selects an unspecified
  element layout in a sequence layout.

  `static MemoryLayout.PathElementPREVIEW`

  `sequenceElement(long index)`

  Returns a path element which selects the element layout at the specified position in a sequence layout.

  `static MemoryLayout.PathElementPREVIEW`

  `sequenceElement(long start,
  long step)`

  Returns an [open path element](MemoryLayout.md#open-path-elements) which selects the element
  layout in a *range* of positions in a sequence layout.

* ## Method Details

  + ### groupElement

    static [MemoryLayout.PathElement](MemoryLayout.PathElement.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.MemoryLayout.PathElement) groupElement([String](../String.md "class in java.lang") name)

    Returns a path element which selects a member layout with the given name in a group layout.

    Parameters:
    :   `name` - the name of the member layout to be selected.

    Returns:
    :   a path element which selects the group member layout with the given name.
  + ### groupElement

    static [MemoryLayout.PathElement](MemoryLayout.PathElement.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.MemoryLayout.PathElement) groupElement(long index)

    Returns a path element which selects a member layout with the given index in a group layout.

    Parameters:
    :   `index` - the index of the member layout element to be selected.

    Returns:
    :   a path element which selects the group member layout with the given index.

    Throws:
    :   `IllegalArgumentException` - if `index < 0`.
  + ### sequenceElement

    static [MemoryLayout.PathElement](MemoryLayout.PathElement.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.MemoryLayout.PathElement) sequenceElement(long index)

    Returns a path element which selects the element layout at the specified position in a sequence layout.

    Parameters:
    :   `index` - the index of the sequence element to be selected.

    Returns:
    :   a path element which selects the sequence element layout with the given index.

    Throws:
    :   `IllegalArgumentException` - if `index < 0`.
  + ### sequenceElement

    static [MemoryLayout.PathElement](MemoryLayout.PathElement.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.MemoryLayout.PathElement) sequenceElement(long start,
    long step)

    Returns an [open path element](MemoryLayout.md#open-path-elements) which selects the element
    layout in a *range* of positions in a sequence layout. The range is expressed as a pair of starting
    index (inclusive) `S` and step factor (which can also be negative) `F`.

    The exact sequence element selected by this layout is expressed as an index `I`. If `C` is the
    sequence element count, it follows that `0 <= I < B`, where `B` is computed as follows:
    - if `F > 0`, then `B = ceilDiv(C - S, F)`
    - if `F < 0`, then `B = ceilDiv(-(S + 1), -F)`

    Parameters:
    :   `start` - the index of the first sequence element to be selected.
    :   `step` - the step factor at which subsequence sequence elements are to be selected.

    Returns:
    :   a path element which selects the sequence element layout with the given index.

    Throws:
    :   `IllegalArgumentException` - if `start < 0`, or `step == 0`.
  + ### sequenceElement

    static [MemoryLayout.PathElement](MemoryLayout.PathElement.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.MemoryLayout.PathElement) sequenceElement()

    Returns an [open path element](MemoryLayout.md#open-path-elements) which selects an unspecified
    element layout in a sequence layout.

    The exact sequence element selected by this layout is expressed as an index `I`. If `C` is the
    sequence element count, it follows that `0 <= I < C`.

    Returns:
    :   a path element which selects an unspecified sequence element layout.
  + ### dereferenceElement

    static [MemoryLayout.PathElement](MemoryLayout.PathElement.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.MemoryLayout.PathElement) dereferenceElement()

    Returns a path element which dereferences an address layout as its
    [target layout](AddressLayout.md#targetLayout())[PREVIEW](AddressLayout.md#preview-java.lang.foreign.AddressLayout) (where set).

    Returns:
    :   a path element which dereferences an address layout.