Module [java.desktop](../../../module-summary.md)

# Package java.beans.beancontext

---

package java.beans.beancontext

Provides classes and interfaces relating to bean context. A bean context is a
container for beans and defines the execution environment for the beans it
contains. There can be several beans in a single bean context, and a bean
context can be nested within another bean context. This package also
contains events and listener interface for beans being added and removed from
a bean context.

Since:
:   1.2

* Related Packages

  Package

  Description

  [java.beans](../package-summary.md)

  Contains classes related to developing *beans* -- components based on
  the JavaBeans architecture.
* All Classes and InterfacesInterfacesClasses

  Class

  Description

  [BeanContext](BeanContext.md "interface in java.beans.beancontext")

  The BeanContext acts a logical hierarchical container for JavaBeans.

  [BeanContextChild](BeanContextChild.md "interface in java.beans.beancontext")

  JavaBeans wishing to be nested within, and obtain a reference to their
  execution environment, or context, as defined by the BeanContext
  sub-interface shall implement this interface.

  [BeanContextChildComponentProxy](BeanContextChildComponentProxy.md "interface in java.beans.beancontext")

  This interface is implemented by
  `BeanContextChildren` that have an AWT `Component`
  associated with them.

  [BeanContextChildSupport](BeanContextChildSupport.md "class in java.beans.beancontext")

  This is a general support class to provide support for implementing the
  BeanContextChild protocol.

  [BeanContextContainerProxy](BeanContextContainerProxy.md "interface in java.beans.beancontext")

  This interface is implemented by BeanContexts' that have an AWT Container
  associated with them.

  [BeanContextEvent](BeanContextEvent.md "class in java.beans.beancontext")

  `BeanContextEvent` is the abstract root event class
  for all events emitted
  from, and pertaining to the semantics of, a `BeanContext`.

  [BeanContextMembershipEvent](BeanContextMembershipEvent.md "class in java.beans.beancontext")

  A `BeanContextMembershipEvent` encapsulates
  the list of children added to, or removed from,
  the membership of a particular `BeanContext`.

  [BeanContextMembershipListener](BeanContextMembershipListener.md "interface in java.beans.beancontext")

  Compliant BeanContexts fire events on this interface when the state of
  the membership of the BeanContext changes.

  [BeanContextProxy](BeanContextProxy.md "interface in java.beans.beancontext")

  This interface is implemented by a JavaBean that does
  not directly have a BeanContext(Child) associated with
  it (via implementing that interface or a subinterface thereof),
  but has a public BeanContext(Child) delegated from it.

  [BeanContextServiceAvailableEvent](BeanContextServiceAvailableEvent.md "class in java.beans.beancontext")

  This event type is used by the BeanContextServicesListener in order to
  identify the service being registered.

  [BeanContextServiceProvider](BeanContextServiceProvider.md "interface in java.beans.beancontext")

  One of the primary functions of a BeanContext is to act a as rendezvous
  between JavaBeans, and BeanContextServiceProviders.

  [BeanContextServiceProviderBeanInfo](BeanContextServiceProviderBeanInfo.md "interface in java.beans.beancontext")

  A BeanContextServiceProvider implementor who wishes to provide explicit
  information about the services their bean may provide shall implement a
  BeanInfo class that implements this BeanInfo subinterface and provides
  explicit information about the methods, properties, events, etc, of their
  services.

  [BeanContextServiceRevokedEvent](BeanContextServiceRevokedEvent.md "class in java.beans.beancontext")

  This event type is used by the
  `BeanContextServiceRevokedListener` in order to
  identify the service being revoked.

  [BeanContextServiceRevokedListener](BeanContextServiceRevokedListener.md "interface in java.beans.beancontext")

  The listener interface for receiving
  `BeanContextServiceRevokedEvent` objects.

  [BeanContextServices](BeanContextServices.md "interface in java.beans.beancontext")

  The BeanContextServices interface provides a mechanism for a BeanContext
  to expose generic "services" to the BeanContextChild objects within.

  [BeanContextServicesListener](BeanContextServicesListener.md "interface in java.beans.beancontext")

  The listener interface for receiving
  `BeanContextServiceAvailableEvent` objects.

  [BeanContextServicesSupport](BeanContextServicesSupport.md "class in java.beans.beancontext")

  This helper class provides a utility implementation of the
  java.beans.beancontext.BeanContextServices interface.

  [BeanContextServicesSupport.BCSSServiceProvider](BeanContextServicesSupport.BCSSServiceProvider.md "class in java.beans.beancontext")

  subclasses may subclass this nested class to add behaviors for
  each BeanContextServicesProvider.

  [BeanContextSupport](BeanContextSupport.md "class in java.beans.beancontext")

  This helper class provides a utility implementation of the
  java.beans.beancontext.BeanContext interface.

  [BeanContextSupport.BCSIterator](BeanContextSupport.BCSIterator.md "class in java.beans.beancontext")

  protected final subclass that encapsulates an iterator but implements
  a noop remove() method.