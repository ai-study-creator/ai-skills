Module [java.base](../../../module-summary.md)

Package [java.util.function](package-summary.md)

# Interface ObjDoubleConsumer<T>

Type Parameters:
:   `T` - the type of the object argument to the operation

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface ObjDoubleConsumer<T>

Represents an operation that accepts an object-valued and a
`double`-valued argument, and returns no result. This is the
`(reference, double)` specialization of [`BiConsumer`](BiConsumer.md "interface in java.util.function").
Unlike most other functional interfaces, `ObjDoubleConsumer` is
expected to operate via side-effects.

This is a [functional interface](package-summary.md)
whose functional method is [`accept(Object, double)`](#accept(T,double)).

Since:
:   1.8

See Also:
:   * [`BiConsumer`](BiConsumer.md "interface in java.util.function")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `accept(T t,
  double value)`

  Performs this operation on the given arguments.

* ## Method Details

  + ### accept

    void accept([T](ObjDoubleConsumer.md "type parameter in ObjDoubleConsumer") t,
    double value)

    Performs this operation on the given arguments.

    Parameters:
    :   `t` - the first input argument
    :   `value` - the second input argument