Module [java.management](../../../module-summary.md)

Package [javax.management.openmbean](package-summary.md)

# Class KeyAlreadyExistsException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

[java.lang.IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

javax.management.openmbean.KeyAlreadyExistsException

All Implemented Interfaces:
:   `Serializable`

---

public class KeyAlreadyExistsException
extends [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

This runtime exception is thrown to indicate that the index of a row to be added to a *tabular data* instance
is already used to refer to another row in this *tabular data* instance.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.openmbean.KeyAlreadyExistsException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `KeyAlreadyExistsException()`

  A KeyAlreadyExistsException with no detail message.

  `KeyAlreadyExistsException(String msg)`

  A KeyAlreadyExistsException with a detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### KeyAlreadyExistsException

    public KeyAlreadyExistsException()

    A KeyAlreadyExistsException with no detail message.
  + ### KeyAlreadyExistsException

    public KeyAlreadyExistsException([String](../../../../java.base/java/lang/String.md "class in java.lang") msg)

    A KeyAlreadyExistsException with a detail message.

    Parameters:
    :   `msg` - the detail message.