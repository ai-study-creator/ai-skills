Module [java.base](../../../module-summary.md)

Package [java.nio.file](package-summary.md)

# Interface WatchEvent.Kind<T>

Type Parameters:
:   `T` - The type of the context object associated with the event

Enclosing interface:
:   `WatchEvent<T>`

---

public static interface WatchEvent.Kind<T>

An event kind, for the purposes of identification.

Since:
:   1.7

See Also:
:   * [`StandardWatchEventKinds`](StandardWatchEventKinds.md "class in java.nio.file")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `name()`

  Returns the name of the event kind.

  `Class<T>`

  `type()`

  Returns the type of the [`context`](WatchEvent.md#context()) value.

* ## Method Details

  + ### name

    [String](../../lang/String.md "class in java.lang") name()

    Returns the name of the event kind.

    Returns:
    :   the name of the event kind
  + ### type

    [Class](../../lang/Class.md "class in java.lang")<[T](WatchEvent.Kind.md "type parameter in WatchEvent.Kind")> type()

    Returns the type of the [`context`](WatchEvent.md#context()) value.

    Returns:
    :   the type of the context value