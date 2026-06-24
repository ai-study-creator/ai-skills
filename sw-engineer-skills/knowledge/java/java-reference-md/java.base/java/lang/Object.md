Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class Object

java.lang.Object

---

public class Object

Class `Object` is the root of the class hierarchy.
Every class has `Object` as a superclass. All objects,
including arrays, implement the methods of this class.

Since:
:   1.0

See Also:
:   * [`Class`](Class.md "class in java.lang")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Object()`

  Constructs a new object.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `protected Object`

  `clone()`

  Creates and returns a copy of this object.

  `boolean`

  `equals(Object obj)`

  Indicates whether some other object is "equal to" this one.

  `protected void`

  `finalize()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Finalization is deprecated and subject to removal in a future
  release.

  `final Class<?>`

  `getClass()`

  Returns the runtime class of this `Object`.

  `int`

  `hashCode()`

  Returns a hash code value for the object.

  `final void`

  `notify()`

  Wakes up a single thread that is waiting on this object's
  monitor.

  `final void`

  `notifyAll()`

  Wakes up all threads that are waiting on this object's monitor.

  `String`

  `toString()`

  Returns a string representation of the object.

  `final void`

  `wait()`

  Causes the current thread to wait until it is awakened, typically
  by being *notified* or *interrupted*.

  `final void`

  `wait(long timeoutMillis)`

  Causes the current thread to wait until it is awakened, typically
  by being *notified* or *interrupted*, or until a
  certain amount of real time has elapsed.

  `final void`

  `wait(long timeoutMillis,
  int nanos)`

  Causes the current thread to wait until it is awakened, typically
  by being *notified* or *interrupted*, or until a
  certain amount of real time has elapsed.

* ## Constructor Details

  + ### Object

    public Object()

    Constructs a new object.
