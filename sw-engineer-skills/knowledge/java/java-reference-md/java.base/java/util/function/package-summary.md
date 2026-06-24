Module [java.base](../../../module-summary.md)

# Package java.util.function

---

package java.util.function

*Functional interfaces* provide target types for lambda expressions
and method references. Each functional interface has a single abstract
method, called the *functional method* for that functional interface,
to which the lambda expression's parameter and return types are matched or
adapted. Functional interfaces can provide a target type in multiple
contexts, such as assignment context, method invocation, or cast context:

```
     // Assignment context
     Predicate<String> p = String::isEmpty;

     // Method invocation context
     stream.filter(e -> e.getSize() > 10)...

     // Cast context
     stream.map((ToIntFunction) e -> e.getSize())...
```

The interfaces in this package are general purpose functional interfaces
used by the JDK, and are available to be used by user code as well. While
they do not identify a complete set of function shapes to which lambda
expressions might be adapted, they provide enough to cover common
requirements. Other functional interfaces provided for specific purposes,
such as [`FileFilter`](../../io/FileFilter.md "interface in java.io"), are defined in the packages where they
are used.

The interfaces in this package are annotated with
[`FunctionalInterface`](../../lang/FunctionalInterface.md "annotation interface in java.lang"). This annotation is not a requirement
for the compiler to recognize an interface as a functional interface, but
merely an aid to capture design intent and enlist the help of the compiler in
identifying accidental violations of design intent.

Functional interfaces often represent abstract concepts like functions,
actions, or predicates. In documenting functional interfaces, or referring
to variables typed as functional interfaces, it is common to refer directly
to those abstract concepts, for example using "this function" instead of
"the function represented by this object". When an API method is said to
accept or return a functional interface in this manner, such as "applies the
provided function to...", this is understood to mean a *non-null*
reference to an object implementing the appropriate functional interface,
unless potential nullity is explicitly specified.

The functional interfaces in this package follow an extensible naming
convention, as follows:

* There are several basic function shapes, including
  [`Function`](Function.md "interface in java.util.function") (unary function from `T` to `R`),
  [`Consumer`](Consumer.md "interface in java.util.function") (unary function from `T` to `void`),
  [`Predicate`](Predicate.md "interface in java.util.function") (unary function from `T` to `boolean`),
  and [`Supplier`](Supplier.md "interface in java.util.function") (nullary function to `R`).
* Function shapes have a natural arity based on how they are most
  commonly used. The basic shapes can be modified by an arity prefix to
  indicate a different arity, such as
  [`BiFunction`](BiFunction.md "interface in java.util.function") (binary function from `T` and
  `U` to `R`).
* There are additional derived function shapes which extend the basic
  function shapes, including [`UnaryOperator`](UnaryOperator.md "interface in java.util.function")
  (extends `Function`) and [`BinaryOperator`](BinaryOperator.md "interface in java.util.function")
  (extends `BiFunction`).
* Type parameters of functional interfaces can be specialized to
  primitives with additional type prefixes. To specialize the return type
  for a type that has both generic return type and generic arguments, we
  prefix `ToXxx`, as in [`ToIntFunction`](ToIntFunction.md "interface in java.util.function").
  Otherwise, type arguments are specialized left-to-right, as in
  [`DoubleConsumer`](DoubleConsumer.md "interface in java.util.function")
  or [`ObjIntConsumer`](ObjIntConsumer.md "interface in java.util.function").
  (The type prefix `Obj` is used to indicate that we don't want to
  specialize this parameter, but want to move on to the next parameter,
  as in [`ObjIntConsumer`](ObjIntConsumer.md "interface in java.util.function").)
  These schemes can be combined, as in `IntToDoubleFunction`.
* If there are specialization prefixes for all arguments, the arity
  prefix may be left out (as in [`ObjIntConsumer`](ObjIntConsumer.md "interface in java.util.function")).

Since:
:   1.8

See Also:
:   * [`FunctionalInterface`](../../lang/FunctionalInterface.md "annotation interface in java.lang")

* Related Packages

  Package

  Description

  [java.util](../package-summary.md)

  Contains the collections framework, some internationalization support classes,
  a service loader, properties, random number generation, string parsing
  and scanning classes, base64 encoding and decoding, a bit array, and
  several miscellaneous utility classes.
