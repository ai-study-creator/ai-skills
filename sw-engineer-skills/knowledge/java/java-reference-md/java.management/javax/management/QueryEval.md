Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class QueryEval

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.QueryEval

All Implemented Interfaces:
:   `Serializable`

---

public abstract class QueryEval
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

Allows a query to be performed in the context of a specific MBean server.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.QueryEval)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `QueryEval()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static MBeanServer`

  `getMBeanServer()`

  Return the MBean server that was most recently given to the
  [`setMBeanServer`](#setMBeanServer(javax.management.MBeanServer)) method by this thread.

  `void`

  `setMBeanServer(MBeanServer s)`

  Sets the MBean server on which the query is to be performed.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### QueryEval

    public QueryEval()

    Constructor for subclasses to call.
* ## Method Details

  + ### setMBeanServer

    public void setMBeanServer([MBeanServer](MBeanServer.md "interface in javax.management") s)

    Sets the MBean server on which the query is to be performed.
    The setting is valid for the thread performing the set.
    It is copied to any threads created by that thread at the moment
    of their creation.

    For historical reasons, this method is not static, but its
    behavior does not depend on the instance on which it is
    called.

    Parameters:
    :   `s` - The MBean server on which the query is to be performed.

    See Also:
    :   - [`getMBeanServer()`](#getMBeanServer())
  + ### getMBeanServer

    public static [MBeanServer](MBeanServer.md "interface in javax.management") getMBeanServer()

    Return the MBean server that was most recently given to the
    [`setMBeanServer`](#setMBeanServer(javax.management.MBeanServer)) method by this thread.
    If this thread never called that method, the result is the
    value its parent thread would have obtained from
    `getMBeanServer` at the moment of the creation of
    this thread, or null if there is no parent thread.

    Returns:
    :   the MBean server.

    See Also:
    :   - [`setMBeanServer(javax.management.MBeanServer)`](#setMBeanServer(javax.management.MBeanServer))