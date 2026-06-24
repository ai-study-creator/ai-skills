Module [java.compiler](../../module-summary.md)

Package [javax.tools](package-summary.md)

# Interface DocumentationTool

All Superinterfaces:
:   `OptionChecker`, `Tool`

---

public interface DocumentationTool
extends [Tool](Tool.md "interface in javax.tools"), [OptionChecker](OptionChecker.md "interface in javax.tools")

Interface to invoke Java programming language documentation tools from
programs.

Since:
:   1.8

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static interface`

  `DocumentationTool.DocumentationTask`

  Interface representing a future for a documentation task.

  `static enum`

  `DocumentationTool.Location`

  Locations specific to [`DocumentationTool`](DocumentationTool.md "interface in javax.tools").
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `StandardJavaFileManager`

  `getStandardFileManager(DiagnosticListener<? super JavaFileObject> diagnosticListener,
  Locale locale,
  Charset charset)`

  Returns a new instance of the standard file manager implementation
  for this tool.

  `DocumentationTool.DocumentationTask`

  `getTask(Writer out,
  JavaFileManager fileManager,
  DiagnosticListener<? super JavaFileObject> diagnosticListener,
  Class<?> docletClass,
  Iterable<String> options,
  Iterable<? extends JavaFileObject> compilationUnits)`

  Creates a future for a documentation task with the given
  components and arguments.

  ### Methods inherited from interface javax.tools.[OptionChecker](OptionChecker.md "interface in javax.tools")

  `isSupportedOption`

  ### Methods inherited from interface javax.tools.[Tool](Tool.md "interface in javax.tools")

  `getSourceVersions, name, run`

* ## Method Details

  + ### getTask

    [DocumentationTool.DocumentationTask](DocumentationTool.DocumentationTask.md "interface in javax.tools") getTask([Writer](../../../java.base/java/io/Writer.md "class in java.io") out,
    [JavaFileManager](JavaFileManager.md "interface in javax.tools") fileManager,
    [DiagnosticListener](DiagnosticListener.md "interface in javax.tools")<? super [JavaFileObject](JavaFileObject.md "interface in javax.tools")> diagnosticListener,
    [Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> docletClass,
    [Iterable](../../../java.base/java/lang/Iterable.md "interface in java.lang")<[String](../../../java.base/java/lang/String.md "class in java.lang")> options,
    [Iterable](../../../java.base/java/lang/Iterable.md "interface in java.lang")<? extends [JavaFileObject](JavaFileObject.md "interface in javax.tools")> compilationUnits)

    Creates a future for a documentation task with the given
    components and arguments. The task might not have
    completed as described in the DocumentationTask interface.

    If a file manager is provided, it must be able to handle all
    locations defined in [`DocumentationTool.Location`](DocumentationTool.Location.md "enum class in javax.tools"),
    as well as
    [`StandardLocation.SOURCE_PATH`](StandardLocation.md#SOURCE_PATH),
    [`StandardLocation.CLASS_PATH`](StandardLocation.md#CLASS_PATH), and
    [`StandardLocation.PLATFORM_CLASS_PATH`](StandardLocation.md#PLATFORM_CLASS_PATH).

    Parameters:
    :   `out` - a Writer for additional output from the tool;
        use `System.err` if `null`
    :   `fileManager` - a file manager; if `null` use the
        tool's standard file manager
    :   `diagnosticListener` - a diagnostic listener; if `null`
        use the tool's default method for reporting diagnostics
    :   `docletClass` - a class providing the necessary methods required
        of a doclet; a value of `null` means to use the standard doclet.
    :   `options` - documentation tool options and doclet options,
        `null` means no options
    :   `compilationUnits` - the compilation units to compile, `null` means no compilation units

    Returns:
    :   an object representing the compilation

    Throws:
    :   `RuntimeException` - if an unrecoverable error
        occurred in a user supplied component. The
        [cause](../../../java.base/java/lang/Throwable.md#getCause()) will be the error in
        user code.
    :   `IllegalArgumentException` - if any of the given
        compilation units are of other kind than
        [source](JavaFileObject.Kind.md#SOURCE)
  + ### getStandardFileManager

    [StandardJavaFileManager](StandardJavaFileManager.md "interface in javax.tools") getStandardFileManager([DiagnosticListener](DiagnosticListener.md "interface in javax.tools")<? super [JavaFileObject](JavaFileObject.md "interface in javax.tools")> diagnosticListener,
    [Locale](../../../java.base/java/util/Locale.md "class in java.util") locale,
    [Charset](../../../java.base/java/nio/charset/Charset.md "class in java.nio.charset") charset)

    Returns a new instance of the standard file manager implementation
    for this tool. The file manager will use the given diagnostic
    listener for producing any non-fatal diagnostics. Fatal errors
    will be signaled with the appropriate exceptions.

    The standard file manager will be automatically reopened if
    it is accessed after calls to `flush` or `close`.
    The standard file manager must be usable with other tools.

    Parameters:
    :   `diagnosticListener` - a diagnostic listener for non-fatal
        diagnostics; if `null` use the compiler's default method
        for reporting diagnostics
    :   `locale` - the locale to apply when formatting diagnostics;
        `null` means the [default locale](../../../java.base/java/util/Locale.md#getDefault()).
    :   `charset` - the character set used for decoding bytes; if
        `null` use the platform default

    Returns:
    :   the standard file manager