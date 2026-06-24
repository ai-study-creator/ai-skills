Module [java.security.jgss](../../../../module-summary.md)

Package [javax.security.auth.kerberos](package-summary.md)

# Class KerberosTicket

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.security.auth.kerberos.KerberosTicket

All Implemented Interfaces:
:   `Serializable`, `Destroyable`, `Refreshable`

---

public class KerberosTicket
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Destroyable](../../../../../java.base/javax/security/auth/Destroyable.md "interface in javax.security.auth"), [Refreshable](../../../../../java.base/javax/security/auth/Refreshable.md "interface in javax.security.auth"), [Serializable](../../../../../java.base/java/io/Serializable.md "interface in java.io")

This class encapsulates a Kerberos ticket and associated
information as viewed from the client's point of view. It captures all
information that the Key Distribution Center (KDC) sends to the client
in the reply message KDC-REP defined in the Kerberos Protocol
Specification ([RFC 4120](http://www.ietf.org/rfc/rfc4120.txt)).

All Kerberos JAAS login modules that authenticate a user to a KDC should
use this class. Where available, the login module might even read this
information from a ticket cache in the operating system instead of
directly communicating with the KDC. During the commit phase of the JAAS
authentication process, the JAAS login module should instantiate this
class and store the instance in the private credential set of a
[`Subject`](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth").

It might be necessary for the application to be granted a
[`PrivateCredentialPermission`](../../../../../java.base/javax/security/auth/PrivateCredentialPermission.md "class in javax.security.auth") if it needs to access a `KerberosTicket`
instance from a `Subject`. This permission is not needed when the
application depends on the default JGSS Kerberos mechanism to access the
`KerberosTicket`. In that case, however, the application will need an
appropriate
[`ServicePermission`](ServicePermission.md "class in javax.security.auth.kerberos").

Note that this class is applicable to both ticket granting tickets and
other regular service tickets. A ticket granting ticket is just a
special case of a more generalized service ticket.

Since:
:   1.4

See Also:
:   * [`Subject`](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth")
    * [`PrivateCredentialPermission`](../../../../../java.base/javax/security/auth/PrivateCredentialPermission.md "class in javax.security.auth")
    * [`LoginContext`](../../../../../java.base/javax/security/auth/login/LoginContext.md "class in javax.security.auth.login")
    * [`GSSCredential`](../../../../org/ietf/jgss/GSSCredential.md "interface in org.ietf.jgss")
    * [`GSSManager`](../../../../org/ietf/jgss/GSSManager.md "class in org.ietf.jgss")
    * [Serialized Form](../../../../../serialized-form.md#javax.security.auth.kerberos.KerberosTicket)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `KerberosTicket(byte[] asn1Encoding,
  KerberosPrincipal client,
  KerberosPrincipal server,
  byte[] sessionKey,
  int keyType,
  boolean[] flags,
  Date authTime,
  Date startTime,
  Date endTime,
  Date renewTill,
  InetAddress[] clientAddresses)`

  Constructs a `KerberosTicket` using credentials information that a
  client either receives from a KDC or reads from a cache.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `destroy()`

  Destroys the ticket and destroys any sensitive information stored in
  it.

  `boolean`

  `equals(Object other)`

  Compares the specified object with this `KerberosTicket` for equality.

  `final Date`

  `getAuthTime()`

  Returns the time that the client was authenticated.

  `final KerberosPrincipal`

  `getClient()`

  Returns the client principal associated with this ticket.

  `final InetAddress[]`

  `getClientAddresses()`

  Returns a list of addresses from where the ticket can be used.

  `final byte[]`

  `getEncoded()`

  Returns an ASN.1 encoding of the entire ticket.

  `final Date`

  `getEndTime()`

  Returns the expiration time for this ticket's validity period.

  `final boolean[]`

  `getFlags()`

  Returns the flags associated with this ticket.

  `final Date`

  `getRenewTill()`

  Returns the latest expiration time for this ticket, including all
  renewals.

  `final KerberosPrincipal`

  `getServer()`

  Returns the service principal associated with this ticket.

  `final SecretKey`

  `getSessionKey()`

  Returns the session key associated with this ticket.

  `final int`

  `getSessionKeyType()`

  Returns the key type of the session key associated with this
  ticket as defined by the Kerberos Protocol Specification.

  `final Date`

  `getStartTime()`

  Returns the start time for this ticket's validity period.

  `int`

  `hashCode()`

  Returns a hash code for this `KerberosTicket`.

  `boolean`

  `isCurrent()`

  Determines if this ticket is still current.

  `boolean`

  `isDestroyed()`

  Determines if this ticket has been destroyed.

  `final boolean`

  `isForwardable()`

  Determines if this ticket is forwardable.

  `final boolean`

  `isForwarded()`

  Determines if this ticket had been forwarded or was issued based on
  authentication involving a forwarded ticket-granting ticket.

  `final boolean`

  `isInitial()`

  Determines if this ticket was issued using the Kerberos AS-Exchange
  protocol, and not issued based on some ticket-granting ticket.

  `final boolean`

  `isPostdated()`

  Determines is this ticket is post-dated.

  `final boolean`

  `isProxiable()`

  Determines if this ticket is proxiable.

  `final boolean`

  `isProxy()`

  Determines is this ticket is a proxy-ticket.

  `final boolean`

  `isRenewable()`

  Determines is this ticket is renewable.

  `void`

  `refresh()`

  Extends the validity period of this ticket.

  `String`

  `toString()`

  Returns an informative textual representation of this `KerberosTicket`.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### KerberosTicket

    public KerberosTicket(byte[] asn1Encoding,
    [KerberosPrincipal](KerberosPrincipal.md "class in javax.security.auth.kerberos") client,
    [KerberosPrincipal](KerberosPrincipal.md "class in javax.security.auth.kerberos") server,
    byte[] sessionKey,
    int keyType,
    boolean[] flags,
    [Date](../../../../../java.base/java/util/Date.md "class in java.util") authTime,
    [Date](../../../../../java.base/java/util/Date.md "class in java.util") startTime,
    [Date](../../../../../java.base/java/util/Date.md "class in java.util") endTime,
    [Date](../../../../../java.base/java/util/Date.md "class in java.util") renewTill,
    [InetAddress](../../../../../java.base/java/net/InetAddress.md "class in java.net")[] clientAddresses)

    Constructs a `KerberosTicket` using credentials information that a
    client either receives from a KDC or reads from a cache.

    Parameters:
    :   `asn1Encoding` - the ASN.1 encoding of the ticket as defined by
        the Kerberos protocol specification.
    :   `client` - the client that owns this service
        ticket
    :   `server` - the service that this ticket is for
    :   `sessionKey` - the raw bytes for the session key that must be
        used to encrypt the authenticator that will be sent to the server
    :   `keyType` - the key type for the session key as defined by the
        Kerberos protocol specification.
    :   `flags` - the ticket flags. Each element in this array indicates
        the value for the corresponding bit in the ASN.1 BitString that
        represents the ticket flags. If the number of elements in this array
        is less than the number of flags used by the Kerberos protocol,
        then the missing flags will be filled in with false.
    :   `authTime` - the time of initial authentication for the client
    :   `startTime` - the time after which the ticket will be valid. This
        may be null in which case the value of authTime is treated as the
        startTime.
    :   `endTime` - the time after which the ticket will no longer be
        valid
    :   `renewTill` - an absolute expiration time for the ticket,
        including all renewal that might be possible. This field may be null
        for tickets that are not renewable.
    :   `clientAddresses` - the addresses from where the ticket may be
        used by the client. This field may be null when the ticket is usable
        from any address.
* ## Method Details

  + ### getClient

    public final [KerberosPrincipal](KerberosPrincipal.md "class in javax.security.auth.kerberos") getClient()

    Returns the client principal associated with this ticket.

    Returns:
    :   the client principal, or `null` if destroyed.
  + ### getServer

    public final [KerberosPrincipal](KerberosPrincipal.md "class in javax.security.auth.kerberos") getServer()

    Returns the service principal associated with this ticket.

    Returns:
    :   the service principal, or `null` if destroyed.
  + ### getSessionKey

    public final [SecretKey](../../../../../java.base/javax/crypto/SecretKey.md "interface in javax.crypto") getSessionKey()

    Returns the session key associated with this ticket. The return value
    is always a [`EncryptionKey`](EncryptionKey.md "class in javax.security.auth.kerberos") object.

    Returns:
    :   the session key.

    Throws:
    :   `IllegalStateException` - if this ticket is destroyed
  + ### getSessionKeyType

    public final int getSessionKeyType()

    Returns the key type of the session key associated with this
    ticket as defined by the Kerberos Protocol Specification.

    Returns:
    :   the key type of the session key associated with this
        ticket.

    Throws:
    :   `IllegalStateException` - if this ticket is destroyed

    See Also:
    :   - [`getSessionKey()`](#getSessionKey())
  + ### isForwardable

    public final boolean isForwardable()

    Determines if this ticket is forwardable.

    Returns:
    :   true if this ticket is forwardable, or false if not forwardable
        or destroyed.
  + ### isForwarded

    public final boolean isForwarded()

    Determines if this ticket had been forwarded or was issued based on
    authentication involving a forwarded ticket-granting ticket.

    Returns:
    :   true if this ticket had been forwarded or was issued based on
        authentication involving a forwarded ticket-granting ticket,
        or false otherwise or destroyed.
  + ### isProxiable

    public final boolean isProxiable()

    Determines if this ticket is proxiable.

    Returns:
    :   true if this ticket is proxiable, or false if not proxiable
        or destroyed.
  + ### isProxy

    public final boolean isProxy()

    Determines is this ticket is a proxy-ticket.

    Returns:
    :   true if this ticket is a proxy-ticket, or false if not
        a proxy-ticket or destroyed.
  + ### isPostdated

    public final boolean isPostdated()

    Determines is this ticket is post-dated.

    Returns:
    :   true if this ticket is post-dated, or false if not post-dated
        or destroyed.
  + ### isRenewable

    public final boolean isRenewable()

    Determines is this ticket is renewable. If so, the [`refresh`](#refresh()) method can be called, assuming the validity period for
    renewing is not already over.

    Returns:
    :   true if this ticket is renewable, or false if not renewable
        or destroyed.
  + ### isInitial

    public final boolean isInitial()

    Determines if this ticket was issued using the Kerberos AS-Exchange
    protocol, and not issued based on some ticket-granting ticket.

    Returns:
    :   true if this ticket was issued using the Kerberos AS-Exchange
        protocol, or false if not issued this way or destroyed.
  + ### getFlags

    public final boolean[] getFlags()

    Returns the flags associated with this ticket. Each element in the
    returned array indicates the value for the corresponding bit in the
    ASN.1 BitString that represents the ticket flags.

    Returns:
    :   the flags associated with this ticket, or `null`
        if destroyed.
  + ### getAuthTime

    public final [Date](../../../../../java.base/java/util/Date.md "class in java.util") getAuthTime()

    Returns the time that the client was authenticated.

    Returns:
    :   the time that the client was authenticated
        or `null` if the field is not set or
        this ticket is destroyed.
  + ### getStartTime

    public final [Date](../../../../../java.base/java/util/Date.md "class in java.util") getStartTime()

    Returns the start time for this ticket's validity period.

    Returns:
    :   the start time for this ticket's validity period
        or `null` if the field is not set or
        this ticket is destroyed.
  + ### getEndTime

    public final [Date](../../../../../java.base/java/util/Date.md "class in java.util") getEndTime()

    Returns the expiration time for this ticket's validity period.

    Returns:
    :   the expiration time for this ticket's validity period,
        or `null` if destroyed.
  + ### getRenewTill

    public final [Date](../../../../../java.base/java/util/Date.md "class in java.util") getRenewTill()

    Returns the latest expiration time for this ticket, including all
    renewals. This will return a null value for non-renewable tickets.

    Returns:
    :   the latest expiration time for this ticket, or `null`
        if destroyed.
  + ### getClientAddresses

    public final [InetAddress](../../../../../java.base/java/net/InetAddress.md "class in java.net")[] getClientAddresses()

    Returns a list of addresses from where the ticket can be used.

    Returns:
    :   the list of addresses, or `null` if the field was not
        provided or this ticket is destroyed.
  + ### getEncoded

    public final byte[] getEncoded()

    Returns an ASN.1 encoding of the entire ticket.

    Returns:
    :   an ASN.1 encoding of the entire ticket. A new byte
        array is returned each time this method is called.

    Throws:
    :   `IllegalStateException` - if this ticket is destroyed
  + ### isCurrent

    public boolean isCurrent()

    Determines if this ticket is still current.

    Specified by:
    :   `isCurrent` in interface `Refreshable`

    Returns:
    :   true if this ticket is still current, or false if not current
        or destroyed.
  + ### refresh

    public void refresh()
    throws [RefreshFailedException](../../../../../java.base/javax/security/auth/RefreshFailedException.md "class in javax.security.auth")

    Extends the validity period of this ticket. The ticket will contain
    a new session key if the refresh operation succeeds. The refresh
    operation will fail if the ticket is not renewable or the latest
    allowable renew time has passed. Any other error returned by the
    KDC will also cause this method to fail.
    Note: This method is not synchronized with the accessor
    methods of this object. Hence callers need to be aware of multiple
    threads that might access this and try to renew it at the same
    time.

    Specified by:
    :   `refresh` in interface `Refreshable`

    Throws:
    :   `IllegalStateException` - if this ticket is destroyed
    :   `RefreshFailedException` - if the ticket is not renewable, or
        the latest allowable renew time has passed, or the KDC returns some
        error.

    See Also:
    :   - [`isRenewable()`](#isRenewable())
        - [`getRenewTill()`](#getRenewTill())
  + ### destroy

    public void destroy()
    throws [DestroyFailedException](../../../../../java.base/javax/security/auth/DestroyFailedException.md "class in javax.security.auth")

    Destroys the ticket and destroys any sensitive information stored in
    it.

    Specified by:
    :   `destroy` in interface `Destroyable`

    Throws:
    :   `DestroyFailedException` - if the destroy operation fails.
  + ### isDestroyed

    public boolean isDestroyed()

    Determines if this ticket has been destroyed.

    Specified by:
    :   `isDestroyed` in interface `Destroyable`

    Returns:
    :   true if this `Object` has been destroyed,
        false otherwise.
  + ### toString

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns an informative textual representation of this `KerberosTicket`.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   an informative textual representation of this `KerberosTicket`.
  + ### hashCode

    public int hashCode()

    Returns a hash code for this `KerberosTicket`.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code for this `KerberosTicket`.

    Since:
    :   1.6

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") other)

    Compares the specified object with this `KerberosTicket` for equality.
    Returns true if the given object is also a
    `KerberosTicket` and the two
    `KerberosTicket` instances are equivalent.
    A destroyed `KerberosTicket` object is only equal to itself.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `other` - the object to compare to

    Returns:
    :   true if the specified object is equal to this `KerberosTicket`,
        false otherwise.

    Since:
    :   1.6

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")