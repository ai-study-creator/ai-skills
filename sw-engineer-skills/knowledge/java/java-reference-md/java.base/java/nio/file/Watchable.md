Module [java.base](../../../module-summary.md)

Package [java.nio.file](package-summary.md)

# Interface Watchable

All Known Subinterfaces:
:   `Path`

---

public interface Watchable

An object that may be registered with a watch service so that it can be
*watched* for changes and events.

This interface defines the [`register`](#register(java.nio.file.WatchService,java.nio.file.WatchEvent.Kind%5B%5D,java.nio.file.WatchEvent.Modifier...)) method to register
the object with a [`WatchService`](WatchService.md "interface in java.nio.file") returning a [`WatchKey`](WatchKey.md "interface in java.nio.file") to
represent the registration. An object may be registered with more than one
watch service. Registration with a watch service is cancelled by invoking the
key's [`cancel`](WatchKey.md#cancel()) method.

Since:
:   1.7

See Also:
:   * [`Path.register(java.nio.file.WatchService, java.nio.file.WatchEvent.Kind<?>[], java.nio.file.WatchEvent.Modifier...)`](Path.md#register(java.nio.file.WatchService,java.nio.file.WatchEvent.Kind%5B%5D,java.nio.file.WatchEvent.Modifier...))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `WatchKey`

  `register(WatchService watcher,
  WatchEvent.Kind<?>... events)`

  Registers an object with a watch service.

  `WatchKey`

  `register(WatchService watcher,
  WatchEvent.Kind<?>[] events,
  WatchEvent.Modifier... modifiers)`

  Registers an object with a watch service.

* ## Method Details

  + ### register

    [WatchKey](WatchKey.md "interface in java.nio.file") register([WatchService](WatchService.md "interface in java.nio.file") watcher,
    [WatchEvent.Kind](WatchEvent.Kind.md "interface in java.nio.file")<?>[] events,
    [WatchEvent.Modifier](WatchEvent.Modifier.md "interface in java.nio.file")... modifiers)
    throws [IOException](../../io/IOException.md "class in java.io")

    Registers an object with a watch service.

    If the file system object identified by this object is currently
    registered with the watch service then the watch key, representing that
    registration, is returned after changing the event set or modifiers to
    those specified by the `events` and `modifiers` parameters.
    Changing the event set does not cause pending events for the object to be
    discarded. Objects are automatically registered for the [`OVERFLOW`](StandardWatchEventKinds.md#OVERFLOW) event. This event is not
    required to be present in the array of events.

    Otherwise the file system object has not yet been registered with the
    given watch service, so it is registered and the resulting new key is
    returned.

    Implementations of this interface should specify the events they
    support.

    Parameters:
    :   `watcher` - the watch service to which this object is to be registered
    :   `events` - the events for which this object should be registered
    :   `modifiers` - the modifiers, if any, that modify how the object is registered

    Returns:
    :   a key representing the registration of this object with the
        given watch service

    Throws:
    :   `UnsupportedOperationException` - if unsupported events or modifiers are specified
    :   `IllegalArgumentException` - if an invalid of combination of events are modifiers are specified
    :   `ClosedWatchServiceException` - if the watch service is closed
    :   `IOException` - if an I/O error occurs
    :   `SecurityException` - if a security manager is installed and it denies an unspecified
        permission required to monitor this object. Implementations of
        this interface should specify the permission checks.
  + ### register

    [WatchKey](WatchKey.md "interface in java.nio.file") register([WatchService](WatchService.md "interface in java.nio.file") watcher,
    [WatchEvent.Kind](WatchEvent.Kind.md "interface in java.nio.file")<?>... events)
    throws [IOException](../../io/IOException.md "class in java.io")

    Registers an object with a watch service.

    An invocation of this method behaves in exactly the same way as the
    invocation

    Copy![Copy snippet](../../../../copy.svg)

    ```
        register.watcher, events, new WatchEvent.Modifier[0]);
    ```

    Parameters:
    :   `watcher` - the watch service to which this object is to be registered
    :   `events` - the events for which this object should be registered

    Returns:
    :   a key representing the registration of this object with the
        given watch service

    Throws:
    :   `UnsupportedOperationException` - if unsupported events are specified
    :   `IllegalArgumentException` - if an invalid of combination of events are specified
    :   `ClosedWatchServiceException` - if the watch service is closed
    :   `IOException` - if an I/O error occurs
    :   `SecurityException` - if a security manager is installed and it denies an unspecified
        permission required to monitor this object. Implementations of
        this interface should specify the permission checks.