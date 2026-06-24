Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class AWTError

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Error](../../../java.base/java/lang/Error.md "class in java.lang")

java.awt.AWTError

All Implemented Interfaces:
:   `Serializable`

---

public class AWTError
extends [Error](../../../java.base/java/lang/Error.md "class in java.lang")

Thrown when a serious Abstract Window Toolkit error has occurred.

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.awt.AWTError)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AWTError(String msg)`

  Constructs an instance of `AWTError` with the specified
  detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AWTError

    public AWTError([String](../../../java.base/java/lang/String.md "class in java.lang") msg)

    Constructs an instance of `AWTError` with the specified
    detail message.

    Parameters:
    :   `msg` - the detail message.

    Since:
    :   1.0