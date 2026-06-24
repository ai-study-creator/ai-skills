Module [java.xml](../../../module-summary.md)

Package [javax.xml.catalog](package-summary.md)

# Class CatalogException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

javax.xml.catalog.CatalogException

All Implemented Interfaces:
:   `Serializable`

---

public class CatalogException
extends [RuntimeException](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

The exception class handles errors that may happen while processing or using
a catalog.

Since:
:   9

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.xml.catalog.CatalogException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CatalogException(String message)`

  Constructs a new CatalogException with the specified detail message.

  `CatalogException(String message,
  Throwable cause)`

  Constructs a new CatalogException with the specified detail message and
  cause.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### CatalogException

    public CatalogException([String](../../../../java.base/java/lang/String.md "class in java.lang") message)

    Constructs a new CatalogException with the specified detail message. The
    cause is not initialized, and may subsequently be initialized by a call
    to [`Throwable.initCause(java.lang.Throwable)`](../../../../java.base/java/lang/Throwable.md#initCause(java.lang.Throwable)).

    Parameters:
    :   `message` - the detail message
  + ### CatalogException

    public CatalogException([String](../../../../java.base/java/lang/String.md "class in java.lang") message,
    [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a new CatalogException with the specified detail message and
    cause.

    Parameters:
    :   `message` - the detail message (which is saved for later retrieval by
        the [`Throwable.getMessage()`](../../../../java.base/java/lang/Throwable.md#getMessage()) method)
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../../../../java.base/java/lang/Throwable.md#getCause()) method). (A `null` value is permitted, and
        indicates that the cause is nonexistent or unknown.)