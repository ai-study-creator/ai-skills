Module [java.rmi](../../../module-summary.md)

Package [java.rmi.dgc](package-summary.md)

# Class Lease

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.rmi.dgc.Lease

All Implemented Interfaces:
:   `Serializable`

---

public final class Lease
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

A lease contains a unique VM identifier and a lease duration. A
Lease object is used to request and grant leases to remote object
references.

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.rmi.dgc.Lease)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Lease(VMID id,
  long duration)`

  Constructs a lease with a specific VMID and lease duration.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `long`

  `getValue()`

  Returns the lease duration.

  `VMID`

  `getVMID()`

  Returns the client VMID associated with the lease.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### Lease

    public Lease([VMID](VMID.md "class in java.rmi.dgc") id,
    long duration)

    Constructs a lease with a specific VMID and lease duration. The
    vmid may be null.

    Parameters:
    :   `id` - VMID associated with this lease
    :   `duration` - lease duration
* ## Method Details

  + ### getVMID

    public [VMID](VMID.md "class in java.rmi.dgc") getVMID()

    Returns the client VMID associated with the lease.

    Returns:
    :   client VMID
  + ### getValue

    public long getValue()

    Returns the lease duration.

    Returns:
    :   lease duration