Module [java.base](../../../module-summary.md)

Package [java.lang.invoke](package-summary.md)

# Class SerializedLambda

[java.lang.Object](../Object.md "class in java.lang")

java.lang.invoke.SerializedLambda

All Implemented Interfaces:
:   `Serializable`

---

public final class SerializedLambda
extends [Object](../Object.md "class in java.lang")
implements [Serializable](../../io/Serializable.md "interface in java.io")

Serialized form of a lambda expression. The properties of this class
represent the information that is present at the lambda factory site, including
static metafactory arguments such as the identity of the primary functional
interface method and the identity of the implementation method, as well as
dynamic metafactory arguments such as values captured from the lexical scope
at the time of lambda capture.

Implementors of serializable lambdas, such as compilers or language
runtime libraries, are expected to ensure that instances deserialize properly.
One means to do so is to ensure that the `writeReplace` method returns
an instance of `SerializedLambda`, rather than allowing default
serialization to proceed.

`SerializedLambda` has a `readResolve` method that looks for
a (possibly private) static method called
`$deserializeLambda$(SerializedLambda)` in the capturing class, invokes
that with itself as the first argument, and returns the result. Lambda classes
implementing `$deserializeLambda$` are responsible for validating
that the properties of the `SerializedLambda` are consistent with a
lambda actually captured by that class.

The identity of a function object produced by deserializing the serialized
form is unpredictable, and therefore identity-sensitive operations (such as
reference equality, object locking, and `System.identityHashCode()`) may
produce different results in different implementations, or even upon
different deserializations in the same implementation.

Since:
:   1.8

