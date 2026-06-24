Module [java.base](../../../../module-summary.md)

Package [javax.security.auth.callback](package-summary.md)

# Class UnsupportedCallbackException

[java.lang.Object](../../../../java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java/lang/Exception.md "class in java.lang")

javax.security.auth.callback.UnsupportedCallbackException

All Implemented Interfaces:
:   `Serializable`

---

public class UnsupportedCallbackException
extends [Exception](../../../../java/lang/Exception.md "class in java.lang")

Signals that a `CallbackHandler` does not
recognize a particular `Callback`.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.security.auth.callback.UnsupportedCallbackException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UnsupportedCallbackException(Callback callback)`

  Constructs an `UnsupportedCallbackException`
  with no detail message.

  `UnsupportedCallbackException(Callback callback,
  String msg)`

  Constructs a UnsupportedCallbackException with the specified detail
  message.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Callback`

  `getCallback()`

  Get the unrecognized `Callback`.

  ### Methods inherited from class java.lang.[Throwable](../../../../java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UnsupportedCallbackException

    public UnsupportedCallbackException([Callback](Callback.md "interface in javax.security.auth.callback") callback)

    Constructs an `UnsupportedCallbackException`
    with no detail message.

    Parameters:
    :   `callback` - the unrecognized `Callback`.
  + ### UnsupportedCallbackException

    public UnsupportedCallbackException([Callback](Callback.md "interface in javax.security.auth.callback") callback,
    [String](../../../../java/lang/String.md "class in java.lang") msg)

    Constructs a UnsupportedCallbackException with the specified detail
    message. A detail message is a String that describes this particular
    exception.

    Parameters:
    :   `callback` - the unrecognized `Callback`.
    :   `msg` - the detail message.
* ## Method Details

  + ### getCallback

    public [Callback](Callback.md "interface in javax.security.auth.callback") getCallback()

    Get the unrecognized `Callback`.

    Returns:
    :   the unrecognized `Callback`.