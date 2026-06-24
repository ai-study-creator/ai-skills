Module [java.base](../../../module-summary.md)

Package [java.util.spi](package-summary.md)

# Interface ToolProvider

---

public interface ToolProvider

An interface for command-line tools to provide a way to
be invoked without necessarily starting a new VM.

Tool providers are normally located using the service-provider
loading facility defined by [`ServiceLoader`](../ServiceLoader.md "class in java.util").
Each provider must provide a name, and a method to run
an instance of the corresponding tool. When a tool is run,
it will be provided with an array of string arguments, and a
pair of streams: one for normal (or expected) output and the other
for reporting any errors that may occur.
The interpretation of the string arguments will normally be defined by
each individual tool provider, but will generally correspond to the
arguments that could be provided to the tool when invoking the tool
from the command line.

Since:
:   9

* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default Optional<String>`

  `description()`

  Returns a short description of the tool, or an empty
  `Optional` if no description is available.

  `static Optional<ToolProvider>`

  `findFirst(String name)`

  Returns the first instance of a `ToolProvider` with the given name,
  as loaded by [`ServiceLoader`](../ServiceLoader.md "class in java.util") using the system class loader.

  `String`

  `name()`

  Returns the name of this tool provider.

  `default int`

  `run(PrintStream out,
  PrintStream err,
  String... args)`

  Runs an instance of the tool, returning zero for a successful run.

  `int`

  `run(PrintWriter out,
  PrintWriter err,
  String... args)`

  Runs an instance of the tool, returning zero for a successful run.

* ## Method Details

  + ### name

    [String](../../lang/String.md "class in java.lang") name()

    Returns the name of this tool provider.

    Returns:
    :   the name of this tool provider
  + ### description

    default [Optional](../Optional.md "class in java.util")<[String](../../lang/String.md "class in java.lang")> description()

    Returns a short description of the tool, or an empty
    `Optional` if no description is available.

    Returns:
    :   a short description of the tool, or an empty
        `Optional` if no description is available

    Since:
    :   19
  + ### run

    int run([PrintWriter](../../io/PrintWriter.md "class in java.io") out,
    [PrintWriter](../../io/PrintWriter.md "class in java.io") err,
    [String](../../lang/String.md "class in java.lang")... args)

    Runs an instance of the tool, returning zero for a successful run.
    Any non-zero return value indicates a tool-specific error during the
    execution.
    Two streams should be provided, for "expected" output, and for any
    error messages. If it is not necessary to distinguish the output,
    the same stream may be used for both.

    Parameters:
    :   `out` - a stream to which "expected" output should be written
    :   `err` - a stream to which any error messages should be written
    :   `args` - the command-line arguments for the tool

    Returns:
    :   the result of executing the tool.
        A return value of 0 means the tool did not encounter any errors;
        any other value indicates that at least one error occurred
        during execution.

    Throws:
    :   `NullPointerException` - if any of the arguments are `null`,
        or if there are any `null` values in the `args`
        array
  + ### run

    default int run([PrintStream](../../io/PrintStream.md "class in java.io") out,
    [PrintStream](../../io/PrintStream.md "class in java.io") err,
    [String](../../lang/String.md "class in java.lang")... args)

    Runs an instance of the tool, returning zero for a successful run.
    Any non-zero return value indicates a tool-specific error during the
    execution.
    Two streams should be provided, for "expected" output, and for any
    error messages. If it is not necessary to distinguish the output,
    the same stream may be used for both.

    Parameters:
    :   `out` - a stream to which "expected" output should be written
    :   `err` - a stream to which any error messages should be written
    :   `args` - the command-line arguments for the tool

    Returns:
    :   the result of executing the tool.
        A return value of 0 means the tool did not encounter any errors;
        any other value indicates that at least one error occurred
        during execution.

    Throws:
    :   `NullPointerException` - if any of the arguments are `null`,
        or if there are any `null` values in the `args`
        array
  + ### findFirst

    static [Optional](../Optional.md "class in java.util")<[ToolProvider](ToolProvider.md "interface in java.util.spi")> findFirst([String](../../lang/String.md "class in java.lang") name)

    Returns the first instance of a `ToolProvider` with the given name,
    as loaded by [`ServiceLoader`](../ServiceLoader.md "class in java.util") using the system class loader.

    Parameters:
    :   `name` - the name of the desired tool provider

    Returns:
    :   an `Optional<ToolProvider>` of the first instance found

    Throws:
    :   `NullPointerException` - if `name` is `null`