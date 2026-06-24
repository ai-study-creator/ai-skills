Module [java.base](../../../module-summary.md)

Package [java.util.function](package-summary.md)

# Interface ObjIntConsumer<T>

Type Parameters:
:   `T` - the type of the object argument to the operation

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface ObjIntConsumer<T>

Represents an operation that accepts an object-valued and a
`int`-valued argument, and returns no result. This is the
`(reference, int)` specialization of [`BiConsumer`](BiConsumer.md "interface in java.util.function").
Unlike most other functional interfaces, `ObjIntConsumer` is
expected to operate via side-effects.

This is a [functional interface](package-summary.md)
whose functional method is [`accept(Object, int)`](#accept(T,int)).

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
  int value)`

  Performs this operation on the given arguments.

* ## Method Details

  + ### accept

    void accept([T](ObjIntConsumer.md "type parameter in ObjIntConsumer") t,
    int value)

    Performs this operation on the given arguments.

    Parameters:
    :   `t` - the first input argument
    :   `value` - the second input argument