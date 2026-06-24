Module [java.naming](../../../module-summary.md)

# Package javax.naming.ldap

---

package javax.naming.ldap

* Related Packages

  Package

  Description

  [javax.naming](../package-summary.md)

  [javax.naming.ldap.spi](spi/package-summary.md)

  [javax.naming.directory](../directory/package-summary.md)

  [javax.naming.event](../event/package-summary.md)

  [javax.naming.spi](../spi/package-summary.md)
* All Classes and InterfacesInterfacesClassesException Classes

  Class

  Description

  [BasicControl](BasicControl.md "class in javax.naming.ldap")

  This class provides a basic implementation of the `Control`
  interface.

  [Control](Control.md "interface in javax.naming.ldap")

  This interface represents an LDAPv3 control as defined in
  [RFC 2251](http://www.ietf.org/rfc/rfc2251.txt).

  [ControlFactory](ControlFactory.md "class in javax.naming.ldap")

  This abstract class represents a factory for creating LDAPv3 controls.

  [ExtendedRequest](ExtendedRequest.md "interface in javax.naming.ldap")

  This interface represents an LDAPv3 extended operation request as defined in
  [RFC 2251](http://www.ietf.org/rfc/rfc2251.txt).

  [ExtendedResponse](ExtendedResponse.md "interface in javax.naming.ldap")

  This interface represents an LDAP extended operation response as defined in
  [RFC 2251](http://www.ietf.org/rfc/rfc2251.txt).

  [HasControls](HasControls.md "interface in javax.naming.ldap")

  This interface is for returning controls with objects returned
  in NamingEnumerations.

  [InitialLdapContext](InitialLdapContext.md "class in javax.naming.ldap")

  This class is the starting context for performing
  LDAPv3-style extended operations and controls.

  [LdapContext](LdapContext.md "interface in javax.naming.ldap")

  This interface represents a context in which you can perform
  operations with LDAPv3-style controls and perform LDAPv3-style
  extended operations.

  [LdapName](LdapName.md "class in javax.naming.ldap")

  This class represents a distinguished name as specified by
  [RFC 2253](http://www.ietf.org/rfc/rfc2253.txt).

  [LdapReferralException](LdapReferralException.md "class in javax.naming.ldap")

  This abstract class is used to represent an LDAP referral exception.

  [ManageReferralControl](ManageReferralControl.md "class in javax.naming.ldap")

  Requests that referral and other special LDAP objects be manipulated
  as normal LDAP objects.

  [PagedResultsControl](PagedResultsControl.md "class in javax.naming.ldap")

  Requests that the results of a search operation be returned by the LDAP
  server in batches of a specified size.

  [PagedResultsResponseControl](PagedResultsResponseControl.md "class in javax.naming.ldap")

  Indicates the end of a batch of search results.

  [Rdn](Rdn.md "class in javax.naming.ldap")

  This class represents a relative distinguished name, or RDN, which is a
  component of a distinguished name as specified by
  [RFC 2253](http://www.ietf.org/rfc/rfc2253.txt).

  [SortControl](SortControl.md "class in javax.naming.ldap")

  Requests that the results of a search operation be sorted by the LDAP server
  before being returned.

  [SortKey](SortKey.md "class in javax.naming.ldap")

  A sort key and its associated sort parameters.

  [SortResponseControl](SortResponseControl.md "class in javax.naming.ldap")

  Indicates whether the requested sort of search results was successful or not.

  [StartTlsRequest](StartTlsRequest.md "class in javax.naming.ldap")

  This class implements the LDAPv3 Extended Request for StartTLS as
  defined in
  [Lightweight Directory
  Access Protocol (v3): Extension for Transport Layer Security](http://www.ietf.org/rfc/rfc2830.txt)
  The object identifier for StartTLS is 1.3.6.1.4.1.1466.20037
  and no extended request value is defined.

  [StartTlsResponse](StartTlsResponse.md "class in javax.naming.ldap")

  This class implements the LDAPv3 Extended Response for StartTLS as
  defined in
  [Lightweight Directory
  Access Protocol (v3): Extension for Transport Layer Security](http://www.ietf.org/rfc/rfc2830.txt)
  The object identifier for StartTLS is 1.3.6.1.4.1.1466.20037
  and no extended response value is defined.

  [UnsolicitedNotification](UnsolicitedNotification.md "interface in javax.naming.ldap")

  This interface represents an unsolicited notification as defined in
  [RFC 2251](http://www.ietf.org/rfc/rfc2251.txt).

  [UnsolicitedNotificationEvent](UnsolicitedNotificationEvent.md "class in javax.naming.ldap")

  This class represents an event fired in response to an unsolicited
  notification sent by the LDAP server.

  [UnsolicitedNotificationListener](UnsolicitedNotificationListener.md "interface in javax.naming.ldap")

  This interface is for handling `UnsolicitedNotificationEvent`.