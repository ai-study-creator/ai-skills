Module [java.base](../../../module-summary.md)

Package [java.text.spi](package-summary.md)

# Class CollatorProvider

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.util.spi.LocaleServiceProvider](../../util/spi/LocaleServiceProvider.md "class in java.util.spi")

java.text.spi.CollatorProvider

---

public abstract class CollatorProvider
extends [LocaleServiceProvider](../../util/spi/LocaleServiceProvider.md "class in java.util.spi")

An abstract class for service providers that
provide concrete implementations of the
[`Collator`](../Collator.md "class in java.text") class.

Since:
:   1.6

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `CollatorProvider()`

  Sole constructor.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract Collator`

  `getInstance(Locale locale)`

  Returns a new `Collator` instance for the specified locale.

  ### Methods inherited from class java.util.spi.[LocaleServiceProvider](../../util/spi/LocaleServiceProvider.md "class in java.util.spi")

  `getAvailableLocales, isSupportedLocale`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### CollatorProvider

    protected CollatorProvider()

    Sole constructor. (For invocation by subclass constructors, typically
    implicit.)
* ## Method Details

  + ### getInstance

    public abstract [Collator](../Collator.md "class in java.text") getInstance([Locale](../../util/Locale.md "class in java.util") locale)

    Returns a new `Collator` instance for the specified locale.

    Parameters:
    :   `locale` - the desired locale.

    Returns:
    :   the `Collator` for the desired locale.

    Throws:
    :   `NullPointerException` - if
        `locale` is null
    :   `IllegalArgumentException` - if `locale` isn't
        one of the locales returned from
        [`getAvailableLocales()`](../../util/spi/LocaleServiceProvider.md#getAvailableLocales()).

    See Also:
    :   - [`Collator.getInstance(java.util.Locale)`](../Collator.md#getInstance(java.util.Locale))