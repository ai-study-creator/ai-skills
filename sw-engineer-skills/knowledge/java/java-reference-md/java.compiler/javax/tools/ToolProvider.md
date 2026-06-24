Module [java.compiler](../../module-summary.md)

Package [javax.tools](package-summary.md)

# Class ToolProvider

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.tools.ToolProvider

---

public class ToolProvider
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

Provides methods for locating tool providers, for example,
providers of compilers. This class complements the
functionality of [`ServiceLoader`](../../../java.base/java/util/ServiceLoader.md "class in java.util").

Since:
:   1.6

* ## Method Summary

  All MethodsStatic MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `static DocumentationTool`

  `getSystemDocumentationTool()`

  Returns the Java programming language documentation tool provided
  with this platform.

  `static JavaCompiler`

  `getSystemJavaCompiler()`

  Returns the Java programming language compiler provided
  with this platform.

  `static ClassLoader`

  `getSystemToolClassLoader()`

  Deprecated.

  This method is subject to removal in a future version of
  Java SE.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### getSystemJavaCompiler

    public static [JavaCompiler](JavaCompiler.md "interface in javax.tools") getSystemJavaCompiler()

    Returns the Java programming language compiler provided
    with this platform.

    The file manager returned by calling
    [`getStandardFileManager`](JavaCompiler.md#getStandardFileManager(javax.tools.DiagnosticListener,java.util.Locale,java.nio.charset.Charset))
    on this compiler supports paths provided by any
    [filesystem](../../../java.base/java/nio/file/FileSystem.md "class in java.nio.file").

    Returns:
    :   the compiler provided with this platform or
        `null` if no compiler is provided
  + ### getSystemDocumentationTool

    public static [DocumentationTool](DocumentationTool.md "interface in javax.tools") getSystemDocumentationTool()

    Returns the Java programming language documentation tool provided
    with this platform.

    The file manager returned by calling
    [`getStandardFileManager`](DocumentationTool.md#getStandardFileManager(javax.tools.DiagnosticListener,java.util.Locale,java.nio.charset.Charset))
    on this tool supports paths provided by any
    [filesystem](../../../java.base/java/nio/file/FileSystem.md "class in java.nio.file").

    Returns:
    :   the documentation tool provided with this platform or
        `null` if no documentation tool is provided
  + ### getSystemToolClassLoader

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java.base/java/lang/Deprecated.md#since())="9")
    public static [ClassLoader](../../../java.base/java/lang/ClassLoader.md "class in java.lang") getSystemToolClassLoader()

    Deprecated.

    This method is subject to removal in a future version of
    Java SE.
    Use the [`system tool provider`](../../../java.base/java/util/spi/ToolProvider.md "interface in java.util.spi") or
    [`service loader`](../../../java.base/java/util/ServiceLoader.md "class in java.util") mechanisms to
    locate system tools as well as user-installed tools.

    Returns a class loader that may be used to load system tools,
    or `null` if no such special loader is provided.

    Returns:
    :   a class loader, or `null`