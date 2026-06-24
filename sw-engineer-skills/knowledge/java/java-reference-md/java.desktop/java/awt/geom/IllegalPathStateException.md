Module [java.desktop](../../../module-summary.md)

Package [java.awt.geom](package-summary.md)

# Class IllegalPathStateException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

java.awt.geom.IllegalPathStateException

All Implemented Interfaces:
:   `Serializable`

---

public class IllegalPathStateException
extends [RuntimeException](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

The `IllegalPathStateException` represents an
exception that is thrown if an operation is performed on a path
that is in an illegal state with respect to the particular
operation being performed, such as appending a path segment
to a [`GeneralPath`](GeneralPath.md "class in java.awt.geom") without an initial moveto.

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.awt.geom.IllegalPathStateException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IllegalPathStateException()`

  Constructs an `IllegalPathStateException` with no
  detail message.

  `IllegalPathStateException(String s)`

  Constructs an `IllegalPathStateException` with the
  specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### IllegalPathStateException

    public IllegalPathStateException()

    Constructs an `IllegalPathStateException` with no
    detail message.

    Since:
    :   1.2
  + ### IllegalPathStateException

    public IllegalPathStateException([String](../../../../java.base/java/lang/String.md "class in java.lang") s)

    Constructs an `IllegalPathStateException` with the
    specified detail message.

    Parameters:
    :   `s` - the detail message

    Since:
    :   1.2