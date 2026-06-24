Module [java.base](../../../module-summary.md)

Package [java.util.function](package-summary.md)

# Interface IntSupplier

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface IntSupplier

Represents a supplier of `int`-valued results. This is the
`int`-producing primitive specialization of [`Supplier`](Supplier.md "interface in java.util.function").

There is no requirement that a distinct result be returned each
time the supplier is invoked.

This is a [functional interface](package-summary.md)
whose functional method is [`getAsInt()`](#getAsInt()).

Since:
:   1.8

See Also:
:   * [`Supplier`](Supplier.md "interface in java.util.function")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `int`

  `getAsInt()`

  Gets a result.

* ## Method Details

  + ### getAsInt

    int getAsInt()

    Gets a result.

    Returns:
    :   a result