Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Interface Delayed

All Superinterfaces:
:   `Comparable<Delayed>`

All Known Subinterfaces:
:   `RunnableScheduledFuture<V>`, `ScheduledFuture<V>`

---

public interface Delayed
extends [Comparable](../../lang/Comparable.md "interface in java.lang")<[Delayed](Delayed.md "interface in java.util.concurrent")>

A mix-in style interface for marking objects that should be
acted upon after a given delay.

An implementation of this interface must define a
`compareTo` method that provides an ordering consistent with
its `getDelay` method.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `long`

  `getDelay(TimeUnit unit)`

  Returns the remaining delay associated with this object, in the
  given time unit.

  ### Methods inherited from interface java.lang.[Comparable](../../lang/Comparable.md "interface in java.lang")

  `compareTo`

* ## Method Details

  + ### getDelay

    long getDelay([TimeUnit](TimeUnit.md "enum class in java.util.concurrent") unit)

    Returns the remaining delay associated with this object, in the
    given time unit.

    Parameters:
    :   `unit` - the time unit

    Returns:
    :   the remaining delay; zero or negative values indicate
        that the delay has already elapsed