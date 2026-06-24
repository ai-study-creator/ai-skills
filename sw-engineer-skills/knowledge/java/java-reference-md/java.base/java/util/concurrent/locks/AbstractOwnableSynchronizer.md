Module [java.base](../../../../module-summary.md)

Package [java.util.concurrent.locks](package-summary.md)

# Class AbstractOwnableSynchronizer

[java.lang.Object](../../../lang/Object.md "class in java.lang")

java.util.concurrent.locks.AbstractOwnableSynchronizer

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `AbstractQueuedLongSynchronizer`, `AbstractQueuedSynchronizer`

---

public abstract class AbstractOwnableSynchronizer
extends [Object](../../../lang/Object.md "class in java.lang")
implements [Serializable](../../../io/Serializable.md "interface in java.io")

A synchronizer that may be exclusively owned by a thread. This
class provides a basis for creating locks and related synchronizers
that may entail a notion of ownership. The
`AbstractOwnableSynchronizer` class itself does not manage or
use this information. However, subclasses and tools may use
appropriately maintained values to help control and monitor access
and provide diagnostics.

Since:
:   1.6

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#java.util.concurrent.locks.AbstractOwnableSynchronizer)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AbstractOwnableSynchronizer()`

  Empty constructor for use by subclasses.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected final Thread`

  `getExclusiveOwnerThread()`

  Returns the thread last set by `setExclusiveOwnerThread`,
  or `null` if never set.

  `protected final void`

  `setExclusiveOwnerThread(Thread thread)`

  Sets the thread that currently owns exclusive access.

  ### Methods inherited from class java.lang.[Object](../../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AbstractOwnableSynchronizer

    protected AbstractOwnableSynchronizer()

    Empty constructor for use by subclasses.
* ## Method Details

  + ### setExclusiveOwnerThread

    protected final void setExclusiveOwnerThread([Thread](../../../lang/Thread.md "class in java.lang") thread)

    Sets the thread that currently owns exclusive access.
    A `null` argument indicates that no thread owns access.
    This method does not otherwise impose any synchronization or
    `volatile` field accesses.

    Parameters:
    :   `thread` - the owner thread
  + ### getExclusiveOwnerThread

    protected final [Thread](../../../lang/Thread.md "class in java.lang") getExclusiveOwnerThread()

    Returns the thread last set by `setExclusiveOwnerThread`,
    or `null` if never set. This method does not otherwise
    impose any synchronization or `volatile` field accesses.

    Returns:
    :   the owner thread