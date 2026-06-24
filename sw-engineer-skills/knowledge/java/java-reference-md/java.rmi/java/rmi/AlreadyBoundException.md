Module [java.rmi](../../module-summary.md)

Package [java.rmi](package-summary.md)

# Class AlreadyBoundException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

java.rmi.AlreadyBoundException

All Implemented Interfaces:
:   `Serializable`

---

public class AlreadyBoundException
extends [Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

An `AlreadyBoundException` is thrown if an attempt
is made to bind an object to a name that already
has an associated binding in the registry.

Since:
:   1.1

See Also:
:   * [`Naming.bind(String, java.rmi.Remote)`](Naming.md#bind(java.lang.String,java.rmi.Remote))
    * [`Registry.bind(String, java.rmi.Remote)`](registry/Registry.md#bind(java.lang.String,java.rmi.Remote))
    * [Serialized Form](../../../serialized-form.md#java.rmi.AlreadyBoundException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AlreadyBoundException()`

  Constructs an `AlreadyBoundException` with no
  specified detail message.

  `AlreadyBoundException(String s)`

  Constructs an `AlreadyBoundException` with the specified
  detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AlreadyBoundException

    public AlreadyBoundException()

    Constructs an `AlreadyBoundException` with no
    specified detail message.

    Since:
    :   1.1
  + ### AlreadyBoundException

    public AlreadyBoundException([String](../../../java.base/java/lang/String.md "class in java.lang") s)

    Constructs an `AlreadyBoundException` with the specified
    detail message.

    Parameters:
    :   `s` - the detail message

    Since:
    :   1.1