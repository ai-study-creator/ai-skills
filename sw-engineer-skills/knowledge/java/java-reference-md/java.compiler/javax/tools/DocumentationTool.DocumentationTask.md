Module [java.compiler](../../module-summary.md)

Package [javax.tools](package-summary.md)

# Interface DocumentationTool.DocumentationTask

All Superinterfaces:
:   `Callable<Boolean>`

Enclosing interface:
:   `DocumentationTool`

---

public static interface DocumentationTool.DocumentationTask
extends [Callable](../../../java.base/java/util/concurrent/Callable.md "interface in java.util.concurrent")<[Boolean](../../../java.base/java/lang/Boolean.md "class in java.lang")>

Interface representing a future for a documentation task. The
task has not yet started. To start the task, call
the [call](#call()) method.

Before calling the `call` method, additional aspects of the
task can be configured, for example, by calling the
[setLocale](#setLocale(java.util.Locale)) method.

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

  Performs this documentation task.

  `void`

  `setLocale(Locale locale)`

  Sets the locale to be applied when formatting diagnostics and
  other localized data.

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

    Performs this documentation task. The task may only
    be performed once. Subsequent calls to this method throw
    `IllegalStateException`.

    Specified by:
    :   `call` in interface `Callable<Boolean>`

    Returns:
    :   true if and only all the files were processed without errors;
        false otherwise

    Throws:
    :   `RuntimeException` - if an unrecoverable error occurred
        in a user-supplied component. The
        [cause](../../../java.base/java/lang/Throwable.md#getCause()) will be the error
        in user code.
    :   `IllegalStateException` - if called more than once