Module [java.management](../../../module-summary.md)

Package [java.lang.management](package-summary.md)

# Class MemoryUsage

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.lang.management.MemoryUsage

---

public class MemoryUsage
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

A `MemoryUsage` object represents a snapshot of memory usage.
Instances of the `MemoryUsage` class are usually constructed
by methods that are used to obtain memory usage
information about individual memory pool of the Java virtual machine or
the heap or non-heap memory of the Java virtual machine as a whole.

A `MemoryUsage` object contains four values:

Describes the MemoryUsage object content

| Value | Description |
| --- | --- |
| `init` | represents the initial amount of memory (in bytes) that the Java virtual machine requests from the operating system for memory management during startup. The Java virtual machine may request additional memory from the operating system and may also release memory to the system over time. The value of `init` may be undefined. |
| `used` | represents the amount of memory currently used (in bytes). |
| `committed` | represents the amount of memory (in bytes) that is guaranteed to be available for use by the Java virtual machine. The amount of committed memory may change over time (increase or decrease). The Java virtual machine may release memory to the system and `committed` could be less than `init`. `committed` will always be greater than or equal to `used`. |
| `max` | represents the maximum amount of memory (in bytes) that can be used for memory management. Its value may be undefined. The maximum amount of memory may change over time if defined. The amount of used and committed memory will always be less than or equal to `max` if `max` is defined. A memory allocation may fail if it attempts to increase the used memory such that `used > committed` even if `used <= max` would still be true (for example, when the system is low on virtual memory). |

Below is a picture showing an example of a memory pool:

```
        +----------------------------------------------+
        +////////////////           |                  +
        +////////////////           |                  +
        +----------------------------------------------+

        |--------|
           init
        |---------------|
               used
        |---------------------------|
                  committed
        |----------------------------------------------|
                            max
```

## MXBean Mapping

`MemoryUsage` is mapped to a [`CompositeData`](../../../javax/management/openmbean/CompositeData.md "interface in javax.management.openmbean")
with attributes as specified in the [`from`](#from(javax.management.openmbean.CompositeData)) method.

Since:
:   1.5

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MemoryUsage(long init,
  long used,
  long committed,
  long max)`

  Constructs a `MemoryUsage` object.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static MemoryUsage`

  `from(CompositeData cd)`

  Returns a `MemoryUsage` object represented by the
  given `CompositeData`.

  `long`

  `getCommitted()`

  Returns the amount of memory in bytes that is committed for
  the Java virtual machine to use.

  `long`

  `getInit()`

  Returns the amount of memory in bytes that the Java virtual machine
  initially requests from the operating system for memory management.

  `long`

  `getMax()`

  Returns the maximum amount of memory in bytes that can be
  used for memory management.

  `long`

  `getUsed()`

  Returns the amount of used memory in bytes.

  `String`

  `toString()`

  Returns a descriptive representation of this memory usage.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### MemoryUsage

    public MemoryUsage(long init,
    long used,
    long committed,
    long max)

    Constructs a `MemoryUsage` object.

    Parameters:
    :   `init` - the initial amount of memory in bytes that
        the Java virtual machine allocates;
        or `-1` if undefined.
    :   `used` - the amount of used memory in bytes.
    :   `committed` - the amount of committed memory in bytes.
    :   `max` - the maximum amount of memory in bytes that
        can be used; or `-1` if undefined.

    Throws:
    :   `IllegalArgumentException` - if
        - the value of `init` or `max` is negative
          but not `-1`; or
        - the value of `used` or `committed` is negative;
          or
        - `used` is greater than the value of `committed`;
          or
        - `committed` is greater than the value of `max`
          `max` if defined.
* ## Method Details

  + ### getInit

    public long getInit()

    Returns the amount of memory in bytes that the Java virtual machine
    initially requests from the operating system for memory management.
    This method returns `-1` if the initial memory size is undefined.

    Returns:
    :   the initial size of memory in bytes;
        `-1` if undefined.
  + ### getUsed

    public long getUsed()

    Returns the amount of used memory in bytes.

    Returns:
    :   the amount of used memory in bytes.
  + ### getCommitted

    public long getCommitted()

    Returns the amount of memory in bytes that is committed for
    the Java virtual machine to use. This amount of memory is
    guaranteed for the Java virtual machine to use.

    Returns:
    :   the amount of committed memory in bytes.
  + ### getMax

    public long getMax()

    Returns the maximum amount of memory in bytes that can be
    used for memory management. This method returns `-1`
    if the maximum memory size is undefined.

    This amount of memory is not guaranteed to be available
    for memory management if it is greater than the amount of
    committed memory. The Java virtual machine may fail to allocate
    memory even if the amount of used memory does not exceed this
    maximum size.

    Returns:
    :   the maximum amount of memory in bytes;
        `-1` if undefined.
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a descriptive representation of this memory usage.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.
  + ### from

    public static [MemoryUsage](MemoryUsage.md "class in java.lang.management") from([CompositeData](../../../javax/management/openmbean/CompositeData.md "interface in javax.management.openmbean") cd)

    Returns a `MemoryUsage` object represented by the
    given `CompositeData`. The given `CompositeData`
    must contain the following attributes:

    The attributes and the types the given CompositeData contains

    | Attribute Name | Type |
    | --- | --- |
    | init | `java.lang.Long` |
    | used | `java.lang.Long` |
    | committed | `java.lang.Long` |
    | max | `java.lang.Long` |

    Parameters:
    :   `cd` - `CompositeData` representing a `MemoryUsage`

    Returns:
    :   a `MemoryUsage` object represented by `cd`
        if `cd` is not `null`;
        `null` otherwise.

    Throws:
    :   `IllegalArgumentException` - if `cd` does not
        represent a `MemoryUsage` with the attributes described
        above.