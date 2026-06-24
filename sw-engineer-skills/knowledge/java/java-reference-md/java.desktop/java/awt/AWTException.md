Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class AWTException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

java.awt.AWTException

All Implemented Interfaces:
:   `Serializable`

---

public class AWTException
extends [Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

Signals that an Abstract Window Toolkit exception has occurred.

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.awt.AWTException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AWTException(String msg)`

  Constructs an instance of `AWTException` with the
  specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AWTException

    public AWTException([String](../../../java.base/java/lang/String.md "class in java.lang") msg)

    Constructs an instance of `AWTException` with the
    specified detail message. A detail message is an
    instance of `String` that describes this particular
    exception.

    Parameters:
    :   `msg` - the detail message

    Since:
    :   1.0