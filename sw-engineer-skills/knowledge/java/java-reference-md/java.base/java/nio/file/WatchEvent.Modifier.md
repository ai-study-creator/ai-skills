Module [java.base](../../../module-summary.md)

Package [java.nio.file](package-summary.md)

# Interface WatchEvent.Modifier

Enclosing interface:
:   `WatchEvent<T>`

---

public static interface WatchEvent.Modifier

An event modifier that qualifies how a [`Watchable`](Watchable.md "interface in java.nio.file") is registered
with a [`WatchService`](WatchService.md "interface in java.nio.file").

This release does not define any *standard* modifiers.

Since:
:   1.7

See Also:
:   * [`Watchable.register(java.nio.file.WatchService, java.nio.file.WatchEvent.Kind<?>[], java.nio.file.WatchEvent.Modifier...)`](Watchable.md#register(java.nio.file.WatchService,java.nio.file.WatchEvent.Kind%5B%5D,java.nio.file.WatchEvent.Modifier...))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `name()`

  Returns the name of the modifier.

* ## Method Details

  + ### name

    [String](../../lang/String.md "class in java.lang") name()

    Returns the name of the modifier.

    Returns:
    :   the name of the modifier