Module [java.base](../../../module-summary.md)

Package [java.text.spi](package-summary.md)

# Class BreakIteratorProvider

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.util.spi.LocaleServiceProvider](../../util/spi/LocaleServiceProvider.md "class in java.util.spi")

java.text.spi.BreakIteratorProvider

---

public abstract class BreakIteratorProvider
extends [LocaleServiceProvider](../../util/spi/LocaleServiceProvider.md "class in java.util.spi")

An abstract class for service providers that
provide concrete implementations of the
[`BreakIterator`](../BreakIterator.md "class in java.text") class.

Since:
:   1.6

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `BreakIteratorProvider()`

  Sole constructor.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract BreakIterator`

  `getCharacterInstance(Locale locale)`

  Returns a new `BreakIterator` instance
  for [character breaks](../BreakIterator.md#character)
  for the given locale.

  `abstract BreakIterator`

  `getLineInstance(Locale locale)`

  Returns a new `BreakIterator` instance
  for [line breaks](../BreakIterator.md#line)
  for the given locale.

  `abstract BreakIterator`

  `getSentenceInstance(Locale locale)`

  Returns a new `BreakIterator` instance
  for [sentence breaks](../BreakIterator.md#sentence)
  for the given locale.

  `abstract BreakIterator`

  `getWordInstance(Locale locale)`

  Returns a new `BreakIterator` instance
  for [word breaks](../BreakIterator.md#word)
  for the given locale.

  ### Methods inherited from class java.util.spi.[LocaleServiceProvider](../../util/spi/LocaleServiceProvider.md "class in java.util.spi")

  `getAvailableLocales, isSupportedLocale`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### BreakIteratorProvider

    protected BreakIteratorProvider()

    Sole constructor. (For invocation by subclass constructors, typically
    implicit.)
* ## Method Details

  + ### getWordInstance

    public abstract [BreakIterator](../BreakIterator.md "class in java.text") getWordInstance([Locale](../../util/Locale.md "class in java.util") locale)

    Returns a new `BreakIterator` instance
    for [word breaks](../BreakIterator.md#word)
    for the given locale.

    Parameters:
    :   `locale` - the desired locale

    Returns:
    :   A break iterator for word breaks

    Throws:
    :   `NullPointerException` - if `locale` is null
    :   `IllegalArgumentException` - if `locale` isn't
        one of the locales returned from
        [`getAvailableLocales()`](../../util/spi/LocaleServiceProvider.md#getAvailableLocales()).

    See Also:
    :   - [`BreakIterator.getWordInstance(java.util.Locale)`](../BreakIterator.md#getWordInstance(java.util.Locale))
  + ### getLineInstance

    public abstract [BreakIterator](../BreakIterator.md "class in java.text") getLineInstance([Locale](../../util/Locale.md "class in java.util") locale)

    Returns a new `BreakIterator` instance
    for [line breaks](../BreakIterator.md#line)
    for the given locale.

    Parameters:
    :   `locale` - the desired locale

    Returns:
    :   A break iterator for line breaks

    Throws:
    :   `NullPointerException` - if `locale` is null
    :   `IllegalArgumentException` - if `locale` isn't
        one of the locales returned from
        [`getAvailableLocales()`](../../util/spi/LocaleServiceProvider.md#getAvailableLocales()).

    See Also:
    :   - [`BreakIterator.getLineInstance(java.util.Locale)`](../BreakIterator.md#getLineInstance(java.util.Locale))
  + ### getCharacterInstance

    public abstract [BreakIterator](../BreakIterator.md "class in java.text") getCharacterInstance([Locale](../../util/Locale.md "class in java.util") locale)

    Returns a new `BreakIterator` instance
    for [character breaks](../BreakIterator.md#character)
    for the given locale.

    Parameters:
    :   `locale` - the desired locale

    Returns:
    :   A break iterator for character breaks

    Throws:
    :   `NullPointerException` - if `locale` is null
    :   `IllegalArgumentException` - if `locale` isn't
        one of the locales returned from
        [`getAvailableLocales()`](../../util/spi/LocaleServiceProvider.md#getAvailableLocales()).

    See Also:
    :   - [`BreakIterator.getCharacterInstance(java.util.Locale)`](../BreakIterator.md#getCharacterInstance(java.util.Locale))
  + ### getSentenceInstance

    public abstract [BreakIterator](../BreakIterator.md "class in java.text") getSentenceInstance([Locale](../../util/Locale.md "class in java.util") locale)

    Returns a new `BreakIterator` instance
    for [sentence breaks](../BreakIterator.md#sentence)
    for the given locale.

    Parameters:
    :   `locale` - the desired locale

    Returns:
    :   A break iterator for sentence breaks

    Throws:
    :   `NullPointerException` - if `locale` is null
    :   `IllegalArgumentException` - if `locale` isn't
        one of the locales returned from
        [`getAvailableLocales()`](../../util/spi/LocaleServiceProvider.md#getAvailableLocales()).

    See Also:
    :   - [`BreakIterator.getSentenceInstance(java.util.Locale)`](../BreakIterator.md#getSentenceInstance(java.util.Locale))