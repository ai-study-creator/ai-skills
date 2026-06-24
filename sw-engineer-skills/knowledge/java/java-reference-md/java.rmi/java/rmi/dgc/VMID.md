Module [java.rmi](../../../module-summary.md)

Package [java.rmi.dgc](package-summary.md)

# Class VMID

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.rmi.dgc.VMID

All Implemented Interfaces:
:   `Serializable`

---

public final class VMID
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

A VMID is a identifier that is unique across all Java virtual
machines. VMIDs are used by the distributed garbage collector
to identify client VMs.

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.rmi.dgc.VMID)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `VMID()`

  Create a new VMID.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Compare this VMID to another, and return true if they are the
  same identifier.

  `int`

  `hashCode()`

  Compute hash code for this VMID.

  `static boolean`

  `isUnique()`

  Deprecated.

  `String`

  `toString()`

  Return string representation of this VMID.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### VMID

    public VMID()

    Create a new VMID. Each new VMID returned from this constructor
    is unique for all Java virtual machines under the following
    conditions: a) the conditions for uniqueness for objects of
    the class `java.rmi.server.UID` are satisfied, and b) an
    address can be obtained for this host that is unique and constant
    for the lifetime of this object.
* ## Method Details

  + ### isUnique

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public static boolean isUnique()

    Deprecated.

    Return true if an accurate address can be determined for this
    host. If false, reliable VMID cannot be generated from this host

    Returns:
    :   true if host address can be determined, false otherwise
  + ### hashCode

    public int hashCode()

    Compute hash code for this VMID.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Compare this VMID to another, and return true if they are the
    same identifier.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the reference object with which to compare.

    Returns:
    :   `true` if this object is the same as the obj
        argument; `false` otherwise.

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Return string representation of this VMID.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.