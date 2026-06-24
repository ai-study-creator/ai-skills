Module [java.rmi](../../module-summary.md)

Package [java.rmi](package-summary.md)

# Class NotBoundException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

java.rmi.NotBoundException

All Implemented Interfaces:
:   `Serializable`

---

public class NotBoundException
extends [Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

A `NotBoundException` is thrown if an attempt
is made to lookup or unbind in the registry a name that has
no associated binding.

Since:
:   1.1

See Also:
:   * [`Naming.lookup(String)`](Naming.md#lookup(java.lang.String))
    * [`Naming.unbind(String)`](Naming.md#unbind(java.lang.String))
    * [`Registry.lookup(String)`](registry/Registry.md#lookup(java.lang.String))
    * [`Registry.unbind(String)`](registry/Registry.md#unbind(java.lang.String))
    * [Serialized Form](../../../serialized-form.md#java.rmi.NotBoundException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NotBoundException()`

  Constructs a `NotBoundException` with no
  specified detail message.

  `NotBoundException(String s)`

  Constructs a `NotBoundException` with the specified
  detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NotBoundException

    public NotBoundException()

    Constructs a `NotBoundException` with no
    specified detail message.

    Since:
    :   1.1
  + ### NotBoundException

    public NotBoundException([String](../../../java.base/java/lang/String.md "class in java.lang") s)

    Constructs a `NotBoundException` with the specified
    detail message.

    Parameters:
    :   `s` - the detail message

    Since:
    :   1.1