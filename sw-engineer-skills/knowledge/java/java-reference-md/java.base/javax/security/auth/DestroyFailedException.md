Module [java.base](../../../module-summary.md)

Package [javax.security.auth](package-summary.md)

# Class DestroyFailedException

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java/lang/Exception.md "class in java.lang")

javax.security.auth.DestroyFailedException

All Implemented Interfaces:
:   `Serializable`

---

public class DestroyFailedException
extends [Exception](../../../java/lang/Exception.md "class in java.lang")

Signals that a `destroy` operation failed.

This exception is thrown by credentials implementing
the `Destroyable` interface when the `destroy`
method fails.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.security.auth.DestroyFailedException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DestroyFailedException()`

  Constructs a DestroyFailedException with no detail message.

  `DestroyFailedException(String msg)`

  Constructs a DestroyFailedException with the specified detail
  message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### DestroyFailedException

    public DestroyFailedException()

    Constructs a DestroyFailedException with no detail message. A detail
    message is a String that describes this particular exception.
  + ### DestroyFailedException

    public DestroyFailedException([String](../../../java/lang/String.md "class in java.lang") msg)

    Constructs a DestroyFailedException with the specified detail
    message. A detail message is a String that describes this particular
    exception.

    Parameters:
    :   `msg` - the detail message.