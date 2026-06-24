Module [java.compiler](../../module-summary.md)

Package [javax.tools](package-summary.md)

# Interface Tool

All Known Subinterfaces:
:   `DocumentationTool`, `JavaCompiler`

---

public interface Tool

Common interface for tools that can be invoked from a program.
A tool is traditionally a command line program such as a compiler.
The set of tools available with a platform is defined by the
vendor.

Tools can be located using [`ServiceLoader.load(Class)`](../../../java.base/java/util/ServiceLoader.md#load(java.lang.Class)).

Since:
:   1.6

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `Set<SourceVersion>`

  `getSourceVersions()`

  Returns the source versions of the Java programming language
  supported by this tool.

  `default String`

  `name()`

  Returns the name of this tool, or an empty string if no name is provided.

  `int`

  `run(InputStream in,
  OutputStream out,
  OutputStream err,
  String... arguments)`

  Run the tool with the given I/O channels and arguments.

* ## Method Details

  + ### name

    default [String](../../../java.base/java/lang/String.md "class in java.lang") name()

    Returns the name of this tool, or an empty string if no name is provided.

    Returns:
    :   the name of this tool

    Since:
    :   9
  + ### run

    int run([InputStream](../../../java.base/java/io/InputStream.md "class in java.io") in,
    [OutputStream](../../../java.base/java/io/OutputStream.md "class in java.io") out,
    [OutputStream](../../../java.base/java/io/OutputStream.md "class in java.io") err,
    [String](../../../java.base/java/lang/String.md "class in java.lang")... arguments)

    Run the tool with the given I/O channels and arguments. By
    convention a tool returns 0 for success and nonzero for errors.
    Any diagnostics generated will be written to either `out`
    or `err` in some unspecified format.

    Parameters:
    :   `in` - "standard" input; use System.in if null
    :   `out` - "standard" output; use System.out if null
    :   `err` - "standard" error; use System.err if null
    :   `arguments` - arguments to pass to the tool

    Returns:
    :   0 for success; nonzero otherwise

    Throws:
    :   `NullPointerException` - if the array of arguments contains
        any `null` elements.
  + ### getSourceVersions

    [Set](../../../java.base/java/util/Set.md "interface in java.util")<[SourceVersion](../lang/model/SourceVersion.md "enum class in javax.lang.model")> getSourceVersions()

    Returns the source versions of the Java programming language
    supported by this tool.

    Returns:
    :   a set of supported source versions