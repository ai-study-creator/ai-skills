Module [java.base](../../../../module-summary.md)

Package [javax.security.auth.callback](package-summary.md)

# Class TextOutputCallback

[java.lang.Object](../../../../java/lang/Object.md "class in java.lang")

javax.security.auth.callback.TextOutputCallback

All Implemented Interfaces:
:   `Serializable`, `Callback`

---

public class TextOutputCallback
extends [Object](../../../../java/lang/Object.md "class in java.lang")
implements [Callback](Callback.md "interface in javax.security.auth.callback"), [Serializable](../../../../java/io/Serializable.md "interface in java.io")

Underlying security services instantiate and pass a
`TextOutputCallback` to the `handle`
method of a `CallbackHandler` to display information messages,
warning messages and error messages.

Since:
:   1.4

See Also:
:   * [`CallbackHandler`](CallbackHandler.md "interface in javax.security.auth.callback")
    * [Serialized Form](../../../../../serialized-form.md#javax.security.auth.callback.TextOutputCallback)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `ERROR`

  Error message.

  `static final int`

  `INFORMATION`

  Information message.

  `static final int`

  `WARNING`

  Warning message.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TextOutputCallback(int messageType,
  String message)`

  Construct a TextOutputCallback with a message type and message
  to be displayed.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getMessage()`

  Get the message to be displayed.

  `int`

  `getMessageType()`

  Get the message type.

  ### Methods inherited from class java.lang.[Object](../../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### INFORMATION

    public static final int INFORMATION

    Information message.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.security.auth.callback.TextOutputCallback.INFORMATION)
  + ### WARNING

    public static final int WARNING

    Warning message.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.security.auth.callback.TextOutputCallback.WARNING)
  + ### ERROR

    public static final int ERROR

    Error message.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.security.auth.callback.TextOutputCallback.ERROR)
* ## Constructor Details

  + ### TextOutputCallback

    public TextOutputCallback(int messageType,
    [String](../../../../java/lang/String.md "class in java.lang") message)

    Construct a TextOutputCallback with a message type and message
    to be displayed.

    Parameters:
    :   `messageType` - the message type (`INFORMATION`,
        `WARNING` or `ERROR`).
    :   `message` - the message to be displayed.

    Throws:
    :   `IllegalArgumentException` - if `messageType`
        is not either `INFORMATION`,
        `WARNING` or `ERROR`,
        if `message` is null,
        or if `message` has a length of 0.
* ## Method Details

  + ### getMessageType

    public int getMessageType()

    Get the message type.

    Returns:
    :   the message type (`INFORMATION`,
        `WARNING` or `ERROR`).
  + ### getMessage

    public [String](../../../../java/lang/String.md "class in java.lang") getMessage()

    Get the message to be displayed.

    Returns:
    :   the message to be displayed.