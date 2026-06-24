Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Interface ProcessHandle.Info

Enclosing interface:
:   `ProcessHandle`

---

public static interface ProcessHandle.Info

Information snapshot about the process.
The attributes of a process vary by operating system and are not available
in all implementations. Information about processes is limited
by the operating system privileges of the process making the request.
The return types are `Optional<T>` allowing explicit tests
and actions if the value is available.

Since:
:   9

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Optional<String[]>`

  `arguments()`

  Returns an array of Strings of the arguments of the process.

  `Optional<String>`

  `command()`

  Returns the executable pathname of the process.

  `Optional<String>`

  `commandLine()`

  Returns the command line of the process.

  `Optional<Instant>`

  `startInstant()`

  Returns the start time of the process.

  `Optional<Duration>`

  `totalCpuDuration()`

  Returns the total cputime accumulated of the process.

  `Optional<String>`

  `user()`

  Return the user of the process.

* ## Method Details

  + ### command

    [Optional](../util/Optional.md "class in java.util")<[String](String.md "class in java.lang")> command()

    Returns the executable pathname of the process.

    Returns:
    :   an `Optional<String>` of the executable pathname
        of the process
  + ### commandLine

    [Optional](../util/Optional.md "class in java.util")<[String](String.md "class in java.lang")> commandLine()

    Returns the command line of the process.

    If [`command()`](#command()) and [`arguments()`](#arguments()) return
    non-empty optionals, this is simply a convenience method which concatenates
    the values of the two functions separated by spaces. Otherwise it will return a
    best-effort, platform dependent representation of the command line.

    Returns:
    :   an `Optional<String>` of the command line
        of the process
  + ### arguments

    [Optional](../util/Optional.md "class in java.util")<[String](String.md "class in java.lang")[]> arguments()

    Returns an array of Strings of the arguments of the process.

    Returns:
    :   an `Optional<String[]>` of the arguments of the process
  + ### startInstant

    [Optional](../util/Optional.md "class in java.util")<[Instant](../time/Instant.md "class in java.time")> startInstant()

    Returns the start time of the process.

    Returns:
    :   an `Optional<Instant>` of the start time of the process
  + ### totalCpuDuration

    [Optional](../util/Optional.md "class in java.util")<[Duration](../time/Duration.md "class in java.time")> totalCpuDuration()

    Returns the total cputime accumulated of the process.

    Returns:
    :   an `Optional<Duration>` for the accumulated total cputime
  + ### user

    [Optional](../util/Optional.md "class in java.util")<[String](String.md "class in java.lang")> user()

    Return the user of the process.

    Returns:
    :   an `Optional<String>` for the user of the process