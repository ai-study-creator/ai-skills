Module [java.base](../../../module-summary.md)

Package [java.lang.foreign](package-summary.md)

# Interface Linker

---

public sealed interface Linker

`Linker` is a preview API of the Java platform.

Programs can only use `Linker` when preview features are enabled.

Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

A linker provides access to foreign functions from Java code, and access to Java code from foreign functions.

Foreign functions typically reside in libraries that can be loaded on-demand. Each library conforms to
a specific ABI (Application Binary Interface). An ABI is a set of calling conventions and data types associated with
the compiler, OS, and processor where the library was built. For example, a C compiler on Linux/x64 usually
builds libraries that conform to the SystemV ABI.

A linker has detailed knowledge of the calling conventions and data types used by a specific ABI.
For any library which conforms to that ABI, the linker can mediate between Java code running
in the JVM and foreign functions in the library. In particular:

* A linker allows Java code to link against foreign functions, via
  [downcall method handles](#downcallHandle(java.lang.foreign.MemorySegment,java.lang.foreign.FunctionDescriptor,java.lang.foreign.Linker.Option...)); and
* A linker allows foreign functions to call Java method handles,
  via the generation of [upcall stubs](#upcallStub(java.lang.invoke.MethodHandle,java.lang.foreign.FunctionDescriptor,java.lang.foreign.Arena,java.lang.foreign.Linker.Option...)).

In addition, a linker provides a way to look up foreign functions in libraries that conform to the ABI. Each linker
chooses a set of libraries that are commonly used on the OS and processor combination associated with the ABI.
For example, a linker for Linux/x64 might choose two libraries: `libc` and `libm`. The functions in these
libraries are exposed via a [symbol lookup](#defaultLookup()).

## Calling native functions

The [native linker](#nativeLinker()) can be used to link against functions
defined in C libraries (native functions). Suppose we wish to downcall from Java to the `strlen` function
defined in the standard C library:

Copy![Copy snippet](../../../../copy.svg)

```
size_t strlen(const char *s);
```

A downcall method handle that exposes `strlen` is obtained, using the native linker, as follows:

Copy![Copy snippet](../../../../copy.svg)

```
Linker linker = Linker.nativeLinker();
MethodHandle strlen = linker.downcallHandle(
    linker.defaultLookup().find("strlen").orElseThrow(),
    FunctionDescriptor.of(JAVA_LONG, ADDRESS)
);
```

Note how the native linker also provides access, via its [default lookup](#defaultLookup()),
to the native functions defined by the C libraries loaded with the Java runtime. Above, the default lookup
is used to search the address of the `strlen` native function. That address is then passed, along with
a *platform-dependent description* of the signature of the function expressed as a
[`FunctionDescriptor`](FunctionDescriptor.md "interface in java.lang.foreign")[PREVIEW](FunctionDescriptor.md#preview-java.lang.foreign.FunctionDescriptor) (more on that below) to the native linker's
[`downcallHandle(MemorySegment, FunctionDescriptor, Option...)`](#downcallHandle(java.lang.foreign.MemorySegment,java.lang.foreign.FunctionDescriptor,java.lang.foreign.Linker.Option...)) method.
The obtained downcall method handle is then invoked as follows:

Copy![Copy snippet](../../../../copy.svg)

```
try (Arena arena = Arena.ofConfined()) {
    MemorySegment str = arena.allocateUtf8String("Hello");
    long len = (long) strlen.invokeExact(str);  // 5
}
```

### Describing C signatures

When interacting with the native linker, clients must provide a platform-dependent description of the signature
of the C function they wish to link against. This description, a [`function descriptor`](FunctionDescriptor.md "interface in java.lang.foreign")[PREVIEW](FunctionDescriptor.md#preview-java.lang.foreign.FunctionDescriptor),
defines the layouts associated with the parameter types and return type (if any) of the C function.

Scalar C types such as `bool`, `int` are modelled as [value layouts](ValueLayout.md "interface in java.lang.foreign")[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout)
of a suitable carrier. The mapping between a scalar type and its corresponding layout is dependent on the ABI
implemented by the native linker. For instance, the C type `long` maps to the layout constant
[`ValueLayout.JAVA_LONG`](ValueLayout.md#JAVA_LONG)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout) on Linux/x64, but maps to the layout constant [`ValueLayout.JAVA_INT`](ValueLayout.md#JAVA_INT)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout) on
Windows/x64. Similarly, the C type `size_t` maps to the layout constant [`ValueLayout.JAVA_LONG`](ValueLayout.md#JAVA_LONG)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout)
on 64-bit platforms, but maps to the layout constant [`ValueLayout.JAVA_INT`](ValueLayout.md#JAVA_INT)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout) on 32-bit platforms.

Composite types are modelled as [group layouts](GroupLayout.md "interface in java.lang.foreign")[PREVIEW](GroupLayout.md#preview-java.lang.foreign.GroupLayout). More specifically, a C `struct` type
maps to a [struct layout](StructLayout.md "interface in java.lang.foreign")[PREVIEW](StructLayout.md#preview-java.lang.foreign.StructLayout), whereas a C `union` type maps to a [`union
layout`](UnionLayout.md "interface in java.lang.foreign")[PREVIEW](UnionLayout.md#preview-java.lang.foreign.UnionLayout). When defining a struct or union layout, clients must pay attention to the size and alignment constraint
of the corresponding composite type definition in C. For instance, padding between two struct fields
must be modelled explicitly, by adding an adequately sized [padding layout](PaddingLayout.md "interface in java.lang.foreign")[PREVIEW](PaddingLayout.md#preview-java.lang.foreign.PaddingLayout) member
to the resulting struct layout.

Finally, pointer types such as `int**` and `int(*)(size_t*, size_t*)` are modelled as
[address layouts](AddressLayout.md "interface in java.lang.foreign")[PREVIEW](AddressLayout.md#preview-java.lang.foreign.AddressLayout). When the spatial bounds of the pointer type are known statically,
the address layout can be associated with a [target layout](AddressLayout.md#targetLayout())[PREVIEW](AddressLayout.md#preview-java.lang.foreign.AddressLayout). For instance,
a pointer that is known to point to a C `int[2]` array can be modelled as an address layout whose
target layout is a sequence layout whose element count is 2, and whose element type is [`ValueLayout.JAVA_INT`](ValueLayout.md#JAVA_INT)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout).

The following table shows some examples of how C types are modelled in Linux/x64:
> Mapping C types
>
> | C type | Layout | Java type |
> | --- | --- | --- |
> | `bool` | [`ValueLayout.JAVA_BOOLEAN`](ValueLayout.md#JAVA_BOOLEAN)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout) | `boolean` || `char` | [`ValueLayout.JAVA_BYTE`](ValueLayout.md#JAVA_BYTE)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout) | `byte` || `short` | [`ValueLayout.JAVA_SHORT`](ValueLayout.md#JAVA_SHORT)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout) | `short` || `int` | [`ValueLayout.JAVA_INT`](ValueLayout.md#JAVA_INT)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout) | `int` || `long` | [`ValueLayout.JAVA_LONG`](ValueLayout.md#JAVA_LONG)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout) | `long` || `long long` | [`ValueLayout.JAVA_LONG`](ValueLayout.md#JAVA_LONG)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout) | `long` || `float` | [`ValueLayout.JAVA_FLOAT`](ValueLayout.md#JAVA_FLOAT)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout) | `float` || `double` | [`ValueLayout.JAVA_DOUBLE`](ValueLayout.md#JAVA_DOUBLE)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout) | `double` || `size_t` | [`ValueLayout.JAVA_LONG`](ValueLayout.md#JAVA_LONG)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout) | `long` || `char*`, `int**`, `struct Point*` | [`ValueLayout.ADDRESS`](ValueLayout.md#ADDRESS)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout) | [`MemorySegment`](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) || `int (*ptr)[10]` | ```  ValueLayout.ADDRESS.withTargetLayout(      MemoryLayout.sequenceLayout(10,          ValueLayout.JAVA_INT)  ); ```   [`MemorySegment`](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) || `struct Point { int x; long y; };` | ```  MemoryLayout.structLayout(      ValueLayout.JAVA_INT.withName("x"),      MemoryLayout.paddingLayout(32),      ValueLayout.JAVA_LONG.withName("y")  ); ``` | [`MemorySegment`](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) || `union Choice { float a; int b; }` | ```  MemoryLayout.unionLayout(      ValueLayout.JAVA_FLOAT.withName("a"),      ValueLayout.JAVA_INT.withName("b")  ); ``` | [`MemorySegment`](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) | |

All native linker implementations operate on a subset of memory layouts. More formally, a layout `L`
is supported by a native linker `NL` if:

* `L` is a value layout `V` and `V.withoutName()` is [equal](MemoryLayout.md#equals(java.lang.Object))[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)
  to one of the following layout constants:
  + [`ValueLayout.JAVA_BOOLEAN`](ValueLayout.md#JAVA_BOOLEAN)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout)
  + [`ValueLayout.JAVA_BYTE`](ValueLayout.md#JAVA_BYTE)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout)
  + [`ValueLayout.JAVA_CHAR`](ValueLayout.md#JAVA_CHAR)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout)
  + [`ValueLayout.JAVA_SHORT`](ValueLayout.md#JAVA_SHORT)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout)
  + [`ValueLayout.JAVA_INT`](ValueLayout.md#JAVA_INT)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout)
  + [`ValueLayout.JAVA_LONG`](ValueLayout.md#JAVA_LONG)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout)
  + [`ValueLayout.JAVA_FLOAT`](ValueLayout.md#JAVA_FLOAT)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout)
  + [`ValueLayout.JAVA_DOUBLE`](ValueLayout.md#JAVA_DOUBLE)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout)
* `L` is an address layout `A` and `A.withoutTargetLayout().withoutName()` is
  [equal](MemoryLayout.md#equals(java.lang.Object))[PREVIEW](MemoryLayout.md#preview-java.lang.foreign.MemoryLayout) to [`ValueLayout.ADDRESS`](ValueLayout.md#ADDRESS)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout)
* `L` is a sequence layout `S` and all the following conditions hold:
  1. the alignment constraint of `S` is set to its [natural alignment](MemoryLayout.md#layout-align), and
  2. `S.elementLayout()` is a layout supported by `NL`.
* `L` is a group layout `G` and all the following conditions hold:
  1. the alignment constraint of `G` is set to its [natural alignment](MemoryLayout.md#layout-align);
  2. the size of `G` is a multiple of its alignment constraint;
  3. each member layout in `G.memberLayouts()` is either a padding layout or a layout supported by `NL`, and
  4. `G` does not contain padding other than what is strictly required to align its non-padding layout elements, or to satisfy (2).

A native linker only supports function descriptors whose argument/return layouts are layouts supported by that linker
and are not sequence layouts.

### Function pointers

Sometimes, it is useful to pass Java code as a function pointer to some native function; this is achieved by using
an [upcall stub](#upcallStub(java.lang.invoke.MethodHandle,java.lang.foreign.FunctionDescriptor,java.lang.foreign.Arena,java.lang.foreign.Linker.Option...)). To demonstrate this,
let's consider the following function from the C standard library:

Copy![Copy snippet](../../../../copy.svg)

```
void qsort(void *base, size_t nmemb, size_t size,
           int (*compar)(const void *, const void *));
```

The `qsort` function can be used to sort the contents of an array, using a custom comparator function which is
passed as a function pointer (the `compar` parameter). To be able to call the `qsort` function from Java,
we must first create a downcall method handle for it, as follows:

Copy![Copy snippet](../../../../copy.svg)

```
Linker linker = Linker.nativeLinker();
MethodHandle qsort = linker.downcallHandle(
    linker.defaultLookup().find("qsort").orElseThrow(),
        FunctionDescriptor.ofVoid(ADDRESS, JAVA_LONG, JAVA_LONG, ADDRESS)
);
```

As before, we use [`ValueLayout.JAVA_LONG`](ValueLayout.md#JAVA_LONG)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout) to map the C type `size_t` type, and [`ValueLayout.ADDRESS`](ValueLayout.md#ADDRESS)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout)
for both the first pointer parameter (the array pointer) and the last parameter (the function pointer).

To invoke the `qsort` downcall handle obtained above, we need a function pointer to be passed as the last
parameter. That is, we need to create a function pointer out of an existing method handle. First, let's write a
Java method that can compare two int elements passed as pointers (i.e. as [memory segments](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment)):

Copy![Copy snippet](../../../../copy.svg)

```
class Qsort {
    static int qsortCompare(MemorySegment elem1, MemorySegment elem2) {
        return Integer.compare(elem1.get(JAVA_INT, 0), elem2.get(JAVA_INT, 0));
    }
}
```

Now let's create a method handle for the comparator method defined above:

Copy![Copy snippet](../../../../copy.svg)

```
FunctionDescriptor comparDesc = FunctionDescriptor.of(JAVA_INT,
                                                      ADDRESS.withTargetLayout(JAVA_INT),
                                                      ADDRESS.withTargetLayout(JAVA_INT));
MethodHandle comparHandle = MethodHandles.lookup()
                                         .findStatic(Qsort.class, "qsortCompare",
                                                     comparDesc.toMethodType());
```

First, we create a function descriptor for the function pointer type. Since we know that the parameters passed to
the comparator method will be pointers to elements of a C `int[]` array, we can specify [`ValueLayout.JAVA_INT`](ValueLayout.md#JAVA_INT)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout)
as the target layout for the address layouts of both parameters. This will allow the comparator method to access
the contents of the array elements to be compared. We then [turn](FunctionDescriptor.md#toMethodType())[PREVIEW](FunctionDescriptor.md#preview-java.lang.foreign.FunctionDescriptor)
that function descriptor into a suitable [method type](../invoke/MethodType.md "class in java.lang.invoke") which we then use to look up
the comparator method handle. We can now create an upcall stub which points to that method, and pass it, as a function
pointer, to the `qsort` downcall handle, as follows:

Copy![Copy snippet](../../../../copy.svg)

```
try (Arena arena = Arena.ofConfined()) {
    MemorySegment comparFunc = linker.upcallStub(comparHandle, comparDesc, arena);
    MemorySegment array = arena.allocateArray(JAVA_INT, 0, 9, 3, 4, 6, 5, 1, 8, 2, 7);
    qsort.invokeExact(array, 10L, 4L, comparFunc);
    int[] sorted = array.toArray(JAVA_INT); // [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 ]
}
```

This code creates an off-heap array, copies the contents of a Java array into it, and then passes the array to the
`qsort` method handle along with the comparator function we obtained from the native linker. After the invocation, the contents
of the off-heap array will be sorted according to our comparator function, written in Java. We then extract a
new Java array from the segment, which contains the sorted elements.

### Functions returning pointers

When interacting with native functions, it is common for those functions to allocate a region of memory and return
a pointer to that region. Let's consider the following function from the C standard library:

Copy![Copy snippet](../../../../copy.svg)

```
void *malloc(size_t size);
```

The `malloc` function allocates a region of memory of given size,
and returns a pointer to that region of memory, which is later deallocated using another function from
the C standard library:

Copy![Copy snippet](../../../../copy.svg)

```
void free(void *ptr);
```

The `free` function takes a pointer to a region of memory and deallocates that region. In this section we
will show how to interact with these native functions, with the aim of providing a *safe* allocation
API (the approach outlined below can of course be generalized to allocation functions other than `malloc`
and `free`).

First, we need to create the downcall method handles for `malloc` and `free`, as follows:

Copy![Copy snippet](../../../../copy.svg)

```
Linker linker = Linker.nativeLinker();

MethodHandle malloc = linker.downcallHandle(
    linker.defaultLookup().find("malloc").orElseThrow(),
    FunctionDescriptor.of(ADDRESS, JAVA_LONG)
);

MethodHandle free = linker.downcallHandle(
    linker.defaultLookup().find("free").orElseThrow(),
    FunctionDescriptor.ofVoid(ADDRESS)
);
```

When a native function returning a pointer (such as `malloc`) is invoked using a downcall method handle,
the Java runtime has no insight into the size or the lifetime of the returned pointer. Consider the following code:

Copy![Copy snippet](../../../../copy.svg)

```
MemorySegment segment = (MemorySegment)malloc.invokeExact(100);
```

The size of the segment returned by the `malloc` downcall method handle is
[zero](MemorySegment.md#wrapping-addresses). Moreover, the scope of the
returned segment is a fresh scope that is always alive. To provide safe access to the segment, we must,
unsafely, resize the segment to the desired size (100, in this case). It might also be desirable to
attach the segment to some existing [arena](Arena.md "interface in java.lang.foreign")[PREVIEW](Arena.md#preview-java.lang.foreign.Arena), so that the lifetime of the region of memory
backing the segment can be managed automatically, as for any other native segment created directly from Java code.
Both of these operations are accomplished using the restricted method [`MemorySegment.reinterpret(long, Arena, Consumer)`](MemorySegment.md#reinterpret(long,java.lang.foreign.Arena,java.util.function.Consumer))[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment),
as follows:

Copy![Copy snippet](../../../../copy.svg)

```
MemorySegment allocateMemory(long byteSize, Arena arena) throws Throwable {
    MemorySegment segment = (MemorySegment) malloc.invokeExact(byteSize); // size = 0, scope = always alive
    return segment.reinterpret(byteSize, arena, s -> {
        try {
            free.invokeExact(s);
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    });  // size = byteSize, scope = arena.scope()
}
```

The `allocateMemory` method defined above accepts two parameters: a size and an arena. The method calls the
`malloc` downcall method handle, and unsafely reinterprets the returned segment, by giving it a new size
(the size passed to the `allocateMemory` method) and a new scope (the scope of the provided arena).
The method also specifies a *cleanup action* to be executed when the provided arena is closed. Unsurprisingly,
the cleanup action passes the segment to the `free` downcall method handle, to deallocate the underlying
region of memory. We can use the `allocateMemory` method as follows:

Copy![Copy snippet](../../../../copy.svg)

```
try (Arena arena = Arena.ofConfined()) {
    MemorySegment segment = allocateMemory(100, arena);
} // 'free' called here
```

Note how the segment obtained from `allocateMemory` acts as any other segment managed by the confined arena. More
specifically, the obtained segment has the desired size, can only be accessed by a single thread (the thread which created
the confined arena), and its lifetime is tied to the surrounding *try-with-resources* block.

### Variadic functions

Variadic functions are C functions which can accept a variable number and type of arguments. They are declared:

1. With a trailing ellipsis (`...`) at the end of the formal parameter list, such as: `void foo(int x, ...);`
2. With an empty formal parameter list, called a prototype-less function, such as: `void foo();`

The arguments passed in place of the ellipsis, or the arguments passed to a prototype-less function are called
*variadic arguments*. Variadic functions are, essentially, templates that can be *specialized* into multiple
non-variadic functions by replacing the `...` or empty formal parameter list with a list of *variadic parameters*
of a fixed number and type.

It should be noted that values passed as variadic arguments undergo default argument promotion in C. For instance, the
following argument promotions are applied:

* `_Bool` -> `unsigned int`
* `[signed] char` -> `[signed] int`
* `[signed] short` -> `[signed] int`
* `float` -> `double`

whereby the signed-ness of the source type corresponds to the signed-ness of the promoted type. The complete process
of default argument promotion is described in the C specification. In effect these promotions place limits on the
specialized form of a variadic function, as the variadic parameters of the specialized form will always have a promoted
type.

The native linker only supports linking the specialized form of a variadic function. A variadic function in its specialized
form can be linked using a function descriptor describing the specialized form. Additionally, the
[`Linker.Option.firstVariadicArg(int)`](Linker.Option.md#firstVariadicArg(int))[PREVIEW](Linker.Option.md#preview-java.lang.foreign.Linker.Option) linker option must be provided to indicate the first variadic parameter in
the parameter list. The corresponding argument layout (if any), and all following argument layouts in the specialized
function descriptor, are called *variadic argument layouts*. For a prototype-less function, the index passed to
[`Linker.Option.firstVariadicArg(int)`](Linker.Option.md#firstVariadicArg(int))[PREVIEW](Linker.Option.md#preview-java.lang.foreign.Linker.Option) should always be `0`.

The native linker will reject an attempt to link a specialized function descriptor with any variadic argument layouts
corresponding to a C type that would be subject to default argument promotion (as described above). Exactly which layouts
will be rejected is platform specific, but as an example: on Linux/x64 the layouts [`ValueLayout.JAVA_BOOLEAN`](ValueLayout.md#JAVA_BOOLEAN)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout),
[`ValueLayout.JAVA_BYTE`](ValueLayout.md#JAVA_BYTE)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout), [`ValueLayout.JAVA_CHAR`](ValueLayout.md#JAVA_CHAR)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout), [`ValueLayout.JAVA_SHORT`](ValueLayout.md#JAVA_SHORT)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout), and
[`ValueLayout.JAVA_FLOAT`](ValueLayout.md#JAVA_FLOAT)[PREVIEW](ValueLayout.md#preview-java.lang.foreign.ValueLayout) will be rejected.

A well-known variadic function is the `printf` function, defined in the C standard library:

Copy![Copy snippet](../../../../copy.svg)

```
int printf(const char *format, ...);
```

This function takes a format string, and a number of additional arguments (the number of such arguments is
dictated by the format string). Consider the following variadic call:

Copy![Copy snippet](../../../../copy.svg)

```
printf("%d plus %d equals %d", 2, 2, 4);
```

To perform an equivalent call using a downcall method handle we must create a function descriptor which
describes the specialized signature of the C function we want to call. This descriptor must include an additional layout
for each variadic argument we intend to provide. In this case, the specialized signature of the C
function is `(char*, int, int, int)` as the format string accepts three integer parameters. We then need to use
a [linker option](Linker.Option.md#firstVariadicArg(int))[PREVIEW](Linker.Option.md#preview-java.lang.foreign.Linker.Option) to specify the position of the first variadic layout
in the provided function descriptor (starting from 0). In this case, since the first parameter is the format string
(a non-variadic argument), the first variadic index needs to be set to 1, as follows:

Copy![Copy snippet](../../../../copy.svg)

```
Linker linker = Linker.nativeLinker();
MethodHandle printf = linker.downcallHandle(
    linker.defaultLookup().find("printf").orElseThrow(),
        FunctionDescriptor.of(JAVA_INT, ADDRESS, JAVA_INT, JAVA_INT, JAVA_INT),
        Linker.Option.firstVariadicArg(1) // first int is variadic
);
```

We can then call the specialized downcall handle as usual:

Copy![Copy snippet](../../../../copy.svg)

```
try (Arena arena = Arena.ofConfined()) {
    int res = (int)printf.invokeExact(arena.allocateUtf8String("%d plus %d equals %d"), 2, 2, 4); //prints "2 plus 2 equals 4"
}
```

## Safety considerations

Creating a downcall method handle is intrinsically unsafe. A symbol in a foreign library does not, in general,
contain enough signature information (e.g. arity and types of foreign function parameters). As a consequence,
the linker runtime cannot validate linkage requests. When a client interacts with a downcall method handle obtained
through an invalid linkage request (e.g. by specifying a function descriptor featuring too many argument layouts),
the result of such interaction is unspecified and can lead to JVM crashes.

When an upcall stub is passed to a foreign function, a JVM crash might occur, if the foreign code casts the function pointer
associated with the upcall stub to a type that is incompatible with the type of the upcall stub, and then attempts to
invoke the function through the resulting function pointer. Moreover, if the method
handle associated with an upcall stub returns a [memory segment](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment), clients must ensure
that this address cannot become invalid after the upcall completes. This can lead to unspecified behavior,
and even JVM crashes, since an upcall is typically executed in the context of a downcall method handle invocation.

Since:
:   19

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static interface`

  `Linker.OptionPREVIEW`

  Preview.

  A linker option is used to provide additional parameters to a linkage request.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `SymbolLookupPREVIEW`

  `defaultLookup()`

  Returns a symbol lookup for symbols in a set of commonly used libraries.

  `MethodHandle`

  `downcallHandle(FunctionDescriptorPREVIEW function,
  Linker.OptionPREVIEW... options)`

  Creates a method handle which is used to call a foreign function with the given signature.

  `MethodHandle`

  `downcallHandle(MemorySegmentPREVIEW address,
  FunctionDescriptorPREVIEW function,
  Linker.OptionPREVIEW... options)`

  Creates a method handle which is used to call a foreign function with the given signature and address.

  `static LinkerPREVIEW`

  `nativeLinker()`

  Returns a linker for the ABI associated with the underlying native platform.

  `MemorySegmentPREVIEW`

  `upcallStub(MethodHandle target,
  FunctionDescriptorPREVIEW function,
  ArenaPREVIEW arena,
  Linker.OptionPREVIEW... options)`

  Creates an upcall stub which can be passed to other foreign functions as a function pointer, associated with the given
  arena.

* ## Method Details

  + ### nativeLinker

    static [Linker](Linker.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.Linker) nativeLinker()

    Returns a linker for the ABI associated with the underlying native platform. The underlying native platform
    is the combination of OS and processor where the Java runtime is currently executing.

    Returns:
    :   a linker for the ABI associated with the underlying native platform

    Throws:
    :   `UnsupportedOperationException` - if the underlying native platform is not supported.
  + ### downcallHandle

    [MethodHandle](../invoke/MethodHandle.md "class in java.lang.invoke") downcallHandle([MemorySegment](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) address,
    [FunctionDescriptor](FunctionDescriptor.md "interface in java.lang.foreign")[PREVIEW](FunctionDescriptor.md#preview-java.lang.foreign.FunctionDescriptor) function,
    [Linker.Option](Linker.Option.md "interface in java.lang.foreign")[PREVIEW](Linker.Option.md#preview-java.lang.foreign.Linker.Option)... options)

    Creates a method handle which is used to call a foreign function with the given signature and address.

    Calling this method is equivalent to the following code:

    Copy![Copy snippet](../../../../copy.svg)

    ```
    linker.downcallHandle(function).bindTo(symbol);
    ```

    This method is [*restricted*](package-summary.md#restricted).
    Restricted methods are unsafe, and, if used incorrectly, their use might crash
    the JVM or, worse, silently result in memory corruption. Thus, clients should refrain from depending on
    restricted methods, and use safe and supported functionalities, where possible.

    Parameters:
    :   `address` - the native memory segment whose [base address](MemorySegment.md#address())[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) is the
        address of the target foreign function.
    :   `function` - the function descriptor of the target foreign function.
    :   `options` - the linker options associated with this linkage request.

    Returns:
    :   a downcall method handle.

    Throws:
    :   `IllegalArgumentException` - if the provided function descriptor is not supported by this linker.
    :   `IllegalArgumentException` - if `!address.isNative()`, or if `address.equals(MemorySegment.NULL)`.
    :   `IllegalArgumentException` - if an invalid combination of linker options is given.
    :   `IllegalCallerException` - If the caller is in a module that does not have native access enabled.

    See Also:
    :   - [`SymbolLookup`](SymbolLookup.md "interface in java.lang.foreign")[PREVIEW](SymbolLookup.md#preview-java.lang.foreign.SymbolLookup)
  + ### downcallHandle

    [MethodHandle](../invoke/MethodHandle.md "class in java.lang.invoke") downcallHandle([FunctionDescriptor](FunctionDescriptor.md "interface in java.lang.foreign")[PREVIEW](FunctionDescriptor.md#preview-java.lang.foreign.FunctionDescriptor) function,
    [Linker.Option](Linker.Option.md "interface in java.lang.foreign")[PREVIEW](Linker.Option.md#preview-java.lang.foreign.Linker.Option)... options)

    Creates a method handle which is used to call a foreign function with the given signature.

    The Java [method type](../invoke/MethodType.md "class in java.lang.invoke") associated with the returned method handle is
    [derived](FunctionDescriptor.md#toMethodType())[PREVIEW](FunctionDescriptor.md#preview-java.lang.foreign.FunctionDescriptor) from the argument and return layouts in the function descriptor,
    but features an additional leading parameter of type [`MemorySegment`](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment), from which the address of the target
    foreign function is derived. Moreover, if the function descriptor's return layout is a group layout, the resulting
    downcall method handle accepts an additional leading parameter of type [`SegmentAllocator`](SegmentAllocator.md "interface in java.lang.foreign")[PREVIEW](SegmentAllocator.md#preview-java.lang.foreign.SegmentAllocator), which is used by
    the linker runtime to allocate the memory region associated with the struct returned by the downcall method handle.

    Upon invoking a downcall method handle, the linker provides the following guarantees for any argument
    `A` of type [`MemorySegment`](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) whose corresponding layout is an [address layout](AddressLayout.md "interface in java.lang.foreign")[PREVIEW](AddressLayout.md#preview-java.lang.foreign.AddressLayout):
    - `A.scope().isAlive() == true`. Otherwise, the invocation throws [`IllegalStateException`](../IllegalStateException.md "class in java.lang");
    - The invocation occurs in a thread `T` such that `A.isAccessibleBy(T) == true`.
      Otherwise, the invocation throws [`WrongThreadException`](../WrongThreadException.md "class in java.lang"); and
    - `A` is kept alive during the invocation. For instance, if `A` has been obtained using a
      [shared arena](Arena.md#ofShared())[PREVIEW](Arena.md#preview-java.lang.foreign.Arena), any attempt to [close](Arena.md#close())[PREVIEW](Arena.md#preview-java.lang.foreign.Arena)
      the arena while the downcall method handle is still executing will result in an [`IllegalStateException`](../IllegalStateException.md "class in java.lang").

    Moreover, if the provided function descriptor's return layout is an [address layout](AddressLayout.md "interface in java.lang.foreign")[PREVIEW](AddressLayout.md#preview-java.lang.foreign.AddressLayout),
    invoking the returned method handle will return a native segment associated with
    a fresh scope that is always alive. Under normal conditions, the size of the returned segment is `0`.
    However, if the function descriptor's return layout has a [target layout](AddressLayout.md#targetLayout())[PREVIEW](AddressLayout.md#preview-java.lang.foreign.AddressLayout)
    `T`, then the size of the returned segment is set to `T.byteSize()`.

    The returned method handle will throw an [`IllegalArgumentException`](../IllegalArgumentException.md "class in java.lang") if the [`MemorySegment`](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment)
    representing the target address of the foreign function is the [`MemorySegment.NULL`](MemorySegment.md#NULL)[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) address.
    The returned method handle will additionally throw [`NullPointerException`](../NullPointerException.md "class in java.lang") if any argument passed to it is `null`.

    This method is [*restricted*](package-summary.md#restricted).
    Restricted methods are unsafe, and, if used incorrectly, their use might crash
    the JVM or, worse, silently result in memory corruption. Thus, clients should refrain from depending on
    restricted methods, and use safe and supported functionalities, where possible.

    Parameters:
    :   `function` - the function descriptor of the target foreign function.
    :   `options` - the linker options associated with this linkage request.

    Returns:
    :   a downcall method handle.

    Throws:
    :   `IllegalArgumentException` - if the provided function descriptor is not supported by this linker.
    :   `IllegalArgumentException` - if an invalid combination of linker options is given.
    :   `IllegalCallerException` - If the caller is in a module that does not have native access enabled.
  + ### upcallStub

    [MemorySegment](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) upcallStub([MethodHandle](../invoke/MethodHandle.md "class in java.lang.invoke") target,
    [FunctionDescriptor](FunctionDescriptor.md "interface in java.lang.foreign")[PREVIEW](FunctionDescriptor.md#preview-java.lang.foreign.FunctionDescriptor) function,
    [Arena](Arena.md "interface in java.lang.foreign")[PREVIEW](Arena.md#preview-java.lang.foreign.Arena) arena,
    [Linker.Option](Linker.Option.md "interface in java.lang.foreign")[PREVIEW](Linker.Option.md#preview-java.lang.foreign.Linker.Option)... options)

    Creates an upcall stub which can be passed to other foreign functions as a function pointer, associated with the given
    arena. Calling such a function pointer from foreign code will result in the execution of the provided
    method handle.

    The returned memory segment's address points to the newly allocated upcall stub, and is associated with
    the provided arena. As such, the lifetime of the returned upcall stub segment is controlled by the
    provided arena. For instance, if the provided arena is a confined arena, the returned
    upcall stub segment will be deallocated when the provided confined arena is [closed](Arena.md#close())[PREVIEW](Arena.md#preview-java.lang.foreign.Arena).

    An upcall stub argument whose corresponding layout is an [address layout](AddressLayout.md "interface in java.lang.foreign")[PREVIEW](AddressLayout.md#preview-java.lang.foreign.AddressLayout)
    is a native segment associated with a fresh scope that is always alive.
    Under normal conditions, the size of this segment argument is `0`.
    However, if the address layout has a [target layout](AddressLayout.md#targetLayout())[PREVIEW](AddressLayout.md#preview-java.lang.foreign.AddressLayout) `T`, then the size of the
    segment argument is set to `T.byteSize()`.

    The target method handle should not throw any exceptions. If the target method handle does throw an exception,
    the JVM will terminate abruptly. To avoid this, clients should wrap the code in the target method handle in a
    try/catch block to catch any unexpected exceptions. This can be done using the
    [`MethodHandles.catchException(MethodHandle, Class, MethodHandle)`](../invoke/MethodHandles.md#catchException(java.lang.invoke.MethodHandle,java.lang.Class,java.lang.invoke.MethodHandle)) method handle combinator,
    and handle exceptions as desired in the corresponding catch block.

    This method is [*restricted*](package-summary.md#restricted).
    Restricted methods are unsafe, and, if used incorrectly, their use might crash
    the JVM or, worse, silently result in memory corruption. Thus, clients should refrain from depending on
    restricted methods, and use safe and supported functionalities, where possible.

    Parameters:
    :   `target` - the target method handle.
    :   `function` - the upcall stub function descriptor.
    :   `arena` - the arena associated with the returned upcall stub segment.
    :   `options` - the linker options associated with this linkage request.

    Returns:
    :   a zero-length segment whose address is the address of the upcall stub.

    Throws:
    :   `IllegalArgumentException` - if the provided function descriptor is not supported by this linker.
    :   `IllegalArgumentException` - if the type of `target` is incompatible with the
        type [derived](FunctionDescriptor.md#toMethodType())[PREVIEW](FunctionDescriptor.md#preview-java.lang.foreign.FunctionDescriptor) from `function`.
    :   `IllegalArgumentException` - if it is determined that the target method handle can throw an exception.
    :   `IllegalStateException` - if `arena.scope().isAlive() == false`
    :   `WrongThreadException` - if `arena` is a confined arena, and this method is called from a
        thread `T`, other than the arena's owner thread.
    :   `IllegalCallerException` - If the caller is in a module that does not have native access enabled.
  + ### defaultLookup

    [SymbolLookup](SymbolLookup.md "interface in java.lang.foreign")[PREVIEW](SymbolLookup.md#preview-java.lang.foreign.SymbolLookup) defaultLookup()

    Returns a symbol lookup for symbols in a set of commonly used libraries.

    Each [`Linker`](Linker.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.Linker) is responsible for choosing libraries that are widely recognized as useful on the OS
    and processor combination supported by the [`Linker`](Linker.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.Linker). Accordingly, the precise set of symbols exposed by the
    symbol lookup is unspecified; it varies from one [`Linker`](Linker.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.Linker) to another.

    Returns:
    :   a symbol lookup for symbols in a set of commonly used libraries.