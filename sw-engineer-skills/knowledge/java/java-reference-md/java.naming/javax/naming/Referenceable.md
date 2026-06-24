Module [java.naming](../../module-summary.md)

Package [javax.naming](package-summary.md)

# Interface Referenceable

---

public interface Referenceable

This interface is implemented by an object that can provide a
Reference to itself.

A Reference represents a way of recording address information about
objects which themselves are not directly bound to the naming system.
Such objects can implement the Referenceable interface as a way
for programs that use that object to determine what its Reference is.
For example, when binding an object, if an object implements the
Referenceable interface, getReference() can be invoked on the object to
get its Reference to use for binding.

Since:
:   1.3

See Also:
:   * [`Context.bind(javax.naming.Name, java.lang.Object)`](Context.md#bind(javax.naming.Name,java.lang.Object))
    * [`NamingManager.getObjectInstance(java.lang.Object, javax.naming.Name, javax.naming.Context, java.util.Hashtable<?, ?>)`](spi/NamingManager.md#getObjectInstance(java.lang.Object,javax.naming.Name,javax.naming.Context,java.util.Hashtable))
    * [`Reference`](Reference.md "class in javax.naming")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Reference`

  `getReference()`

  Retrieves the Reference of this object.

* ## Method Details

  + ### getReference

    [Reference](Reference.md "class in javax.naming") getReference()
    throws [NamingException](NamingException.md "class in javax.naming")

    Retrieves the Reference of this object.

    Returns:
    :   The non-null Reference of this object.

    Throws:
    :   `NamingException` - If a naming exception was encountered
        while retrieving the reference.