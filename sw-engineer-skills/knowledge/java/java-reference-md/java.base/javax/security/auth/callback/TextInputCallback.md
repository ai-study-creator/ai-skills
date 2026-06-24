Module [java.base](../../../../module-summary.md)

Package [javax.security.auth.callback](package-summary.md)

# Class TextInputCallback

[java.lang.Object](../../../../java/lang/Object.md "class in java.lang")

javax.security.auth.callback.TextInputCallback

All Implemented Interfaces:
:   `Serializable`, `Callback`

Direct Known Subclasses:
:   `RealmCallback`

---

public class TextInputCallback
extends [Object](../../../../java/lang/Object.md "class in java.lang")
implements [Callback](Callback.md "interface in javax.security.auth.callback"), [Serializable](../../../../java/io/Serializable.md "interface in java.io")

Underlying security services instantiate and pass a
`TextInputCallback` to the `handle`
method of a `CallbackHandler` to retrieve generic text
information.

Since:
:   1.4

See Also:
:   * [`CallbackHandler`](CallbackHandler.md "interface in javax.security.auth.callback")
    * [Serialized Form](../../../../../serialized-form.md#javax.security.auth.callback.TextInputCallback)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TextInputCallback(String prompt)`

  Construct a `TextInputCallback` with a prompt.

  `TextInputCallback(String prompt,
  String defaultText)`

  Construct a `TextInputCallback` with a prompt
  and default input value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getDefaultText()`

  Get the default text.

  `String`

  `getPrompt()`

  Get the prompt.

  `String`

  `getText()`

  Get the retrieved text.

  `void`

  `setText(String text)`

  Set the retrieved text.

  ### Methods inherited from class java.lang.[Object](../../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### TextInputCallback

    public TextInputCallback([String](../../../../java/lang/String.md "class in java.lang") prompt)

    Construct a `TextInputCallback` with a prompt.

    Parameters:
    :   `prompt` - the prompt used to request the information.

    Throws:
    :   `IllegalArgumentException` - if `prompt` is null
        or if `prompt` has a length of 0.
  + ### TextInputCallback

    public TextInputCallback([String](../../../../java/lang/String.md "class in java.lang") prompt,
    [String](../../../../java/lang/String.md "class in java.lang") defaultText)

    Construct a `TextInputCallback` with a prompt
    and default input value.

    Parameters:
    :   `prompt` - the prompt used to request the information.
    :   `defaultText` - the text to be used as the default text displayed
        with the prompt.

    Throws:
    :   `IllegalArgumentException` - if `prompt` is null,
        if `prompt` has a length of 0,
        if `defaultText` is null
        or if `defaultText` has a length of 0.
* ## Method Details

  + ### getPrompt

    public [String](../../../../java/lang/String.md "class in java.lang") getPrompt()

    Get the prompt.

    Returns:
    :   the prompt.
  + ### getDefaultText

    public [String](../../../../java/lang/String.md "class in java.lang") getDefaultText()

    Get the default text.

    Returns:
    :   the default text, or null if this `TextInputCallback`
        was not instantiated with `defaultText`.
  + ### setText

    public void setText([String](../../../../java/lang/String.md "class in java.lang") text)

    Set the retrieved text.

    Parameters:
    :   `text` - the retrieved text, which may be null.

    See Also:
    :   - [`getText()`](#getText())
  + ### getText

    public [String](../../../../java/lang/String.md "class in java.lang") getText()

    Get the retrieved text.

    Returns:
    :   the retrieved text, which may be null.

    See Also:
    :   - [`setText(java.lang.String)`](#setText(java.lang.String))