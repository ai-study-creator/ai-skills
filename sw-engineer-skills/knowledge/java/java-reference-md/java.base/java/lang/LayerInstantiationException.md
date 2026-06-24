Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class LayerInstantiationException

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Exception](Exception.md "class in java.lang")

[java.lang.RuntimeException](RuntimeException.md "class in java.lang")

java.lang.LayerInstantiationException

All Implemented Interfaces:
:   `Serializable`

---

public class LayerInstantiationException
extends [RuntimeException](RuntimeException.md "class in java.lang")

Thrown when creating a [module layer](ModuleLayer.md "class in java.lang") fails.

Since:
:   9

See Also:
:   * [`ModuleLayer`](ModuleLayer.md "class in java.lang")
    * [Serialized Form](../../../serialized-form.md#java.lang.LayerInstantiationException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `LayerInstantiationException()`

  Constructs a `LayerInstantiationException` with no detail message.

  `LayerInstantiationException(String msg)`

  Constructs a `LayerInstantiationException` with the given detail
  message.

  `LayerInstantiationException(String msg,
  Throwable cause)`

  Constructs a `LayerInstantiationException` with the given detail
  message and cause.

  `LayerInstantiationException(Throwable cause)`

  Constructs a `LayerInstantiationException` with the given cause.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### LayerInstantiationException

    public LayerInstantiationException()

    Constructs a `LayerInstantiationException` with no detail message.
  + ### LayerInstantiationException

    public LayerInstantiationException([String](String.md "class in java.lang") msg)

    Constructs a `LayerInstantiationException` with the given detail
    message.

    Parameters:
    :   `msg` - The detail message; can be `null`
  + ### LayerInstantiationException

    public LayerInstantiationException([Throwable](Throwable.md "class in java.lang") cause)

    Constructs a `LayerInstantiationException` with the given cause.

    Parameters:
    :   `cause` - The cause; can be `null`
  + ### LayerInstantiationException

    public LayerInstantiationException([String](String.md "class in java.lang") msg,
    [Throwable](Throwable.md "class in java.lang") cause)

    Constructs a `LayerInstantiationException` with the given detail
    message and cause.

    Parameters:
    :   `msg` - The detail message; can be `null`
    :   `cause` - The cause; can be `null`