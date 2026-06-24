Module [java.base](../../../module-summary.md)

Package [java.lang.ref](package-summary.md)

# Class PhantomReference<T>

[java.lang.Object](../Object.md "class in java.lang")

[java.lang.ref.Reference](Reference.md "class in java.lang.ref")<T>

java.lang.ref.PhantomReference<T>

Type Parameters:
:   `T` - the type of the referent

---

public non-sealed class PhantomReference<T>
extends [Reference](Reference.md "class in java.lang.ref")<T>

Phantom reference objects, which are enqueued after the collector
determines that their referents may otherwise be reclaimed. Phantom
references are most often used to schedule post-mortem cleanup actions.

Suppose the garbage collector determines at a certain point in time
that an object is [phantom reachable](package-summary.md#reachability). At that time it will atomically clear
all phantom references to that object and all phantom references to
any other phantom-reachable objects from which that object is reachable.
At the same time or at some later time it will enqueue those newly-cleared
phantom references that are registered with reference queues.

In order to ensure that a reclaimable object remains so, the referent of
a phantom reference may not be retrieved: The `get` method of a
phantom reference always returns `null`.
The [`refersTo`](Reference.md#refersTo(T)) method can be used to test
whether some object is the referent of a phantom reference.

Since:
:   1.2

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PhantomReference(T referent,
  ReferenceQueue<? super T> q)`

  Creates a new phantom reference that refers to the given object and
  is registered with the given queue.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `T`

  `get()`

  Returns this reference object's referent.

  ### Methods inherited from class java.lang.ref.[Reference](Reference.md "class in java.lang.ref")

  `clear, clone, enqueue, isEnqueued, reachabilityFence, refersTo`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### PhantomReference

    public PhantomReference([T](PhantomReference.md "type parameter in PhantomReference") referent,
    [ReferenceQueue](ReferenceQueue.md "class in java.lang.ref")<? super [T](PhantomReference.md "type parameter in PhantomReference")> q)

    Creates a new phantom reference that refers to the given object and
    is registered with the given queue.

    It is possible to create a phantom reference with a `null`
    queue. Such a reference will never be enqueued.

    Parameters:
    :   `referent` - the object the new phantom reference will refer to
    :   `q` - the queue with which the reference is to be registered,
        or `null` if registration is not required
* ## Method Details

  + ### get

    public [T](PhantomReference.md "type parameter in PhantomReference") get()

    Returns this reference object's referent. Because the referent of a
    phantom reference is always inaccessible, this method always returns
    `null`.

    Overrides:
    :   `get` in class `Reference<T>`

    Returns:
    :   `null`

    See Also:
    :   - [`Reference.refersTo(T)`](Reference.md#refersTo(T))