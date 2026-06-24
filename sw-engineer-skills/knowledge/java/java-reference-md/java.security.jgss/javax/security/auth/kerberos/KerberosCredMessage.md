Module [java.security.jgss](../../../../module-summary.md)

Package [javax.security.auth.kerberos](package-summary.md)

# Class KerberosCredMessage

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.security.auth.kerberos.KerberosCredMessage

All Implemented Interfaces:
:   `Destroyable`

---

public final class KerberosCredMessage
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Destroyable](../../../../../java.base/javax/security/auth/Destroyable.md "interface in javax.security.auth")

This class encapsulates a Kerberos 5 KRB\_CRED message which can be used to
send Kerberos credentials from one principal to another.

A KRB\_CRED message is defined in Section 5.8.1 of the Kerberos Protocol
Specification ([RFC 4120](http://www.ietf.org/rfc/rfc4120.txt)) as:

```
    KRB-CRED        ::= [APPLICATION 22] SEQUENCE {
            pvno            [0] INTEGER (5),
            msg-type        [1] INTEGER (22),
            tickets         [2] SEQUENCE OF Ticket,
            enc-part        [3] EncryptedData -- EncKrbCredPart
    }
```

Since:
:   9

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `KerberosCredMessage(KerberosPrincipal sender,
  KerberosPrincipal recipient,
  byte[] message)`

  Constructs a `KerberosCredMessage` object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `destroy()`

  Destroys this object by clearing out the message.

  `boolean`

  `equals(Object other)`

  Compares the specified object with this `KerberosCredMessage`
  for equality.

  `byte[]`

  `getEncoded()`

  Returns the DER encoded form of the KRB\_CRED message.

  `KerberosPrincipal`

  `getRecipient()`

  Returns the recipient of this message.

  `KerberosPrincipal`

  `getSender()`

  Returns the sender of this message.

  `int`

  `hashCode()`

  Returns a hash code for this `KerberosCredMessage`.

  `boolean`

  `isDestroyed()`

  Determine if this `Object` has been destroyed.

  `String`

  `toString()`

  Returns an informative textual representation of this `KerberosCredMessage`.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### KerberosCredMessage

    public KerberosCredMessage([KerberosPrincipal](KerberosPrincipal.md "class in javax.security.auth.kerberos") sender,
    [KerberosPrincipal](KerberosPrincipal.md "class in javax.security.auth.kerberos") recipient,
    byte[] message)

    Constructs a `KerberosCredMessage` object.

    The contents of the `message` argument are copied; subsequent
    modification of the byte array does not affect the newly created object.

    Parameters:
    :   `sender` - the sender of the message
    :   `recipient` - the recipient of the message
    :   `message` - the DER encoded KRB\_CRED message

    Throws:
    :   `NullPointerException` - if any of sender, recipient
        or message is null
* ## Method Details

  + ### getEncoded

    public byte[] getEncoded()

    Returns the DER encoded form of the KRB\_CRED message.

    Returns:
    :   a newly allocated byte array that contains the encoded form

    Throws:
    :   `IllegalStateException` - if the object is destroyed
  + ### getSender

    public [KerberosPrincipal](KerberosPrincipal.md "class in javax.security.auth.kerberos") getSender()

    Returns the sender of this message.

    Returns:
    :   the sender

    Throws:
    :   `IllegalStateException` - if the object is destroyed
  + ### getRecipient

    public [KerberosPrincipal](KerberosPrincipal.md "class in javax.security.auth.kerberos") getRecipient()

    Returns the recipient of this message.

    Returns:
    :   the recipient

    Throws:
    :   `IllegalStateException` - if the object is destroyed
  + ### destroy

    public void destroy()

    Destroys this object by clearing out the message.

    Specified by:
    :   `destroy` in interface `Destroyable`
  + ### isDestroyed

    public boolean isDestroyed()

    Description copied from interface: `Destroyable`

    Determine if this `Object` has been destroyed.

    Specified by:
    :   `isDestroyed` in interface `Destroyable`

    Returns:
    :   true if this `Object` has been destroyed,
        false otherwise.
  + ### toString

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns an informative textual representation of this `KerberosCredMessage`.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   an informative textual representation of this `KerberosCredMessage`.
  + ### hashCode

    public int hashCode()

    Returns a hash code for this `KerberosCredMessage`.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code for this `KerberosCredMessage`.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") other)

    Compares the specified object with this `KerberosCredMessage`
    for equality. Returns true if the given object is also a
    `KerberosCredMessage` and the two `KerberosCredMessage`
    instances are equivalent. More formally two `KerberosCredMessage`
    instances are equal if they have equal sender, recipient, and encoded
    KRB\_CRED messages.
    A destroyed `KerberosCredMessage` object is only equal to itself.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `other` - the object to compare to

    Returns:
    :   true if the specified object is equal to this
        `KerberosCredMessage`, false otherwise.

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")