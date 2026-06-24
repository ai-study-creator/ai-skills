Module [java.base](../../../module-summary.md)

Package [java.util.function](package-summary.md)

# Interface Supplier<T>

Type Parameters:
:   `T` - the type of results supplied by this supplier

All Known Subinterfaces:
:   `ServiceLoader.Provider<S>`, `StructuredTaskScope.SubtaskPREVIEW<T>`

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface Supplier<T>

Represents a supplier of results.

There is no requirement that a new or distinct result be returned each
time the supplier is invoked.

This is a [functional interface](package-summary.md)
whose functional method is [`get()`](#get()).

Since:
:   1.8

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `T`

  `get()`

  Gets a result.

* ## Method Details

  + ### get

    [T](Supplier.md "type parameter in Supplier") get()

    Gets a result.

    Returns:
    :   a result