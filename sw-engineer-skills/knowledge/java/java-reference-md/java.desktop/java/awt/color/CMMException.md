Module [java.desktop](../../../module-summary.md)

Package [java.awt.color](package-summary.md)

# Class CMMException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

java.awt.color.CMMException

All Implemented Interfaces:
:   `Serializable`

---

public class CMMException
extends [RuntimeException](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

This exception is thrown if the native CMM returns an error.

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.awt.color.CMMException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CMMException(String s)`

  Constructs a `CMMException` with the specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### CMMException

    public CMMException([String](../../../../java.base/java/lang/String.md "class in java.lang") s)

    Constructs a `CMMException` with the specified detail message.

    Parameters:
    :   `s` - the specified detail message