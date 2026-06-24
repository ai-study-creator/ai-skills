Module [java.base](../../module-summary.md)

Package [java.time](package-summary.md)

# Interface InstantSource

All Known Implementing Classes:
:   `Clock`

---

public interface InstantSource

Provides access to the current instant.

Instances of this interface are used to access a pluggable representation of the current instant.
For example, `InstantSource` can be used instead of [`System.currentTimeMillis()`](../lang/System.md#currentTimeMillis()).

The primary purpose of this abstraction is to allow alternate instant sources to be
plugged in as and when required. Applications use an object to obtain the
current time rather than a static method. This can simplify testing.

As such, this interface does not guarantee the result actually represents the current instant
on the time-line. Instead, it allows the application to provide a controlled view as to what
the current instant is.

Best practice for applications is to pass an `InstantSource` into any method
that requires the current instant. A dependency injection framework is one
way to achieve this:

```
  public class MyBean {
    private InstantSource source;  // dependency inject
    ...
    public void process(Instant endInstant) {
      if (source.instant().isAfter(endInstant) {
        ...
      }
    }
  }
```

This approach allows an alternative source, such as [`fixed`](#fixed(java.time.Instant))
or [`offset`](#offset(java.time.InstantSource,java.time.Duration)) to be used during testing.

The `system` factory method provides a source based on the best available
system clock. This may use [`System.currentTimeMillis()`](../lang/System.md#currentTimeMillis()), or a higher
resolution clock if one is available.

Since:
:   17

* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `static InstantSource`

  `fixed(Instant fixedInstant)`

  Obtains a source that always returns the same instant.

  `Instant`

  `instant()`

  Gets the current instant of the source.

  `default long`

  `millis()`

  Gets the current millisecond instant of the source.

  `static InstantSource`

  `offset(InstantSource baseSource,
  Duration offsetDuration)`

  Obtains a source that returns instants from the specified source with the
  specified duration added.

  `static InstantSource`

  `system()`

  Obtains a source that returns the current instant using the best available
  system clock.

  `static InstantSource`

  `tick(InstantSource baseSource,
  Duration tickDuration)`

  Obtains a source that returns instants from the specified source truncated to
  the nearest occurrence of the specified duration.

  `default Clock`

  `withZone(ZoneId zone)`

  Returns a clock with the specified time-zone.

* ## Method Details

  + ### system

    static [InstantSource](InstantSource.md "interface in java.time") system()

    Obtains a source that returns the current instant using the best available
    system clock.

    This source is based on the best available system clock. This may use
    [`System.currentTimeMillis()`](../lang/System.md#currentTimeMillis()), or a higher resolution system clock if
    one is available.

    The returned implementation is immutable, thread-safe and
    `Serializable`.

    Returns:
    :   a source that uses the best available system clock, not null
  + ### tick

    static [InstantSource](InstantSource.md "interface in java.time") tick([InstantSource](InstantSource.md "interface in java.time") baseSource,
    [Duration](Duration.md "class in java.time") tickDuration)

    Obtains a source that returns instants from the specified source truncated to
    the nearest occurrence of the specified duration.

    This source will only tick as per the specified duration. Thus, if the
    duration is half a second, the source will return instants truncated to the
    half second.

    The tick duration must be positive. If it has a part smaller than a whole
    millisecond, then the whole duration must divide into one second without
    leaving a remainder. All normal tick durations will match these criteria,
    including any multiple of hours, minutes, seconds and milliseconds, and
    sensible nanosecond durations, such as 20ns, 250,000ns and 500,000ns.

    A duration of zero or one nanosecond would have no truncation effect. Passing
    one of these will return the underlying source.

    Implementations may use a caching strategy for performance reasons. As such,
    it is possible that the start of the requested duration observed via this
    source will be later than that observed directly via the underlying source.

    The returned implementation is immutable, thread-safe and
    `Serializable` providing that the base source is.

    Parameters:
    :   `baseSource` - the base source to base the ticking source on, not null
    :   `tickDuration` - the duration of each visible tick, not negative, not null

    Returns:
    :   a source that ticks in whole units of the duration, not null

    Throws:
    :   `IllegalArgumentException` - if the duration is negative, or has a
        part smaller than a whole millisecond such that the whole duration is not
        divisible into one second
    :   `ArithmeticException` - if the duration is too large to be represented as nanos
  + ### fixed

    static [InstantSource](InstantSource.md "interface in java.time") fixed([Instant](Instant.md "class in java.time") fixedInstant)

    Obtains a source that always returns the same instant.

    This source simply returns the specified instant.
    As such, it is not a source that represents the current instant.
    The main use case for this is in testing, where the fixed source ensures
    tests are not dependent on the current source.

    The returned implementation is immutable, thread-safe and `Serializable`.

    Parameters:
    :   `fixedInstant` - the instant to use, not null

    Returns:
    :   a source that always returns the same instant, not null
  + ### offset

    static [InstantSource](InstantSource.md "interface in java.time") offset([InstantSource](InstantSource.md "interface in java.time") baseSource,
    [Duration](Duration.md "class in java.time") offsetDuration)

    Obtains a source that returns instants from the specified source with the
    specified duration added.

    This source wraps another source, returning instants that are later by the
    specified duration. If the duration is negative, the instants will be
    earlier than the current date and time.
    The main use case for this is to simulate running in the future or in the past.

    A duration of zero would have no offsetting effect.
    Passing zero will return the underlying source.

    The returned implementation is immutable, thread-safe and `Serializable`
    providing that the base source is.

    Parameters:
    :   `baseSource` - the base source to add the duration to, not null
    :   `offsetDuration` - the duration to add, not null

    Returns:
    :   a source based on the base source with the duration added, not null
  + ### instant

    [Instant](Instant.md "class in java.time") instant()

    Gets the current instant of the source.

    This returns an instant representing the current instant as defined by the source.

    Returns:
    :   the current instant from this source, not null

    Throws:
    :   `DateTimeException` - if the instant cannot be obtained, not thrown by most implementations
  + ### millis

    default long millis()

    Gets the current millisecond instant of the source.

    This returns the millisecond-based instant, measured from 1970-01-01T00:00Z (UTC).
    This is equivalent to the definition of [`System.currentTimeMillis()`](../lang/System.md#currentTimeMillis()).

    Most applications should avoid this method and use [`Instant`](Instant.md "class in java.time") to represent
    an instant on the time-line rather than a raw millisecond value.
    This method is provided to allow the use of the source in high performance use cases
    where the creation of an object would be unacceptable.

    Returns:
    :   the current millisecond instant from this source, measured from
        the Java epoch of 1970-01-01T00:00Z (UTC), not null

    Throws:
    :   `DateTimeException` - if the instant cannot be obtained, not thrown by most implementations
  + ### withZone

    default [Clock](Clock.md "class in java.time") withZone([ZoneId](ZoneId.md "class in java.time") zone)

    Returns a clock with the specified time-zone.

    This returns a [`Clock`](Clock.md "class in java.time"), which is an extension of this interface
    that combines this source and the specified time-zone.

    The returned implementation is immutable, thread-safe and `Serializable`
    providing that this source is.

    Parameters:
    :   `zone` - the time-zone to use, not null

    Returns:
    :   a clock based on this source with the specified time-zone, not null