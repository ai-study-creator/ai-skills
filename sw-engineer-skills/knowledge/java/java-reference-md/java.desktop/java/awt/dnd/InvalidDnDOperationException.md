Module [java.desktop](../../../module-summary.md)

Package [java.awt.dnd](package-summary.md)

# Class InvalidDnDOperationException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

[java.lang.IllegalStateException](../../../../java.base/java/lang/IllegalStateException.md "class in java.lang")

java.awt.dnd.InvalidDnDOperationException

All Implemented Interfaces:
:   `Serializable`

---

public class InvalidDnDOperationException
extends [IllegalStateException](../../../../java.base/java/lang/IllegalStateException.md "class in java.lang")

This exception is thrown by various methods in the java.awt.dnd package.
It is usually thrown to indicate that the target in question is unable
to undertake the requested operation that the present time, since the
underlying DnD system is not in the appropriate state.

Since:
:   1.2

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.awt.dnd.InvalidDnDOperationException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InvalidDnDOperationException()`

  Create a default Exception

  `InvalidDnDOperationException(String msg)`

  Create an Exception with its own descriptive message
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InvalidDnDOperationException

    public InvalidDnDOperationException()

    Create a default Exception
  + ### InvalidDnDOperationException

    public InvalidDnDOperationException([String](../../../../java.base/java/lang/String.md "class in java.lang") msg)

    Create an Exception with its own descriptive message

    Parameters:
    :   `msg` - the detail message