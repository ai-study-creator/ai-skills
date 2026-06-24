Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class MBeanServerBuilder

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.MBeanServerBuilder

---

public class MBeanServerBuilder
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

This class represents a builder that creates a default
[`MBeanServer`](MBeanServer.md "interface in javax.management") implementation.
The JMX [`MBeanServerFactory`](MBeanServerFactory.md "class in javax.management") allows
applications to provide their custom MBeanServer
implementation by providing a subclass of this class.

Since:
:   1.5

See Also:
:   * [`MBeanServer`](MBeanServer.md "interface in javax.management")
    * [`MBeanServerFactory`](MBeanServerFactory.md "class in javax.management")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MBeanServerBuilder()`

  Public default constructor.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `MBeanServer`

  `newMBeanServer(String defaultDomain,
  MBeanServer outer,
  MBeanServerDelegate delegate)`

  This method creates a new MBeanServer implementation object.

  `MBeanServerDelegate`

  `newMBeanServerDelegate()`

  This method creates a new MBeanServerDelegate for a new MBeanServer.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MBeanServerBuilder

    public MBeanServerBuilder()

    Public default constructor.
* ## Method Details

  + ### newMBeanServerDelegate

    public [MBeanServerDelegate](MBeanServerDelegate.md "class in javax.management") newMBeanServerDelegate()

    This method creates a new MBeanServerDelegate for a new MBeanServer.
    When creating a new MBeanServer the
    [`MBeanServerFactory`](MBeanServerFactory.md "class in javax.management") first calls this method
    in order to create a new MBeanServerDelegate.
      
    Then it calls
    `newMBeanServer(defaultDomain,outer,delegate)`
    passing the delegate that should be used by the MBeanServer
    implementation.

    Note that the passed delegate might not be directly the
    MBeanServerDelegate that was returned by this method. It could
    be, for instance, a new object wrapping the previously
    returned object.

    Returns:
    :   A new [`MBeanServerDelegate`](MBeanServerDelegate.md "class in javax.management").
  + ### newMBeanServer

    public [MBeanServer](MBeanServer.md "interface in javax.management") newMBeanServer([String](../../../java.base/java/lang/String.md "class in java.lang") defaultDomain,
    [MBeanServer](MBeanServer.md "interface in javax.management") outer,
    [MBeanServerDelegate](MBeanServerDelegate.md "class in javax.management") delegate)

    This method creates a new MBeanServer implementation object.
    When creating a new MBeanServer the
    [`MBeanServerFactory`](MBeanServerFactory.md "class in javax.management") first calls
    `newMBeanServerDelegate()` in order to obtain a new
    [`MBeanServerDelegate`](MBeanServerDelegate.md "class in javax.management") for the new
    MBeanServer. Then it calls
    `newMBeanServer(defaultDomain,outer,delegate)`
    passing the delegate that should be used by the MBeanServer
    implementation.

    Note that the passed delegate might not be directly the
    MBeanServerDelegate that was returned by this implementation. It could
    be, for instance, a new object wrapping the previously
    returned delegate.

    The outer parameter is a pointer to the MBeanServer that
    should be passed to the [`MBeanRegistration`](MBeanRegistration.md "interface in javax.management")
    interface when registering MBeans inside the MBeanServer.
    If outer is `null`, then the MBeanServer
    implementation must use its own `this` reference when
    invoking the [`MBeanRegistration`](MBeanRegistration.md "interface in javax.management") interface.

    This makes it possible for a MBeanServer implementation to wrap
    another MBeanServer implementation, in order to implement, e.g,
    security checks, or to prevent access to the actual MBeanServer
    implementation by returning a pointer to a wrapping object.

    Parameters:
    :   `defaultDomain` - Default domain of the new MBeanServer.
    :   `outer` - A pointer to the MBeanServer object that must be
        passed to the MBeans when invoking their
        [`MBeanRegistration`](MBeanRegistration.md "interface in javax.management") interface.
    :   `delegate` - A pointer to the MBeanServerDelegate associated
        with the new MBeanServer. The new MBeanServer must register
        this MBean in its MBean repository.

    Returns:
    :   A new private implementation of an MBeanServer.