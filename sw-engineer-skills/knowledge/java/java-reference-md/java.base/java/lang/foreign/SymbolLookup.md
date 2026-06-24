Module [java.base](../../../module-summary.md)

Package [java.lang.foreign](package-summary.md)

# Interface SymbolLookup

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../FunctionalInterface.md "annotation interface in java.lang")
public interface SymbolLookup

`SymbolLookup` is a preview API of the Java platform.

Programs can only use `SymbolLookup` when preview features are enabled.

Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

A *symbol lookup* retrieves the address of a symbol in one or more libraries.
A symbol is a named entity, such as a function or a global variable.

A symbol lookup is created with respect to a particular library (or libraries). Subsequently, the [`find(String)`](#find(java.lang.String))
method takes the name of a symbol and returns the address of the symbol in that library.

The address of a symbol is modelled as a zero-length [memory segment](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment). The segment can be used in different ways:

* It can be passed to a [`Linker`](Linker.md "interface in java.lang.foreign")[PREVIEW](Linker.md#preview-java.lang.foreign.Linker) to create a downcall method handle, which can then be used to call the foreign function at the segment's address.
* It can be passed to an existing [downcall method handle](Linker.md#downcallHandle(java.lang.foreign.FunctionDescriptor,java.lang.foreign.Linker.Option...))[PREVIEW](Linker.md#preview-java.lang.foreign.Linker), as an argument to the underlying foreign function.
* It can be [stored](MemorySegment.md#set(java.lang.foreign.AddressLayout,long,java.lang.foreign.MemorySegment))[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) inside another memory segment.
* It can be used to access the region of memory backing a global variable (this requires
  [resizing](MemorySegment.md#reinterpret(long))[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment) the segment first).

## Obtaining a symbol lookup

The factory methods [`libraryLookup(String, Arena)`](#libraryLookup(java.lang.String,java.lang.foreign.Arena)) and [`libraryLookup(Path, Arena)`](#libraryLookup(java.nio.file.Path,java.lang.foreign.Arena))
create a symbol lookup for a library known to the operating system. The library is specified by either its name or a path.
The library is loaded if not already loaded. The symbol lookup, which is known as a *library lookup*, and its
lifetime is controlled by an [arena](Arena.md "interface in java.lang.foreign")[PREVIEW](Arena.md#preview-java.lang.foreign.Arena). For instance, if the provided arena is a
confined arena, the library associated with the symbol lookup is unloaded when the confined arena
is [closed](Arena.md#close())[PREVIEW](Arena.md#preview-java.lang.foreign.Arena):

Copy![Copy snippet](../../../../copy.svg)

```
 try (Arena arena = Arena.ofConfined()) {
     SymbolLookup libGL = SymbolLookup.libraryLookup("libGL.so", arena); // libGL.so loaded here
     MemorySegment glGetString = libGL.find("glGetString").orElseThrow();
     ...
 } //  libGL.so unloaded here
```

If a library was previously loaded through JNI, i.e., by [`System.load(String)`](../System.md#load(java.lang.String))
or [`System.loadLibrary(String)`](../System.md#loadLibrary(java.lang.String)), then the library was also associated with a particular class loader. The factory
method [`loaderLookup()`](#loaderLookup()) creates a symbol lookup for all the libraries associated with the caller's class loader:

Copy![Copy snippet](../../../../copy.svg)

```
System.loadLibrary("GL"); // libGL.so loaded here
...
SymbolLookup libGL = SymbolLookup.loaderLookup();
MemorySegment glGetString = libGL.find("glGetString").orElseThrow();
```

This symbol lookup, which is known as a *loader lookup*, is dynamic with respect to the libraries associated
with the class loader. If other libraries are subsequently loaded through JNI and associated with the class loader,
then the loader lookup will expose their symbols automatically.

Note that a loader lookup only exposes symbols in libraries that were previously loaded through JNI, i.e.,
by [`System.load(String)`](../System.md#load(java.lang.String)) or [`System.loadLibrary(String)`](../System.md#loadLibrary(java.lang.String)). A loader lookup does not expose symbols in libraries
that were loaded in the course of creating a library lookup:

Copy![Copy snippet](../../../../copy.svg)

```
 libraryLookup("libGL.so", arena).find("glGetString").isPresent(); // true
 loaderLookup().find("glGetString").isPresent(); // false
```

Note also that a library lookup for library `L` exposes symbols in `L` even if `L` was previously loaded
through JNI (the association with a class loader is immaterial to the library lookup):

Copy![Copy snippet](../../../../copy.svg)

```
 System.loadLibrary("GL"); // libGL.so loaded here
 libraryLookup("libGL.so", arena).find("glGetString").isPresent(); // true
```

Finally, each [`Linker`](Linker.md "interface in java.lang.foreign")[PREVIEW](Linker.md#preview-java.lang.foreign.Linker) provides a symbol lookup for libraries that are commonly used on the OS and processor
combination supported by that [`Linker`](Linker.md "interface in java.lang.foreign")[PREVIEW](Linker.md#preview-java.lang.foreign.Linker). This symbol lookup, which is known as a *default lookup*,
helps clients to quickly find addresses of well-known symbols. For example, a [`Linker`](Linker.md "interface in java.lang.foreign")[PREVIEW](Linker.md#preview-java.lang.foreign.Linker) for Linux/x64 might choose to
expose symbols in `libc` through the default lookup:

Copy![Copy snippet](../../../../copy.svg)

```
 Linker nativeLinker = Linker.nativeLinker();
 SymbolLookup stdlib = nativeLinker.defaultLookup();
 MemorySegment malloc = stdlib.find("malloc").orElseThrow();
```

* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `Optional<MemorySegmentPREVIEW>`

  `find(String name)`

  Returns the address of the symbol with the given name.

  `static SymbolLookupPREVIEW`

  `libraryLookup(String name,
  ArenaPREVIEW arena)`

  Loads a library with the given name (if not already loaded) and creates a symbol lookup for symbols in that library.

  `static SymbolLookupPREVIEW`

  `libraryLookup(Path path,
  ArenaPREVIEW arena)`

  Loads a library from the given path (if not already loaded) and creates a symbol lookup for symbols
  in that library.

  `static SymbolLookupPREVIEW`

  `loaderLookup()`

  Returns a symbol lookup for symbols in the libraries associated with the caller's class loader.

  `default SymbolLookupPREVIEW`

  `or(SymbolLookupPREVIEW other)`

  Returns a composed symbol lookup that returns result of finding the symbol with this lookup if found,
  otherwise returns the result of finding the symbol with the other lookup.

* ## Method Details

  + ### find

    [Optional](../../util/Optional.md "class in java.util")<[MemorySegment](MemorySegment.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.md#preview-java.lang.foreign.MemorySegment)> find([String](../String.md "class in java.lang") name)

    Returns the address of the symbol with the given name.

    Parameters:
    :   `name` - the symbol name.

    Returns:
    :   a zero-length memory segment whose address indicates the address of the symbol, if found.
  + ### or

    default [SymbolLookup](SymbolLookup.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.SymbolLookup) or([SymbolLookup](SymbolLookup.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.SymbolLookup) other)

    Returns a composed symbol lookup that returns result of finding the symbol with this lookup if found,
    otherwise returns the result of finding the symbol with the other lookup.

    Parameters:
    :   `other` - the symbol lookup that should be used to look for symbols not found in this lookup.

    Returns:
    :   a composed symbol lookup that returns result of finding the symbol with this lookup if found,
        otherwise returns the result of finding the symbol with the other lookup
  + ### loaderLookup

    static [SymbolLookup](SymbolLookup.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.SymbolLookup) loaderLookup()

    Returns a symbol lookup for symbols in the libraries associated with the caller's class loader.

    A library is associated with a class loader `CL` when the library is loaded via an invocation of
    [`System.load(String)`](../System.md#load(java.lang.String)) or [`System.loadLibrary(String)`](../System.md#loadLibrary(java.lang.String)) from code in a class defined by `CL`.
    If that code makes further invocations of [`System.load(String)`](../System.md#load(java.lang.String)) or [`System.loadLibrary(String)`](../System.md#loadLibrary(java.lang.String)),
    then more libraries are loaded and associated with `CL`. The symbol lookup returned by this method is always
    current: it reflects all the libraries associated with the relevant class loader, even if they were loaded after
    this method returned.

    Libraries associated with a class loader are unloaded when the class loader becomes
    [unreachable](../../../java/lang/ref/package.md#reachability). The symbol lookup
    returned by this method is associated with a fresh [scope](MemorySegment.Scope.md "interface in java.lang.foreign")[PREVIEW](MemorySegment.Scope.md#preview-java.lang.foreign.MemorySegment.Scope) which keeps the caller's
    class loader reachable. Therefore, libraries associated with the caller's class loader are kept loaded
    (and their symbols available) as long as a loader lookup for that class loader, or any of the segments
    obtained by it, is reachable.

    In cases where this method is called from a context where there is no caller frame on the stack
    (e.g. when called directly from a JNI attached thread), the caller's class loader defaults to the
    [system class loader](../ClassLoader.md#getSystemClassLoader()).

    Returns:
    :   a symbol lookup for symbols in the libraries associated with the caller's class loader.

    See Also:
    :   - [`System.load(String)`](../System.md#load(java.lang.String))
        - [`System.loadLibrary(String)`](../System.md#loadLibrary(java.lang.String))
  + ### libraryLookup

    static [SymbolLookup](SymbolLookup.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.SymbolLookup) libraryLookup([String](../String.md "class in java.lang") name,
    [Arena](Arena.md "interface in java.lang.foreign")[PREVIEW](Arena.md#preview-java.lang.foreign.Arena) arena)

    Loads a library with the given name (if not already loaded) and creates a symbol lookup for symbols in that library.
    The lifetime of the returned library lookup is controlled by the provided arena.
    For instance, if the provided arena is a confined arena, the library
    associated with the returned lookup will be unloaded when the provided confined arena is
    [closed](Arena.md#close())[PREVIEW](Arena.md#preview-java.lang.foreign.Arena).

    This method is [*restricted*](package-summary.md#restricted).
    Restricted methods are unsafe, and, if used incorrectly, their use might crash
    the JVM or, worse, silently result in memory corruption. Thus, clients should refrain from depending on
    restricted methods, and use safe and supported functionalities, where possible.

    Parameters:
    :   `name` - the name of the library in which symbols should be looked up.
    :   `arena` - the arena associated with symbols obtained from the returned lookup.

    Returns:
    :   a new symbol lookup suitable to find symbols in a library with the given name.

    Throws:
    :   `IllegalStateException` - if `arena.scope().isAlive() == false`
    :   `WrongThreadException` - if `arena` is a confined arena, and this method is called from a
        thread `T`, other than the arena's owner thread.
    :   `IllegalArgumentException` - if `name` does not identify a valid library.
    :   `IllegalCallerException` - If the caller is in a module that does not have native access enabled.
  + ### libraryLookup

    static [SymbolLookup](SymbolLookup.md "interface in java.lang.foreign")[PREVIEW](#preview-java.lang.foreign.SymbolLookup) libraryLookup([Path](../../nio/file/Path.md "interface in java.nio.file") path,
    [Arena](Arena.md "interface in java.lang.foreign")[PREVIEW](Arena.md#preview-java.lang.foreign.Arena) arena)

    Loads a library from the given path (if not already loaded) and creates a symbol lookup for symbols
    in that library. The lifetime of the returned library lookup is controlled by the provided arena.
    For instance, if the provided arena is a confined arena, the library
    associated with the returned lookup will be unloaded when the provided confined arena is
    [closed](Arena.md#close())[PREVIEW](Arena.md#preview-java.lang.foreign.Arena).

    This method is [*restricted*](package-summary.md#restricted).
    Restricted methods are unsafe, and, if used incorrectly, their use might crash
    the JVM or, worse, silently result in memory corruption. Thus, clients should refrain from depending on
    restricted methods, and use safe and supported functionalities, where possible.

    Parameters:
    :   `path` - the path of the library in which symbols should be looked up.
    :   `arena` - the arena associated with symbols obtained from the returned lookup.

    Returns:
    :   a new symbol lookup suitable to find symbols in a library with the given path.

    Throws:
    :   `IllegalStateException` - if `arena.scope().isAlive() == false`
    :   `WrongThreadException` - if `arena` is a confined arena, and this method is called from a
        thread `T`, other than the arena's owner thread.
    :   `IllegalArgumentException` - if `path` does not point to a valid library.
    :   `IllegalCallerException` - If the caller is in a module that does not have native access enabled.