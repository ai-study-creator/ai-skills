Module [java.naming](../../../../module-summary.md)

Package [javax.naming.ldap.spi](package-summary.md)

# Class LdapDnsProviderResult

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.naming.ldap.spi.LdapDnsProviderResult

---

public final class LdapDnsProviderResult
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

The result of a DNS lookup for an LDAP URL.

This class is used by an [`LdapDnsProvider`](LdapDnsProvider.md "class in javax.naming.ldap.spi") to return the result
of a DNS lookup for a given LDAP URL. The result consists of a domain name
and its associated LDAP server endpoints.

A `null` `domainName` is equivalent to and represented
by an empty string.

Since:
:   12

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `LdapDnsProviderResult(String domainName,
  List<String> endpoints)`

  Construct an LdapDnsProviderResult consisting of a resolved domain name
  and the LDAP server endpoints that serve the domain.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getDomainName()`

  Returns the domain name resolved from the LDAP URL.

  `List<String>`

  `getEndpoints()`

  Returns the possibly empty list of individual server endpoints resolved
  from the LDAP URL.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### LdapDnsProviderResult

    public LdapDnsProviderResult([String](../../../../../java.base/java/lang/String.md "class in java.lang") domainName,
    [List](../../../../../java.base/java/util/List.md "interface in java.util")<[String](../../../../../java.base/java/lang/String.md "class in java.lang")> endpoints)

    Construct an LdapDnsProviderResult consisting of a resolved domain name
    and the LDAP server endpoints that serve the domain.

    Parameters:
    :   `domainName` - the resolved domain name; can be null.
    :   `endpoints` - the possibly empty list of resolved LDAP server
        endpoints

    Throws:
    :   `NullPointerException` - if `endpoints` contains `null`
        elements.
    :   `ClassCastException` - if `endpoints` contains non-
        `String` elements.
* ## Method Details

  + ### getDomainName

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getDomainName()

    Returns the domain name resolved from the LDAP URL. This method returns
    the empty string if the `LdapDnsProviderResult` is created with a
    null domain name.

    Returns:
    :   the resolved domain name
  + ### getEndpoints

    public [List](../../../../../java.base/java/util/List.md "interface in java.util")<[String](../../../../../java.base/java/lang/String.md "class in java.lang")> getEndpoints()

    Returns the possibly empty list of individual server endpoints resolved
    from the LDAP URL.

    Returns:
    :   a possibly empty unmodifiable [`List`](../../../../../java.base/java/util/List.md "interface in java.util") containing the
        resolved LDAP server endpoints