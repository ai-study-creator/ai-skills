Module [java.base](../../../module-summary.md)

Package [java.util.function](package-summary.md)

# Interface BooleanSupplier

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface BooleanSupplier

Represents a supplier of `boolean`-valued results. This is the
`boolean`-producing primitive specialization of [`Supplier`](Supplier.md "interface in java.util.function").

There is no requirement that a new or distinct result be returned each
time the supplier is invoked.

This is a [functional interface](package-summary.md)
whose functional method is [`getAsBoolean()`](#getAsBoolean()).

Since:
:   1.8

See Also:
:   * [`Supplier`](Supplier.md "interface in java.util.function")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `getAsBoolean()`

  Gets a result.

* ## Method Details

  + ### getAsBoolean

    boolean getAsBoolean()

    Gets a result.

    Returns:
    :   a result