Module [java.security.jgss](../../../../module-summary.md)

Package [javax.security.auth.kerberos](package-summary.md)

# Class KerberosPrincipal

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.security.auth.kerberos.KerberosPrincipal

All Implemented Interfaces:
:   `Serializable`, `Principal`

---

public final class KerberosPrincipal
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Principal](../../../../../java.base/java/security/Principal.md "interface in java.security"), [Serializable](../../../../../java.base/java/io/Serializable.md "interface in java.io")

This class encapsulates a Kerberos principal.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.security.auth.kerberos.KerberosPrincipal)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `KRB_NT_ENTERPRISE`

  Enterprise name (alias)

  `static final int`

  `KRB_NT_PRINCIPAL`

  user principal name type.

  `static final int`

  `KRB_NT_SRV_HST`

  service with host name as instance (telnet, rcommands) name type.

  `static final int`

  `KRB_NT_SRV_INST`

  service and other unique instance (krbtgt) name type.

  `static final int`

  `KRB_NT_SRV_XHST`

  service with host as remaining components name type.

  `static final int`

  `KRB_NT_UID`

  unique ID name type.

  `static final int`

  `KRB_NT_UNKNOWN`

  unknown name type.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `KerberosPrincipal(String name)`

  Constructs a `KerberosPrincipal` from the provided string input.

  `KerberosPrincipal(String name,
  int nameType)`

  Constructs a `KerberosPrincipal` from the provided string and
  name type input.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object other)`

  Compares the specified object with this principal for equality.

  `String`

  `getName()`

  The returned string corresponds to the single-string
  representation of a Kerberos Principal name as specified in
  Section 2.1 of [RFC 1964](http://www.ietf.org/rfc/rfc1964.txt).

  `int`

  `getNameType()`

  Returns the name type of the `KerberosPrincipal`.

  `String`

  `getRealm()`

  Returns the realm component of this Kerberos principal.

  `int`

  `hashCode()`

  Returns a hash code for this `KerberosPrincipal`.

  `String`

  `toString()`

  Returns an informative textual representation of this `KerberosPrincipal`.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.security.[Principal](../../../../../java.base/java/security/Principal.md "interface in java.security")

  `implies`

* ## Field Details

  + ### KRB\_NT\_UNKNOWN

    public static final int KRB\_NT\_UNKNOWN

    unknown name type.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.security.auth.kerberos.KerberosPrincipal.KRB_NT_UNKNOWN)
  + ### KRB\_NT\_PRINCIPAL

    public static final int KRB\_NT\_PRINCIPAL

    user principal name type.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.security.auth.kerberos.KerberosPrincipal.KRB_NT_PRINCIPAL)
  + ### KRB\_NT\_SRV\_INST

    public static final int KRB\_NT\_SRV\_INST

    service and other unique instance (krbtgt) name type.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.security.auth.kerberos.KerberosPrincipal.KRB_NT_SRV_INST)
  + ### KRB\_NT\_SRV\_HST

    public static final int KRB\_NT\_SRV\_HST

    service with host name as instance (telnet, rcommands) name type.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.security.auth.kerberos.KerberosPrincipal.KRB_NT_SRV_HST)
  + ### KRB\_NT\_SRV\_XHST

    public static final int KRB\_NT\_SRV\_XHST

    service with host as remaining components name type.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.security.auth.kerberos.KerberosPrincipal.KRB_NT_SRV_XHST)
  + ### KRB\_NT\_UID

    public static final int KRB\_NT\_UID

    unique ID name type.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.security.auth.kerberos.KerberosPrincipal.KRB_NT_UID)
  + ### KRB\_NT\_ENTERPRISE

    public static final int KRB\_NT\_ENTERPRISE

    Enterprise name (alias)

    Since:
    :   13

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.security.auth.kerberos.KerberosPrincipal.KRB_NT_ENTERPRISE)
* ## Constructor Details

  + ### KerberosPrincipal

    public KerberosPrincipal([String](../../../../../java.base/java/lang/String.md "class in java.lang") name)

    Constructs a `KerberosPrincipal` from the provided string input.
    The name type for this principal defaults to
    [`KRB_NT_PRINCIPAL`](#KRB_NT_PRINCIPAL)
    This string is assumed to contain a name in the format
    that is specified in Section 2.1.1. (Kerberos Principal Name Form) of
     [RFC 1964](http://www.ietf.org/rfc/rfc1964.txt) 
    (for example, *duke@FOO.COM*, where *duke*
    represents a principal, and *FOO.COM* represents a realm).

    If the input name does not contain a realm, the default realm
    is used. The default realm can be specified either in a Kerberos
    configuration file or via the `java.security.krb5.realm`
    system property. For more information, see the
    .

    Note that when this class or any other Kerberos-related class is
    initially loaded and initialized, it may read and cache the default
    realm from the Kerberos configuration file or via the
    java.security.krb5.realm system property (the value will be empty if
    no default realm is specified), such that any subsequent calls to set
    or change the default realm by setting the java.security.krb5.realm
    system property may be ignored.

    Additionally, if a security manager is
    installed, a [`ServicePermission`](ServicePermission.md "class in javax.security.auth.kerberos") must be granted and the service
    principal of the permission must minimally be inside the
    `KerberosPrincipal`'s realm. For example, if the result of
    `new KerberosPrincipal("user")` is `user@EXAMPLE.COM`,
    then a `ServicePermission` with service principal
    `host/www.example.com@EXAMPLE.COM` (and any action)
    must be granted.

    Parameters:
    :   `name` - the principal name

    Throws:
    :   `IllegalArgumentException` - if name is improperly
        formatted, if name is null, or if name does not contain
        the realm to use and the default realm is not specified
        in either a Kerberos configuration file or via the
        java.security.krb5.realm system property.
    :   `SecurityException` - if a security manager is installed and
        `name` does not contain the realm to use, and a proper
        [`ServicePermission`](ServicePermission.md "class in javax.security.auth.kerberos") as described above is not granted.
  + ### KerberosPrincipal

    public KerberosPrincipal([String](../../../../../java.base/java/lang/String.md "class in java.lang") name,
    int nameType)

    Constructs a `KerberosPrincipal` from the provided string and
    name type input. The string is assumed to contain a name in the
    format that is specified in Section 2.1 (Mandatory Name Forms) of
    [RFC 1964](http://www.ietf.org/rfc/rfc1964.txt).
    Valid name types are specified in Section 6.2 (Principal Names) of
    [RFC 4120](http://www.ietf.org/rfc/rfc4120.txt).
    The input name must be consistent with the provided name type.
    (for example, *duke@FOO.COM*, is a valid input string for the
    name type, KRB\_NT\_PRINCIPAL where *duke*
    represents a principal, and *FOO.COM* represents a realm).

    If the input name does not contain a realm, the default realm
    is used. The default realm can be specified either in a Kerberos
    configuration file or via the `java.security.krb5.realm`
    system property. For more information, see the
    .

    Note that when this class or any other Kerberos-related class is
    initially loaded and initialized, it may read and cache the default
    realm from the Kerberos configuration file or via the
    java.security.krb5.realm system property (the value will be empty if
    no default realm is specified), such that any subsequent calls to set
    or change the default realm by setting the java.security.krb5.realm
    system property may be ignored.

    Additionally, if a security manager is
    installed, a [`ServicePermission`](ServicePermission.md "class in javax.security.auth.kerberos") must be granted and the service
    principal of the permission must minimally be inside the
    `KerberosPrincipal`'s realm. For example, if the result of
    `new KerberosPrincipal("user")` is `user@EXAMPLE.COM`,
    then a `ServicePermission` with service principal
    `host/www.example.com@EXAMPLE.COM` (and any action)
    must be granted.

    Parameters:
    :   `name` - the principal name
    :   `nameType` - the name type of the principal

    Throws:
    :   `IllegalArgumentException` - if name is improperly
        formatted, if name is null, if the nameType is not supported,
        or if name does not contain the realm to use and the default
        realm is not specified in either a Kerberos configuration
        file or via the java.security.krb5.realm system property.
    :   `SecurityException` - if a security manager is installed and
        `name` does not contain the realm to use, and a proper
        [`ServicePermission`](ServicePermission.md "class in javax.security.auth.kerberos") as described above is not granted.
* ## Method Details

  + ### getRealm

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getRealm()

    Returns the realm component of this Kerberos principal.

    Returns:
    :   the realm component of this Kerberos principal.
  + ### hashCode

    public int hashCode()

    Returns a hash code for this `KerberosPrincipal`. The hash code
    is defined to be the result of the following calculation:

    ```
      hashCode = getName().hashCode();
    ```

    Specified by:
    :   `hashCode` in interface `Principal`

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code for this `KerberosPrincipal`.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") other)

    Compares the specified object with this principal for equality.
    Returns true if the given object is also a
    `KerberosPrincipal` and the two
    `KerberosPrincipal` instances are equivalent.
    More formally two `KerberosPrincipal` instances are equal
    if the values returned by `getName()` are equal.

    Specified by:
    :   `equals` in interface `Principal`

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `other` - the object to compare to

    Returns:
    :   true if the object passed in represents the same principal
        as this one, false otherwise.

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### getName

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    The returned string corresponds to the single-string
    representation of a Kerberos Principal name as specified in
    Section 2.1 of [RFC 1964](http://www.ietf.org/rfc/rfc1964.txt).

    Specified by:
    :   `getName` in interface `Principal`

    Returns:
    :   the principal name.
  + ### getNameType

    public int getNameType()

    Returns the name type of the `KerberosPrincipal`. Valid name types
    are specified in Section 6.2 of
     [RFC4120](http://www.ietf.org/rfc/rfc4120.txt).

    Returns:
    :   the name type.
  + ### toString

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns an informative textual representation of this `KerberosPrincipal`.

    Specified by:
    :   `toString` in interface `Principal`

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   an informative textual representation of this `KerberosPrincipal`.