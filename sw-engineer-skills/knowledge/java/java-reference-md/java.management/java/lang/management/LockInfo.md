Module [java.management](../../../module-summary.md)

Package [java.lang.management](package-summary.md)

# Class LockInfo

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.lang.management.LockInfo

Direct Known Subclasses:
:   `MonitorInfo`

---

public class LockInfo
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

Information about a *lock*. A lock can be a built-in object monitor,
an *ownable synchronizer*, or the [`Condition`](../../../../java.base/java/util/concurrent/locks/Condition.md "interface in java.util.concurrent.locks")
object associated with synchronizers.

An ownable synchronizer is
a synchronizer that may be exclusively owned by a thread and uses
[`AbstractOwnableSynchronizer`](../../../../java.base/java/util/concurrent/locks/AbstractOwnableSynchronizer.md "class in java.util.concurrent.locks")
(or its subclass) to implement its synchronization property.
[`ReentrantLock`](../../../../java.base/java/util/concurrent/locks/ReentrantLock.md "class in java.util.concurrent.locks") and the write-lock (but not
the read-lock) of [`ReentrantReadWriteLock`](../../../../java.base/java/util/concurrent/locks/ReentrantReadWriteLock.md "class in java.util.concurrent.locks") are
two examples of ownable synchronizers provided by the platform.

## MXBean Mapping

`LockInfo` is mapped to a [`CompositeData`](../../../javax/management/openmbean/CompositeData.md "interface in javax.management.openmbean")
as specified in the [`from`](#from(javax.management.openmbean.CompositeData)) method.

Since:
:   1.6

See Also:
:   * [`AbstractOwnableSynchronizer`](../../../../java.base/java/util/concurrent/locks/AbstractOwnableSynchronizer.md "class in java.util.concurrent.locks")
    * [`Condition`](../../../../java.base/java/util/concurrent/locks/Condition.md "interface in java.util.concurrent.locks")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `LockInfo(String className,
  int identityHashCode)`

  Constructs a `LockInfo` object.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static LockInfo`

  `from(CompositeData cd)`

  Returns a `LockInfo` object represented by the
  given `CompositeData`.

  `String`

  `getClassName()`

  Returns the fully qualified name of the class of the lock object.

  `int`

  `getIdentityHashCode()`

  Returns the identity hash code of the lock object
  returned from the [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object)) method.

  `String`

  `toString()`

  Returns a string representation of a lock.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### LockInfo

    public LockInfo([String](../../../../java.base/java/lang/String.md "class in java.lang") className,
    int identityHashCode)

    Constructs a `LockInfo` object.

    Parameters:
    :   `className` - the fully qualified name of the class of the lock object.
    :   `identityHashCode` - the [`identity hash code`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object)) of the lock object.
* ## Method Details

  + ### getClassName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getClassName()

    Returns the fully qualified name of the class of the lock object.

    Returns:
    :   the fully qualified name of the class of the lock object.
  + ### getIdentityHashCode

    public int getIdentityHashCode()

    Returns the identity hash code of the lock object
    returned from the [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object)) method.

    Returns:
    :   the identity hash code of the lock object.
  + ### from

    public static [LockInfo](LockInfo.md "class in java.lang.management") from([CompositeData](../../../javax/management/openmbean/CompositeData.md "interface in javax.management.openmbean") cd)

    Returns a `LockInfo` object represented by the
    given `CompositeData`.
    The given `CompositeData` must contain the following attributes:

    The attributes and the types the given CompositeData contains

    | Attribute Name | Type |
    | --- | --- |
    | className | `java.lang.String` |
    | identityHashCode | `java.lang.Integer` |

    Parameters:
    :   `cd` - `CompositeData` representing a `LockInfo`

    Returns:
    :   a `LockInfo` object represented
        by `cd` if `cd` is not `null`;
        `null` otherwise.

    Throws:
    :   `IllegalArgumentException` - if `cd` does not
        represent a `LockInfo` with the attributes described
        above.

    Since:
    :   1.8
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of a lock. The returned
    string representation consists of the name of the class of the
    lock object, the at-sign character `@', and the unsigned
    hexadecimal representation of the *identity* hash code
    of the object. This method returns a string equals to the value of:
    > ```
    >  lock.getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(lock))
    > ```

    where `lock` is the lock object.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   the string representation of a lock.