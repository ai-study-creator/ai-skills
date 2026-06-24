Module [java.net.http](../../../module-summary.md)

Package [java.net.http](package-summary.md)

# Class WebSocketHandshakeException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.io.IOException](../../../../java.base/java/io/IOException.md "class in java.io")

java.net.http.WebSocketHandshakeException

All Implemented Interfaces:
:   `Serializable`

---

public final class WebSocketHandshakeException
extends [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

Thrown when the opening handshake has failed.

Since:
:   11

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.net.http.WebSocketHandshakeException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `WebSocketHandshakeException(HttpResponse<?> response)`

  Constructs a `WebSocketHandshakeException` with the given
  `HttpResponse`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `HttpResponse<?>`

  `getResponse()`

  Returns the server's counterpart of the opening handshake.

  `WebSocketHandshakeException`

  `initCause(Throwable cause)`

  Initializes the *cause* of this throwable to the specified value.

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### WebSocketHandshakeException

    public WebSocketHandshakeException([HttpResponse](HttpResponse.md "interface in java.net.http")<?> response)

    Constructs a `WebSocketHandshakeException` with the given
    `HttpResponse`.

    Parameters:
    :   `response` - the `HttpResponse` that resulted in the handshake failure
* ## Method Details

  + ### getResponse

    public [HttpResponse](HttpResponse.md "interface in java.net.http")<?> getResponse()

    Returns the server's counterpart of the opening handshake.

    The value may be unavailable (`null`) if this exception has
    been serialized and then deserialized.

    Returns:
    :   server response
  + ### initCause

    public [WebSocketHandshakeException](WebSocketHandshakeException.md "class in java.net.http") initCause([Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Description copied from class: `Throwable`

    Initializes the *cause* of this throwable to the specified value.
    (The cause is the throwable that caused this throwable to get thrown.)

    This method can be called at most once. It is generally called from
    within the constructor, or immediately after creating the
    throwable. If this throwable was created
    with [`Throwable(Throwable)`](../../../../java.base/java/lang/Throwable.md#%3Cinit%3E(java.lang.Throwable)) or
    [`Throwable(String,Throwable)`](../../../../java.base/java/lang/Throwable.md#%3Cinit%3E(java.lang.String,java.lang.Throwable)), this method cannot be called
    even once.

    An example of using this method on a legacy throwable type
    without other support for setting the cause is:

    ```
     try {
         lowLevelOp();
     } catch (LowLevelException le) {
         throw (HighLevelException)
               new HighLevelException().initCause(le); // Legacy constructor
     }
    ```

    Overrides:
    :   `initCause` in class `Throwable`

    Parameters:
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../../../../java.base/java/lang/Throwable.md#getCause()) method). (A `null` value is
        permitted, and indicates that the cause is nonexistent or
        unknown.)

    Returns:
    :   a reference to this `Throwable` instance.