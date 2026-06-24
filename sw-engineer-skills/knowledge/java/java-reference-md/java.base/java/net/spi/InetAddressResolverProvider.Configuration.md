Module [java.base](../../../module-summary.md)

Package [java.net.spi](package-summary.md)

# Interface InetAddressResolverProvider.Configuration

Enclosing class:
:   `InetAddressResolverProvider`

---

public static sealed interface InetAddressResolverProvider.Configuration

A `Configuration` object is supplied to the
[`InetAddressResolverProvider.get(Configuration)`](InetAddressResolverProvider.md#get(java.net.spi.InetAddressResolverProvider.Configuration)) method when
setting the system-wide resolver.
A resolver implementation can then delegate to the built-in resolver
provided by this interface if it needs to.

Since:
:   18

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `InetAddressResolver`

  `builtinResolver()`

  Returns the built-in [resolver](InetAddressResolver.md "interface in java.net.spi").

  `String`

  `lookupLocalHostName()`

  Reads the localhost name from the system configuration.

* ## Method Details

  + ### builtinResolver

    [InetAddressResolver](InetAddressResolver.md "interface in java.net.spi") builtinResolver()

    Returns the built-in [resolver](InetAddressResolver.md "interface in java.net.spi").

    Returns:
    :   the JDK built-in resolver.
  + ### lookupLocalHostName

    [String](../../lang/String.md "class in java.lang") lookupLocalHostName()

    Reads the localhost name from the system configuration.

    Returns:
    :   the localhost name.