See Also:
:   * [`LambdaMetafactory`](LambdaMetafactory.md "class in java.lang.invoke")
    * [Serialized Form](../../../../serialized-form.md#java.lang.invoke.SerializedLambda)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SerializedLambda(Class<?> capturingClass,
  String functionalInterfaceClass,
  String functionalInterfaceMethodName,
  String functionalInterfaceMethodSignature,
  int implMethodKind,
  String implClass,
  String implMethodName,
  String implMethodSignature,
  String instantiatedMethodType,
  Object[] capturedArgs)`

  Create a `SerializedLambda` from the low-level information present
  at the lambda factory site.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `getCapturedArg(int i)`

  Get a dynamic argument to the lambda capture site.

  `int`

  `getCapturedArgCount()`

  Get the count of dynamic arguments to the lambda capture site.

  `String`

  `getCapturingClass()`

  Get the name of the class that captured this lambda.

  `String`

  `getFunctionalInterfaceClass()`

  Get the name of the invoked type to which this
  lambda has been converted

  `String`

  `getFunctionalInterfaceMethodName()`

  Get the name of the primary method for the functional interface
  to which this lambda has been converted.

  `String`

  `getFunctionalInterfaceMethodSignature()`

  Get the signature of the primary method for the functional
  interface to which this lambda has been converted.

  `String`

  `getImplClass()`

  Get the name of the class containing the implementation
  method.

  `int`

  `getImplMethodKind()`

  Get the method handle kind (see [`MethodHandleInfo`](MethodHandleInfo.md "interface in java.lang.invoke")) of
  the implementation method.

  `String`

  `getImplMethodName()`

  Get the name of the implementation method.

  `String`

  `getImplMethodSignature()`

  Get the signature of the implementation method.

  `final String`

  `getInstantiatedMethodType()`

  Get the signature of the primary functional interface method
  after type variables are substituted with their instantiation
  from the capture site.

  `String`

  `toString()`

  Returns a string representation of the object.

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SerializedLambda

    public SerializedLambda([Class](../Class.md "class in java.lang")<?> capturingClass,
    [String](../String.md "class in java.lang") functionalInterfaceClass,
    [String](../String.md "class in java.lang") functionalInterfaceMethodName,
    [String](../String.md "class in java.lang") functionalInterfaceMethodSignature,
    int implMethodKind,
    [String](../String.md "class in java.lang") implClass,
    [String](../String.md "class in java.lang") implMethodName,
    [String](../String.md "class in java.lang") implMethodSignature,
    [String](../String.md "class in java.lang") instantiatedMethodType,
    [Object](../Object.md "class in java.lang")[] capturedArgs)

    Create a `SerializedLambda` from the low-level information present
    at the lambda factory site.

    Parameters:
    :   `capturingClass` - The class in which the lambda expression appears
    :   `functionalInterfaceClass` - Name, in slash-delimited form, of static
        type of the returned lambda object
    :   `functionalInterfaceMethodName` - Name of the functional interface
        method for the present at the
        lambda factory site
    :   `functionalInterfaceMethodSignature` - Signature of the functional
        interface method present at
        the lambda factory site
    :   `implMethodKind` - Method handle kind for the implementation method
    :   `implClass` - Name, in slash-delimited form, for the class holding
        the implementation method
    :   `implMethodName` - Name of the implementation method
    :   `implMethodSignature` - Signature of the implementation method
    :   `instantiatedMethodType` - The signature of the primary functional
        interface method after type variables
        are substituted with their instantiation
        from the capture site
    :   `capturedArgs` - The dynamic arguments to the lambda factory site,
        which represent variables captured by
        the lambda
* ## Method Details

  + ### getCapturingClass

    public [String](../String.md "class in java.lang") getCapturingClass()

    Get the name of the class that captured this lambda.

    Returns:
    :   the name of the class that captured this lambda
  + ### getFunctionalInterfaceClass

    public [String](../String.md "class in java.lang") getFunctionalInterfaceClass()

    Get the name of the invoked type to which this
    lambda has been converted

    Returns:
    :   the name of the functional interface class to which
        this lambda has been converted
  + ### getFunctionalInterfaceMethodName

    public [String](../String.md "class in java.lang") getFunctionalInterfaceMethodName()

    Get the name of the primary method for the functional interface
    to which this lambda has been converted.

    Returns:
    :   the name of the primary methods of the functional interface
  + ### getFunctionalInterfaceMethodSignature

    public [String](../String.md "class in java.lang") getFunctionalInterfaceMethodSignature()

    Get the signature of the primary method for the functional
    interface to which this lambda has been converted.

    Returns:
    :   the signature of the primary method of the functional
        interface
  + ### getImplClass

    public [String](../String.md "class in java.lang") getImplClass()

    Get the name of the class containing the implementation
    method.

    Returns:
    :   the name of the class containing the implementation
        method
  + ### getImplMethodName

    public [String](../String.md "class in java.lang") getImplMethodName()

    Get the name of the implementation method.

    Returns:
    :   the name of the implementation method
  + ### getImplMethodSignature

    public [String](../String.md "class in java.lang") getImplMethodSignature()

    Get the signature of the implementation method.

    Returns:
    :   the signature of the implementation method
  + ### getImplMethodKind

    public int getImplMethodKind()

    Get the method handle kind (see [`MethodHandleInfo`](MethodHandleInfo.md "interface in java.lang.invoke")) of
    the implementation method.

    Returns:
    :   the method handle kind of the implementation method
  + ### getInstantiatedMethodType

    public final [String](../String.md "class in java.lang") getInstantiatedMethodType()

    Get the signature of the primary functional interface method
    after type variables are substituted with their instantiation
    from the capture site.

    Returns:
    :   the signature of the primary functional interface method
        after type variable processing
  + ### getCapturedArgCount

    public int getCapturedArgCount()

    Get the count of dynamic arguments to the lambda capture site.

    Returns:
    :   the count of dynamic arguments to the lambda capture site
  + ### getCapturedArg

    public [Object](../Object.md "class in java.lang") getCapturedArg(int i)

    Get a dynamic argument to the lambda capture site.

    Parameters:
    :   `i` - the argument to capture

    Returns:
    :   a dynamic argument to the lambda capture site
  + ### toString

    public [String](../String.md "class in java.lang") toString()

    Description copied from class: `Object`

    Returns a string representation of the object.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.