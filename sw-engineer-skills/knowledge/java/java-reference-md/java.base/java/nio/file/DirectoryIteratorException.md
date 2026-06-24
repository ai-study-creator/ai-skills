Module [java.base](../../../module-summary.md)

Package [java.nio.file](package-summary.md)

# Class DirectoryIteratorException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../lang/RuntimeException.md "class in java.lang")

[java.util.ConcurrentModificationException](../../util/ConcurrentModificationException.md "class in java.util")

java.nio.file.DirectoryIteratorException

All Implemented Interfaces:
:   `Serializable`

---

public final class DirectoryIteratorException
extends [ConcurrentModificationException](../../util/ConcurrentModificationException.md "class in java.util")

Runtime exception thrown if an I/O error is encountered when iterating over
the entries in a directory. The I/O error is retrieved as an [`IOException`](../../io/IOException.md "class in java.io") using the [`getCause()`](#getCause()) method.

Since:
:   1.7

See Also:
:   * [`DirectoryStream`](DirectoryStream.md "interface in java.nio.file")
    * [Serialized Form](../../../../serialized-form.md#java.nio.file.DirectoryIteratorException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DirectoryIteratorException(IOException cause)`

  Constructs an instance of this class.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `IOException`

  `getCause()`

  Returns the cause of this exception.

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### DirectoryIteratorException

    public DirectoryIteratorException([IOException](../../io/IOException.md "class in java.io") cause)

    Constructs an instance of this class.

    Parameters:
    :   `cause` - the `IOException` that caused the directory iteration
        to fail

    Throws:
    :   `NullPointerException` - if the cause is `null`
* ## Method Details

  + ### getCause

    public [IOException](../../io/IOException.md "class in java.io") getCause()

    Returns the cause of this exception.

    Overrides:
    :   `getCause` in class `Throwable`

    Returns:
    :   the cause