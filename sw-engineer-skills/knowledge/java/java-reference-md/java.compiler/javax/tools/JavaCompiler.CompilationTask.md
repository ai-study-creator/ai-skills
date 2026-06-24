Module [java.compiler](../../module-summary.md)

Package [javax.tools](package-summary.md)

# Interface JavaCompiler.CompilationTask

All Superinterfaces:
:   `Callable<Boolean>`

Enclosing interface:
:   `JavaCompiler`

---

public static interface JavaCompiler.CompilationTask
extends [Callable](../../../java.base/java/util/concurrent/Callable.md "interface in java.util.concurrent")<[Boolean](../../../java.base/java/lang/Boolean.md "class in java.lang")>

Interface representing a future for a compilation task. The
compilation task has not yet started. To start the task, call
the [call](#call()) method.

Before calling the `call` method, additional aspects of the
task can be configured, for example, by calling the
[setProcessors](#setProcessors(java.lang.Iterable)) method.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `addModules(Iterable<String> moduleNames)`

  Adds root modules to be taken into account during module
  resolution.

  `Boolean`

  `call()`

  Performs this compilation task.

  `void`

  `setLocale(Locale locale)`

  Sets the locale to be applied when formatting diagnostics and
  other localized data.

  `void`

  `setProcessors(Iterable<? extends Processor> processors)`

  Sets processors (for annotation processing).

* ## Method Details

  + ### addModules

    void addModules([Iterable](../../../java.base/java/lang/Iterable.md "interface in java.lang")<[String](../../../java.base/java/lang/String.md "class in java.lang")> moduleNames)

    Adds root modules to be taken into account during module
    resolution.
    Invalid module names may cause either
    `IllegalArgumentException` to be thrown,
    or diagnostics to be reported when the task is started.

    Parameters:
    :   `moduleNames` - the names of the root modules

    Throws:
    :   `IllegalArgumentException` - may be thrown for some
        invalid module names
    :   `IllegalStateException` - if the task has started

    Since:
    :   9
  + ### setProcessors

    void setProcessors([Iterable](../../../java.base/java/lang/Iterable.md "interface in java.lang")<? extends [Processor](../annotation/processing/Processor.md "interface in javax.annotation.processing")> processors)

    Sets processors (for annotation processing). This will
    bypass the normal discovery mechanism.

    Parameters:
    :   `processors` - processors (for annotation processing)

    Throws:
    :   `IllegalStateException` - if the task has started
  + ### setLocale

    void setLocale([Locale](../../../java.base/java/util/Locale.md "class in java.util") locale)

    Sets the locale to be applied when formatting diagnostics and
    other localized data.

    Parameters:
    :   `locale` - the locale to apply; `null` means apply no
        locale

    Throws:
    :   `IllegalStateException` - if the task has started
  + ### call

    [Boolean](../../../java.base/java/lang/Boolean.md "class in java.lang") call()

    Performs this compilation task. The compilation may only
    be performed once. Subsequent calls to this method throw
    `IllegalStateException`.

    Specified by:
    :   `call` in interface `Callable<Boolean>`

    Returns:
    :   true if and only all the files compiled without errors;
        false otherwise

    Throws:
    :   `RuntimeException` - if an unrecoverable error occurred
        in a user-supplied component. The
        [cause](../../../java.base/java/lang/Throwable.md#getCause()) will be the error
        in user code.
    :   `IllegalStateException` - if called more than once