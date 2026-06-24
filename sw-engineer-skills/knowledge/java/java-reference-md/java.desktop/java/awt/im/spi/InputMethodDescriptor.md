Module [java.desktop](../../../../module-summary.md)

Package [java.awt.im.spi](package-summary.md)

# Interface InputMethodDescriptor

---

public interface InputMethodDescriptor

Defines methods that provide sufficient information about an input method
to enable selection and loading of that input method.
The input method itself is only loaded when it is actually used.

Since:
:   1.3

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `InputMethod`

  `createInputMethod()`

  Creates a new instance of the corresponding input method.

  `Locale[]`

  `getAvailableLocales()`

  Returns the locales supported by the corresponding input method.

  `String`

  `getInputMethodDisplayName(Locale inputLocale,
  Locale displayLanguage)`

  Returns the user-visible name of the corresponding
  input method for the given input locale in the language in which
  the name will be displayed.

  `Image`

  `getInputMethodIcon(Locale inputLocale)`

  Returns an icon for the corresponding input method.

  `boolean`

  `hasDynamicLocaleList()`

  Returns whether the list of available locales can change
  at runtime.

* ## Method Details

  + ### getAvailableLocales

    [Locale](../../../../../java.base/java/util/Locale.md "class in java.util")[] getAvailableLocales()
    throws [AWTException](../../AWTException.md "class in java.awt")

    Returns the locales supported by the corresponding input method.
    The locale may describe just the language, or may also include
    country and variant information if needed.
    The information is used to select input methods by locale
    ([`InputContext.selectInputMethod(Locale)`](../InputContext.md#selectInputMethod(java.util.Locale))). It may also
    be used to sort input methods by locale in a user-visible
    list of input methods.

    Only the input method's primary locales should be returned.
    For example, if a Japanese input method also has a pass-through
    mode for Roman characters, typically still only Japanese would
    be returned. Thus, the list of locales returned is typically
    a subset of the locales for which the corresponding input method's
    implementation of [`InputMethod.setLocale(java.util.Locale)`](InputMethod.md#setLocale(java.util.Locale)) returns true.

    If [`hasDynamicLocaleList()`](#hasDynamicLocaleList()) returns true, this method is
    called each time the information is needed. This
    gives input methods that depend on network resources the chance
    to add or remove locales as resources become available or
    unavailable.

    Returns:
    :   the locales supported by the input method

    Throws:
    :   `AWTException` - if it can be determined that the input method
        is inoperable, for example, because of incomplete installation.
  + ### hasDynamicLocaleList

    boolean hasDynamicLocaleList()

    Returns whether the list of available locales can change
    at runtime. This may be the case, for example, for adapters
    that access real input methods over the network.

    Returns:
    :   whether the list of available locales can change at
        runtime
  + ### getInputMethodDisplayName

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getInputMethodDisplayName([Locale](../../../../../java.base/java/util/Locale.md "class in java.util") inputLocale,
    [Locale](../../../../../java.base/java/util/Locale.md "class in java.util") displayLanguage)

    Returns the user-visible name of the corresponding
    input method for the given input locale in the language in which
    the name will be displayed.

    The inputLocale parameter specifies the locale for which text
    is input.
    This parameter can only take values obtained from this descriptor's
    [`getAvailableLocales()`](#getAvailableLocales()) method or null. If it is null, an
    input locale independent name for the input method should be
    returned.

    If a name for the desired display language is not available, the
    method may fall back to some other language.

    Parameters:
    :   `inputLocale` - the locale for which text input is supported, or null
    :   `displayLanguage` - the language in which the name will be displayed

    Returns:
    :   the user-visible name of the corresponding input method
        for the given input locale in the language in which the name
        will be displayed
  + ### getInputMethodIcon

    [Image](../../Image.md "class in java.awt") getInputMethodIcon([Locale](../../../../../java.base/java/util/Locale.md "class in java.util") inputLocale)

    Returns an icon for the corresponding input method.
    The icon may be used by a user interface for selecting input methods.

    The inputLocale parameter specifies the locale for which text
    is input.
    This parameter can only take values obtained from this descriptor's
    [`getAvailableLocales()`](#getAvailableLocales()) method or null. If it is null, an
    input locale independent icon for the input method should be
    returned.

    The icon's size should be 16×16 pixels.

    Parameters:
    :   `inputLocale` - the locale for which text input is supported, or null

    Returns:
    :   an icon for the corresponding input method, or null
  + ### createInputMethod

    [InputMethod](InputMethod.md "interface in java.awt.im.spi") createInputMethod()
    throws [Exception](../../../../../java.base/java/lang/Exception.md "class in java.lang")

    Creates a new instance of the corresponding input method.

    Returns:
    :   a new instance of the corresponding input method

    Throws:
    :   `Exception` - any exception that may occur while creating the
        input method instance