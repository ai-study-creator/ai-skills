# Module java.naming

---

module java.naming

Defines the Java Naming and Directory Interface (JNDI) API.

Common standard JNDI environment properties that may be supported
by JNDI providers are defined and documented in
[`Context`](javax/naming/Context.md "interface in javax.naming"). Specific JNDI provider implementations
may also support other environment or system properties, which are specific
to their implementation.

Since:
:   9

* ## Packages

  Exports

  Package

  Description

  [javax.naming](javax/naming/package-summary.md)

  [javax.naming.directory](javax/naming/directory/package-summary.md)

  [javax.naming.event](javax/naming/event/package-summary.md)

  [javax.naming.ldap](javax/naming/ldap/package-summary.md)

  [javax.naming.ldap.spi](javax/naming/ldap/spi/package-summary.md)

  [javax.naming.spi](javax/naming/spi/package-summary.md)
* ## Services

  Provides

  Type

  Description

  [Provider](../java.base/java/security/Provider.md "class in java.security")

  This class represents a "provider" for the
  Java Security API, where a provider implements some or all parts of
  Java Security.

  Uses

  Type

  Description

  [InitialContextFactory](javax/naming/spi/InitialContextFactory.md "interface in javax.naming.spi")

  This interface represents a factory that creates an initial context.

  [LdapDnsProvider](javax/naming/ldap/spi/LdapDnsProvider.md "class in javax.naming.ldap.spi")

  Service-provider class for DNS lookups when performing LDAP operations.

  [StartTlsResponse](javax/naming/ldap/StartTlsResponse.md "class in javax.naming.ldap")

  This class implements the LDAPv3 Extended Response for StartTLS as
  defined in
  [Lightweight Directory
  Access Protocol (v3): Extension for Transport Layer Security](http://www.ietf.org/rfc/rfc2830.txt)
  The object identifier for StartTLS is 1.3.6.1.4.1.1466.20037
  and no extended response value is defined.