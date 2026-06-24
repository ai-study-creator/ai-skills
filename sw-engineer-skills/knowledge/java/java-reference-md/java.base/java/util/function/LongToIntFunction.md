Module [java.base](../../../module-summary.md)

Package [java.util.function](package-summary.md)

# Interface LongToIntFunction

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface LongToIntFunction

Represents a function that accepts a long-valued argument and produces an
int-valued result. This is the `long`-to-`int` primitive
specialization for [`Function`](Function.md "interface in java.util.function").

This is a [functional interface](package-summary.md)
whose functional method is [`applyAsInt(long)`](#applyAsInt(long)).

Since:
:   1.8

See Also:
:   * [`Function`](Function.md "interface in java.util.function")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `int`

  `applyAsInt(long value)`

  Applies this function to the given argument.

* ## Method Details

  + ### applyAsInt

    int applyAsInt(long value)

    Applies this function to the given argument.

    Parameters:
    :   `value` - the function argument

    Returns:
    :   the function result