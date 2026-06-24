Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Interface Callable<V>

Type Parameters:
:   `V` - the result type of method `call`

All Known Subinterfaces:
:   `DocumentationTool.DocumentationTask`, `JavaCompiler.CompilationTask`

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface Callable<V>

A task that returns a result and may throw an exception.
Implementors define a single method with no arguments called
`call`.

The `Callable` interface is similar to [`Runnable`](../../lang/Runnable.md "interface in java.lang"), in that both are designed for classes whose
instances are potentially executed by another thread. A
`Runnable`, however, does not return a result and cannot
throw a checked exception.

The [`Executors`](Executors.md "class in java.util.concurrent") class contains utility methods to
convert from other common forms to `Callable` classes.

Since:
:   1.5

See Also:
:   * [`Executor`](Executor.md "interface in java.util.concurrent")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `V`

  `call()`

  Computes a result, or throws an exception if unable to do so.

* ## Method Details

  + ### call

    [V](Callable.md "type parameter in Callable") call()
    throws [Exception](../../lang/Exception.md "class in java.lang")

    Computes a result, or throws an exception if unable to do so.

    Returns:
    :   computed result

    Throws:
    :   `Exception` - if unable to compute a result