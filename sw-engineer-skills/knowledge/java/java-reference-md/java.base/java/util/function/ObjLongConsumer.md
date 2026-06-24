Module [java.base](../../../module-summary.md)

Package [java.util.function](package-summary.md)

# Interface ObjLongConsumer<T>

Type Parameters:
:   `T` - the type of the object argument to the operation

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface ObjLongConsumer<T>

Represents an operation that accepts an object-valued and a
`long`-valued argument, and returns no result. This is the
`(reference, long)` specialization of [`BiConsumer`](BiConsumer.md "interface in java.util.function").
Unlike most other functional interfaces, `ObjLongConsumer` is
expected to operate via side-effects.

This is a [functional interface](package-summary.md)
whose functional method is [`accept(Object, long)`](#accept(T,long)).

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
  long value)`

  Performs this operation on the given arguments.

* ## Method Details

  + ### accept

    void accept([T](ObjLongConsumer.md "type parameter in ObjLongConsumer") t,
    long value)

    Performs this operation on the given arguments.

    Parameters:
    :   `t` - the first input argument
    :   `value` - the second input argument