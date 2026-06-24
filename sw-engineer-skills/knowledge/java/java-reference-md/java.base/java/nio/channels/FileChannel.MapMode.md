Module [java.base](../../../module-summary.md)

Package [java.nio.channels](package-summary.md)

# Class FileChannel.MapMode

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.nio.channels.FileChannel.MapMode

Enclosing class:
:   `FileChannel`

---

public static class FileChannel.MapMode
extends [Object](../../lang/Object.md "class in java.lang")

A file-mapping mode.

Since:
:   1.4

See Also:
:   * [`FileChannel.map(java.nio.channels.FileChannel.MapMode, long, long)`](FileChannel.md#map(java.nio.channels.FileChannel.MapMode,long,long))

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final FileChannel.MapMode`

  `PRIVATE`

  Mode for a private (copy-on-write) mapping.

  `static final FileChannel.MapMode`

  `READ_ONLY`

  Mode for a read-only mapping.

  `static final FileChannel.MapMode`

  `READ_WRITE`

  Mode for a read/write mapping.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `toString()`

  Returns a string describing this file-mapping mode.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### READ\_ONLY

    public static final [FileChannel.MapMode](FileChannel.MapMode.md "class in java.nio.channels") READ\_ONLY

    Mode for a read-only mapping.
  + ### READ\_WRITE

    public static final [FileChannel.MapMode](FileChannel.MapMode.md "class in java.nio.channels") READ\_WRITE

    Mode for a read/write mapping.
  + ### PRIVATE

    public static final [FileChannel.MapMode](FileChannel.MapMode.md "class in java.nio.channels") PRIVATE

    Mode for a private (copy-on-write) mapping.
* ## Method Details

  + ### toString

    public [String](../../lang/String.md "class in java.lang") toString()

    Returns a string describing this file-mapping mode.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   A descriptive string