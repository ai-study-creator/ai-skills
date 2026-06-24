Module [java.base](../../../module-summary.md)

Package [java.lang.ref](package-summary.md)

# Class WeakReference<T>

[java.lang.Object](../Object.md "class in java.lang")

[java.lang.ref.Reference](Reference.md "class in java.lang.ref")<T>

java.lang.ref.WeakReference<T>

Type Parameters:
:   `T` - the type of the referent

---

public non-sealed class WeakReference<T>
extends [Reference](Reference.md "class in java.lang.ref")<T>

Weak reference objects, which do not prevent their referents from being
made finalizable, finalized, and then reclaimed. Weak references are most
often used to implement canonicalizing mappings.

Suppose that the garbage collector determines at a certain point in time
that an object is [weakly
reachable](package-summary.md#reachability). At that time it will atomically clear all weak references to
that object and all weak references to any other weakly-reachable objects
from which that object is reachable through a chain of strong and soft
references. At the same time it will declare all of the formerly
weakly-reachable objects to be finalizable. At the same time or at some
later time it will enqueue those newly-cleared weak references that are
registered with reference queues.

Since:
:   1.2

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `WeakReference(T referent)`

  Creates a new weak reference that refers to the given object.

  `WeakReference(T referent,
  ReferenceQueue<? super T> q)`

  Creates a new weak reference that refers to the given object and is
  registered with the given queue.
* ## Method Summary

  ### Methods inherited from class java.lang.ref.[Reference](Reference.md "class in java.lang.ref")

  `clear, clone, enqueue, get, isEnqueued, reachabilityFence, refersTo`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### WeakReference

    public WeakReference([T](WeakReference.md "type parameter in WeakReference") referent)

    Creates a new weak reference that refers to the given object. The new
    reference is not registered with any queue.

    Parameters:
    :   `referent` - object the new weak reference will refer to
  + ### WeakReference

    public WeakReference([T](WeakReference.md "type parameter in WeakReference") referent,
    [ReferenceQueue](ReferenceQueue.md "class in java.lang.ref")<? super [T](WeakReference.md "type parameter in WeakReference")> q)

    Creates a new weak reference that refers to the given object and is
    registered with the given queue.

    Parameters:
    :   `referent` - object the new weak reference will refer to
    :   `q` - the queue with which the reference is to be registered,
        or `null` if registration is not required