Module [java.base](../../../module-summary.md)

Package [java.lang.invoke](package-summary.md)

# Class CallSite

[java.lang.Object](../Object.md "class in java.lang")

java.lang.invoke.CallSite

Direct Known Subclasses:
:   `ConstantCallSite`, `MutableCallSite`, `VolatileCallSite`

---

public abstract sealed class CallSite
extends [Object](../Object.md "class in java.lang")
permits [ConstantCallSite](ConstantCallSite.md "class in java.lang.invoke"), [MutableCallSite](MutableCallSite.md "class in java.lang.invoke"), [VolatileCallSite](VolatileCallSite.md "class in java.lang.invoke")

A `CallSite` is a holder for a variable [`MethodHandle`](MethodHandle.md "class in java.lang.invoke"),
which is called its `target`.
An `invokedynamic` instruction linked to a `CallSite` delegates
all calls to the site's current target.
A `CallSite` may be associated with several `invokedynamic`
instructions, or it may be "free floating", associated with none.
In any case, it may be invoked through an associated method handle
called its [dynamic invoker](#dynamicInvoker()).

`CallSite` is an abstract sealed class which does not allow
direct subclassing by users. It has three immediate,
concrete non-sealed subclasses that may be either instantiated or subclassed.

* If a mutable target is not required, an `invokedynamic` instruction
  may be permanently bound by means of a [constant call site](ConstantCallSite.md "class in java.lang.invoke").* If a mutable target is required which has volatile variable semantics,
    because updates to the target must be immediately and reliably witnessed by other threads,
    a [volatile call site](VolatileCallSite.md "class in java.lang.invoke") may be used.* Otherwise, if a mutable target is required,
      a [mutable call site](MutableCallSite.md "class in java.lang.invoke") may be used.

A non-constant call site may be *relinked* by changing its target.
The new target must have the same [type](MethodHandle.md#type())
as the previous target.
Thus, though a call site can be relinked to a series of
successive targets, it cannot change its type.

Here is a sample use of call sites and bootstrap methods which links every
dynamic call site to print its arguments:
> ```
> static void test() throws Throwable {
>     // THE FOLLOWING LINE IS PSEUDOCODE FOR A JVM INSTRUCTION
>     InvokeDynamic[#bootstrapDynamic].baz("baz arg", 2, 3.14);
> }
> private static void printArgs(Object... args) {
>   System.out.println(java.util.Arrays.deepToString(args));
> }
> private static final MethodHandle printArgs;
> static {
>   MethodHandles.Lookup lookup = MethodHandles.lookup();
>   Class thisClass = lookup.lookupClass();  // (who am I?)
>   printArgs = lookup.findStatic(thisClass,
>       "printArgs", MethodType.methodType(void.class, Object[].class));
> }
> private static CallSite bootstrapDynamic(MethodHandles.Lookup caller, String name, MethodType type) {
>   // ignore caller and name, but match the type:
>   return new ConstantCallSite(printArgs.asType(type));
> }
> ```

Since:
:   1.7

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract MethodHandle`

  `dynamicInvoker()`

  Produces a method handle equivalent to an invokedynamic instruction
  which has been linked to this call site.

  `abstract MethodHandle`

  `getTarget()`

  Returns the target method of the call site, according to the
  behavior defined by this call site's specific class.

  `abstract void`

  `setTarget(MethodHandle newTarget)`

  Updates the target method of this call site, according to the
  behavior defined by this call site's specific class.

  `MethodType`

  `type()`

  Returns the type of this call site's target.

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### type

    public [MethodType](MethodType.md "class in java.lang.invoke") type()

    Returns the type of this call site's target.
    Although targets may change, any call site's type is permanent, and can never change to an unequal type.
    The `setTarget` method enforces this invariant by refusing any new target that does
    not have the previous target's type.

    Returns:
    :   the type of the current target, which is also the type of any future target
  + ### getTarget

    public abstract [MethodHandle](MethodHandle.md "class in java.lang.invoke") getTarget()

    Returns the target method of the call site, according to the
    behavior defined by this call site's specific class.
    The immediate subclasses of `CallSite` document the
    class-specific behaviors of this method.

    Returns:
    :   the current linkage state of the call site, its target method handle

    See Also:
    :   - [`ConstantCallSite`](ConstantCallSite.md "class in java.lang.invoke")
        - [`VolatileCallSite`](VolatileCallSite.md "class in java.lang.invoke")
        - [`setTarget(java.lang.invoke.MethodHandle)`](#setTarget(java.lang.invoke.MethodHandle))
        - [`ConstantCallSite.getTarget()`](ConstantCallSite.md#getTarget())
        - [`MutableCallSite.getTarget()`](MutableCallSite.md#getTarget())
        - [`VolatileCallSite.getTarget()`](VolatileCallSite.md#getTarget())
  + ### setTarget

    public abstract void setTarget([MethodHandle](MethodHandle.md "class in java.lang.invoke") newTarget)

    Updates the target method of this call site, according to the
    behavior defined by this call site's specific class.
    The immediate subclasses of `CallSite` document the
    class-specific behaviors of this method.

    The type of the new target must be [equal to](MethodType.md#equals(java.lang.Object))
    the type of the old target.

    Parameters:
    :   `newTarget` - the new target

    Throws:
    :   `NullPointerException` - if the proposed new target is null
    :   `WrongMethodTypeException` - if the proposed new target
        has a method type that differs from the previous target

    See Also:
    :   - [`getTarget()`](#getTarget())
        - [`ConstantCallSite.setTarget(java.lang.invoke.MethodHandle)`](ConstantCallSite.md#setTarget(java.lang.invoke.MethodHandle))
        - [`MutableCallSite.setTarget(java.lang.invoke.MethodHandle)`](MutableCallSite.md#setTarget(java.lang.invoke.MethodHandle))
        - [`VolatileCallSite.setTarget(java.lang.invoke.MethodHandle)`](VolatileCallSite.md#setTarget(java.lang.invoke.MethodHandle))
  + ### dynamicInvoker

    public abstract [MethodHandle](MethodHandle.md "class in java.lang.invoke") dynamicInvoker()

    Produces a method handle equivalent to an invokedynamic instruction
    which has been linked to this call site.

    This method is equivalent to the following code:
    > ```
    >  MethodHandle getTarget, invoker, result;
    >  getTarget = MethodHandles.publicLookup().bind(this, "getTarget", MethodType.methodType(MethodHandle.class));
    >  invoker = MethodHandles.exactInvoker(this.type());
    >  result = MethodHandles.foldArguments(invoker, getTarget)
    > ```

    Returns:
    :   a method handle which always invokes this call site's current target