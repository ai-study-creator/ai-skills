Module [java.naming](../../../module-summary.md)

Package [javax.naming.directory](package-summary.md)

# Class ModificationItem

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.naming.directory.ModificationItem

All Implemented Interfaces:
:   `Serializable`

---

public class ModificationItem
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

This class represents a modification item.
It consists of a modification code and an attribute on which to operate.

A ModificationItem instance is not synchronized against concurrent
multithreaded access. Multiple threads trying to access and modify
a single ModificationItem instance should lock the object.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.naming.directory.ModificationItem)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ModificationItem(int mod_op,
  Attribute attr)`

  Creates a new instance of ModificationItem.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Attribute`

  `getAttribute()`

  Retrieves the attribute associated with this modification item.

  `int`

  `getModificationOp()`

  Retrieves the modification code of this modification item.

  `String`

  `toString()`

  Generates the string representation of this modification item,
  which consists of the modification operation and its related attribute.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ModificationItem

    public ModificationItem(int mod\_op,
    [Attribute](Attribute.md "interface in javax.naming.directory") attr)

    Creates a new instance of ModificationItem.

    Parameters:
    :   `mod_op` - Modification to apply. It must be one of:
        DirContext.ADD\_ATTRIBUTE
        DirContext.REPLACE\_ATTRIBUTE
        DirContext.REMOVE\_ATTRIBUTE
    :   `attr` - The non-null attribute to use for modification.

    Throws:
    :   `IllegalArgumentException` - If attr is null, or if mod\_op is
        not one of the ones specified above.
* ## Method Details

  + ### getModificationOp

    public int getModificationOp()

    Retrieves the modification code of this modification item.

    Returns:
    :   The modification code. It is one of:
        DirContext.ADD\_ATTRIBUTE
        DirContext.REPLACE\_ATTRIBUTE
        DirContext.REMOVE\_ATTRIBUTE
  + ### getAttribute

    public [Attribute](Attribute.md "interface in javax.naming.directory") getAttribute()

    Retrieves the attribute associated with this modification item.

    Returns:
    :   The non-null attribute to use for the modification.
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Generates the string representation of this modification item,
    which consists of the modification operation and its related attribute.
    The string representation is meant for debugging and not to be
    interpreted programmatically.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   The non-null string representation of this modification item.