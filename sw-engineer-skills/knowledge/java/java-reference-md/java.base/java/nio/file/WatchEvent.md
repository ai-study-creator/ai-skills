Module [java.base](../../../module-summary.md)

Package [java.nio.file](package-summary.md)

# Interface WatchEvent<T>

Type Parameters:
:   `T` - The type of the context object associated with the event

---

public interface WatchEvent<T>

An event or a repeated event for an object that is registered with a [`WatchService`](WatchService.md "interface in java.nio.file").

An event is classified by its [`kind`](#kind()) and has a [`count`](#count()) to indicate the number of times that the event has been
observed. This allows for efficient representation of repeated events. The
[`context`](#context()) method returns any context associated with
the event. In the case of a repeated event then the context is the same for
all events.

Watch events are immutable and safe for use by multiple concurrent
threads.

Since:
:   1.7

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static interface`

  `WatchEvent.Kind<T>`

  An event kind, for the purposes of identification.

  `static interface`

  `WatchEvent.Modifier`

  An event modifier that qualifies how a [`Watchable`](Watchable.md "interface in java.nio.file") is registered
  with a [`WatchService`](WatchService.md "interface in java.nio.file").
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `T`

  `context()`

  Returns the context for the event.

  `int`

  `count()`

  Returns the event count.

  `WatchEvent.Kind<T>`

  `kind()`

  Returns the event kind.

* ## Method Details

  + ### kind

    [WatchEvent.Kind](WatchEvent.Kind.md "interface in java.nio.file")<[T](WatchEvent.md "type parameter in WatchEvent")> kind()

    Returns the event kind.

    Returns:
    :   the event kind
  + ### count

    int count()

    Returns the event count. If the event count is greater than `1`
    then this is a repeated event.

    Returns:
    :   the event count
  + ### context

    [T](WatchEvent.md "type parameter in WatchEvent") context()

    Returns the context for the event.

    In the case of [`ENTRY_CREATE`](StandardWatchEventKinds.md#ENTRY_CREATE),
    [`ENTRY_DELETE`](StandardWatchEventKinds.md#ENTRY_DELETE), and [`ENTRY_MODIFY`](StandardWatchEventKinds.md#ENTRY_MODIFY) events the context is
    a `Path` that is the [`relative`](Path.md#relativize(java.nio.file.Path)) path between
    the directory registered with the watch service, and the entry that is
    created, deleted, or modified.

    Returns:
    :   the event context; may be `null`