* ## Method Details

  + ### getClass

    public final [Class](Class.md "class in java.lang")<?> getClass()

    Returns the runtime class of this `Object`. The returned
    `Class` object is the object that is locked by `static synchronized` methods of the represented class.

    **The actual result type is `Class<? extends |X|>`
    where `|X|` is the erasure of the static type of the
    expression on which `getClass` is called.** For
    example, no cast is required in this code fragment:

    `Number n = 0;`   
    `Class<? extends Number> c = n.getClass();`

    Returns:
    :   The `Class` object that represents the runtime
        class of this object.
  + ### hashCode

    public int hashCode()

    Returns a hash code value for the object. This method is
    supported for the benefit of hash tables such as those provided by
    [`HashMap`](../util/HashMap.md "class in java.util").

    The general contract of `hashCode` is:
    - Whenever it is invoked on the same object more than once during
      an execution of a Java application, the `hashCode` method
      must consistently return the same integer, provided no information
      used in `equals` comparisons on the object is modified.
      This integer need not remain consistent from one execution of an
      application to another execution of the same application.- If two objects are equal according to the [`equals`](#equals(java.lang.Object)) method, then calling the `hashCode` method on each of the two objects must produce the
        same integer result.- It is *not* required that if two objects are unequal
          according to the [`equals`](#equals(java.lang.Object)) method, then
          calling the `hashCode` method on each of the two objects
          must produce distinct integer results. However, the programmer
          should be aware that producing distinct integer results for
          unequal objects may improve the performance of hash tables.

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`equals(java.lang.Object)`](#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](Object.md "class in java.lang") obj)

    Indicates whether some other object is "equal to" this one.

    The `equals` method implements an equivalence relation
    on non-null object references:
    - It is *reflexive*: for any non-null reference value
      `x`, `x.equals(x)` should return
      `true`.- It is *symmetric*: for any non-null reference values
        `x` and `y`, `x.equals(y)`
        should return `true` if and only if
        `y.equals(x)` returns `true`.- It is *transitive*: for any non-null reference values
          `x`, `y`, and `z`, if
          `x.equals(y)` returns `true` and
          `y.equals(z)` returns `true`, then
          `x.equals(z)` should return `true`.- It is *consistent*: for any non-null reference values
            `x` and `y`, multiple invocations of
            `x.equals(y)` consistently return `true`
            or consistently return `false`, provided no
            information used in `equals` comparisons on the
            objects is modified.- For any non-null reference value `x`,
              `x.equals(null)` should return `false`.

    An equivalence relation partitions the elements it operates on
    into *equivalence classes*; all the members of an
    equivalence class are equal to each other. Members of an
    equivalence class are substitutable for each other, at least
    for some purposes.

    Parameters:
    :   `obj` - the reference object with which to compare.

    Returns:
    :   `true` if this object is the same as the obj
        argument; `false` otherwise.

    See Also:
    :   - [`hashCode()`](#hashCode())
        - [`HashMap`](../util/HashMap.md "class in java.util")
  + ### clone

    protected [Object](Object.md "class in java.lang") clone()
    throws [CloneNotSupportedException](CloneNotSupportedException.md "class in java.lang")

    Creates and returns a copy of this object. The precise meaning
    of "copy" may depend on the class of the object. The general
    intent is that, for any object `x`, the expression:
    > ```
    >  x.clone() != x
    > ```

    will be true, and that the expression:
    > ```
    >  x.clone().getClass() == x.getClass()
    > ```

    will be `true`, but these are not absolute requirements.
    While it is typically the case that:
    > ```
    >  x.clone().equals(x)
    > ```

    will be `true`, this is not an absolute requirement.

    By convention, the returned object should be obtained by calling
    `super.clone`. If a class and all of its superclasses (except
    `Object`) obey this convention, it will be the case that
    `x.clone().getClass() == x.getClass()`.

    By convention, the object returned by this method should be independent
    of this object (which is being cloned). To achieve this independence,
    it may be necessary to modify one or more fields of the object returned
    by `super.clone` before returning it. Typically, this means
    copying any mutable objects that comprise the internal "deep structure"
    of the object being cloned and replacing the references to these
    objects with references to the copies. If a class contains only
    primitive fields or references to immutable objects, then it is usually
    the case that no fields in the object returned by `super.clone`
    need to be modified.

    Returns:
    :   a clone of this instance.

    Throws:
    :   `CloneNotSupportedException` - if the object's class does not
        support the `Cloneable` interface. Subclasses
        that override the `clone` method can also
        throw this exception to indicate that an instance cannot
        be cloned.

    See Also:
    :   - [`Cloneable`](Cloneable.md "interface in java.lang")
  + ### toString

    public [String](String.md "class in java.lang") toString()

    Returns a string representation of the object.

    Returns:
    :   a string representation of the object.
  + ### notify

    public final void notify()

    Wakes up a single thread that is waiting on this object's
    monitor. If any threads are waiting on this object, one of them
    is chosen to be awakened. The choice is arbitrary and occurs at
    the discretion of the implementation. A thread waits on an object's
    monitor by calling one of the `wait` methods.

    The awakened thread will not be able to proceed until the current
    thread relinquishes the lock on this object. The awakened thread will
    compete in the usual manner with any other threads that might be
    actively competing to synchronize on this object; for example, the
    awakened thread enjoys no reliable privilege or disadvantage in being
    the next thread to lock this object.

    This method should only be called by a thread that is the owner
    of this object's monitor. A thread becomes the owner of the
    object's monitor in one of three ways:
    - By executing a synchronized instance method of that object.- By executing the body of a `synchronized` statement
        that synchronizes on the object.- For objects of type `Class,` by executing a
          static synchronized method of that class.

    Only one thread at a time can own an object's monitor.

    Throws:
    :   `IllegalMonitorStateException` - if the current thread is not
        the owner of this object's monitor.

    See Also:
    :   - [`notifyAll()`](#notifyAll())
        - [`wait()`](#wait())
  + ### notifyAll

    public final void notifyAll()

    Wakes up all threads that are waiting on this object's monitor. A
    thread waits on an object's monitor by calling one of the
    `wait` methods.

    The awakened threads will not be able to proceed until the current
    thread relinquishes the lock on this object. The awakened threads
    will compete in the usual manner with any other threads that might
    be actively competing to synchronize on this object; for example,
    the awakened threads enjoy no reliable privilege or disadvantage in
    being the next thread to lock this object.

    This method should only be called by a thread that is the owner
    of this object's monitor. See the `notify` method for a
    description of the ways in which a thread can become the owner of
    a monitor.

    Throws:
    :   `IllegalMonitorStateException` - if the current thread is not
        the owner of this object's monitor.

    See Also:
    :   - [`notify()`](#notify())
        - [`wait()`](#wait())
  + ### wait

    public final void wait()
    throws [InterruptedException](InterruptedException.md "class in java.lang")

    Causes the current thread to wait until it is awakened, typically
    by being *notified* or *interrupted*.

    In all respects, this method behaves as if `wait(0L, 0)`
    had been called. See the specification of the [`wait(long, int)`](#wait(long,int)) method
    for details.

    Throws:
    :   `IllegalMonitorStateException` - if the current thread is not
        the owner of the object's monitor
    :   `InterruptedException` - if any thread interrupted the current thread before or
        while the current thread was waiting. The *interrupted status* of the
        current thread is cleared when this exception is thrown.

    See Also:
    :   - [`notify()`](#notify())
        - [`notifyAll()`](#notifyAll())
        - [`wait(long)`](#wait(long))
        - [`wait(long, int)`](#wait(long,int))
  + ### wait

    public final void wait(long timeoutMillis)
    throws [InterruptedException](InterruptedException.md "class in java.lang")

    Causes the current thread to wait until it is awakened, typically
    by being *notified* or *interrupted*, or until a
    certain amount of real time has elapsed.

    In all respects, this method behaves as if `wait(timeoutMillis, 0)`
    had been called. See the specification of the [`wait(long, int)`](#wait(long,int)) method
    for details.

    Parameters:
    :   `timeoutMillis` - the maximum time to wait, in milliseconds

    Throws:
    :   `IllegalArgumentException` - if `timeoutMillis` is negative
    :   `IllegalMonitorStateException` - if the current thread is not
        the owner of the object's monitor
    :   `InterruptedException` - if any thread interrupted the current thread before or
        while the current thread was waiting. The *interrupted status* of the
        current thread is cleared when this exception is thrown.

    See Also:
    :   - [`notify()`](#notify())
        - [`notifyAll()`](#notifyAll())
        - [`wait()`](#wait())
        - [`wait(long, int)`](#wait(long,int))
  + ### wait

    public final void wait(long timeoutMillis,
    int nanos)
    throws [InterruptedException](InterruptedException.md "class in java.lang")

    Causes the current thread to wait until it is awakened, typically
    by being *notified* or *interrupted*, or until a
    certain amount of real time has elapsed.

    The current thread must own this object's monitor lock. See the
    [`notify`](#notify()) method for a description of the ways in which
    a thread can become the owner of a monitor lock.

    This method causes the current thread (referred to here as T) to
    place itself in the wait set for this object and then to relinquish any
    and all synchronization claims on this object. Note that only the locks
    on this object are relinquished; any other objects on which the current
    thread may be synchronized remain locked while the thread waits.

    Thread T then becomes disabled for thread scheduling purposes
    and lies dormant until one of the following occurs:
    - Some other thread invokes the `notify` method for this
      object and thread T happens to be arbitrarily chosen as
      the thread to be awakened.- Some other thread invokes the `notifyAll` method for this
        object.- Some other thread [interrupts](Thread.md#interrupt())
          thread T.- The specified amount of real time has elapsed, more or less.
            The amount of real time, in nanoseconds, is given by the expression
            `1000000 * timeoutMillis + nanos`. If `timeoutMillis` and `nanos`
            are both zero, then real time is not taken into consideration and the
            thread waits until awakened by one of the other causes.- Thread T is awakened spuriously. (See below.)

    The thread T is then removed from the wait set for this
    object and re-enabled for thread scheduling. It competes in the
    usual manner with other threads for the right to synchronize on the
    object; once it has regained control of the object, all its
    synchronization claims on the object are restored to the status quo
    ante - that is, to the situation as of the time that the `wait`
    method was invoked. Thread T then returns from the
    invocation of the `wait` method. Thus, on return from the
    `wait` method, the synchronization state of the object and of
    thread `T` is exactly as it was when the `wait` method
    was invoked.

    A thread can wake up without being notified, interrupted, or timing out, a
    so-called *spurious wakeup*. While this will rarely occur in practice,
    applications must guard against it by testing for the condition that should
    have caused the thread to be awakened, and continuing to wait if the condition
    is not satisfied. See the example below.

    For more information on this topic, see section 14.2,
    "Condition Queues," in Brian Goetz and others' Java Concurrency
    in Practice (Addison-Wesley, 2006) or Item 81 in Joshua
    Bloch's Effective Java, Third Edition (Addison-Wesley,
    2018).

    If the current thread is [interrupted](Thread.md#interrupt())
    by any thread before or while it is waiting, then an `InterruptedException`
    is thrown. The *interrupted status* of the current thread is cleared when
    this exception is thrown. This exception is not thrown until the lock status of
    this object has been restored as described above.

    Parameters:
    :   `timeoutMillis` - the maximum time to wait, in milliseconds
    :   `nanos` - additional time, in nanoseconds, in the range 0-999999 inclusive

    Throws:
    :   `IllegalArgumentException` - if `timeoutMillis` is negative,
        or if the value of `nanos` is out of range
    :   `IllegalMonitorStateException` - if the current thread is not
        the owner of the object's monitor
    :   `InterruptedException` - if any thread interrupted the current thread before or
        while the current thread was waiting. The *interrupted status* of the
        current thread is cleared when this exception is thrown.

    See Also:
    :   - [`notify()`](#notify())
        - [`notifyAll()`](#notifyAll())
        - [`wait()`](#wait())
        - [`wait(long)`](#wait(long))
  + ### finalize

    [@Deprecated](Deprecated.md "annotation interface in java.lang")([since](Deprecated.md#since())="9",
    [forRemoval](Deprecated.md#forRemoval())=true)
    protected void finalize()
    throws [Throwable](Throwable.md "class in java.lang")

    Deprecated, for removal: This API element is subject to removal in a future version.

    Finalization is deprecated and subject to removal in a future
    release. The use of finalization can lead to problems with security,
    performance, and reliability.
    See [JEP 421](https://openjdk.org/jeps/421) for
    discussion and alternatives.

    Subclasses that override `finalize` to perform cleanup should use
    alternative cleanup mechanisms and remove the `finalize` method.
    Use [`Cleaner`](ref/Cleaner.md "class in java.lang.ref") and
    [`PhantomReference`](ref/PhantomReference.md "class in java.lang.ref") as safer ways to release resources
    when an object becomes unreachable. Alternatively, add a `close`
    method to explicitly release resources, and implement
    `AutoCloseable` to enable use of the `try`-with-resources
    statement.

    This method will remain in place until finalizers have been removed from
    most existing code.

    Called by the garbage collector on an object when garbage collection
    determines that there are no more references to the object.
    A subclass overrides the `finalize` method to dispose of
    system resources or to perform other cleanup.

    **When running in a Java virtual machine in which finalization has been
    disabled or removed, the garbage collector will never call
    `finalize()`. In a Java virtual machine in which finalization is
    enabled, the garbage collector might call `finalize` only after an
    indefinite delay.**

    The general contract of `finalize` is that it is invoked
    if and when the Java virtual
    machine has determined that there is no longer any
    means by which this object can be accessed by any thread that has
    not yet died, except as a result of an action taken by the
    finalization of some other object or class which is ready to be
    finalized. The `finalize` method may take any action, including
    making this object available again to other threads; the usual purpose
    of `finalize`, however, is to perform cleanup actions before
    the object is irrevocably discarded. For example, the finalize method
    for an object that represents an input/output connection might perform
    explicit I/O transactions to break the connection before the object is
    permanently discarded.

    The `finalize` method of class `Object` performs no
    special action; it simply returns normally. Subclasses of
    `Object` may override this definition.

    The Java programming language does not guarantee which thread will
    invoke the `finalize` method for any given object. It is
    guaranteed, however, that the thread that invokes finalize will not
    be holding any user-visible synchronization locks when finalize is
    invoked. If an uncaught exception is thrown by the finalize method,
    the exception is ignored and finalization of that object terminates.

    After the `finalize` method has been invoked for an object, no
    further action is taken until the Java virtual machine has again
    determined that there is no longer any means by which this object can
    be accessed by any thread that has not yet died, including possible
    actions by other objects or classes which are ready to be finalized,
    at which point the object may be discarded.

    The `finalize` method is never invoked more than once by a Java
    virtual machine for any given object.

    Any exception thrown by the `finalize` method causes
    the finalization of this object to be halted, but is otherwise
    ignored.

    Throws:
    :   `Throwable` - the `Exception` raised by this method

    See Also:
    :   - [`WeakReference`](ref/WeakReference.md "class in java.lang.ref")
        - [`PhantomReference`](ref/PhantomReference.md "class in java.lang.ref")