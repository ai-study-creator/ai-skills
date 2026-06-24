# Hierarchy For Package javax.naming.ldap

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")
  + javax.naming.ldap.[BasicControl](BasicControl.md "class in javax.naming.ldap") (implements javax.naming.ldap.[Control](Control.md "interface in javax.naming.ldap"))
    - javax.naming.ldap.[ManageReferralControl](ManageReferralControl.md "class in javax.naming.ldap")
    - javax.naming.ldap.[PagedResultsControl](PagedResultsControl.md "class in javax.naming.ldap")
    - javax.naming.ldap.[PagedResultsResponseControl](PagedResultsResponseControl.md "class in javax.naming.ldap")
    - javax.naming.ldap.[SortControl](SortControl.md "class in javax.naming.ldap")
    - javax.naming.ldap.[SortResponseControl](SortResponseControl.md "class in javax.naming.ldap")
  + javax.naming.ldap.[ControlFactory](ControlFactory.md "class in javax.naming.ldap")
  + java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - javax.naming.ldap.[UnsolicitedNotificationEvent](UnsolicitedNotificationEvent.md "class in javax.naming.ldap")
  + javax.naming.[InitialContext](../InitialContext.md "class in javax.naming") (implements javax.naming.[Context](../Context.md "interface in javax.naming"))
    - javax.naming.directory.[InitialDirContext](../directory/InitialDirContext.md "class in javax.naming.directory") (implements javax.naming.directory.[DirContext](../directory/DirContext.md "interface in javax.naming.directory"))
      * javax.naming.ldap.[InitialLdapContext](InitialLdapContext.md "class in javax.naming.ldap") (implements javax.naming.ldap.[LdapContext](LdapContext.md "interface in javax.naming.ldap"))
  + javax.naming.ldap.[LdapName](LdapName.md "class in javax.naming.ldap") (implements javax.naming.[Name](../Name.md "interface in javax.naming"))
  + javax.naming.ldap.[Rdn](Rdn.md "class in javax.naming.ldap") (implements java.lang.[Comparable](../../../../java.base/java/lang/Comparable.md "interface in java.lang")<T>, java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
  + javax.naming.ldap.[SortKey](SortKey.md "class in javax.naming.ldap")
  + javax.naming.ldap.[StartTlsRequest](StartTlsRequest.md "class in javax.naming.ldap") (implements javax.naming.ldap.[ExtendedRequest](ExtendedRequest.md "interface in javax.naming.ldap"))
  + javax.naming.ldap.[StartTlsResponse](StartTlsResponse.md "class in javax.naming.ldap") (implements javax.naming.ldap.[ExtendedResponse](ExtendedResponse.md "interface in javax.naming.ldap"))
  + java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")
      * javax.naming.[NamingException](../NamingException.md "class in javax.naming")
        + javax.naming.[ReferralException](../ReferralException.md "class in javax.naming")
          - javax.naming.ldap.[LdapReferralException](LdapReferralException.md "class in javax.naming.ldap")

## Interface Hierarchy

* javax.naming.[Context](../Context.md "interface in javax.naming")
  + javax.naming.directory.[DirContext](../directory/DirContext.md "interface in javax.naming.directory")
    - javax.naming.ldap.[LdapContext](LdapContext.md "interface in javax.naming.ldap")
* java.util.[EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")
  + javax.naming.event.[NamingListener](../event/NamingListener.md "interface in javax.naming.event")
    - javax.naming.ldap.[UnsolicitedNotificationListener](UnsolicitedNotificationListener.md "interface in javax.naming.ldap")
* javax.naming.ldap.[HasControls](HasControls.md "interface in javax.naming.ldap")
  + javax.naming.ldap.[UnsolicitedNotification](UnsolicitedNotification.md "interface in javax.naming.ldap") (also extends javax.naming.ldap.[ExtendedResponse](ExtendedResponse.md "interface in javax.naming.ldap"))
* java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")
  + javax.naming.ldap.[Control](Control.md "interface in javax.naming.ldap")
  + javax.naming.ldap.[ExtendedRequest](ExtendedRequest.md "interface in javax.naming.ldap")
  + javax.naming.ldap.[ExtendedResponse](ExtendedResponse.md "interface in javax.naming.ldap")
    - javax.naming.ldap.[UnsolicitedNotification](UnsolicitedNotification.md "interface in javax.naming.ldap") (also extends javax.naming.ldap.[HasControls](HasControls.md "interface in javax.naming.ldap"))