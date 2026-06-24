Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class InstantiationException

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Exception](Exception.md "class in java.lang")

[java.lang.ReflectiveOperationException](ReflectiveOperationException.md "class in java.lang")

java.lang.InstantiationException

All Implemented Interfaces:
:   `Serializable`

---

public class InstantiationException
extends [ReflectiveOperationException](ReflectiveOperationException.md "class in java.lang")

Thrown when an application tries to create an instance of a class
using the `newInstance` method in class
`Class`, but the specified class object cannot be
instantiated. The instantiation can fail for a variety of
reasons including but not limited to:

* the class object represents an abstract class, an interface,
  an array class, a primitive type, or `void`* the class has no nullary constructor

Since:
:   1.0

See Also:
:   * [`Class.newInstance()`](Class.md#newInstance())
    * [Serialized Form](../../../serialized-form.md#java.lang.InstantiationException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InstantiationException()`

  Constructs an `InstantiationException` with no detail message.

  `InstantiationException(String s)`

  Constructs an `InstantiationException` with the
  specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InstantiationException

    public InstantiationException()

    Constructs an `InstantiationException` with no detail message.
  + ### InstantiationException

    public InstantiationException([String](String.md "class in java.lang") s)

    Constructs an `InstantiationException` with the
    specified detail message.

    Parameters:
    :   `s` - the detail message.