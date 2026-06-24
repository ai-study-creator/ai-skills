Module [java.rmi](../../../module-summary.md)

Package [java.rmi.server](package-summary.md)

# Class Operation

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.rmi.server.Operation

---

[@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
public class Operation
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

Deprecated.

no replacement

An `Operation` contains a description of a Java method.
`Operation` objects were used in JDK1.1 version stubs and
skeletons. The `Operation` class is not needed for 1.2 style
stubs; hence, this class is deprecated.

Since:
:   1.1

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Operation(String op)`

  Deprecated.

  no replacement
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `String`

  `getOperation()`

  Deprecated.

  no replacement

  `String`

  `toString()`

  Deprecated.

  no replacement

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### Operation

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public Operation([String](../../../../java.base/java/lang/String.md "class in java.lang") op)

    Deprecated.

    no replacement

    Creates a new Operation object.

    Parameters:
    :   `op` - method name

    Since:
    :   1.1
* ## Method Details

  + ### getOperation

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getOperation()

    Deprecated.

    no replacement

    Returns the name of the method.

    Returns:
    :   method name

    Since:
    :   1.1
  + ### toString

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Deprecated.

    no replacement

    Returns the string representation of the operation.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.

    Since:
    :   1.1