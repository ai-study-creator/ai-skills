Module [java.base](../../../module-summary.md)

# Package java.util.spi

---

package java.util.spi

Service provider classes for the classes in the java.util package.

Since:
:   1.6

* Related Packages

  Package

  Description

  [java.util](../package-summary.md)

  Contains the collections framework, some internationalization support classes,
  a service loader, properties, random number generation, string parsing
  and scanning classes, base64 encoding and decoding, a bit array, and
  several miscellaneous utility classes.
* All Classes and InterfacesInterfacesClasses

  Class

  Description

  [AbstractResourceBundleProvider](AbstractResourceBundleProvider.md "class in java.util.spi")

  `AbstractResourceBundleProvider` is an abstract class that provides
  the basic support for a provider implementation class for
  [`ResourceBundleProvider`](ResourceBundleProvider.md "interface in java.util.spi").

  [CalendarDataProvider](CalendarDataProvider.md "class in java.util.spi")

  An abstract class for service providers that provide locale-dependent [`Calendar`](../Calendar.md "class in java.util") parameters.

  [CalendarNameProvider](CalendarNameProvider.md "class in java.util.spi")

  An abstract class for service providers that provide localized string
  representations (display names) of `Calendar` field values.

  [CurrencyNameProvider](CurrencyNameProvider.md "class in java.util.spi")

  An abstract class for service providers that
  provide localized currency symbols and display names for the
  [`Currency`](../Currency.md "class in java.util") class.

  [LocaleNameProvider](LocaleNameProvider.md "class in java.util.spi")

  An abstract class for service providers that
  provide localized names for the
  [`Locale`](../Locale.md "class in java.util") class.

  [LocaleServiceProvider](LocaleServiceProvider.md "class in java.util.spi")

  This is the super class of all the locale sensitive service provider
  interfaces (SPIs).

  [ResourceBundleControlProvider](ResourceBundleControlProvider.md "interface in java.util.spi")

  An interface for service providers that provide implementations of [`ResourceBundle.Control`](../ResourceBundle.Control.md "class in java.util").

  [ResourceBundleProvider](ResourceBundleProvider.md "interface in java.util.spi")

  `ResourceBundleProvider` is a service provider interface for
  resource bundles.

  [TimeZoneNameProvider](TimeZoneNameProvider.md "class in java.util.spi")

  An abstract class for service providers that
  provide localized time zone names for the
  [`TimeZone`](../TimeZone.md "class in java.util") class.

  [ToolProvider](ToolProvider.md "interface in java.util.spi")

  An interface for command-line tools to provide a way to
  be invoked without necessarily starting a new VM.