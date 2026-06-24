Module [java.base](../../../../module-summary.md)

# Package java.util.concurrent.locks

---

package java.util.concurrent.locks

Interfaces and classes providing a framework for locking and waiting
for conditions that is distinct from built-in synchronization and
monitors. The framework permits much greater flexibility in the use of
locks and conditions, at the expense of more awkward syntax.

The [`Lock`](Lock.md "interface in java.util.concurrent.locks") interface supports
locking disciplines that differ in semantics (reentrant, fair, etc),
and that can be used in non-block-structured contexts including
hand-over-hand and lock reordering algorithms. The main implementation
is [`ReentrantLock`](ReentrantLock.md "class in java.util.concurrent.locks").

The [`ReadWriteLock`](ReadWriteLock.md "interface in java.util.concurrent.locks") interface
similarly defines locks that may be shared among readers but are
exclusive to writers. Only a single implementation, [`ReentrantReadWriteLock`](ReentrantReadWriteLock.md "class in java.util.concurrent.locks"), is provided, since
it covers most standard usage contexts. But programmers may create
their own implementations to cover nonstandard requirements.

The [`Condition`](Condition.md "interface in java.util.concurrent.locks") interface
describes condition variables that may be associated with Locks.
These are similar in usage to the implicit monitors accessed using
`Object.wait`, but offer extended capabilities.
In particular, multiple `Condition` objects may be associated
with a single `Lock`. To avoid compatibility issues, the
names of `Condition` methods are different from the
corresponding `Object` versions.

The [`AbstractQueuedSynchronizer`](AbstractQueuedSynchronizer.md "class in java.util.concurrent.locks")
class serves as a useful superclass for defining locks and other
synchronizers that rely on queuing blocked threads. The [`AbstractQueuedLongSynchronizer`](AbstractQueuedLongSynchronizer.md "class in java.util.concurrent.locks") class
provides the same functionality but extends support to 64 bits of
synchronization state. Both extend class [`AbstractOwnableSynchronizer`](AbstractOwnableSynchronizer.md "class in java.util.concurrent.locks"), a simple
class that helps record the thread currently holding exclusive
synchronization. The [`LockSupport`](LockSupport.md "class in java.util.concurrent.locks")
class provides lower-level blocking and unblocking support that is
useful for those developers implementing their own customized lock
classes.

Since:
:   1.5

* Related Packages

  Package

  Description

  [java.util.concurrent](../package-summary.md)

  Utility classes commonly useful in concurrent programming.

  [java.util.concurrent.atomic](../atomic/package-summary.md)

  A small toolkit of classes that support lock-free thread-safe
  programming on single variables.
* All Classes and InterfacesInterfacesClasses

  Class

  Description

  [AbstractOwnableSynchronizer](AbstractOwnableSynchronizer.md "class in java.util.concurrent.locks")

  A synchronizer that may be exclusively owned by a thread.

  [AbstractQueuedLongSynchronizer](AbstractQueuedLongSynchronizer.md "class in java.util.concurrent.locks")

  A version of [`AbstractQueuedSynchronizer`](AbstractQueuedSynchronizer.md "class in java.util.concurrent.locks") in
  which synchronization state is maintained as a `long`.

  [AbstractQueuedSynchronizer](AbstractQueuedSynchronizer.md "class in java.util.concurrent.locks")

  Provides a framework for implementing blocking locks and related
  synchronizers (semaphores, events, etc) that rely on
  first-in-first-out (FIFO) wait queues.

  [Condition](Condition.md "interface in java.util.concurrent.locks")

  `Condition` factors out the `Object` monitor
  methods ([`wait`](../../../lang/Object.md#wait()), [`notify`](../../../lang/Object.md#notify())
  and [`notifyAll`](../../../lang/Object.md#notifyAll())) into distinct objects to
  give the effect of having multiple wait-sets per object, by
  combining them with the use of arbitrary [`Lock`](Lock.md "interface in java.util.concurrent.locks") implementations.

  [Lock](Lock.md "interface in java.util.concurrent.locks")

  `Lock` implementations provide more extensive locking
  operations than can be obtained using `synchronized` methods
  and statements.

  [LockSupport](LockSupport.md "class in java.util.concurrent.locks")

  Basic thread blocking primitives for creating locks and other
  synchronization classes.

  [ReadWriteLock](ReadWriteLock.md "interface in java.util.concurrent.locks")

  A `ReadWriteLock` maintains a pair of associated [`locks`](Lock.md "interface in java.util.concurrent.locks"), one for read-only operations and one for writing.

  [ReentrantLock](ReentrantLock.md "class in java.util.concurrent.locks")

  A reentrant mutual exclusion [`Lock`](Lock.md "interface in java.util.concurrent.locks") with the same basic
  behavior and semantics as the implicit monitor lock accessed using
  `synchronized` methods and statements, but with extended
  capabilities.

  [ReentrantReadWriteLock](ReentrantReadWriteLock.md "class in java.util.concurrent.locks")

  An implementation of [`ReadWriteLock`](ReadWriteLock.md "interface in java.util.concurrent.locks") supporting similar
  semantics to [`ReentrantLock`](ReentrantLock.md "class in java.util.concurrent.locks").

  [ReentrantReadWriteLock.ReadLock](ReentrantReadWriteLock.ReadLock.md "class in java.util.concurrent.locks")

  The lock returned by method [`ReentrantReadWriteLock.readLock()`](ReentrantReadWriteLock.md#readLock()).

  [ReentrantReadWriteLock.WriteLock](ReentrantReadWriteLock.WriteLock.md "class in java.util.concurrent.locks")

  The lock returned by method [`ReentrantReadWriteLock.writeLock()`](ReentrantReadWriteLock.md#writeLock()).

  [StampedLock](StampedLock.md "class in java.util.concurrent.locks")

  A capability-based lock with three modes for controlling read/write
  access.