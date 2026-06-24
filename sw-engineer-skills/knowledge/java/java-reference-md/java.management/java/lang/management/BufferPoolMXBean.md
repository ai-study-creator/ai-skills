Module [java.management](../../../module-summary.md)

Package [java.lang.management](package-summary.md)

# Interface BufferPoolMXBean

All Superinterfaces:
:   `PlatformManagedObject`

---

public interface BufferPoolMXBean
extends [PlatformManagedObject](PlatformManagedObject.md "interface in java.lang.management")

The management interface for a buffer pool, for example a pool of
[`direct`](../../../../java.base/java/nio/ByteBuffer.md#allocateDirect(int)) or [`mapped`](../../../../java.base/java/nio/MappedByteBuffer.md "class in java.nio") buffers.

A class implementing this interface is an
[`MXBean`](../../../javax/management/MXBean.md "annotation interface in javax.management"). A Java
virtual machine has one or more implementations of this interface. The [`getPlatformMXBeans`](ManagementFactory.md#getPlatformMXBeans(java.lang.Class))
method can be used to obtain the list of `BufferPoolMXBean` objects
representing the management interfaces for pools of buffers as follows:

```
     List<BufferPoolMXBean> pools = ManagementFactory.getPlatformMXBeans(BufferPoolMXBean.class);
```

The management interfaces are also registered with the platform [`MBeanServer`](../../../javax/management/MBeanServer.md "interface in javax.management"). The [`ObjectName`](../../../javax/management/ObjectName.md "class in javax.management") that uniquely identifies the
management interface within the `MBeanServer` takes the form:

```
     java.nio:type=BufferPool,name=pool name
```

where *pool name* is the [`name`](#getName()) of the buffer pool.

Since:
:   1.7

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `long`

  `getCount()`

  Returns an estimate of the number of buffers in the pool.

  `long`

  `getMemoryUsed()`

  Returns an estimate of the memory that the Java virtual machine is using
  for this buffer pool.

  `String`

  `getName()`

  Returns the name representing this buffer pool.

  `long`

  `getTotalCapacity()`

  Returns an estimate of the total capacity of the buffers in this pool.

  ### Methods inherited from interface java.lang.management.[PlatformManagedObject](PlatformManagedObject.md "interface in java.lang.management")

  `getObjectName`

* ## Method Details

  + ### getName

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Returns the name representing this buffer pool.

    Returns:
    :   The name of this buffer pool.
  + ### getCount

    long getCount()

    Returns an estimate of the number of buffers in the pool.

    Returns:
    :   An estimate of the number of buffers in this pool
  + ### getTotalCapacity

    long getTotalCapacity()

    Returns an estimate of the total capacity of the buffers in this pool.
    A buffer's capacity is the number of elements it contains and the value
    returned by this method is an estimate of the total capacity of buffers
    in the pool in bytes.

    Returns:
    :   An estimate of the total capacity of the buffers in this pool
        in bytes
  + ### getMemoryUsed

    long getMemoryUsed()

    Returns an estimate of the memory that the Java virtual machine is using
    for this buffer pool. The value returned by this method may differ
    from the estimate of the total [`capacity`](#getTotalCapacity()) of
    the buffers in this pool. This difference is explained by alignment,
    memory allocator, and other implementation specific reasons.

    Returns:
    :   An estimate of the memory that the Java virtual machine is using
        for this buffer pool in bytes, or `-1L` if an estimate of
        the memory usage is not available