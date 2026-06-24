Module [java.base](../../../module-summary.md)

Package [java.nio.file](package-summary.md)

# Class StandardWatchEventKinds

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.nio.file.StandardWatchEventKinds

---

public final class StandardWatchEventKinds
extends [Object](../../lang/Object.md "class in java.lang")

Defines the *standard* event kinds.

Since:
:   1.7

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final WatchEvent.Kind<Path>`

  `ENTRY_CREATE`

  Directory entry created.

  `static final WatchEvent.Kind<Path>`

  `ENTRY_DELETE`

  Directory entry deleted.

  `static final WatchEvent.Kind<Path>`

  `ENTRY_MODIFY`

  Directory entry modified.

  `static final WatchEvent.Kind<Object>`

  `OVERFLOW`

  A special event to indicate that events may have been lost or
  discarded.
* ## Method Summary

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### OVERFLOW

    public static final [WatchEvent.Kind](WatchEvent.Kind.md "interface in java.nio.file")<[Object](../../lang/Object.md "class in java.lang")> OVERFLOW

    A special event to indicate that events may have been lost or
    discarded.

    The [`context`](WatchEvent.md#context()) for this event is
    implementation specific and may be `null`. The event [`count`](WatchEvent.md#count()) may be greater than `1`.

    See Also:
    :   - [`WatchService`](WatchService.md "interface in java.nio.file")
  + ### ENTRY\_CREATE

    public static final [WatchEvent.Kind](WatchEvent.Kind.md "interface in java.nio.file")<[Path](Path.md "interface in java.nio.file")> ENTRY\_CREATE

    Directory entry created.

    When a directory is registered for this event then the [`WatchKey`](WatchKey.md "interface in java.nio.file")
    is queued when it is observed that an entry is created in the directory
    or renamed into the directory. The event [`count`](WatchEvent.md#count())
    for this event is always `1`.
  + ### ENTRY\_DELETE

    public static final [WatchEvent.Kind](WatchEvent.Kind.md "interface in java.nio.file")<[Path](Path.md "interface in java.nio.file")> ENTRY\_DELETE

    Directory entry deleted.

    When a directory is registered for this event then the [`WatchKey`](WatchKey.md "interface in java.nio.file")
    is queued when it is observed that an entry is deleted or renamed out of
    the directory. The event [`count`](WatchEvent.md#count()) for this event
    is always `1`.
  + ### ENTRY\_MODIFY

    public static final [WatchEvent.Kind](WatchEvent.Kind.md "interface in java.nio.file")<[Path](Path.md "interface in java.nio.file")> ENTRY\_MODIFY

    Directory entry modified.

    When a directory is registered for this event then the [`WatchKey`](WatchKey.md "interface in java.nio.file")
    is queued when it is observed that an entry in the directory has been
    modified. The event [`count`](WatchEvent.md#count()) for this event is
    `1` or greater.