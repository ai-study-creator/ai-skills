Module [java.base](../../../module-summary.md)

Package [java.lang.invoke](package-summary.md)

# Class ConstantCallSite

[java.lang.Object](../Object.md "class in java.lang")

[java.lang.invoke.CallSite](CallSite.md "class in java.lang.invoke")

java.lang.invoke.ConstantCallSite

---

public non-sealed class ConstantCallSite
extends [CallSite](CallSite.md "class in java.lang.invoke")

A `ConstantCallSite` is a [`CallSite`](CallSite.md "class in java.lang.invoke") whose target is permanent, and can never be changed.
An `invokedynamic` instruction linked to a `ConstantCallSite` is permanently
bound to the call site's target.

Since:
:   1.7

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `ConstantCallSite(MethodHandle target)`

  Creates a call site with a permanent target.

  `protected`

  `ConstantCallSite(MethodType targetType,
  MethodHandle createTargetHook)`

  Creates a call site with a permanent target, possibly bound to the call site itself.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final MethodHandle`

  `dynamicInvoker()`

  Returns this call site's permanent target.

  `final MethodHandle`

  `getTarget()`

  Returns the target method of the call site, which behaves
  like a `final` field of the `ConstantCallSite`.

  `final void`

  `setTarget(MethodHandle ignore)`

  Always throws an [`UnsupportedOperationException`](../UnsupportedOperationException.md "class in java.lang").

  ### Methods inherited from class java.lang.invoke.[CallSite](CallSite.md "class in java.lang.invoke")

  `type`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ConstantCallSite

    public ConstantCallSite([MethodHandle](MethodHandle.md "class in java.lang.invoke") target)

    Creates a call site with a permanent target.

    Parameters:
    :   `target` - the target to be permanently associated with this call site

    Throws:
    :   `NullPointerException` - if the proposed target is null
  + ### ConstantCallSite

    protected ConstantCallSite([MethodType](MethodType.md "class in java.lang.invoke") targetType,
    [MethodHandle](MethodHandle.md "class in java.lang.invoke") createTargetHook)
    throws [Throwable](../Throwable.md "class in java.lang")

    Creates a call site with a permanent target, possibly bound to the call site itself.

    During construction of the call site, the `createTargetHook` is invoked to
    produce the actual target, as if by a call of the form
    `(MethodHandle) createTargetHook.invoke(this)`.

    Note that user code cannot perform such an action directly in a subclass constructor,
    since the target must be fixed before the `ConstantCallSite` constructor returns.

    The hook is said to bind the call site to a target method handle,
    and a typical action would be `someTarget.bindTo(this)`.
    However, the hook is free to take any action whatever,
    including ignoring the call site and returning a constant target.

    The result returned by the hook must be a method handle of exactly
    the same type as the call site.

    While the hook is being called, the new `ConstantCallSite`
    object is in a partially constructed state.
    In this state,
    a call to `getTarget`, or any other attempt to use the target,
    will result in an `IllegalStateException`.
    It is legal at all times to obtain the call site's type using the `type` method.

    Parameters:
    :   `targetType` - the type of the method handle to be permanently associated with this call site
    :   `createTargetHook` - a method handle to invoke (on the call site) to produce the call site's target

    Throws:
    :   `WrongMethodTypeException` - if the hook cannot be invoked on the required arguments,
        or if the target returned by the hook is not of the given `targetType`
    :   `NullPointerException` - if the hook returns a null value
    :   `ClassCastException` - if the hook returns something other than a `MethodHandle`
    :   `Throwable` - anything else thrown by the hook function
* ## Method Details

  + ### getTarget

    public final [MethodHandle](MethodHandle.md "class in java.lang.invoke") getTarget()

    Returns the target method of the call site, which behaves
    like a `final` field of the `ConstantCallSite`.
    That is, the target is always the original value passed
    to the constructor call which created this instance.

    Specified by:
    :   `getTarget` in class `CallSite`

    Returns:
    :   the immutable linkage state of this call site, a constant method handle

    Throws:
    :   `IllegalStateException` - if the `ConstantCallSite` constructor has not completed

    See Also:
    :   - [`ConstantCallSite`](ConstantCallSite.md "class in java.lang.invoke")
        - [`VolatileCallSite`](VolatileCallSite.md "class in java.lang.invoke")
        - [`CallSite.setTarget(java.lang.invoke.MethodHandle)`](CallSite.md#setTarget(java.lang.invoke.MethodHandle))
        - [`getTarget()`](#getTarget())
        - [`MutableCallSite.getTarget()`](MutableCallSite.md#getTarget())
        - [`VolatileCallSite.getTarget()`](VolatileCallSite.md#getTarget())
  + ### setTarget

    public final void setTarget([MethodHandle](MethodHandle.md "class in java.lang.invoke") ignore)

    Always throws an [`UnsupportedOperationException`](../UnsupportedOperationException.md "class in java.lang").
    This kind of call site cannot change its target.

    Specified by:
    :   `setTarget` in class `CallSite`

    Parameters:
    :   `ignore` - a new target proposed for the call site, which is ignored

    Throws:
    :   `UnsupportedOperationException` - because this kind of call site cannot change its target

    See Also:
    :   - [`CallSite.getTarget()`](CallSite.md#getTarget())
        - [`setTarget(java.lang.invoke.MethodHandle)`](#setTarget(java.lang.invoke.MethodHandle))
        - [`MutableCallSite.setTarget(java.lang.invoke.MethodHandle)`](MutableCallSite.md#setTarget(java.lang.invoke.MethodHandle))
        - [`VolatileCallSite.setTarget(java.lang.invoke.MethodHandle)`](VolatileCallSite.md#setTarget(java.lang.invoke.MethodHandle))
  + ### dynamicInvoker

    public final [MethodHandle](MethodHandle.md "class in java.lang.invoke") dynamicInvoker()

    Returns this call site's permanent target.
    Since that target will never change, this is a correct implementation
    of [`CallSite.dynamicInvoker`](CallSite.md#dynamicInvoker()).

    Specified by:
    :   `dynamicInvoker` in class `CallSite`

    Returns:
    :   the immutable linkage state of this call site, a constant method handle

    Throws:
    :   `IllegalStateException` - if the `ConstantCallSite` constructor has not completed