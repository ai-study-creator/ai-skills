Module [java.base](../../../module-summary.md)

Package [java.lang.foreign](package-summary.md)

# Interface Linker.Option

Enclosing interface:
:   `LinkerPREVIEW`

---

public static sealed interface Linker.Option

`Option` is a preview API of the Java platform.

Programs can only use `Option` when preview features are enabled.

Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

A linker option is used to provide additional parameters to a linkage request.

Since:
:   20

* ## Method Summary

  Static Methods

  Modifier and Type

  Method

  Description

  `static Linker.OptionPREVIEW`

  `captureCallState(String... capturedState)`

  Returns a linker option used to save portions of the execution state immediately after
  calling a foreign function associated with a downcall method handle,
  before it can be overwritten by the Java runtime, or read through conventional means.

  `static StructLayoutPREVIEW`

  `captureStateLayout()`

  Returns a struct layout that represents the layout of the capture state segment that is passed
  to a downcall handle linked with [`captureCallState(String...)`](#captureCallState(java.lang.String...)).

  `static Linker.OptionPREVIEW`

  `firstVariadicArg(int index)`

  Returns a linker option used to denote the index indicating the start of the variadic arguments passed to the
  function described by the function descriptor associated with a downcall linkage request.

  `static Linker.OptionPREVIEW`

  `isTrivial()`

  Returns a linker option used to mark a foreign function as *trivial*.

* ## Method Details

  + ### firstVariadicArg

    static [Linker.Option](Linker.Option.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.Linker.Option) firstVariadicArg(int index)

    Returns a linker option used to denote the index indicating the start of the variadic arguments passed to the
    function described by the function descriptor associated with a downcall linkage request.

    The `index` value must conform to `0 <= index <= N`, where `N` is the number of argument
    layouts of the function descriptor used in conjunction with this linker option. When the `index` is:
    - `0`, all arguments passed to the function are passed as variadic arguments
    - `N`, none of the arguments passed to the function are passed as variadic arguments
    - `n`, where `0 < m < N`, the arguments `m..N` are passed as variadic argumentsIt is important to always use this linker option when linking a [variadic
    function](Linker.md#variadic-funcs), even if no variadic argument is passed (the second case in the list
    above), as this might still affect the calling convention on certain platforms.

    Parameters:
    :   `index` - the index of the first variadic argument layout in the function descriptor associated
        with a downcall linkage request.

    Returns:
    :   a linker option used to denote the index indicating the start of the variadic arguments passed to the
        function described by the function descriptor associated with a downcall linkage request
  + ### captureCallState

    static [Linker.Option](Linker.Option.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.Linker.Option) captureCallState([String](../String.md "class in java.lang")... capturedState)

    Returns a linker option used to save portions of the execution state immediately after
    calling a foreign function associated with a downcall method handle,
    before it can be overwritten by the Java runtime, or read through conventional means.

    Execution state is captured by a downcall method handle on invocation, by writing it
    to a native segment provided by the user to the downcall method handle.
    For this purpose, a downcall method handle linked with this
    option will feature an additional [`MemorySegment`](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) parameter directly
    following the target address, and optional [`SegmentAllocator`](SegmentAllocator.md "interface in java.lang.foreign")[PREVIEW](SegmentAllocator.md#preview-java.lang.foreign.SegmentAllocator) parameters.
    This parameter, the *capture state segment*, represents the native segment into which
    the captured state is written.

    The capture state segment must have size and alignment compatible with the layout returned by
    [captureStateLayout()](#captureStateLayout()). This layout is a struct layout which has a named field for
    each captured value.

    Captured state can be retrieved from the capture state segment by constructing var handles
    from the [capture state layout](#captureStateLayout()).

    The following example demonstrates the use of this linker option:

    Copy![Copy snippet](../../../../copy.svg)

    ```
    MemorySegment targetAddress = ...
    Linker.Option ccs = Linker.Option.captureCallState("errno");
    MethodHandle handle = Linker.nativeLinker().downcallHandle(targetAddress, FunctionDescriptor.ofVoid(), ccs);

    StructLayout capturedStateLayout = Linker.Option.captureStateLayout();
    VarHandle errnoHandle = capturedStateLayout.varHandle(PathElement.groupElement("errno"));
    try (Arena arena = Arena.ofConfined()) {
        MemorySegment capturedState = arena.allocate(capturedStateLayout);
        handle.invoke(capturedState);
        int errno = (int) errnoHandle.get(capturedState);
        // use errno
    }
    ```

    Parameters:
    :   `capturedState` - the names of the values to save.

    Returns:
    :   a linker option used to save portions of the execution state immediately after
        calling a foreign function associated with a downcall method handle,
        before it can be overwritten by the Java runtime, or read through conventional means

    Throws:
    :   `IllegalArgumentException` - if at least one of the provided `capturedState` names
        is unsupported on the current platform.

    See Also:
    :   - [`captureStateLayout()`](#captureStateLayout())
  + ### captureStateLayout

    static [StructLayout](StructLayout.md "interface in java.lang.foreign")[PREVIEW](StructLayout.md#preview-java.lang.foreign.StructLayout) captureStateLayout()

    Returns a struct layout that represents the layout of the capture state segment that is passed
    to a downcall handle linked with [`captureCallState(String...)`](#captureCallState(java.lang.String...)).

    The capture state layout is *platform-dependent* but is guaranteed to be
    a [struct layout](StructLayout.md "interface in java.lang.foreign")[PREVIEW](StructLayout.md#preview-java.lang.foreign.StructLayout) containing only [value layouts](ValueLayout.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout)
    and possibly [padding layouts](PaddingLayout.md "interface in java.lang.foreign")[PREVIEW](PaddingLayout.md#preview-java.lang.foreign.PaddingLayout).
    As an example, on Windows, the returned layout might contain three value layouts named:
    - GetLastError
    - WSAGetLastError
    - errno

    Clients can obtain the names of the supported captured value layouts as follows:

    Copy![Copy snippet](../../../../copy.svg)

    ```
       List<String> capturedNames = Linker.Option.captureStateLayout().memberLayouts().stream()
           .map(MemoryLayout::name)
           .flatMap(Optional::stream)
           .toList();
    ```

    Returns:
    :   a struct layout that represents the layout of the capture state segment that is passed
        to a downcall handle linked with [`captureCallState(String...)`](#captureCallState(java.lang.String...))

    See Also:
    :   - [`captureCallState(String...)`](#captureCallState(java.lang.String...))
  + ### isTrivial

    static [Linker.Option](Linker.Option.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.Linker.Option) isTrivial()

    Returns a linker option used to mark a foreign function as *trivial*.

    A trivial function is a function that has an extremely short running time
    in all cases (similar to calling an empty function), and does not call back into Java (e.g. using an upcall stub).

    Using this linker option is a hint which some implementations may use to apply
    optimizations that are only valid for trivial functions.

    Using this linker option when linking non trivial functions is likely to have adverse effects,
    such as loss of performance, or JVM crashes.

    Returns:
    :   a linker option used to mark a foreign function as *trivial*