* Interfaces

  Class

  Description

  [BiConsumer](BiConsumer.md "interface in java.util.function")<T,U>

  Represents an operation that accepts two input arguments and returns no
  result.

  [BiFunction](BiFunction.md "interface in java.util.function")<T,U,R>

  Represents a function that accepts two arguments and produces a result.

  [BinaryOperator](BinaryOperator.md "interface in java.util.function")<T>

  Represents an operation upon two operands of the same type, producing a result
  of the same type as the operands.

  [BiPredicate](BiPredicate.md "interface in java.util.function")<T,U>

  Represents a predicate (boolean-valued function) of two arguments.

  [BooleanSupplier](BooleanSupplier.md "interface in java.util.function")

  Represents a supplier of `boolean`-valued results.

  [Consumer](Consumer.md "interface in java.util.function")<T>

  Represents an operation that accepts a single input argument and returns no
  result.

  [DoubleBinaryOperator](DoubleBinaryOperator.md "interface in java.util.function")

  Represents an operation upon two `double`-valued operands and producing a
  `double`-valued result.

  [DoubleConsumer](DoubleConsumer.md "interface in java.util.function")

  Represents an operation that accepts a single `double`-valued argument and
  returns no result.

  [DoubleFunction](DoubleFunction.md "interface in java.util.function")<R>

  Represents a function that accepts a double-valued argument and produces a
  result.

  [DoublePredicate](DoublePredicate.md "interface in java.util.function")

  Represents a predicate (boolean-valued function) of one `double`-valued
  argument.

  [DoubleSupplier](DoubleSupplier.md "interface in java.util.function")

  Represents a supplier of `double`-valued results.

  [DoubleToIntFunction](DoubleToIntFunction.md "interface in java.util.function")

  Represents a function that accepts a double-valued argument and produces an
  int-valued result.

  [DoubleToLongFunction](DoubleToLongFunction.md "interface in java.util.function")

  Represents a function that accepts a double-valued argument and produces a
  long-valued result.

  [DoubleUnaryOperator](DoubleUnaryOperator.md "interface in java.util.function")

  Represents an operation on a single `double`-valued operand that produces
  a `double`-valued result.

  [Function](Function.md "interface in java.util.function")<T,R>

  Represents a function that accepts one argument and produces a result.

  [IntBinaryOperator](IntBinaryOperator.md "interface in java.util.function")

  Represents an operation upon two `int`-valued operands and producing an
  `int`-valued result.

  [IntConsumer](IntConsumer.md "interface in java.util.function")

  Represents an operation that accepts a single `int`-valued argument and
  returns no result.

  [IntFunction](IntFunction.md "interface in java.util.function")<R>

  Represents a function that accepts an int-valued argument and produces a
  result.

  [IntPredicate](IntPredicate.md "interface in java.util.function")

  Represents a predicate (boolean-valued function) of one `int`-valued
  argument.

  [IntSupplier](IntSupplier.md "interface in java.util.function")

  Represents a supplier of `int`-valued results.

  [IntToDoubleFunction](IntToDoubleFunction.md "interface in java.util.function")

  Represents a function that accepts an int-valued argument and produces a
  double-valued result.

  [IntToLongFunction](IntToLongFunction.md "interface in java.util.function")

  Represents a function that accepts an int-valued argument and produces a
  long-valued result.

  [IntUnaryOperator](IntUnaryOperator.md "interface in java.util.function")

  Represents an operation on a single `int`-valued operand that produces
  an `int`-valued result.

  [LongBinaryOperator](LongBinaryOperator.md "interface in java.util.function")

  Represents an operation upon two `long`-valued operands and producing a
  `long`-valued result.

  [LongConsumer](LongConsumer.md "interface in java.util.function")

  Represents an operation that accepts a single `long`-valued argument and
  returns no result.

  [LongFunction](LongFunction.md "interface in java.util.function")<R>

  Represents a function that accepts a long-valued argument and produces a
  result.

  [LongPredicate](LongPredicate.md "interface in java.util.function")

  Represents a predicate (boolean-valued function) of one `long`-valued
  argument.

  [LongSupplier](LongSupplier.md "interface in java.util.function")

  Represents a supplier of `long`-valued results.

  [LongToDoubleFunction](LongToDoubleFunction.md "interface in java.util.function")

  Represents a function that accepts a long-valued argument and produces a
  double-valued result.

  [LongToIntFunction](LongToIntFunction.md "interface in java.util.function")

  Represents a function that accepts a long-valued argument and produces an
  int-valued result.

  [LongUnaryOperator](LongUnaryOperator.md "interface in java.util.function")

  Represents an operation on a single `long`-valued operand that produces
  a `long`-valued result.

  [ObjDoubleConsumer](ObjDoubleConsumer.md "interface in java.util.function")<T>

  Represents an operation that accepts an object-valued and a
  `double`-valued argument, and returns no result.

  [ObjIntConsumer](ObjIntConsumer.md "interface in java.util.function")<T>

  Represents an operation that accepts an object-valued and a
  `int`-valued argument, and returns no result.

  [ObjLongConsumer](ObjLongConsumer.md "interface in java.util.function")<T>

  Represents an operation that accepts an object-valued and a
  `long`-valued argument, and returns no result.

  [Predicate](Predicate.md "interface in java.util.function")<T>

  Represents a predicate (boolean-valued function) of one argument.

  [Supplier](Supplier.md "interface in java.util.function")<T>

  Represents a supplier of results.

  [ToDoubleBiFunction](ToDoubleBiFunction.md "interface in java.util.function")<T,U>

  Represents a function that accepts two arguments and produces a double-valued
  result.

  [ToDoubleFunction](ToDoubleFunction.md "interface in java.util.function")<T>

  Represents a function that produces a double-valued result.

  [ToIntBiFunction](ToIntBiFunction.md "interface in java.util.function")<T,U>

  Represents a function that accepts two arguments and produces an int-valued
  result.

  [ToIntFunction](ToIntFunction.md "interface in java.util.function")<T>

  Represents a function that produces an int-valued result.

  [ToLongBiFunction](ToLongBiFunction.md "interface in java.util.function")<T,U>

  Represents a function that accepts two arguments and produces a long-valued
  result.

  [ToLongFunction](ToLongFunction.md "interface in java.util.function")<T>

  Represents a function that produces a long-valued result.

  [UnaryOperator](UnaryOperator.md "interface in java.util.function")<T>

  Represents an operation on a single operand that produces a result of the
  same type as its operand.