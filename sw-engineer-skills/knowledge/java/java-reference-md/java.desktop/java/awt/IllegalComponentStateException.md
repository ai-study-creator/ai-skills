Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class IllegalComponentStateException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../../java.base/java/lang/RuntimeException.md "class in java.lang")

[java.lang.IllegalStateException](../../../java.base/java/lang/IllegalStateException.md "class in java.lang")

java.awt.IllegalComponentStateException

All Implemented Interfaces:
:   `Serializable`

---

public class IllegalComponentStateException
extends [IllegalStateException](../../../java.base/java/lang/IllegalStateException.md "class in java.lang")

Signals that an AWT component is not in an appropriate state for
the requested operation.

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.awt.IllegalComponentStateException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IllegalComponentStateException()`

  Constructs an IllegalComponentStateException with no detail message.

  `IllegalComponentStateException(String s)`

  Constructs an IllegalComponentStateException with the specified detail
  message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### IllegalComponentStateException

    public IllegalComponentStateException()

    Constructs an IllegalComponentStateException with no detail message.
    A detail message is a String that describes this particular exception.
  + ### IllegalComponentStateException

    public IllegalComponentStateException([String](../../../java.base/java/lang/String.md "class in java.lang") s)

    Constructs an IllegalComponentStateException with the specified detail
    message. A detail message is a String that describes this particular
    exception.

    Parameters:
    :   `s` - the String that contains a detailed message