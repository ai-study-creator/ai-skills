Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class Number

[java.lang.Object](Object.md "class in java.lang")

java.lang.Number

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `AtomicInteger`, `AtomicLong`, `BigDecimal`, `BigInteger`, `Byte`, `Double`, `DoubleAccumulator`, `DoubleAdder`, `Float`, `Integer`, `Long`, `LongAccumulator`, `LongAdder`, `Short`

---

public abstract class Number
extends [Object](Object.md "class in java.lang")
implements [Serializable](../io/Serializable.md "interface in java.io")

The abstract class `Number` is the superclass of platform
classes representing numeric values that are convertible to the
primitive types `byte`, `double`, `float`, `int`, `long`, and `short`.
The specific semantics of the conversion from the numeric value of
a particular `Number` implementation to a given primitive
type is defined by the `Number` implementation in question.
For platform classes, the conversion is often analogous to a
narrowing primitive conversion or a widening primitive conversion
as defined in The Java Language Specification
for converting between primitive types. Therefore, conversions may
lose information about the overall magnitude of a numeric value, may
lose precision, and may even return a result of a different sign
than the input.
See the documentation of a given `Number` implementation for
conversion details.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.Number)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Number()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `byte`

  `byteValue()`

  Returns the value of the specified number as a `byte`.

  `abstract double`

  `doubleValue()`

  Returns the value of the specified number as a `double`.

  `abstract float`

  `floatValue()`

  Returns the value of the specified number as a `float`.

  `abstract int`

  `intValue()`

  Returns the value of the specified number as an `int`.

  `abstract long`

  `longValue()`

  Returns the value of the specified number as a `long`.

  `short`

  `shortValue()`

  Returns the value of the specified number as a `short`.

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### Number

    public Number()

    Constructor for subclasses to call.
* ## Method Details

  + ### intValue

    public abstract int intValue()

    Returns the value of the specified number as an `int`.

    Returns:
    :   the numeric value represented by this object after conversion
        to type `int`.
  + ### longValue

    public abstract long longValue()

    Returns the value of the specified number as a `long`.

    Returns:
    :   the numeric value represented by this object after conversion
        to type `long`.
  + ### floatValue

    public abstract float floatValue()

    Returns the value of the specified number as a `float`.

    Returns:
    :   the numeric value represented by this object after conversion
        to type `float`.
  + ### doubleValue

    public abstract double doubleValue()

    Returns the value of the specified number as a `double`.

    Returns:
    :   the numeric value represented by this object after conversion
        to type `double`.
  + ### byteValue

    public byte byteValue()

    Returns the value of the specified number as a `byte`.

    Returns:
    :   the numeric value represented by this object after conversion
        to type `byte`.

    Since:
    :   1.1
  + ### shortValue

    public short shortValue()

    Returns the value of the specified number as a `short`.

    Returns:
    :   the numeric value represented by this object after conversion
        to type `short`.

    Since:
    :   1.1