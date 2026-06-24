Module [java.base](../../../module-summary.md)

Package [java.lang.ref](package-summary.md)

# Class Reference<T>

[java.lang.Object](../Object.md "class in java.lang")

java.lang.ref.Reference<T>

Type Parameters:
:   `T` - the type of the referent

Direct Known Subclasses:
:   `PhantomReference`, `SoftReference`, `WeakReference`

---

public abstract sealed class Reference<T>
extends [Object](../Object.md "class in java.lang")
permits [PhantomReference](PhantomReference.md "class in java.lang.ref")<T>, [SoftReference](SoftReference.md "class in java.lang.ref")<T>, [WeakReference](WeakReference.md "class in java.lang.ref")<T> (not exhaustive)

Abstract base class for reference objects. This class defines the
operations common to all reference objects. Because reference objects are
implemented in close cooperation with the garbage collector, this class may
not be subclassed directly.

Since:
:   1.2

* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `clear()`

  Clears this reference object.

  `protected Object`

  `clone()`

  Throws [`CloneNotSupportedException`](../CloneNotSupportedException.md "class in java.lang").

  `boolean`

  `enqueue()`

  Clears this reference object and adds it to the queue with which
  it is registered, if any.

  `T`

  `get()`

  Returns this reference object's referent.

  `boolean`

  `isEnqueued()`

  Deprecated.

  This method was originally specified to test if a reference object has
  been cleared and enqueued but was never implemented to do this test.

  `static void`

  `reachabilityFence(Object ref)`

  Ensures that the object referenced by the given reference remains
  [*strongly reachable*](package-summary.md#reachability),
  regardless of any prior actions of the program that might otherwise cause
  the object to become unreachable; thus, the referenced object is not
  reclaimable by garbage collection at least until after the invocation of
  this method.

  `final boolean`

  `refersTo(T obj)`

  Tests if the referent of this reference object is `obj`.

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### get

    public [T](Reference.md "type parameter in Reference") get()

    Returns this reference object's referent. If this reference object has
    been cleared, either by the program or by the garbage collector, then
    this method returns `null`.

    Returns:
    :   The object to which this reference refers, or
        `null` if this reference object has been cleared

    See Also:
    :   - [`refersTo(T)`](#refersTo(T))
  + ### refersTo

    public final boolean refersTo([T](Reference.md "type parameter in Reference") obj)

    Tests if the referent of this reference object is `obj`.
    Using a `null` `obj` returns `true` if the
    reference object has been cleared.

    Parameters:
    :   `obj` - the object to compare with this reference object's referent

    Returns:
    :   `true` if `obj` is the referent of this reference object

    Since:
    :   16
  + ### clear

    public void clear()

    Clears this reference object. Invoking this method will not cause this
    object to be enqueued.

    This method is invoked only by Java code; when the garbage collector
    clears references it does so directly, without invoking this method.
  + ### isEnqueued

    [@Deprecated](../Deprecated.md "annotation interface in java.lang")([since](../Deprecated.md#since())="16")
    public boolean isEnqueued()

    Deprecated.

    This method was originally specified to test if a reference object has
    been cleared and enqueued but was never implemented to do this test.
    This method could be misused due to the inherent race condition
    or without an associated `ReferenceQueue`.
    An application relying on this method to release critical resources
    could cause serious performance issue.
    An application should use [`ReferenceQueue`](ReferenceQueue.md "class in java.lang.ref") to reliably determine
    what reference objects that have been enqueued or
    [`refersTo(null)`](#refersTo(T)) to determine if this reference
    object has been cleared.

    Tests if this reference object is in its associated queue, if any.
    This method returns `true` only if all of the following conditions
    are met:
    - this reference object was registered with a queue when it was created; and- the garbage collector has added this reference object to the queue
        or [`enqueue()`](#enqueue()) is called; and- this reference object is not yet removed from the queue.Otherwise, this method returns `false`.
    This method may return `false` if this reference object has been cleared
    but not enqueued due to the race condition.

    Returns:
    :   `true` if and only if this reference object is
        in its associated queue (if any).
  + ### enqueue

    public boolean enqueue()

    Clears this reference object and adds it to the queue with which
    it is registered, if any.

    This method is invoked only by Java code; when the garbage collector
    enqueues references it does so directly, without invoking this method.

    Returns:
    :   `true` if this reference object was successfully
        enqueued; `false` if it was already enqueued or if
        it was not registered with a queue when it was created
  + ### clone

    protected [Object](../Object.md "class in java.lang") clone()
    throws [CloneNotSupportedException](../CloneNotSupportedException.md "class in java.lang")

    Throws [`CloneNotSupportedException`](../CloneNotSupportedException.md "class in java.lang"). A `Reference` cannot be
    meaningfully cloned. Construct a new `Reference` instead.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   never returns normally

    Throws:
    :   `CloneNotSupportedException` - always

    Since:
    :   11

    See Also:
    :   - [`Cloneable`](../Cloneable.md "interface in java.lang")
  + ### reachabilityFence

    public static void reachabilityFence([Object](../Object.md "class in java.lang") ref)

    Ensures that the object referenced by the given reference remains
    [*strongly reachable*](package-summary.md#reachability),
    regardless of any prior actions of the program that might otherwise cause
    the object to become unreachable; thus, the referenced object is not
    reclaimable by garbage collection at least until after the invocation of
    this method. Invocation of this method does not itself initiate garbage
    collection or finalization.

    This method establishes an ordering for *strong reachability*
    with respect to garbage collection. It controls relations that are
    otherwise only implicit in a program -- the reachability conditions
    triggering garbage collection. This method is designed for use in
    uncommon situations of premature finalization where using
    `synchronized` blocks or methods, or using other synchronization
    facilities are not possible or do not provide the desired control. This
    method is applicable only when reclamation may have visible effects,
    which is possible for objects with finalizers (See Section
    of The Java Language Specification) that
    are implemented in ways that rely on ordering control for
    correctness.

    Parameters:
    :   `ref` - the reference. If `null`, this method has no effect.

    Since:
    :   9