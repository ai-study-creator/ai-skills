Module [java.rmi](../../module-summary.md)

Package [java.rmi](package-summary.md)

# Class RMISecurityException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../../java.base/java/lang/RuntimeException.md "class in java.lang")

[java.lang.SecurityException](../../../java.base/java/lang/SecurityException.md "class in java.lang")

java.rmi.RMISecurityException

All Implemented Interfaces:
:   `Serializable`

---

[@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
public class RMISecurityException
extends [SecurityException](../../../java.base/java/lang/SecurityException.md "class in java.lang")

Deprecated.

Use [`SecurityException`](../../../java.base/java/lang/SecurityException.md "class in java.lang") instead.
Application code should never directly reference this class, and
`RMISecurityManager` no longer throws this subclass of
`java.lang.SecurityException`.

An `RMISecurityException` signals that a security exception
has occurred during the execution of one of
`java.rmi.RMISecurityManager`'s methods.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.rmi.RMISecurityException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RMISecurityException(String name)`

  Deprecated.

  no replacement

  `RMISecurityException(String name,
  String arg)`

  Deprecated.

  no replacement
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### RMISecurityException

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public RMISecurityException([String](../../../java.base/java/lang/String.md "class in java.lang") name)

    Deprecated.

    no replacement

    Construct an `RMISecurityException` with a detail message.

    Parameters:
    :   `name` - the detail message

    Since:
    :   1.1
  + ### RMISecurityException

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public RMISecurityException([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../java.base/java/lang/String.md "class in java.lang") arg)

    Deprecated.

    no replacement

    Construct an `RMISecurityException` with a detail message.

    Parameters:
    :   `name` - the detail message
    :   `arg` - ignored

    Since:
    :   1.1