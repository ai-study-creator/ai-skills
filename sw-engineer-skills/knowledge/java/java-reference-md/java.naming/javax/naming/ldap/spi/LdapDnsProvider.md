Module [java.naming](../../../../module-summary.md)

Package [javax.naming.ldap.spi](package-summary.md)

# Class LdapDnsProvider

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.naming.ldap.spi.LdapDnsProvider

---

public abstract class LdapDnsProvider
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

Service-provider class for DNS lookups when performing LDAP operations.

An LDAP DNS provider is a concrete subclass of this class that
has a zero-argument constructor. LDAP DNS providers are located using the
ServiceLoader facility, as specified by
[InitialDirectContext](../../directory/InitialDirContext.md "class in javax.naming.directory").
The
[`ServiceLoader`](../../../../../java.base/java/util/ServiceLoader.md "class in java.util") is used to create and register
implementations of `LdapDnsProvider`.

An LDAP DNS provider can be used in environments where the default
DNS resolution mechanism is not sufficient to accurately pinpoint the
correct LDAP servers needed to perform LDAP operations. For example, in an
environment containing a mix of `ldap` and `ldaps` servers
you may want the [LdapContext](../LdapContext.md "interface in javax.naming.ldap")
to query `ldaps` servers only.

Since:
:   12

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `LdapDnsProvider()`

  Creates a new instance of `LdapDnsProvider`.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract Optional<LdapDnsProviderResult>`

  `lookupEndpoints(String url,
  Map<?,?> env)`

  Lookup the endpoints and domain name for the given [`Context`](../../Context.md "interface in javax.naming")
  [`provider URL`](../../Context.md#PROVIDER_URL) and environment.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### LdapDnsProvider

    protected LdapDnsProvider()

    Creates a new instance of `LdapDnsProvider`.

    Throws:
    :   `SecurityException` - if a security manager is present and its
        `checkPermission` method doesn't allow
        the `RuntimePermission("ldapDnsProvider")`.
* ## Method Details

  + ### lookupEndpoints

    public abstract [Optional](../../../../../java.base/java/util/Optional.md "class in java.util")<[LdapDnsProviderResult](LdapDnsProviderResult.md "class in javax.naming.ldap.spi")> lookupEndpoints([String](../../../../../java.base/java/lang/String.md "class in java.lang") url,
    [Map](../../../../../java.base/java/util/Map.md "interface in java.util")<?,?> env)
    throws [NamingException](../../NamingException.md "class in javax.naming")

    Lookup the endpoints and domain name for the given [`Context`](../../Context.md "interface in javax.naming")
    [`provider URL`](../../Context.md#PROVIDER_URL) and environment. The resolved
    endpoints and domain name are returned as an
    [`LdapDnsProviderResult`](LdapDnsProviderResult.md "class in javax.naming.ldap.spi").

    An endpoint is a `String` representation of an LDAP URL which
    points to an LDAP server to be used for LDAP operations. The syntax of
    an LDAP URL is defined by [*RFC 2255: The LDAP URL Format*](http://www.ietf.org/rfc/rfc2255.txt).

    Parameters:
    :   `url` - The [`Context`](../../Context.md "interface in javax.naming") [`provider URL`](../../Context.md#PROVIDER_URL)
    :   `env` - The [`Context`](../../Context.md "interface in javax.naming") environment.

    Returns:
    :   an [`LdapDnsProviderResult`](LdapDnsProviderResult.md "class in javax.naming.ldap.spi") or empty `Optional`
        if the lookup fails.

    Throws:
    :   `NamingException` - if the `url` is not valid or an error
        occurred while performing the lookup.
    :   `NullPointerException` - if either `url` or `env` are
        `null`.