Module [java.naming](../../../module-summary.md)

# Package javax.naming.event

---

package javax.naming.event

* Related Packages

  Package

  Description

  [javax.naming](../package-summary.md)

  [javax.naming.directory](../directory/package-summary.md)

  [javax.naming.ldap](../ldap/package-summary.md)

  [javax.naming.spi](../spi/package-summary.md)
* All Classes and InterfacesInterfacesClasses

  Class

  Description

  [EventContext](EventContext.md "interface in javax.naming.event")

  Contains methods for registering/deregistering listeners to be notified of
  events fired when objects named in a context changes.

  [EventDirContext](EventDirContext.md "interface in javax.naming.event")

  Contains methods for registering listeners to be notified
  of events fired when objects named in a directory context changes.

  [NamespaceChangeListener](NamespaceChangeListener.md "interface in javax.naming.event")

  Specifies the methods that a listener interested in namespace changes
  must implement.

  [NamingEvent](NamingEvent.md "class in javax.naming.event")

  This class represents an event fired by a naming/directory service.

  [NamingExceptionEvent](NamingExceptionEvent.md "class in javax.naming.event")

  This class represents an event fired when the procedures/processes
  used to collect information for notifying listeners of
  `NamingEvent`s threw a `NamingException`.

  [NamingListener](NamingListener.md "interface in javax.naming.event")

  This interface is the root of listener interfaces that
  handle `NamingEvent`s.

  [ObjectChangeListener](ObjectChangeListener.md "interface in javax.naming.event")

  Specifies the method that a listener of a `NamingEvent`
  with event type of `OBJECT_CHANGED` must implement.