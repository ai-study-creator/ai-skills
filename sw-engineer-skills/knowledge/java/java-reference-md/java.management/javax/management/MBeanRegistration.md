Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Interface MBeanRegistration

All Known Implementing Classes:
:   `CounterMonitor`, `GaugeMonitor`, `JMXConnectorServer`, `MLet`, `Monitor`, `PrivateMLet`, `RelationService`, `RelationSupport`, `RequiredModelMBean`, `RMIConnectorServer`, `StandardEmitterMBean`, `StandardMBean`, `StringMonitor`, `Timer`

---

public interface MBeanRegistration

Can be implemented by an MBean in order to
carry out operations before and after being registered or unregistered from
the MBean Server. An MBean can also implement this interface in order
to get a reference to the MBean Server and/or its name within that
MBean Server.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `postDeregister()`

  Allows the MBean to perform any operations needed after having been
  unregistered in the MBean server.

  `void`

  `postRegister(Boolean registrationDone)`

  Allows the MBean to perform any operations needed after having been
  registered in the MBean server or after the registration has failed.

  `void`

  `preDeregister()`

  Allows the MBean to perform any operations it needs before
  being unregistered by the MBean server.

  `ObjectName`

  `preRegister(MBeanServer server,
  ObjectName name)`

  Allows the MBean to perform any operations it needs before
  being registered in the MBean Server.

* ## Method Details

  + ### preRegister

    [ObjectName](ObjectName.md "class in javax.management") preRegister([MBeanServer](MBeanServer.md "interface in javax.management") server,
    [ObjectName](ObjectName.md "class in javax.management") name)
    throws [Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

    Allows the MBean to perform any operations it needs before
    being registered in the MBean Server. If the name of the MBean
    is not specified, the MBean can provide a name for its
    registration. If any exception is raised, the MBean will not be
    registered in the MBean Server.

    Parameters:
    :   `server` - The MBean Server in which the MBean will be registered.
    :   `name` - The object name of the MBean. This name is null if
        the name parameter to one of the `createMBean` or
        `registerMBean` methods in the [`MBeanServer`](MBeanServer.md "interface in javax.management")
        interface is null. In that case, this method must return a
        non-null ObjectName for the new MBean.

    Returns:
    :   The name under which the MBean is to be registered.
        This value must not be null. If the `name`
        parameter is not null, it will usually but not necessarily be
        the returned value.

    Throws:
    :   `Exception` - This exception will be caught by
        the MBean Server and re-thrown as an [`MBeanRegistrationException`](MBeanRegistrationException.md "class in javax.management").
  + ### postRegister

    void postRegister([Boolean](../../../java.base/java/lang/Boolean.md "class in java.lang") registrationDone)

    Allows the MBean to perform any operations needed after having been
    registered in the MBean server or after the registration has failed.

    If the implementation of this method throws a [`RuntimeException`](../../../java.base/java/lang/RuntimeException.md "class in java.lang")
    or an [`Error`](../../../java.base/java/lang/Error.md "class in java.lang"), the MBean Server will rethrow those inside
    a [`RuntimeMBeanException`](RuntimeMBeanException.md "class in javax.management") or [`RuntimeErrorException`](RuntimeErrorException.md "class in javax.management"),
    respectively. However, throwing an exception in `postRegister`
    will not change the state of the MBean:
    if the MBean was already registered (`registrationDone` is
    `true`), the MBean will remain registered.

    This might be confusing for the code calling `createMBean()`
    or `registerMBean()`, as such code might assume that MBean
    registration has failed when such an exception is raised.
    Therefore it is recommended that implementations of
    `postRegister` do not throw Runtime Exceptions or Errors if it
    can be avoided.

    Parameters:
    :   `registrationDone` - Indicates whether or not the MBean has
        been successfully registered in the MBean server. The value
        false means that the registration phase has failed.
  + ### preDeregister

    void preDeregister()
    throws [Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

    Allows the MBean to perform any operations it needs before
    being unregistered by the MBean server.

    Throws:
    :   `Exception` - This exception will be caught by
        the MBean server and re-thrown as an [`MBeanRegistrationException`](MBeanRegistrationException.md "class in javax.management").
  + ### postDeregister

    void postDeregister()

    Allows the MBean to perform any operations needed after having been
    unregistered in the MBean server.

    If the implementation of this method throws a [`RuntimeException`](../../../java.base/java/lang/RuntimeException.md "class in java.lang")
    or an [`Error`](../../../java.base/java/lang/Error.md "class in java.lang"), the MBean Server will rethrow those inside
    a [`RuntimeMBeanException`](RuntimeMBeanException.md "class in javax.management") or [`RuntimeErrorException`](RuntimeErrorException.md "class in javax.management"),
    respectively. However, throwing an exception in `postDeregister`
    will not change the state of the MBean:
    the MBean was already successfully deregistered and will remain so.

    This might be confusing for the code calling
    `unregisterMBean()`, as it might assume that MBean deregistration
    has failed. Therefore it is recommended that implementations of
    `postDeregister` do not throw Runtime Exceptions or Errors if it
    can be avoided.