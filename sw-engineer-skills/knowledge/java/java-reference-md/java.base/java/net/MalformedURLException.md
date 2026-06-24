Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class MalformedURLException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.io.IOException](../io/IOException.md "class in java.io")

java.net.MalformedURLException

All Implemented Interfaces:
:   `Serializable`

---

public class MalformedURLException
extends [IOException](../io/IOException.md "class in java.io")

Thrown to indicate that a malformed URL has occurred. Either no
legal protocol could be found in a specification string or the
string could not be parsed.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.net.MalformedURLException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MalformedURLException()`

  Constructs a `MalformedURLException` with no detail message.

  `MalformedURLException(String msg)`

  Constructs a `MalformedURLException` with the
  specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### MalformedURLException

    public MalformedURLException()

    Constructs a `MalformedURLException` with no detail message.
  + ### MalformedURLException

    public MalformedURLException([String](../lang/String.md "class in java.lang") msg)

    Constructs a `MalformedURLException` with the
    specified detail message.

    Parameters:
    :   `msg` - the detail message.