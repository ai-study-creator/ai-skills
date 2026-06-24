Module [java.base](../../../module-summary.md)

Package [java.lang.invoke](package-summary.md)

# Enum Class VarHandle.AccessMode

[java.lang.Object](../Object.md "class in java.lang")

[java.lang.Enum](../Enum.md "class in java.lang")<[VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke")>

java.lang.invoke.VarHandle.AccessMode

All Implemented Interfaces:
:   `Serializable`, `Comparable<VarHandle.AccessMode>`, `Constable`

Enclosing class:
:   `VarHandle`

---

public static enum VarHandle.AccessMode
extends [Enum](../Enum.md "class in java.lang")<[VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke")>

The set of access modes that specify how a variable, referenced by a
VarHandle, is accessed.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `COMPARE_AND_EXCHANGE`

  The access mode whose access is specified by the corresponding
  method
  [`VarHandle.compareAndExchange`](VarHandle.md#compareAndExchange(java.lang.Object...))

  `COMPARE_AND_EXCHANGE_ACQUIRE`

  The access mode whose access is specified by the corresponding
  method
  [`VarHandle.compareAndExchangeAcquire`](VarHandle.md#compareAndExchangeAcquire(java.lang.Object...))

  `COMPARE_AND_EXCHANGE_RELEASE`

  The access mode whose access is specified by the corresponding
  method
  [`VarHandle.compareAndExchangeRelease`](VarHandle.md#compareAndExchangeRelease(java.lang.Object...))

  `COMPARE_AND_SET`

  The access mode whose access is specified by the corresponding
  method
  [`VarHandle.compareAndSet`](VarHandle.md#compareAndSet(java.lang.Object...))

  `GET`

  The access mode whose access is specified by the corresponding
  method
  [`VarHandle.get`](VarHandle.md#get(java.lang.Object...))

  `GET_ACQUIRE`

  The access mode whose access is specified by the corresponding
  method
  [`VarHandle.getAcquire`](VarHandle.md#getAcquire(java.lang.Object...))

  `GET_AND_ADD`

  The access mode whose access is specified by the corresponding
  method
  [`VarHandle.getAndAdd`](VarHandle.md#getAndAdd(java.lang.Object...))

  `GET_AND_ADD_ACQUIRE`

  The access mode whose access is specified by the corresponding
  method
  [`VarHandle.getAndAddAcquire`](VarHandle.md#getAndAddAcquire(java.lang.Object...))

  `GET_AND_ADD_RELEASE`

  The access mode whose access is specified by the corresponding
  method
  [`VarHandle.getAndAddRelease`](VarHandle.md#getAndAddRelease(java.lang.Object...))

  `GET_AND_BITWISE_AND`

  The access mode whose access is specified by the corresponding
  method
  [`VarHandle.getAndBitwiseAnd`](VarHandle.md#getAndBitwiseAnd(java.lang.Object...))

  `GET_AND_BITWISE_AND_ACQUIRE`

  The access mode whose access is specified by the corresponding
  method
  [`VarHandle.getAndBitwiseAndAcquire`](VarHandle.md#getAndBitwiseAndAcquire(java.lang.Object...))

  `GET_AND_BITWISE_AND_RELEASE`

  The access mode whose access is specified by the corresponding
  method
  [`VarHandle.getAndBitwiseAndRelease`](VarHandle.md#getAndBitwiseAndRelease(java.lang.Object...))

  `GET_AND_BITWISE_OR`

  The access mode whose access is specified by the corresponding
  method
  [`VarHandle.getAndBitwiseOr`](VarHandle.md#getAndBitwiseOr(java.lang.Object...))

  `GET_AND_BITWISE_OR_ACQUIRE`

  The access mode whose access is specified by the corresponding
  method
  [`VarHandle.getAndBitwiseOrAcquire`](VarHandle.md#getAndBitwiseOrAcquire(java.lang.Object...))

  `GET_AND_BITWISE_OR_RELEASE`

  The access mode whose access is specified by the corresponding
  method
  [`VarHandle.getAndBitwiseOrRelease`](VarHandle.md#getAndBitwiseOrRelease(java.lang.Object...))

  `GET_AND_BITWISE_XOR`

  The access mode whose access is specified by the corresponding
  method
  [`VarHandle.getAndBitwiseXor`](VarHandle.md#getAndBitwiseXor(java.lang.Object...))

  `GET_AND_BITWISE_XOR_ACQUIRE`

  The access mode whose access is specified by the corresponding
  method
  [`VarHandle.getAndBitwiseXorAcquire`](VarHandle.md#getAndBitwiseXorAcquire(java.lang.Object...))

  `GET_AND_BITWISE_XOR_RELEASE`

  The access mode whose access is specified by the corresponding
  method
  [`VarHandle.getAndBitwiseXorRelease`](VarHandle.md#getAndBitwiseXorRelease(java.lang.Object...))

  `GET_AND_SET`

  The access mode whose access is specified by the corresponding
  method
  [`VarHandle.getAndSet`](VarHandle.md#getAndSet(java.lang.Object...))

  `GET_AND_SET_ACQUIRE`

  The access mode whose access is specified by the corresponding
  method
  [`VarHandle.getAndSetAcquire`](VarHandle.md#getAndSetAcquire(java.lang.Object...))

  `GET_AND_SET_RELEASE`

  The access mode whose access is specified by the corresponding
  method
  [`VarHandle.getAndSetRelease`](VarHandle.md#getAndSetRelease(java.lang.Object...))

  `GET_OPAQUE`

  The access mode whose access is specified by the corresponding
  method
  [`VarHandle.getOpaque`](VarHandle.md#getOpaque(java.lang.Object...))

  `GET_VOLATILE`

  The access mode whose access is specified by the corresponding
  method
  [`VarHandle.getVolatile`](VarHandle.md#getVolatile(java.lang.Object...))

  `SET`

  The access mode whose access is specified by the corresponding
  method
  [`VarHandle.set`](VarHandle.md#set(java.lang.Object...))

  `SET_OPAQUE`

  The access mode whose access is specified by the corresponding
  method
  [`VarHandle.setOpaque`](VarHandle.md#setOpaque(java.lang.Object...))

  `SET_RELEASE`

  The access mode whose access is specified by the corresponding
  method
  [`VarHandle.setRelease`](VarHandle.md#setRelease(java.lang.Object...))

  `SET_VOLATILE`

  The access mode whose access is specified by the corresponding
  method
  [`VarHandle.setVolatile`](VarHandle.md#setVolatile(java.lang.Object...))

  `WEAK_COMPARE_AND_SET`

  The access mode whose access is specified by the corresponding
  method
  [`VarHandle.weakCompareAndSet`](VarHandle.md#weakCompareAndSet(java.lang.Object...))

  `WEAK_COMPARE_AND_SET_ACQUIRE`

  The access mode whose access is specified by the corresponding
  method
  [`VarHandle.weakCompareAndSetAcquire`](VarHandle.md#weakCompareAndSetAcquire(java.lang.Object...))

  `WEAK_COMPARE_AND_SET_PLAIN`

  The access mode whose access is specified by the corresponding
  method
  [`VarHandle.weakCompareAndSetPlain`](VarHandle.md#weakCompareAndSetPlain(java.lang.Object...))

  `WEAK_COMPARE_AND_SET_RELEASE`

  The access mode whose access is specified by the corresponding
  method
  [`VarHandle.weakCompareAndSetRelease`](VarHandle.md#weakCompareAndSetRelease(java.lang.Object...))
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `methodName()`

  Returns the `VarHandle` signature-polymorphic method name
  associated with this `AccessMode` value.

  `static VarHandle.AccessMode`

  `valueFromMethodName(String methodName)`

  Returns the `AccessMode` value associated with the specified
  `VarHandle` signature-polymorphic method name.

  `static VarHandle.AccessMode`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static VarHandle.AccessMode[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### GET

    public static final [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") GET

    The access mode whose access is specified by the corresponding
    method
    [`VarHandle.get`](VarHandle.md#get(java.lang.Object...))
  + ### SET

    public static final [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") SET

    The access mode whose access is specified by the corresponding
    method
    [`VarHandle.set`](VarHandle.md#set(java.lang.Object...))
  + ### GET\_VOLATILE

    public static final [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") GET\_VOLATILE

    The access mode whose access is specified by the corresponding
    method
    [`VarHandle.getVolatile`](VarHandle.md#getVolatile(java.lang.Object...))
  + ### SET\_VOLATILE

    public static final [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") SET\_VOLATILE

    The access mode whose access is specified by the corresponding
    method
    [`VarHandle.setVolatile`](VarHandle.md#setVolatile(java.lang.Object...))
  + ### GET\_ACQUIRE

    public static final [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") GET\_ACQUIRE

    The access mode whose access is specified by the corresponding
    method
    [`VarHandle.getAcquire`](VarHandle.md#getAcquire(java.lang.Object...))
  + ### SET\_RELEASE

    public static final [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") SET\_RELEASE

    The access mode whose access is specified by the corresponding
    method
    [`VarHandle.setRelease`](VarHandle.md#setRelease(java.lang.Object...))
  + ### GET\_OPAQUE

    public static final [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") GET\_OPAQUE

    The access mode whose access is specified by the corresponding
    method
    [`VarHandle.getOpaque`](VarHandle.md#getOpaque(java.lang.Object...))
  + ### SET\_OPAQUE

    public static final [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") SET\_OPAQUE

    The access mode whose access is specified by the corresponding
    method
    [`VarHandle.setOpaque`](VarHandle.md#setOpaque(java.lang.Object...))
  + ### COMPARE\_AND\_SET

    public static final [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") COMPARE\_AND\_SET

    The access mode whose access is specified by the corresponding
    method
    [`VarHandle.compareAndSet`](VarHandle.md#compareAndSet(java.lang.Object...))
  + ### COMPARE\_AND\_EXCHANGE

    public static final [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") COMPARE\_AND\_EXCHANGE

    The access mode whose access is specified by the corresponding
    method
    [`VarHandle.compareAndExchange`](VarHandle.md#compareAndExchange(java.lang.Object...))
  + ### COMPARE\_AND\_EXCHANGE\_ACQUIRE

    public static final [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") COMPARE\_AND\_EXCHANGE\_ACQUIRE

    The access mode whose access is specified by the corresponding
    method
    [`VarHandle.compareAndExchangeAcquire`](VarHandle.md#compareAndExchangeAcquire(java.lang.Object...))
  + ### COMPARE\_AND\_EXCHANGE\_RELEASE

    public static final [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") COMPARE\_AND\_EXCHANGE\_RELEASE

    The access mode whose access is specified by the corresponding
    method
    [`VarHandle.compareAndExchangeRelease`](VarHandle.md#compareAndExchangeRelease(java.lang.Object...))
  + ### WEAK\_COMPARE\_AND\_SET\_PLAIN

    public static final [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") WEAK\_COMPARE\_AND\_SET\_PLAIN

    The access mode whose access is specified by the corresponding
    method
    [`VarHandle.weakCompareAndSetPlain`](VarHandle.md#weakCompareAndSetPlain(java.lang.Object...))
  + ### WEAK\_COMPARE\_AND\_SET

    public static final [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") WEAK\_COMPARE\_AND\_SET

    The access mode whose access is specified by the corresponding
    method
    [`VarHandle.weakCompareAndSet`](VarHandle.md#weakCompareAndSet(java.lang.Object...))
  + ### WEAK\_COMPARE\_AND\_SET\_ACQUIRE

    public static final [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") WEAK\_COMPARE\_AND\_SET\_ACQUIRE

    The access mode whose access is specified by the corresponding
    method
    [`VarHandle.weakCompareAndSetAcquire`](VarHandle.md#weakCompareAndSetAcquire(java.lang.Object...))
  + ### WEAK\_COMPARE\_AND\_SET\_RELEASE

    public static final [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") WEAK\_COMPARE\_AND\_SET\_RELEASE

    The access mode whose access is specified by the corresponding
    method
    [`VarHandle.weakCompareAndSetRelease`](VarHandle.md#weakCompareAndSetRelease(java.lang.Object...))
  + ### GET\_AND\_SET

    public static final [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") GET\_AND\_SET

    The access mode whose access is specified by the corresponding
    method
    [`VarHandle.getAndSet`](VarHandle.md#getAndSet(java.lang.Object...))
  + ### GET\_AND\_SET\_ACQUIRE

    public static final [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") GET\_AND\_SET\_ACQUIRE

    The access mode whose access is specified by the corresponding
    method
    [`VarHandle.getAndSetAcquire`](VarHandle.md#getAndSetAcquire(java.lang.Object...))
  + ### GET\_AND\_SET\_RELEASE

    public static final [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") GET\_AND\_SET\_RELEASE

    The access mode whose access is specified by the corresponding
    method
    [`VarHandle.getAndSetRelease`](VarHandle.md#getAndSetRelease(java.lang.Object...))
  + ### GET\_AND\_ADD

    public static final [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") GET\_AND\_ADD

    The access mode whose access is specified by the corresponding
    method
    [`VarHandle.getAndAdd`](VarHandle.md#getAndAdd(java.lang.Object...))
  + ### GET\_AND\_ADD\_ACQUIRE

    public static final [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") GET\_AND\_ADD\_ACQUIRE

    The access mode whose access is specified by the corresponding
    method
    [`VarHandle.getAndAddAcquire`](VarHandle.md#getAndAddAcquire(java.lang.Object...))
  + ### GET\_AND\_ADD\_RELEASE

    public static final [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") GET\_AND\_ADD\_RELEASE

    The access mode whose access is specified by the corresponding
    method
    [`VarHandle.getAndAddRelease`](VarHandle.md#getAndAddRelease(java.lang.Object...))
  + ### GET\_AND\_BITWISE\_OR

    public static final [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") GET\_AND\_BITWISE\_OR

    The access mode whose access is specified by the corresponding
    method
    [`VarHandle.getAndBitwiseOr`](VarHandle.md#getAndBitwiseOr(java.lang.Object...))
  + ### GET\_AND\_BITWISE\_OR\_RELEASE

    public static final [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") GET\_AND\_BITWISE\_OR\_RELEASE

    The access mode whose access is specified by the corresponding
    method
    [`VarHandle.getAndBitwiseOrRelease`](VarHandle.md#getAndBitwiseOrRelease(java.lang.Object...))
  + ### GET\_AND\_BITWISE\_OR\_ACQUIRE

    public static final [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") GET\_AND\_BITWISE\_OR\_ACQUIRE

    The access mode whose access is specified by the corresponding
    method
    [`VarHandle.getAndBitwiseOrAcquire`](VarHandle.md#getAndBitwiseOrAcquire(java.lang.Object...))
  + ### GET\_AND\_BITWISE\_AND

    public static final [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") GET\_AND\_BITWISE\_AND

    The access mode whose access is specified by the corresponding
    method
    [`VarHandle.getAndBitwiseAnd`](VarHandle.md#getAndBitwiseAnd(java.lang.Object...))
  + ### GET\_AND\_BITWISE\_AND\_RELEASE

    public static final [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") GET\_AND\_BITWISE\_AND\_RELEASE

    The access mode whose access is specified by the corresponding
    method
    [`VarHandle.getAndBitwiseAndRelease`](VarHandle.md#getAndBitwiseAndRelease(java.lang.Object...))
  + ### GET\_AND\_BITWISE\_AND\_ACQUIRE

    public static final [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") GET\_AND\_BITWISE\_AND\_ACQUIRE

    The access mode whose access is specified by the corresponding
    method
    [`VarHandle.getAndBitwiseAndAcquire`](VarHandle.md#getAndBitwiseAndAcquire(java.lang.Object...))
  + ### GET\_AND\_BITWISE\_XOR

    public static final [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") GET\_AND\_BITWISE\_XOR

    The access mode whose access is specified by the corresponding
    method
    [`VarHandle.getAndBitwiseXor`](VarHandle.md#getAndBitwiseXor(java.lang.Object...))
  + ### GET\_AND\_BITWISE\_XOR\_RELEASE

    public static final [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") GET\_AND\_BITWISE\_XOR\_RELEASE

    The access mode whose access is specified by the corresponding
    method
    [`VarHandle.getAndBitwiseXorRelease`](VarHandle.md#getAndBitwiseXorRelease(java.lang.Object...))
  + ### GET\_AND\_BITWISE\_XOR\_ACQUIRE

    public static final [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") GET\_AND\_BITWISE\_XOR\_ACQUIRE

    The access mode whose access is specified by the corresponding
    method
    [`VarHandle.getAndBitwiseXorAcquire`](VarHandle.md#getAndBitwiseXorAcquire(java.lang.Object...))
* ## Method Details

  + ### values

    public static [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") valueOf([String](../String.md "class in java.lang") name)

    Returns the enum constant of this class with the specified name.
    The string must match *exactly* an identifier used to declare an
    enum constant in this class. (Extraneous whitespace characters are
    not permitted.)

    Parameters:
    :   `name` - the name of the enum constant to be returned.

    Returns:
    :   the enum constant with the specified name

    Throws:
    :   `IllegalArgumentException` - if this enum class has no constant with the specified name
    :   `NullPointerException` - if the argument is null
  + ### methodName

    public [String](../String.md "class in java.lang") methodName()

    Returns the `VarHandle` signature-polymorphic method name
    associated with this `AccessMode` value.

    Returns:
    :   the signature-polymorphic method name

    See Also:
    :   - [`valueFromMethodName(java.lang.String)`](#valueFromMethodName(java.lang.String))
  + ### valueFromMethodName

    public static [VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke") valueFromMethodName([String](../String.md "class in java.lang") methodName)

    Returns the `AccessMode` value associated with the specified
    `VarHandle` signature-polymorphic method name.

    Parameters:
    :   `methodName` - the signature-polymorphic method name

    Returns:
    :   the `AccessMode` value

    Throws:
    :   `IllegalArgumentException` - if there is no `AccessMode`
        value associated with method name (indicating the method
        name does not correspond to a `VarHandle`
        signature-polymorphic method name).

    See Also:
    :   - [`methodName()`](#methodName())