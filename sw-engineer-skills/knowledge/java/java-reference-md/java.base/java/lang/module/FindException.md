Module [java.base](../../../module-summary.md)

Package [java.lang.module](package-summary.md)

# Class FindException

[java.lang.Object](../Object.md "class in java.lang")

[java.lang.Throwable](../Throwable.md "class in java.lang")

[java.lang.Exception](../Exception.md "class in java.lang")

[java.lang.RuntimeException](../RuntimeException.md "class in java.lang")

java.lang.module.FindException

All Implemented Interfaces:
:   `Serializable`

---

public class FindException
extends [RuntimeException](../RuntimeException.md "class in java.lang")

Thrown by a [`ModuleFinder`](ModuleFinder.md "interface in java.lang.module") when an error occurs finding
a module. Also thrown by [`Configuration.resolve`](Configuration.md#resolve(java.lang.module.ModuleFinder,java.util.List,java.lang.module.ModuleFinder,java.util.Collection)) when resolution fails for observability-related
reasons.

Since:
:   9

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.lang.module.FindException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `FindException()`

  Constructs a `FindException` with no detail message.

  `FindException(String msg)`

  Constructs a `FindException` with the given detail
  message.

  `FindException(String msg,
  Throwable cause)`

  Constructs a `FindException` with the given detail message
  and cause.

  `FindException(Throwable cause)`

  Constructs a `FindException` with the given cause.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### FindException

    public FindException()

    Constructs a `FindException` with no detail message.
  + ### FindException

    public FindException([String](../String.md "class in java.lang") msg)

    Constructs a `FindException` with the given detail
    message.

    Parameters:
    :   `msg` - The detail message; can be `null`
  + ### FindException

    public FindException([Throwable](../Throwable.md "class in java.lang") cause)

    Constructs a `FindException` with the given cause.

    Parameters:
    :   `cause` - The cause; can be `null`
  + ### FindException

    public FindException([String](../String.md "class in java.lang") msg,
    [Throwable](../Throwable.md "class in java.lang") cause)

    Constructs a `FindException` with the given detail message
    and cause.

    Parameters:
    :   `msg` - The detail message; can be `null`
    :   `cause` - The cause; can be `null`