Module [java.naming](../../module-summary.md)

Package [javax.naming](package-summary.md)

# Class StringRefAddr

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.naming.RefAddr](RefAddr.md "class in javax.naming")

javax.naming.StringRefAddr

All Implemented Interfaces:
:   `Serializable`

---

public class StringRefAddr
extends [RefAddr](RefAddr.md "class in javax.naming")

This class represents the string form of the address of
a communications end-point.
It consists of a type that describes the communication mechanism
and a string contents specific to that communication mechanism.
The format and interpretation of
the address type and the contents of the address are based on
the agreement of three parties: the client that uses the address,
the object/server that can be reached using the address, and the
administrator or program that creates the address.

An example of a string reference address is a host name.
Another example of a string reference address is a URL.

A string reference address is immutable:
once created, it cannot be changed. Multithreaded access to
a single StringRefAddr need not be synchronized.

Since:
:   1.3

See Also:
:   * [`RefAddr`](RefAddr.md "class in javax.naming")
    * [`BinaryRefAddr`](BinaryRefAddr.md "class in javax.naming")
    * [Serialized Form](../../../serialized-form.md#javax.naming.StringRefAddr)

* ## Field Summary

  ### Fields inherited from class javax.naming.[RefAddr](RefAddr.md "class in javax.naming")

  `addrType`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `StringRefAddr(String addrType,
  String addr)`

  Constructs a new instance of StringRefAddr using its address type
  and contents.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `getContent()`

  Retrieves the contents of this address.

  ### Methods inherited from class javax.naming.[RefAddr](RefAddr.md "class in javax.naming")

  `equals, getType, hashCode, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### StringRefAddr

    public StringRefAddr([String](../../../java.base/java/lang/String.md "class in java.lang") addrType,
    [String](../../../java.base/java/lang/String.md "class in java.lang") addr)

    Constructs a new instance of StringRefAddr using its address type
    and contents.

    Parameters:
    :   `addrType` - A non-null string describing the type of the address.
    :   `addr` - The possibly null contents of the address in the form of a string.
* ## Method Details

  + ### getContent

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getContent()

    Retrieves the contents of this address. The result is a string.

    Specified by:
    :   `getContent` in class `RefAddr`

    Returns:
    :   The possibly null address contents.