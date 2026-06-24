Module [java.naming](../../../module-summary.md)

Package [javax.naming.spi](package-summary.md)

# Class DirStateFactory.Result

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.naming.spi.DirStateFactory.Result

Enclosing interface:
:   `DirStateFactory`

---

public static class DirStateFactory.Result
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

An object/attributes pair for returning the result of
DirStateFactory.getStateToBind().

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Result(Object obj,
  Attributes outAttrs)`

  Constructs an instance of Result.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Attributes`

  `getAttributes()`

  Retrieves the attributes to be bound.

  `Object`

  `getObject()`

  Retrieves the object to be bound.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### Result

    public Result([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj,
    [Attributes](../directory/Attributes.md "interface in javax.naming.directory") outAttrs)

    Constructs an instance of Result.

    Parameters:
    :   `obj` - The possibly null object to be bound.
    :   `outAttrs` - The possibly null attributes to be bound.
* ## Method Details

  + ### getObject

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getObject()

    Retrieves the object to be bound.

    Returns:
    :   The possibly null object to be bound.
  + ### getAttributes

    public [Attributes](../directory/Attributes.md "interface in javax.naming.directory") getAttributes()

    Retrieves the attributes to be bound.

    Returns:
    :   The possibly null attributes to be bound.