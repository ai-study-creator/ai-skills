Module [java.desktop](../../module-summary.md)

Package [javax.print](package-summary.md)

# Class PrintException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

javax.print.PrintException

All Implemented Interfaces:
:   `Serializable`

---

public class PrintException
extends [Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

Class `PrintException` encapsulates a printing-related error condition
that occurred while using a Print Service instance. This base class furnishes
only a string description of the error. Subclasses furnish more detailed
information if applicable.

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.print.PrintException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PrintException()`

  Construct a print exception with no detail message.

  `PrintException(Exception e)`

  Construct a print exception chaining the supplied exception.

  `PrintException(String s)`

  Construct a print exception with the given detail message.

  `PrintException(String s,
  Exception e)`

  Construct a print exception with the given detail message and chained
  exception.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### PrintException

    public PrintException()

    Construct a print exception with no detail message.
  + ### PrintException

    public PrintException([String](../../../java.base/java/lang/String.md "class in java.lang") s)

    Construct a print exception with the given detail message.

    Parameters:
    :   `s` - detail message, or `null` if no detail message
  + ### PrintException

    public PrintException([Exception](../../../java.base/java/lang/Exception.md "class in java.lang") e)

    Construct a print exception chaining the supplied exception.

    Parameters:
    :   `e` - chained exception
  + ### PrintException

    public PrintException([String](../../../java.base/java/lang/String.md "class in java.lang") s,
    [Exception](../../../java.base/java/lang/Exception.md "class in java.lang") e)

    Construct a print exception with the given detail message and chained
    exception.

    Parameters:
    :   `s` - detail message, or `null` if no detail message
    :   `e` - chained exception