Module [java.management](../../../module-summary.md)

Package [java.lang.management](package-summary.md)

# Class MonitorInfo

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.management.LockInfo](LockInfo.md "class in java.lang.management")

java.lang.management.MonitorInfo

---

public class MonitorInfo
extends [LockInfo](LockInfo.md "class in java.lang.management")

Information about an object monitor lock. An object monitor is locked
when entering a synchronization block or method on that object.

## MXBean Mapping

`MonitorInfo` is mapped to a [`CompositeData`](../../../javax/management/openmbean/CompositeData.md "interface in javax.management.openmbean")
with attributes as specified in
the [`from`](#from(javax.management.openmbean.CompositeData)) method.

Since:
:   1.6

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MonitorInfo(String className,
  int identityHashCode,
  int stackDepth,
  StackTraceElement stackFrame)`

  Construct a `MonitorInfo` object.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static MonitorInfo`

  `from(CompositeData cd)`

  Returns a `MonitorInfo` object represented by the
  given `CompositeData`.

  `int`

  `getLockedStackDepth()`

  Returns the depth in the stack trace where the object monitor
  was locked.

  `StackTraceElement`

  `getLockedStackFrame()`

  Returns the stack frame that locked the object monitor.

  ### Methods inherited from class java.lang.management.[LockInfo](LockInfo.md "class in java.lang.management")

  `getClassName, getIdentityHashCode, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### MonitorInfo

    public MonitorInfo([String](../../../../java.base/java/lang/String.md "class in java.lang") className,
    int identityHashCode,
    int stackDepth,
    [StackTraceElement](../../../../java.base/java/lang/StackTraceElement.md "class in java.lang") stackFrame)

    Construct a `MonitorInfo` object.

    Parameters:
    :   `className` - the fully qualified name of the class of the lock object.
    :   `identityHashCode` - the [`identity hash code`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object)) of the lock object.
    :   `stackDepth` - the depth in the stack trace where the object monitor
        was locked.
    :   `stackFrame` - the stack frame that locked the object monitor.

    Throws:
    :   `IllegalArgumentException` - if
        `stackDepth` ≥ 0 but `stackFrame` is `null`,
        or `stackDepth` < 0 but `stackFrame` is not
        `null`.
* ## Method Details

  + ### getLockedStackDepth

    public int getLockedStackDepth()

    Returns the depth in the stack trace where the object monitor
    was locked. The depth is the index to the `StackTraceElement`
    array returned in the [`ThreadInfo.getStackTrace()`](ThreadInfo.md#getStackTrace()) method.

    Returns:
    :   the depth in the stack trace where the object monitor
        was locked, or a negative number if not available.
  + ### getLockedStackFrame

    public [StackTraceElement](../../../../java.base/java/lang/StackTraceElement.md "class in java.lang") getLockedStackFrame()

    Returns the stack frame that locked the object monitor.

    Returns:
    :   `StackTraceElement` that locked the object monitor,
        or `null` if not available.
  + ### from

    public static [MonitorInfo](MonitorInfo.md "class in java.lang.management") from([CompositeData](../../../javax/management/openmbean/CompositeData.md "interface in javax.management.openmbean") cd)

    Returns a `MonitorInfo` object represented by the
    given `CompositeData`.
    The given `CompositeData` must contain the following attributes
    as well as the attributes specified in the
    [mapped type](LockInfo.md#MappedType) for the [`LockInfo`](LockInfo.md "class in java.lang.management") class:

    The attributes and their types the given CompositeData contains

    | Attribute Name | Type |
    | --- | --- |
    | lockedStackFrame | [`CompositeData` for `StackTraceElement`](ThreadInfo.md#stackTraceElement) as specified in [`ThreadInfo.from(CompositeData)`](ThreadInfo.md#from(javax.management.openmbean.CompositeData)) method. |
    | lockedStackDepth | `java.lang.Integer` |

    Parameters:
    :   `cd` - `CompositeData` representing a `MonitorInfo`

    Returns:
    :   a `MonitorInfo` object represented
        by `cd` if `cd` is not `null`;
        `null` otherwise.

    Throws:
    :   `IllegalArgumentException` - if `cd` does not
        represent a `MonitorInfo` with the attributes described
        above.