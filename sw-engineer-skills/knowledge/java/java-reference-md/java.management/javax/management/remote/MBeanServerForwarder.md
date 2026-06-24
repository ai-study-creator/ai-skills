Module [java.management](../../../module-summary.md)

Package [javax.management.remote](package-summary.md)

# Interface MBeanServerForwarder

All Superinterfaces:
:   `MBeanServer`, `MBeanServerConnection`

---

public interface MBeanServerForwarder
extends [MBeanServer](../MBeanServer.md "interface in javax.management")

An object of this class implements the MBeanServer interface and
wraps another object that also implements that interface.
Typically, an implementation of this interface performs some action
in some or all methods of the `MBeanServer` interface
before and/or after forwarding the method to the wrapped object.
Examples include security checking and logging.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `MBeanServer`

  `getMBeanServer()`

  Returns the MBeanServer object to which requests will be forwarded.

  `void`

  `setMBeanServer(MBeanServer mbs)`

  Sets the MBeanServer object to which requests will be forwarded
  after treatment by this object.

  ### Methods inherited from interface javax.management.[MBeanServer](../MBeanServer.md "interface in javax.management")

  `addNotificationListener, addNotificationListener, createMBean, createMBean, createMBean, createMBean, deserialize, deserialize, deserialize, getAttribute, getAttributes, getClassLoader, getClassLoaderFor, getClassLoaderRepository, getDefaultDomain, getDomains, getMBeanCount, getMBeanInfo, getObjectInstance, instantiate, instantiate, instantiate, instantiate, invoke, isInstanceOf, isRegistered, queryMBeans, queryNames, registerMBean, removeNotificationListener, removeNotificationListener, removeNotificationListener, removeNotificationListener, setAttribute, setAttributes, unregisterMBean`

* ## Method Details

  + ### getMBeanServer

    [MBeanServer](../MBeanServer.md "interface in javax.management") getMBeanServer()

    Returns the MBeanServer object to which requests will be forwarded.

    Returns:
    :   the MBeanServer object to which requests will be forwarded,
        or null if there is none.

    See Also:
    :   - [`setMBeanServer(javax.management.MBeanServer)`](#setMBeanServer(javax.management.MBeanServer))
  + ### setMBeanServer

    void setMBeanServer([MBeanServer](../MBeanServer.md "interface in javax.management") mbs)

    Sets the MBeanServer object to which requests will be forwarded
    after treatment by this object.

    Parameters:
    :   `mbs` - the MBeanServer object to which requests will be forwarded.

    Throws:
    :   `IllegalArgumentException` - if this object is already
        forwarding to an MBeanServer object or if `mbs` is
        null or if `mbs` is identical to this object.

    See Also:
    :   - [`getMBeanServer()`](#getMBeanServer())