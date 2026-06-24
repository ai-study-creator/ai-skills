Module [java.naming](../../../module-summary.md)

Package [javax.naming.ldap](package-summary.md)

# Interface UnsolicitedNotification

All Superinterfaces:
:   `ExtendedResponse`, `HasControls`, `Serializable`

---

public interface UnsolicitedNotification
extends [ExtendedResponse](ExtendedResponse.md "interface in javax.naming.ldap"), [HasControls](HasControls.md "interface in javax.naming.ldap")

This interface represents an unsolicited notification as defined in
[RFC 2251](http://www.ietf.org/rfc/rfc2251.txt).
An unsolicited notification is sent by the LDAP server to the LDAP
client without any provocation from the client.
Its format is that of an extended response (`ExtendedResponse`).

Since:
:   1.3

See Also:
:   * [`ExtendedResponse`](ExtendedResponse.md "interface in javax.naming.ldap")
    * [`UnsolicitedNotificationEvent`](UnsolicitedNotificationEvent.md "class in javax.naming.ldap")
    * [`UnsolicitedNotificationListener`](UnsolicitedNotificationListener.md "interface in javax.naming.ldap")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `NamingException`

  `getException()`

  Retrieves the exception as constructed using information
  sent by the server.

  `String[]`

  `getReferrals()`

  Retrieves the referral(s) sent by the server.

  ### Methods inherited from interface javax.naming.ldap.[ExtendedResponse](ExtendedResponse.md "interface in javax.naming.ldap")

  `getEncodedValue, getID`

  ### Methods inherited from interface javax.naming.ldap.[HasControls](HasControls.md "interface in javax.naming.ldap")

  `getControls`

* ## Method Details

  + ### getReferrals

    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] getReferrals()

    Retrieves the referral(s) sent by the server.

    Returns:
    :   A possibly null array of referrals, each of which is represented
        by a URL string. If null, no referral was sent by the server.
  + ### getException

    [NamingException](../NamingException.md "class in javax.naming") getException()

    Retrieves the exception as constructed using information
    sent by the server.

    Returns:
    :   A possibly null exception as constructed using information
        sent by the server. If null, a "success" status was indicated by
        the server.