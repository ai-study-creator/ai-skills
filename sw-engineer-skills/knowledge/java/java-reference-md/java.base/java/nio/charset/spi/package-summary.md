Module [java.base](../../../../module-summary.md)

# Package java.nio.charset.spi

---

package java.nio.charset.spi

Service-provider classes for the [`java.nio.charset`](../package-summary.md) package.

Only developers who are defining new charsets should need to
make direct use of this package.

Unless otherwise noted, passing a `null` argument to a
constructor or method in any class or interface in this package
will cause a [`NullPointerException`](../../../lang/NullPointerException.md "class in java.lang") to be thrown.

Since:
:   1.4

* Related Packages

  Package

  Description

  [java.nio.charset](../package-summary.md)

  Defines charsets, decoders, and encoders, for translating between
  bytes and Unicode characters.
* Classes

  Class

  Description

  [CharsetProvider](CharsetProvider.md "class in java.nio.charset.spi")

  Charset service-provider class.