Module [java.base](../../../module-summary.md)

Package [java.nio.file](package-summary.md)

# Interface WatchService

All Superinterfaces:
:   `AutoCloseable`, `Closeable`

---

public interface WatchService
extends [Closeable](../../io/Closeable.md "interface in java.io")

A watch service that *watches* registered objects for changes and
events. For example a file manager may use a watch service to monitor a
directory for changes so that it can update its display of the list of files
when files are created or deleted.

A [`Watchable`](Watchable.md "interface in java.nio.file") object is registered with a watch service by invoking
its [`register`](Watchable.md#register(java.nio.file.WatchService,java.nio.file.WatchEvent.Kind%5B%5D,java.nio.file.WatchEvent.Modifier...)) method, returning a [`WatchKey`](WatchKey.md "interface in java.nio.file")
to represent the registration. When an event for an object is detected the
key is *signalled*, and if not currently signalled, it is queued to
the watch service so that it can be retrieved by consumers that invoke the
[`poll`](#poll()) or [`take`](#take()) methods to retrieve keys
and process events. Once the events have been processed the consumer
invokes the key's [`reset`](WatchKey.md#reset()) method to reset the key which
allows the key to be signalled and re-queued with further events.

Registration with a watch service is cancelled by invoking the key's
[`cancel`](WatchKey.md#cancel()) method. A key that is queued at the time that
it is cancelled remains in the queue until it is retrieved. Depending on the
object, a key may be cancelled automatically. For example, suppose a
directory is watched and the watch service detects that it has been deleted
or its file system is no longer accessible. When a key is cancelled in this
manner it is signalled and queued, if not currently signalled. To ensure
that the consumer is notified the return value from the `reset`
method indicates if the key is valid.

A watch service is safe for use by multiple concurrent consumers. To
ensure that only one consumer processes the events for a particular object at
any time then care should be taken to ensure that the key's `reset`
method is only invoked after its events have been processed. The [`close`](#close()) method may be invoked at any time to close the service causing
any threads waiting to retrieve keys, to throw `ClosedWatchServiceException`.

File systems may report events faster than they can be retrieved or
processed and an implementation may impose an unspecified limit on the number
of events that it may accumulate. Where an implementation *knowingly*
discards events then it arranges for the key's [`pollEvents`](WatchKey.md#pollEvents()) method to return an element with an event type of [`OVERFLOW`](StandardWatchEventKinds.md#OVERFLOW). This event can be used by the
consumer as a trigger to re-examine the state of the object.

When an event is reported to indicate that a file in a watched directory
has been modified then there is no guarantee that the program (or programs)
that have modified the file have completed. Care should be taken to coordinate
access with other programs that may be updating the file.
The [`FileChannel`](../channels/FileChannel.md "class in java.nio.channels") class defines methods
to lock regions of a file against access by other programs.

## Platform dependencies

The implementation that observes events from the file system is intended
to map directly on to the native file event notification facility where
available, or to use a primitive mechanism, such as polling, when a native
facility is not available. Consequently, many of the details on how events
are detected, their timeliness, and whether their ordering is preserved are
highly implementation specific. For example, when a file in a watched
directory is modified then it may result in a single [`ENTRY_MODIFY`](StandardWatchEventKinds.md#ENTRY_MODIFY) event in some
implementations but several events in other implementations. Short-lived
files (meaning files that are deleted very quickly after they are created)
may not be detected by primitive implementations that periodically poll the
file system to detect changes.

If a watched file is not located on a local storage device then it is
implementation specific if changes to the file can be detected. In particular,
it is not required that changes to files carried out on remote systems be
detected.

Since:
:   1.7

See Also:
:   * [`FileSystem.newWatchService()`](FileSystem.md#newWatchService())

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `close()`

  Closes this watch service.

  `WatchKey`

  `poll()`

  Retrieves and removes the next watch key, or `null` if none are
  present.

  `WatchKey`

  `poll(long timeout,
  TimeUnit unit)`

  Retrieves and removes the next watch key, waiting if necessary up to the
  specified wait time if none are yet present.

  `WatchKey`

  `take()`

  Retrieves and removes next watch key, waiting if none are yet present.

* ## Method Details

  + ### close

    void close()
    throws [IOException](../../io/IOException.md "class in java.io")

    Closes this watch service.

    If a thread is currently blocked in the [`take`](#take()) or [`poll`](#poll(long,java.util.concurrent.TimeUnit)) methods waiting for a key to be queued then
    it immediately receives a [`ClosedWatchServiceException`](ClosedWatchServiceException.md "class in java.nio.file"). Any
    valid keys associated with this watch service are [`invalidated`](WatchKey.md#isValid()).

    After a watch service is closed, any further attempt to invoke
    operations upon it will throw [`ClosedWatchServiceException`](ClosedWatchServiceException.md "class in java.nio.file").
    If this watch service is already closed then invoking this method
    has no effect.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Closeable`

    Throws:
    :   `IOException` - if an I/O error occurs
  + ### poll

    [WatchKey](WatchKey.md "interface in java.nio.file") poll()

    Retrieves and removes the next watch key, or `null` if none are
    present.

    Returns:
    :   the next watch key, or `null`

    Throws:
    :   `ClosedWatchServiceException` - if this watch service is closed
  + ### poll

    [WatchKey](WatchKey.md "interface in java.nio.file") poll(long timeout,
    [TimeUnit](../../util/concurrent/TimeUnit.md "enum class in java.util.concurrent") unit)
    throws [InterruptedException](../../lang/InterruptedException.md "class in java.lang")

    Retrieves and removes the next watch key, waiting if necessary up to the
    specified wait time if none are yet present.

    Parameters:
    :   `timeout` - how long to wait before giving up, in units of unit
    :   `unit` - a `TimeUnit` determining how to interpret the timeout
        parameter

    Returns:
    :   the next watch key, or `null`

    Throws:
    :   `ClosedWatchServiceException` - if this watch service is closed, or it is closed while waiting
        for the next key
    :   `InterruptedException` - if interrupted while waiting
  + ### take

    [WatchKey](WatchKey.md "interface in java.nio.file") take()
    throws [InterruptedException](../../lang/InterruptedException.md "class in java.lang")

    Retrieves and removes next watch key, waiting if none are yet present.

    Returns:
    :   the next watch key

    Throws:
    :   `ClosedWatchServiceException` - if this watch service is closed, or it is closed while waiting
        for the next key
    :   `InterruptedException` - if interrupted while waiting