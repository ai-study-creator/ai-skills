Module [java.naming](../../module-summary.md)

Package [javax.naming](package-summary.md)

# Class RefAddr

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.naming.RefAddr

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `BinaryRefAddr`, `StringRefAddr`

---

public abstract class RefAddr
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

This class represents the address of a communications end-point.
It consists of a type that describes the communication mechanism
and an address contents determined by an RefAddr subclass.

For example, an address type could be "BSD Printer Address",
which specifies that it is an address to be used with the BSD printing
protocol. Its contents could be the machine name identifying the
location of the printer server that understands this protocol.

A RefAddr is contained within a Reference.

RefAddr is an abstract class. Concrete implementations of it
determine its synchronization properties.

Since:
:   1.3

See Also:
:   * [`Reference`](Reference.md "class in javax.naming")
    * [`LinkRef`](LinkRef.md "class in javax.naming")
    * [`StringRefAddr`](StringRefAddr.md "class in javax.naming")
    * [`BinaryRefAddr`](BinaryRefAddr.md "class in javax.naming")
    * [Serialized Form](../../../serialized-form.md#javax.naming.RefAddr)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected String`

  `addrType`

  Contains the type of this address.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `RefAddr(String addrType)`

  Constructs a new instance of RefAddr using its address type.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Determines whether obj is equal to this RefAddr.

  `abstract Object`

  `getContent()`

  Retrieves the contents of this address.

  `String`

  `getType()`

  Retrieves the address type of this address.

  `int`

  `hashCode()`

  Computes the hash code of this address using its address type and contents.

  `String`

  `toString()`

  Generates the string representation of this address.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### addrType

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") addrType

    Contains the type of this address.
* ## Constructor Details

  + ### RefAddr

    protected RefAddr([String](../../../java.base/java/lang/String.md "class in java.lang") addrType)

    Constructs a new instance of RefAddr using its address type.

    Parameters:
    :   `addrType` - A non-null string describing the type of the address.
* ## Method Details

  + ### getType

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getType()

    Retrieves the address type of this address.

    Returns:
    :   The non-null address type of this address.
  + ### getContent

    public abstract [Object](../../../java.base/java/lang/Object.md "class in java.lang") getContent()

    Retrieves the contents of this address.

    Returns:
    :   The possibly null address contents.
  + ### equals

    public boolean equals([Object](../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Determines whether obj is equal to this RefAddr.

    obj is equal to this RefAddr if all of these conditions are true
    - non-null- instance of RefAddr- obj has the same address type as this RefAddr (using String.compareTo())- both obj and this RefAddr's contents are null or they are equal
            (using the equals() test).

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - possibly null obj to check.

    Returns:
    :   true if obj is equal to this refaddr; false otherwise.

    See Also:
    :   - [`getContent()`](#getContent())
        - [`getType()`](#getType())
  + ### hashCode

    public int hashCode()

    Computes the hash code of this address using its address type and contents.
    The hash code is the sum of the hash code of the address type and
    the hash code of the address contents.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   The hash code of this address as an int.

    See Also:
    :   - [`Object.hashCode()`](../../../java.base/java/lang/Object.md#hashCode())
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Generates the string representation of this address.
    The string consists of the address's type and contents with labels.
    This representation is intended for display only and not to be parsed.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   The non-null string representation of this address.