Module [java.base](../../../module-summary.md)

Package [java.lang.constant](package-summary.md)

# Class DynamicCallSiteDesc

[java.lang.Object](../Object.md "class in java.lang")

java.lang.constant.DynamicCallSiteDesc

---

public class DynamicCallSiteDesc
extends [Object](../Object.md "class in java.lang")

A [nominal descriptor](package-summary.md#nominal) for an
`invokedynamic` call site.

Concrete subtypes of [DynamicCallSiteDesc](DynamicCallSiteDesc.md "class in java.lang.constant") should be immutable
and their behavior should not rely on object identity.

Since:
:   12

* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `ConstantDesc[]`

  `bootstrapArgs()`

  Returns [`ConstantDesc`](ConstantDesc.md "interface in java.lang.constant")s describing the bootstrap arguments for the
  `invokedynamic`.

  `MethodHandleDesc`

  `bootstrapMethod()`

  Returns a [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant") describing the bootstrap method for
  the `invokedynamic`.

  `final boolean`

  `equals(Object o)`

  Compares the specified object with this descriptor for equality.

  `final int`

  `hashCode()`

  Returns a hash code value for the object.

  `String`

  `invocationName()`

  Returns the invocation name that would appear in the `NameAndType`
  operand of the `invokedynamic`.

  `MethodTypeDesc`

  `invocationType()`

  Returns a [`MethodTypeDesc`](MethodTypeDesc.md "interface in java.lang.constant") describing the invocation type that
  would appear in the `NameAndType` operand of the `invokedynamic`.

  `static DynamicCallSiteDesc`

  `of(DirectMethodHandleDesc bootstrapMethod,
  MethodTypeDesc invocationType)`

  Creates a nominal descriptor for an `invokedynamic` call site whose
  bootstrap method has no static arguments and for which the name parameter
  is [`ConstantDescs.DEFAULT_NAME`](ConstantDescs.md#DEFAULT_NAME).

  `static DynamicCallSiteDesc`

  `of(DirectMethodHandleDesc bootstrapMethod,
  String invocationName,
  MethodTypeDesc invocationType)`

  Creates a nominal descriptor for an `invokedynamic` call site whose
  bootstrap method has no static arguments.

  `static DynamicCallSiteDesc`

  `of(DirectMethodHandleDesc bootstrapMethod,
  String invocationName,
  MethodTypeDesc invocationType,
  ConstantDesc... bootstrapArgs)`

  Creates a nominal descriptor for an `invokedynamic` call site.

  `CallSite`

  `resolveCallSiteDesc(MethodHandles.Lookup lookup)`

  Reflectively invokes the bootstrap method with the specified arguments,
  and return the resulting [`CallSite`](../invoke/CallSite.md "class in java.lang.invoke")

  `String`

  `toString()`

  Returns a compact textual description of this call site description,
  including the bootstrap method, the invocation name and type, and
  the static bootstrap arguments.

  `DynamicCallSiteDesc`

  `withArgs(ConstantDesc... bootstrapArgs)`

  Returns a nominal descriptor for an `invokedynamic` call site whose
  bootstrap method, name, and invocation type are the same as this one, but
  with the specified bootstrap arguments.

  `DynamicCallSiteDesc`

  `withNameAndType(String invocationName,
  MethodTypeDesc invocationType)`

  Returns a nominal descriptor for an `invokedynamic` call site whose
  bootstrap and bootstrap arguments are the same as this one, but with the
  specified invocationName and invocation invocationType

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Method Details

  + ### of

    public static [DynamicCallSiteDesc](DynamicCallSiteDesc.md "class in java.lang.constant") of([DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant") bootstrapMethod,
    [String](../String.md "class in java.lang") invocationName,
    [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") invocationType,
    [ConstantDesc](ConstantDesc.md "interface in java.lang.constant")... bootstrapArgs)

    Creates a nominal descriptor for an `invokedynamic` call site.

    Parameters:
    :   `bootstrapMethod` - a [`DirectMethodHandleDesc`](DirectMethodHandleDesc.md "interface in java.lang.constant") describing the
        bootstrap method for the `invokedynamic`
    :   `invocationName` - The unqualified name that would appear in the `NameAndType`
        operand of the `invokedynamic`
    :   `invocationType` - a [`MethodTypeDesc`](MethodTypeDesc.md "interface in java.lang.constant") describing the invocation
        type that would appear in the `NameAndType`
        operand of the `invokedynamic`
    :   `bootstrapArgs` - [`ConstantDesc`](ConstantDesc.md "interface in java.lang.constant")s describing the static arguments
        to the bootstrap, that would appear in the
        `BootstrapMethods` attribute

    Returns:
    :   the nominal descriptor

    Throws:
    :   `NullPointerException` - if any parameter or its contents are `null`
    :   `IllegalArgumentException` - if the invocation name has the incorrect
        format
  + ### of

    public static [DynamicCallSiteDesc](DynamicCallSiteDesc.md "class in java.lang.constant") of([DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant") bootstrapMethod,
    [String](../String.md "class in java.lang") invocationName,
    [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") invocationType)

    Creates a nominal descriptor for an `invokedynamic` call site whose
    bootstrap method has no static arguments.

    Parameters:
    :   `bootstrapMethod` - The bootstrap method for the `invokedynamic`
    :   `invocationName` - The invocationName that would appear in the
        `NameAndType` operand of the `invokedynamic`
    :   `invocationType` - The invocation invocationType that would appear
        in the `NameAndType` operand of the `invokedynamic`

    Returns:
    :   the nominal descriptor

    Throws:
    :   `NullPointerException` - if any parameter is null
    :   `IllegalArgumentException` - if the invocation name has the incorrect
        format
  + ### of

    public static [DynamicCallSiteDesc](DynamicCallSiteDesc.md "class in java.lang.constant") of([DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant") bootstrapMethod,
    [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") invocationType)

    Creates a nominal descriptor for an `invokedynamic` call site whose
    bootstrap method has no static arguments and for which the name parameter
    is [`ConstantDescs.DEFAULT_NAME`](ConstantDescs.md#DEFAULT_NAME).

    Parameters:
    :   `bootstrapMethod` - a [`DirectMethodHandleDesc`](DirectMethodHandleDesc.md "interface in java.lang.constant") describing the
        bootstrap method for the `invokedynamic`
    :   `invocationType` - a [`MethodTypeDesc`](MethodTypeDesc.md "interface in java.lang.constant") describing the invocation
        type that would appear in the `NameAndType`
        operand of the `invokedynamic`

    Returns:
    :   the nominal descriptor

    Throws:
    :   `NullPointerException` - if any parameter is null
  + ### withArgs

    public [DynamicCallSiteDesc](DynamicCallSiteDesc.md "class in java.lang.constant") withArgs([ConstantDesc](ConstantDesc.md "interface in java.lang.constant")... bootstrapArgs)

    Returns a nominal descriptor for an `invokedynamic` call site whose
    bootstrap method, name, and invocation type are the same as this one, but
    with the specified bootstrap arguments.

    Parameters:
    :   `bootstrapArgs` - [`ConstantDesc`](ConstantDesc.md "interface in java.lang.constant")s describing the static arguments
        to the bootstrap, that would appear in the
        `BootstrapMethods` attribute

    Returns:
    :   the nominal descriptor

    Throws:
    :   `NullPointerException` - if the argument or its contents are `null`
  + ### withNameAndType

    public [DynamicCallSiteDesc](DynamicCallSiteDesc.md "class in java.lang.constant") withNameAndType([String](../String.md "class in java.lang") invocationName,
    [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") invocationType)

    Returns a nominal descriptor for an `invokedynamic` call site whose
    bootstrap and bootstrap arguments are the same as this one, but with the
    specified invocationName and invocation invocationType

    Parameters:
    :   `invocationName` - The unqualified name that would appear in the `NameAndType`
        operand of the `invokedynamic`
    :   `invocationType` - a [`MethodTypeDesc`](MethodTypeDesc.md "interface in java.lang.constant") describing the invocation
        type that would appear in the `NameAndType`
        operand of the `invokedynamic`

    Returns:
    :   the nominal descriptor

    Throws:
    :   `NullPointerException` - if any parameter is null
    :   `IllegalArgumentException` - if the invocation name has the incorrect
        format
  + ### invocationName

    public [String](../String.md "class in java.lang") invocationName()

    Returns the invocation name that would appear in the `NameAndType`
    operand of the `invokedynamic`.

    Returns:
    :   the invocation name
  + ### invocationType

    public [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") invocationType()

    Returns a [`MethodTypeDesc`](MethodTypeDesc.md "interface in java.lang.constant") describing the invocation type that
    would appear in the `NameAndType` operand of the `invokedynamic`.

    Returns:
    :   the invocation type
  + ### bootstrapMethod

    public [MethodHandleDesc](MethodHandleDesc.md "interface in java.lang.constant") bootstrapMethod()

    Returns a [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant") describing the bootstrap method for
    the `invokedynamic`.

    Returns:
    :   the bootstrap method for the `invokedynamic`
  + ### bootstrapArgs

    public [ConstantDesc](ConstantDesc.md "interface in java.lang.constant")[] bootstrapArgs()

    Returns [`ConstantDesc`](ConstantDesc.md "interface in java.lang.constant")s describing the bootstrap arguments for the
    `invokedynamic`. The returned array is always non-null. A zero
    length array is returned if this [DynamicCallSiteDesc](DynamicCallSiteDesc.md "class in java.lang.constant") has no
    bootstrap arguments.

    Returns:
    :   the bootstrap arguments for the `invokedynamic`
  + ### resolveCallSiteDesc

    public [CallSite](../invoke/CallSite.md "class in java.lang.invoke") resolveCallSiteDesc([MethodHandles.Lookup](../invoke/MethodHandles.Lookup.md "class in java.lang.invoke") lookup)
    throws [Throwable](../Throwable.md "class in java.lang")

    Reflectively invokes the bootstrap method with the specified arguments,
    and return the resulting [`CallSite`](../invoke/CallSite.md "class in java.lang.invoke")

    Parameters:
    :   `lookup` - The [`MethodHandles.Lookup`](../invoke/MethodHandles.Lookup.md "class in java.lang.invoke") used to resolve class names

    Returns:
    :   the [`CallSite`](../invoke/CallSite.md "class in java.lang.invoke")

    Throws:
    :   `Throwable` - if any exception is thrown by the bootstrap method
  + ### equals

    public final boolean equals([Object](../Object.md "class in java.lang") o)

    Compares the specified object with this descriptor for equality. Returns
    `true` if and only if the specified object is also a
    [DynamicCallSiteDesc](DynamicCallSiteDesc.md "class in java.lang.constant"), and both descriptors have equal
    bootstrap methods, bootstrap argument lists, invocation name, and
    invocation type.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `o` - the `DynamicCallSiteDesc` to compare to this
        `DynamicCallSiteDesc`

    Returns:
    :   `true` if the specified `DynamicCallSiteDesc`
        is equal to this `DynamicCallSiteDesc`.

    See Also:
    :   - [`Object.hashCode()`](../Object.md#hashCode())
        - [`HashMap`](../../util/HashMap.md "class in java.util")
  + ### hashCode

    public final int hashCode()

    Description copied from class: `Object`

    Returns a hash code value for the object. This method is
    supported for the benefit of hash tables such as those provided by
    [`HashMap`](../../util/HashMap.md "class in java.util").

    The general contract of `hashCode` is:
    - Whenever it is invoked on the same object more than once during
      an execution of a Java application, the `hashCode` method
      must consistently return the same integer, provided no information
      used in `equals` comparisons on the object is modified.
      This integer need not remain consistent from one execution of an
      application to another execution of the same application.- If two objects are equal according to the [`equals`](../Object.md#equals(java.lang.Object)) method, then calling the `hashCode` method on each of the two objects must produce the
        same integer result.- It is *not* required that if two objects are unequal
          according to the [`equals`](../Object.md#equals(java.lang.Object)) method, then
          calling the `hashCode` method on each of the two objects
          must produce distinct integer results. However, the programmer
          should be aware that producing distinct integer results for
          unequal objects may improve the performance of hash tables.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../String.md "class in java.lang") toString()

    Returns a compact textual description of this call site description,
    including the bootstrap method, the invocation name and type, and
    the static bootstrap arguments.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   A compact textual description of this call site descriptor