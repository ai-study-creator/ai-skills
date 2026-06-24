Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Interface PersistentMBean

All Known Subinterfaces:
:   `ModelMBean`

All Known Implementing Classes:
:   `RequiredModelMBean`

---

public interface PersistentMBean

This class is the interface to be implemented by MBeans that are meant to be
persistent. MBeans supporting this interface should call the load method during
construction in order to prime the MBean from the persistent store.
In the case of a ModelMBean, the store method should be called by the MBeanServer based on the descriptors in
the ModelMBean or by the MBean itself during normal processing of the ModelMBean.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `load()`

  Instantiates thisMBean instance with the data found for
  the MBean in the persistent store.

  `void`

  `store()`

  Captures the current state of this MBean instance and
  writes it out to the persistent store.

* ## Method Details

  + ### load

    void load()
    throws [MBeanException](MBeanException.md "class in javax.management"),
    [RuntimeOperationsException](RuntimeOperationsException.md "class in javax.management"),
    [InstanceNotFoundException](InstanceNotFoundException.md "class in javax.management")

    Instantiates thisMBean instance with the data found for
    the MBean in the persistent store. The data loaded could include
    attribute and operation values.
    This method should be called during construction or initialization of this instance,
    and before the MBean is registered with the MBeanServer.

    Throws:
    :   `MBeanException` - Wraps another exception or persistence is not supported
    :   `RuntimeOperationsException` - Wraps exceptions from the persistence mechanism
    :   `InstanceNotFoundException` - Could not find or load this MBean from persistent
        storage
  + ### store

    void store()
    throws [MBeanException](MBeanException.md "class in javax.management"),
    [RuntimeOperationsException](RuntimeOperationsException.md "class in javax.management"),
    [InstanceNotFoundException](InstanceNotFoundException.md "class in javax.management")

    Captures the current state of this MBean instance and
    writes it out to the persistent store. The state stored could include
    attribute and operation values. If one of these methods of persistence is
    not supported a "serviceNotFound" exception will be thrown.

    Persistence policy from the MBean and attribute descriptor is used to guide execution
    of this method. The MBean should be stored if 'persistPolicy' field is:

    ```
     != "never"
       = "always"
       = "onTimer" and now > 'lastPersistTime' + 'persistPeriod'
       = "NoMoreOftenThan" and now > 'lastPersistTime' + 'persistPeriod'
       = "onUnregister"
    ```

    Do not store the MBean if 'persistPolicy' field is:

    ```
        = "never"
        = "onUpdate"
        = "onTimer" && now < 'lastPersistTime' + 'persistPeriod'
    ```

    Throws:
    :   `MBeanException` - Wraps another exception or persistence is not supported
    :   `RuntimeOperationsException` - Wraps exceptions from the persistence mechanism
    :   `InstanceNotFoundException` - Could not find/access the persistent store