Module [java.logging](../../../module-summary.md)

Package [java.util.logging](package-summary.md)

# Class ErrorManager

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.util.logging.ErrorManager

---

public class ErrorManager
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

ErrorManager objects can be attached to Handlers to process
any error that occurs on a Handler during Logging.

When processing logging output, if a Handler encounters problems
then rather than throwing an Exception back to the issuer of
the logging call (who is unlikely to be interested) the Handler
should call its associated ErrorManager.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `CLOSE_FAILURE`

  CLOSE\_FAILURE is used when a close of an output stream fails.

  `static final int`

  `FLUSH_FAILURE`

  FLUSH\_FAILURE is used when a flush to an output stream fails.

  `static final int`

  `FORMAT_FAILURE`

  FORMAT\_FAILURE is used when formatting fails for any reason.

  `static final int`

  `GENERIC_FAILURE`

  GENERIC\_FAILURE is used for failure that don't fit
  into one of the other categories.

  `static final int`

  `OPEN_FAILURE`

  OPEN\_FAILURE is used when an open of an output stream fails.

  `static final int`

  `WRITE_FAILURE`

  WRITE\_FAILURE is used when a write to an output stream fails.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ErrorManager()`

  Create an `ErrorManager`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `error(String msg,
  Exception ex,
  int code)`

  The error method is called when a Handler failure occurs.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### GENERIC\_FAILURE

    public static final int GENERIC\_FAILURE

    GENERIC\_FAILURE is used for failure that don't fit
    into one of the other categories.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.logging.ErrorManager.GENERIC_FAILURE)
  + ### WRITE\_FAILURE

    public static final int WRITE\_FAILURE

    WRITE\_FAILURE is used when a write to an output stream fails.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.logging.ErrorManager.WRITE_FAILURE)
  + ### FLUSH\_FAILURE

    public static final int FLUSH\_FAILURE

    FLUSH\_FAILURE is used when a flush to an output stream fails.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.logging.ErrorManager.FLUSH_FAILURE)
  + ### CLOSE\_FAILURE

    public static final int CLOSE\_FAILURE

    CLOSE\_FAILURE is used when a close of an output stream fails.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.logging.ErrorManager.CLOSE_FAILURE)
  + ### OPEN\_FAILURE

    public static final int OPEN\_FAILURE

    OPEN\_FAILURE is used when an open of an output stream fails.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.logging.ErrorManager.OPEN_FAILURE)
  + ### FORMAT\_FAILURE

    public static final int FORMAT\_FAILURE

    FORMAT\_FAILURE is used when formatting fails for any reason.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.logging.ErrorManager.FORMAT_FAILURE)
* ## Constructor Details

  + ### ErrorManager

    public ErrorManager()

    Create an `ErrorManager`.
* ## Method Details

  + ### error

    public void error([String](../../../../java.base/java/lang/String.md "class in java.lang") msg,
    [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang") ex,
    int code)

    The error method is called when a Handler failure occurs.

    This method may be overridden in subclasses. The default
    behavior in this base class is that the first call is
    reported to System.err, and subsequent calls are ignored.

    Parameters:
    :   `msg` - a descriptive string (may be null)
    :   `ex` - an exception (may be null)
    :   `code` - an error code defined in ErrorManager