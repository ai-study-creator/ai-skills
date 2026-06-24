Module [java.base](../../../../module-summary.md)

Package [javax.security.auth.callback](package-summary.md)

# Class LanguageCallback

[java.lang.Object](../../../../java/lang/Object.md "class in java.lang")

javax.security.auth.callback.LanguageCallback

All Implemented Interfaces:
:   `Serializable`, `Callback`

---

public class LanguageCallback
extends [Object](../../../../java/lang/Object.md "class in java.lang")
implements [Callback](Callback.md "interface in javax.security.auth.callback"), [Serializable](../../../../java/io/Serializable.md "interface in java.io")

Underlying security services instantiate and pass a
`LanguageCallback` to the `handle`
method of a `CallbackHandler` to retrieve the `Locale`
used for localizing text.

Since:
:   1.4

See Also:
:   * [`CallbackHandler`](CallbackHandler.md "interface in javax.security.auth.callback")
    * [Serialized Form](../../../../../serialized-form.md#javax.security.auth.callback.LanguageCallback)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `LanguageCallback()`

  Construct a `LanguageCallback`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Locale`

  `getLocale()`

  Get the retrieved `Locale`.

  `void`

  `setLocale(Locale locale)`

  Set the retrieved `Locale`.

  ### Methods inherited from class java.lang.[Object](../../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### LanguageCallback

    public LanguageCallback()

    Construct a `LanguageCallback`.
* ## Method Details

  + ### setLocale

    public void setLocale([Locale](../../../../java/util/Locale.md "class in java.util") locale)

    Set the retrieved `Locale`.

    Parameters:
    :   `locale` - the retrieved `Locale`.

    See Also:
    :   - [`getLocale()`](#getLocale())
  + ### getLocale

    public [Locale](../../../../java/util/Locale.md "class in java.util") getLocale()

    Get the retrieved `Locale`.

    Returns:
    :   the retrieved `Locale`, or null
        if no `Locale` could be retrieved.

    See Also:
    :   - [`setLocale(java.util.Locale)`](#setLocale(java.util.Locale))