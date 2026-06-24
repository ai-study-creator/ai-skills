Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class ConcurrentModificationException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../lang/RuntimeException.md "class in java.lang")

java.util.ConcurrentModificationException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `DirectoryIteratorException`

---

public class ConcurrentModificationException
extends [RuntimeException](../lang/RuntimeException.md "class in java.lang")

This exception may be thrown by methods that have detected concurrent
modification of an object when such modification is not permissible.

For example, it is not generally permissible for one thread to modify a Collection
while another thread is iterating over it. In general, the results of the
iteration are undefined under these circumstances. Some Iterator
implementations (including those of all the general purpose collection implementations
provided by the JRE) may choose to throw this exception if this behavior is
detected. Iterators that do this are known as *fail-fast* iterators,
as they fail quickly and cleanly, rather that risking arbitrary,
non-deterministic behavior at an undetermined time in the future.

Note that this exception does not always indicate that an object has
been concurrently modified by a *different* thread. If a single
thread issues a sequence of method invocations that violates the
contract of an object, the object may throw this exception. For
example, if a thread modifies a collection directly while it is
iterating over the collection with a fail-fast iterator, the iterator
will throw this exception.

Note that fail-fast behavior cannot be guaranteed as it is, generally
speaking, impossible to make any hard guarantees in the presence of
unsynchronized concurrent modification. Fail-fast operations
throw `ConcurrentModificationException` on a best-effort basis.
Therefore, it would be wrong to write a program that depended on this
exception for its correctness: *`ConcurrentModificationException`
should be used only to detect bugs.*

Since:
:   1.2

See Also:
:   * [`Collection`](Collection.md "interface in java.util")
    * [`Iterator`](Iterator.md "interface in java.util")
    * [`Spliterator`](Spliterator.md "interface in java.util")
    * [`ListIterator`](ListIterator.md "interface in java.util")
    * [`Vector`](Vector.md "class in java.util")
    * [`LinkedList`](LinkedList.md "class in java.util")
    * [`HashSet`](HashSet.md "class in java.util")
    * [`Hashtable`](Hashtable.md "class in java.util")
    * [`TreeMap`](TreeMap.md "class in java.util")
    * [`AbstractList`](AbstractList.md "class in java.util")
    * [Serialized Form](../../../serialized-form.md#java.util.ConcurrentModificationException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ConcurrentModificationException()`

  Constructs a ConcurrentModificationException with no
  detail message.

  `ConcurrentModificationException(String message)`

  Constructs a `ConcurrentModificationException` with the
  specified detail message.

  `ConcurrentModificationException(String message,
  Throwable cause)`

  Constructs a new exception with the specified detail message and
  cause.

  `ConcurrentModificationException(Throwable cause)`

  Constructs a new exception with the specified cause and a detail
  message of `(cause==null ? null : cause.toString())` (which
  typically contains the class and detail message of `cause`.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ConcurrentModificationException

    public ConcurrentModificationException()

    Constructs a ConcurrentModificationException with no
    detail message.
  + ### ConcurrentModificationException

    public ConcurrentModificationException([String](../lang/String.md "class in java.lang") message)

    Constructs a `ConcurrentModificationException` with the
    specified detail message.

    Parameters:
    :   `message` - the detail message pertaining to this exception.
  + ### ConcurrentModificationException

    public ConcurrentModificationException([Throwable](../lang/Throwable.md "class in java.lang") cause)

    Constructs a new exception with the specified cause and a detail
    message of `(cause==null ? null : cause.toString())` (which
    typically contains the class and detail message of `cause`.

    Parameters:
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../lang/Throwable.md#getCause()) method). (A `null` value is
        permitted, and indicates that the cause is nonexistent or
        unknown.)

    Since:
    :   1.7
  + ### ConcurrentModificationException

    public ConcurrentModificationException([String](../lang/String.md "class in java.lang") message,
    [Throwable](../lang/Throwable.md "class in java.lang") cause)

    Constructs a new exception with the specified detail message and
    cause.

    Note that the detail message associated with `cause` is
    *not* automatically incorporated in this exception's detail
    message.

    Parameters:
    :   `message` - the detail message (which is saved for later retrieval
        by the [`Throwable.getMessage()`](../lang/Throwable.md#getMessage()) method).
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../lang/Throwable.md#getCause()) method). (A `null` value
        is permitted, and indicates that the cause is nonexistent or
        unknown.)

    Since:
    :   1.7