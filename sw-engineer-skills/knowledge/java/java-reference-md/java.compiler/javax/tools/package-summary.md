Module [java.compiler](../../module-summary.md)

# Package javax.tools

---

package javax.tools

Provides interfaces for tools which can be invoked from a program,
for example, compilers.

These interfaces and classes are required as part of the
Java Platform, Standard Edition (Java SE),
but there is no requirement to provide any tools implementing them.

Unless explicitly allowed, all methods in this package might
throw a [`NullPointerException`](../../../java.base/java/lang/NullPointerException.md "class in java.lang") if given a
`null` argument or if given a
[list or collection](../../../java.base/java/lang/Iterable.md "interface in java.lang") containing
`null` elements. Similarly, no method may return
`null` unless explicitly allowed.

This package is the home of the Java programming language compiler framework.
This framework allows clients of the framework to locate and run
compilers from programs. The framework also provides Service
Provider Interfaces (SPI) for structured access to diagnostics
([`DiagnosticListener`](DiagnosticListener.md "interface in javax.tools")) as well as a file
abstraction for overriding file access ([`JavaFileManager`](JavaFileManager.md "interface in javax.tools") and [`JavaFileObject`](JavaFileObject.md "interface in javax.tools")). See [`JavaCompiler`](JavaCompiler.md "interface in javax.tools") for more details on using the SPI.

There is no requirement for a compiler at runtime. However, if
a default compiler is provided, it can be located using the
[`ToolProvider`](ToolProvider.md "class in javax.tools"), for example:

Copy![Copy snippet](../../../copy.svg)

```
JavaCompiler compiler = ToolProvider.getSystemJavaCompiler();
```

It is possible to provide alternative compilers or tools
through the [service provider
mechanism](../../../java.base/java/util/ServiceLoader.md "class in java.util").

For example, if `com.vendor.VendorJavaCompiler` is a
provider of the `JavaCompiler` tool then its jar file
would contain the file `META-INF/services/javax.tools.JavaCompiler`. This file would
contain the single line:

Copy![Copy snippet](../../../copy.svg)

```
com.vendor.VendorJavaCompiler
```

If the jar file is on the class path, `VendorJavaCompiler` can be
located using code like this:

Copy![Copy snippet](../../../copy.svg)

```
JavaCompiler compiler = ServiceLoader.load(JavaCompiler.class).iterator().next();
```

Since:
:   1.6

* All Classes and InterfacesInterfacesClassesEnum Classes

  Class

  Description

  [Diagnostic](Diagnostic.md "interface in javax.tools")<S>

  Interface for diagnostics from tools.

  [Diagnostic.Kind](Diagnostic.Kind.md "enum class in javax.tools")

  Kinds of diagnostics, for example, error or warning.

  [DiagnosticCollector](DiagnosticCollector.md "class in javax.tools")<S>

  Provides an easy way to collect diagnostics in a list.

  [DiagnosticListener](DiagnosticListener.md "interface in javax.tools")<S>

  Interface for receiving diagnostics from tools.

  [DocumentationTool](DocumentationTool.md "interface in javax.tools")

  Interface to invoke Java programming language documentation tools from
  programs.

  [DocumentationTool.DocumentationTask](DocumentationTool.DocumentationTask.md "interface in javax.tools")

  Interface representing a future for a documentation task.

  [DocumentationTool.Location](DocumentationTool.Location.md "enum class in javax.tools")

  Locations specific to [`DocumentationTool`](DocumentationTool.md "interface in javax.tools").

  [FileObject](FileObject.md "interface in javax.tools")

  File abstraction for tools.

  [ForwardingFileObject](ForwardingFileObject.md "class in javax.tools")<F extends [FileObject](FileObject.md "interface in javax.tools")>

  Forwards calls to a given file object.

  [ForwardingJavaFileManager](ForwardingJavaFileManager.md "class in javax.tools")<M extends [JavaFileManager](JavaFileManager.md "interface in javax.tools")>

  Forwards calls to a given file manager.

  [ForwardingJavaFileObject](ForwardingJavaFileObject.md "class in javax.tools")<F extends [JavaFileObject](JavaFileObject.md "interface in javax.tools")>

  Forwards calls to a given file object.

  [JavaCompiler](JavaCompiler.md "interface in javax.tools")

  Interface to invoke Java programming language compilers from
  programs.

  [JavaCompiler.CompilationTask](JavaCompiler.CompilationTask.md "interface in javax.tools")

  Interface representing a future for a compilation task.

  [JavaFileManager](JavaFileManager.md "interface in javax.tools")

  File manager for tools operating on Java programming language
  source and class files.

  [JavaFileManager.Location](JavaFileManager.Location.md "interface in javax.tools")

  Interface for locations of file objects.

  [JavaFileObject](JavaFileObject.md "interface in javax.tools")

  File abstraction for tools operating on Java programming language
  source and class files.

  [JavaFileObject.Kind](JavaFileObject.Kind.md "enum class in javax.tools")

  Kinds of JavaFileObjects.

  [OptionChecker](OptionChecker.md "interface in javax.tools")

  Interface for recognizing options.

  [SimpleJavaFileObject](SimpleJavaFileObject.md "class in javax.tools")

  Provides simple implementations for most methods in JavaFileObject.

  [StandardJavaFileManager](StandardJavaFileManager.md "interface in javax.tools")

  File manager based on [`java.io.File`](../../../java.base/java/io/File.md "class in java.io") and [`java.nio.file.Path`](../../../java.base/java/nio/file/Path.md "interface in java.nio.file").

  [StandardJavaFileManager.PathFactory](StandardJavaFileManager.PathFactory.md "interface in javax.tools")

  Factory to create `Path` objects from strings.

  [StandardLocation](StandardLocation.md "enum class in javax.tools")

  Standard locations of file objects.

  [Tool](Tool.md "interface in javax.tools")

  Common interface for tools that can be invoked from a program.

  [ToolProvider](ToolProvider.md "class in javax.tools")

  Provides methods for locating tool providers, for example,
  providers of compilers.