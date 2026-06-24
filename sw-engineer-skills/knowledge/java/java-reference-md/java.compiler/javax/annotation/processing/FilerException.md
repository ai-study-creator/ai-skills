Module [java.compiler](../../../module-summary.md)

Package [javax.annotation.processing](package-summary.md)

# Class FilerException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.io.IOException](../../../../java.base/java/io/IOException.md "class in java.io")

javax.annotation.processing.FilerException

All Implemented Interfaces:
:   `Serializable`

---

public class FilerException
extends [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

Indicates a [`Filer`](Filer.md "interface in javax.annotation.processing") detected an attempt to open a file that
would violate the guarantees provided by the `Filer`. Those
guarantees include not creating the same file more than once, not
creating multiple files corresponding to the same class or
interface or package, and not creating files for classes or
interfaces with invalid names.

Since:
:   1.6

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.annotation.processing.FilerException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `FilerException(String s)`

  Constructs an exception with the specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### FilerException

    public FilerException([String](../../../../java.base/java/lang/String.md "class in java.lang") s)

    Constructs an exception with the specified detail message.

    Parameters:
    :   `s` - the detail message, which should include the name of
        the file attempting to be opened; may be `null`