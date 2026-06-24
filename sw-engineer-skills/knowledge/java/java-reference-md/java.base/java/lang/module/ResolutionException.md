Module [java.base](../../../module-summary.md)

Package [java.lang.module](package-summary.md)

# Class ResolutionException

[java.lang.Object](../Object.md "class in java.lang")

[java.lang.Throwable](../Throwable.md "class in java.lang")

[java.lang.Exception](../Exception.md "class in java.lang")

[java.lang.RuntimeException](../RuntimeException.md "class in java.lang")

java.lang.module.ResolutionException

All Implemented Interfaces:
:   `Serializable`

---

public class ResolutionException
extends [RuntimeException](../RuntimeException.md "class in java.lang")

Thrown when resolving a set of modules, or resolving a set of modules with
service binding, fails.

Since:
:   9

See Also:
:   * [`Configuration`](Configuration.md "class in java.lang.module")
    * [Serialized Form](../../../../serialized-form.md#java.lang.module.ResolutionException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ResolutionException()`

  Constructs a `ResolutionException` with no detail message.

  `ResolutionException(String msg)`

  Constructs a `ResolutionException` with the given detail
  message.

  `ResolutionException(String msg,
  Throwable cause)`

  Constructs a `ResolutionException` with the given detail message
  and cause.

  `ResolutionException(Throwable cause)`

  Constructs an instance of this exception with the given cause.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ResolutionException

    public ResolutionException()

    Constructs a `ResolutionException` with no detail message.
  + ### ResolutionException

    public ResolutionException([String](../String.md "class in java.lang") msg)

    Constructs a `ResolutionException` with the given detail
    message.

    Parameters:
    :   `msg` - The detail message; can be `null`
  + ### ResolutionException

    public ResolutionException([Throwable](../Throwable.md "class in java.lang") cause)

    Constructs an instance of this exception with the given cause.

    Parameters:
    :   `cause` - The cause; can be `null`
  + ### ResolutionException

    public ResolutionException([String](../String.md "class in java.lang") msg,
    [Throwable](../Throwable.md "class in java.lang") cause)

    Constructs a `ResolutionException` with the given detail message
    and cause.

    Parameters:
    :   `msg` - The detail message; can be `null`
    :   `cause` - The cause; can be `null`