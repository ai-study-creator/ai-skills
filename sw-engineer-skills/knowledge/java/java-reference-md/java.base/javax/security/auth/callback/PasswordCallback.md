Module [java.base](../../../../module-summary.md)

Package [javax.security.auth.callback](package-summary.md)

# Class PasswordCallback

[java.lang.Object](../../../../java/lang/Object.md "class in java.lang")

javax.security.auth.callback.PasswordCallback

All Implemented Interfaces:
:   `Serializable`, `Callback`

---

public class PasswordCallback
extends [Object](../../../../java/lang/Object.md "class in java.lang")
implements [Callback](Callback.md "interface in javax.security.auth.callback"), [Serializable](../../../../java/io/Serializable.md "interface in java.io")

Underlying security services instantiate and pass a
`PasswordCallback` to the `handle`
method of a `CallbackHandler` to retrieve password information.

Since:
:   1.4

See Also:
:   * [`CallbackHandler`](CallbackHandler.md "interface in javax.security.auth.callback")
    * [Serialized Form](../../../../../serialized-form.md#javax.security.auth.callback.PasswordCallback)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PasswordCallback(String prompt,
  boolean echoOn)`

  Construct a `PasswordCallback` with a prompt
  and a boolean specifying whether the password should be displayed
  as it is being typed.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `clearPassword()`

  Clear the retrieved password.

  `char[]`

  `getPassword()`

  Get the retrieved password.

  `String`

  `getPrompt()`

  Get the prompt.

  `boolean`

  `isEchoOn()`

  Return whether the password
  should be displayed as it is being typed.

  `void`

  `setPassword(char[] password)`

  Set the retrieved password.

  ### Methods inherited from class java.lang.[Object](../../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### PasswordCallback

    public PasswordCallback([String](../../../../java/lang/String.md "class in java.lang") prompt,
    boolean echoOn)

    Construct a `PasswordCallback` with a prompt
    and a boolean specifying whether the password should be displayed
    as it is being typed.

    Parameters:
    :   `prompt` - the prompt used to request the password.
    :   `echoOn` - true if the password should be displayed
        as it is being typed.

    Throws:
    :   `IllegalArgumentException` - if `prompt` is null or
        if `prompt` has a length of 0.
* ## Method Details

  + ### getPrompt

    public [String](../../../../java/lang/String.md "class in java.lang") getPrompt()

    Get the prompt.

    Returns:
    :   the prompt.
  + ### isEchoOn

    public boolean isEchoOn()

    Return whether the password
    should be displayed as it is being typed.

    Returns:
    :   the whether the password
        should be displayed as it is being typed.
  + ### setPassword

    public void setPassword(char[] password)

    Set the retrieved password.

    This method makes a copy of the input `password`
    before storing it.

    Parameters:
    :   `password` - the retrieved password, which may be null.

    See Also:
    :   - [`getPassword()`](#getPassword())
  + ### getPassword

    public char[] getPassword()

    Get the retrieved password.

    This method returns a copy of the retrieved password.

    Returns:
    :   the retrieved password, which may be null.

    See Also:
    :   - [`setPassword(char[])`](#setPassword(char%5B%5D))
  + ### clearPassword

    public void clearPassword()

    Clear the retrieved password.