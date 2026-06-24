Module [java.base](../../../module-summary.md)

Package [java.lang.ref](package-summary.md)

# Class ReferenceQueue<T>

[java.lang.Object](../Object.md "class in java.lang")

java.lang.ref.ReferenceQueue<T>

Type Parameters:
:   `T` - the type of the reference object

---

public class ReferenceQueue<T>
extends [Object](../Object.md "class in java.lang")

Reference queues, to which registered reference objects are appended by the
garbage collector after the appropriate reachability changes are detected.

Since:
:   1.2

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ReferenceQueue()`

  Constructs a new reference-object queue.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Reference<? extends T>`

  `poll()`

  Polls this queue to see if a reference object is available.

  `Reference<? extends T>`

  `remove()`

  Removes the next reference object in this queue, blocking until one
  becomes available.

  `Reference<? extends T>`

  `remove(long timeout)`

  Removes the next reference object in this queue, blocking until either
  one becomes available or the given timeout period expires.

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ReferenceQueue

    public ReferenceQueue()

    Constructs a new reference-object queue.
* ## Method Details

  + ### poll

    public [Reference](Reference.md "class in java.lang.ref")<? extends [T](ReferenceQueue.md "type parameter in ReferenceQueue")> poll()

    Polls this queue to see if a reference object is available. If one is
    available without further delay then it is removed from the queue and
    returned. Otherwise this method immediately returns `null`.

    Returns:
    :   A reference object, if one was immediately available,
        otherwise `null`
  + ### remove

    public [Reference](Reference.md "class in java.lang.ref")<? extends [T](ReferenceQueue.md "type parameter in ReferenceQueue")> remove(long timeout)
    throws [InterruptedException](../InterruptedException.md "class in java.lang")

    Removes the next reference object in this queue, blocking until either
    one becomes available or the given timeout period expires.

    This method does not offer real-time guarantees: It schedules the
    timeout as if by invoking the [`Object.wait(long)`](../Object.md#wait(long)) method.

    Parameters:
    :   `timeout` - If positive, block for up to `timeout`
        milliseconds while waiting for a reference to be
        added to this queue. If zero, block indefinitely.

    Returns:
    :   A reference object, if one was available within the specified
        timeout period, otherwise `null`

    Throws:
    :   `IllegalArgumentException` - If the value of the timeout argument is negative
    :   `InterruptedException` - If the timeout wait is interrupted
  + ### remove

    public [Reference](Reference.md "class in java.lang.ref")<? extends [T](ReferenceQueue.md "type parameter in ReferenceQueue")> remove()
    throws [InterruptedException](../InterruptedException.md "class in java.lang")

    Removes the next reference object in this queue, blocking until one
    becomes available.

    Returns:
    :   A reference object, blocking until one becomes available

    Throws:
    :   `InterruptedException` - If the wait is interrupted