Module [java.base](../../../../module-summary.md)

Package [javax.security.auth.callback](package-summary.md)

# Class NameCallback

[java.lang.Object](../../../../java/lang/Object.md "class in java.lang")

javax.security.auth.callback.NameCallback

All Implemented Interfaces:
:   `Serializable`, `Callback`

---

public class NameCallback
extends [Object](../../../../java/lang/Object.md "class in java.lang")
implements [Callback](Callback.md "interface in javax.security.auth.callback"), [Serializable](../../../../java/io/Serializable.md "interface in java.io")

Underlying security services instantiate and pass a
`NameCallback` to the `handle`
method of a `CallbackHandler` to retrieve name information.

Since:
:   1.4

See Also:
:   * [`CallbackHandler`](CallbackHandler.md "interface in javax.security.auth.callback")
    * [Serialized Form](../../../../../serialized-form.md#javax.security.auth.callback.NameCallback)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NameCallback(String prompt)`

  Construct a `NameCallback` with a prompt.

  `NameCallback(String prompt,
  String defaultName)`

  Construct a `NameCallback` with a prompt
  and default name.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getDefaultName()`

  Get the default name.

  `String`

  `getName()`

  Get the retrieved name.

  `String`

  `getPrompt()`

  Get the prompt.

  `void`

  `setName(String name)`

  Set the retrieved name.

  ### Methods inherited from class java.lang.[Object](../../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### NameCallback

    public NameCallback([String](../../../../java/lang/String.md "class in java.lang") prompt)

    Construct a `NameCallback` with a prompt.

    Parameters:
    :   `prompt` - the prompt used to request the name.

    Throws:
    :   `IllegalArgumentException` - if `prompt` is null
        or if `prompt` has a length of 0.
  + ### NameCallback

    public NameCallback([String](../../../../java/lang/String.md "class in java.lang") prompt,
    [String](../../../../java/lang/String.md "class in java.lang") defaultName)

    Construct a `NameCallback` with a prompt
    and default name.

    Parameters:
    :   `prompt` - the prompt used to request the information.
    :   `defaultName` - the name to be used as the default name displayed
        with the prompt.

    Throws:
    :   `IllegalArgumentException` - if `prompt` is null,
        if `prompt` has a length of 0,
        if `defaultName` is null,
        or if `defaultName` has a length of 0.
* ## Method Details

  + ### getPrompt

    public [String](../../../../java/lang/String.md "class in java.lang") getPrompt()

    Get the prompt.

    Returns:
    :   the prompt.
  + ### getDefaultName

    public [String](../../../../java/lang/String.md "class in java.lang") getDefaultName()

    Get the default name.

    Returns:
    :   the default name, or null if this `NameCallback`
        was not instantiated with a `defaultName`.
  + ### setName

    public void setName([String](../../../../java/lang/String.md "class in java.lang") name)

    Set the retrieved name.

    Parameters:
    :   `name` - the retrieved name (which may be null).

    See Also:
    :   - [`getName()`](#getName())
  + ### getName

    public [String](../../../../java/lang/String.md "class in java.lang") getName()

    Get the retrieved name.

    Returns:
    :   the retrieved name (which may be null)

    See Also:
    :   - [`setName(java.lang.String)`](#setName(java.lang.String))