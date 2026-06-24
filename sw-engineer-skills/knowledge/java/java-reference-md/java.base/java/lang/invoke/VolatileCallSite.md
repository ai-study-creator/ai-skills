Module [java.base](../../../module-summary.md)

Package [java.lang.invoke](package-summary.md)

# Class VolatileCallSite

[java.lang.Object](../Object.md "class in java.lang")

[java.lang.invoke.CallSite](CallSite.md "class in java.lang.invoke")

java.lang.invoke.VolatileCallSite

---

public non-sealed class VolatileCallSite
extends [CallSite](CallSite.md "class in java.lang.invoke")

A `VolatileCallSite` is a [`CallSite`](CallSite.md "class in java.lang.invoke") whose target acts like a volatile variable.
An `invokedynamic` instruction linked to a `VolatileCallSite` sees updates
to its call site target immediately, even if the update occurs in another thread.
There may be a performance penalty for such tight coupling between threads.

Unlike `MutableCallSite`, there is no
[syncAll operation](MutableCallSite.md#syncAll(java.lang.invoke.MutableCallSite%5B%5D)) on volatile
call sites, since every write to a volatile variable is implicitly
synchronized with reader threads.

In other respects, a `VolatileCallSite` is interchangeable
with `MutableCallSite`.

Since:
:   1.7

See Also:
:   * [`MutableCallSite`](MutableCallSite.md "class in java.lang.invoke")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `VolatileCallSite(MethodHandle target)`

  Creates a call site with a volatile binding to its target.

  `VolatileCallSite(MethodType type)`

  Creates a call site with a volatile binding to its target.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final MethodHandle`

  `dynamicInvoker()`

  Produces a method handle equivalent to an invokedynamic instruction
  which has been linked to this call site.

  `final MethodHandle`

  `getTarget()`

  Returns the target method of the call site, which behaves
  like a `volatile` field of the `VolatileCallSite`.

  `void`

  `setTarget(MethodHandle newTarget)`

  Updates the target method of this call site, as a volatile variable.

  ### Methods inherited from class java.lang.invoke.[CallSite](CallSite.md "class in java.lang.invoke")

  `type`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### VolatileCallSite

    public VolatileCallSite([MethodType](MethodType.md "class in java.lang.invoke") type)

    Creates a call site with a volatile binding to its target.
    The initial target is set to a method handle
    of the given type which will throw an `IllegalStateException` if called.

    Parameters:
    :   `type` - the method type that this call site will have

    Throws:
    :   `NullPointerException` - if the proposed type is null
  + ### VolatileCallSite

    public VolatileCallSite([MethodHandle](MethodHandle.md "class in java.lang.invoke") target)

    Creates a call site with a volatile binding to its target.
    The target is set to the given value.

    Parameters:
    :   `target` - the method handle that will be the initial target of the call site

    Throws:
    :   `NullPointerException` - if the proposed target is null
* ## Method Details

  + ### getTarget

    public final [MethodHandle](MethodHandle.md "class in java.lang.invoke") getTarget()

    Returns the target method of the call site, which behaves
    like a `volatile` field of the `VolatileCallSite`.

    The interactions of `getTarget` with memory are the same
    as of a read from a `volatile` field.

    In particular, the current thread is required to issue a fresh
    read of the target from memory, and must not fail to see
    a recent update to the target by another thread.

    Specified by:
    :   `getTarget` in class `CallSite`

    Returns:
    :   the linkage state of this call site, a method handle which can change over time

    See Also:
    :   - [`setTarget(java.lang.invoke.MethodHandle)`](#setTarget(java.lang.invoke.MethodHandle))
  + ### setTarget

    public void setTarget([MethodHandle](MethodHandle.md "class in java.lang.invoke") newTarget)

    Updates the target method of this call site, as a volatile variable.
    The type of the new target must agree with the type of the old target.

    The interactions with memory are the same as of a write to a volatile field.
    In particular, any threads is guaranteed to see the updated target
    the next time it calls `getTarget`.

    Specified by:
    :   `setTarget` in class `CallSite`

    Parameters:
    :   `newTarget` - the new target

    Throws:
    :   `NullPointerException` - if the proposed new target is null
    :   `WrongMethodTypeException` - if the proposed new target
        has a method type that differs from the previous target

    See Also:
    :   - [`getTarget()`](#getTarget())
  + ### dynamicInvoker

    public final [MethodHandle](MethodHandle.md "class in java.lang.invoke") dynamicInvoker()

    Produces a method handle equivalent to an invokedynamic instruction
    which has been linked to this call site.

    This method is equivalent to the following code:
    > ```
    >  MethodHandle getTarget, invoker, result;
    >  getTarget = MethodHandles.publicLookup().bind(this, "getTarget", MethodType.methodType(MethodHandle.class));
    >  invoker = MethodHandles.exactInvoker(this.type());
    >  result = MethodHandles.foldArguments(invoker, getTarget)
    > ```

    Specified by:
    :   `dynamicInvoker` in class `CallSite`

    Returns:
    :   a method handle which always invokes this call site's current target