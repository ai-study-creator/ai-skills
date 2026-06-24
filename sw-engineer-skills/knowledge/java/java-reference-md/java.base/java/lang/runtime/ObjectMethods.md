Module [java.base](../../../module-summary.md)

Package [java.lang.runtime](package-summary.md)

# Class ObjectMethods

[java.lang.Object](../Object.md "class in java.lang")

java.lang.runtime.ObjectMethods

---

public class ObjectMethods
extends [Object](../Object.md "class in java.lang")

Bootstrap methods for state-driven implementations of core methods,
including [`Object.equals(Object)`](../Object.md#equals(java.lang.Object)), [`Object.hashCode()`](../Object.md#hashCode()), and
[`Object.toString()`](../Object.md#toString()). These methods may be used, for example, by
Java compiler implementations to implement the bodies of [`Object`](../Object.md "class in java.lang")
methods for record classes.

Since:
:   16

* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Object`

  `bootstrap(MethodHandles.Lookup lookup,
  String methodName,
  TypeDescriptor type,
  Class<?> recordClass,
  String names,
  MethodHandle... getters)`

  Bootstrap method to generate the [`Object.equals(Object)`](../Object.md#equals(java.lang.Object)),
  [`Object.hashCode()`](../Object.md#hashCode()), and [`Object.toString()`](../Object.md#toString()) methods, based
  on a description of the component names and accessor methods, for either
  `invokedynamic` call sites or dynamic constant pool entries.

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### bootstrap

    public static [Object](../Object.md "class in java.lang") bootstrap([MethodHandles.Lookup](../invoke/MethodHandles.Lookup.md "class in java.lang.invoke") lookup,
    [String](../String.md "class in java.lang") methodName,
    [TypeDescriptor](../invoke/TypeDescriptor.md "interface in java.lang.invoke") type,
    [Class](../Class.md "class in java.lang")<?> recordClass,
    [String](../String.md "class in java.lang") names,
    [MethodHandle](../invoke/MethodHandle.md "class in java.lang.invoke")... getters)
    throws [Throwable](../Throwable.md "class in java.lang")

    Bootstrap method to generate the [`Object.equals(Object)`](../Object.md#equals(java.lang.Object)),
    [`Object.hashCode()`](../Object.md#hashCode()), and [`Object.toString()`](../Object.md#toString()) methods, based
    on a description of the component names and accessor methods, for either
    `invokedynamic` call sites or dynamic constant pool entries.
    For more detail on the semantics of the generated methods see the specification
    of [`Record.equals(Object)`](../Record.md#equals(java.lang.Object)), [`Record.hashCode()`](../Record.md#hashCode()) and
    [`Record.toString()`](../Record.md#toString()).

    Parameters:
    :   `lookup` - Every bootstrap method is expected to have a `lookup`
        which usually represents a lookup context with the
        accessibility privileges of the caller. This is because
        `invokedynamic` call sites always provide a `lookup`
        to the corresponding bootstrap method, but this method just
        ignores the `lookup` parameter
    :   `methodName` - the name of the method to generate, which must be one of
        `"equals"`, `"hashCode"`, or `"toString"`
    :   `type` - a [`MethodType`](../invoke/MethodType.md "class in java.lang.invoke") corresponding the descriptor type
        for the method, which must correspond to the descriptor
        for the corresponding [`Object`](../Object.md "class in java.lang") method, if linking
        an `invokedynamic` call site, or the
        constant `MethodHandle.class`, if linking a
        dynamic constant
    :   `recordClass` - the record class hosting the record components
    :   `names` - the list of component names, joined into a string
        separated by ";", or the empty string if there are no
        components. This parameter is ignored if the `methodName`
        parameter is `"equals"` or `"hashCode"`
    :   `getters` - method handles for the accessor methods for the components

    Returns:
    :   a call site if invoked by indy, or a method handle
        if invoked by a condy

    Throws:
    :   `IllegalArgumentException` - if the bootstrap arguments are invalid
        or inconsistent
    :   `NullPointerException` - if any argument is `null` or if any element
        in the `getters` array is `null`
    :   `Throwable` - if any exception is thrown during call site construction