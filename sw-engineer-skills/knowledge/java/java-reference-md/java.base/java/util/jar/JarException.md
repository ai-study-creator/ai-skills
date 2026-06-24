Module [java.base](../../../module-summary.md)

Package [java.util.jar](package-summary.md)

# Class JarException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.io.IOException](../../io/IOException.md "class in java.io")

[java.util.zip.ZipException](../zip/ZipException.md "class in java.util.zip")

java.util.jar.JarException

All Implemented Interfaces:
:   `Serializable`

---

public class JarException
extends [ZipException](../zip/ZipException.md "class in java.util.zip")

Signals that an error of some sort has occurred while reading from
or writing to a JAR file.

Since:
:   1.2

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.util.jar.JarException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JarException()`

  Constructs a JarException with no detail message.

  `JarException(String s)`

  Constructs a JarException with the specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### JarException

    public JarException()

    Constructs a JarException with no detail message.
  + ### JarException

    public JarException([String](../../lang/String.md "class in java.lang") s)

    Constructs a JarException with the specified detail message.

    Parameters:
    :   `s` - the detail message