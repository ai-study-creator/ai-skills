Module [java.desktop](../../module-summary.md)

Package [java.beans](package-summary.md)

# Class Statement

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.beans.Statement

Direct Known Subclasses:
:   `Expression`

---

public class Statement
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

A `Statement` object represents a primitive statement
in which a single method is applied to a target and
a set of arguments - as in `"a.setFoo(b)"`.
Note that where this example uses names
to denote the target and its argument, a statement
object does not require a name space and is constructed with
the values themselves.
The statement object associates the named method
with its environment as a simple set of values:
the target and an array of argument values.

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Statement(Object target,
  String methodName,
  Object[] arguments)`

  Creates a new [`Statement`](Statement.md "class in java.beans") object
  for the specified target object to invoke the method
  specified by the name and by the array of arguments.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `execute()`

  The `execute` method finds a method whose name is the same
  as the `methodName` property, and invokes the method on
  the target.

  `Object[]`

  `getArguments()`

  Returns the arguments for the method to invoke.

  `String`

  `getMethodName()`

  Returns the name of the method to invoke.

  `Object`

  `getTarget()`

  Returns the target object of this statement.

  `String`

  `toString()`

  Prints the value of this statement using a Java-style syntax.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### Statement

    [@ConstructorProperties](ConstructorProperties.md "annotation interface in java.beans")({"target","methodName","arguments"})
    public Statement([Object](../../../java.base/java/lang/Object.md "class in java.lang") target,
    [String](../../../java.base/java/lang/String.md "class in java.lang") methodName,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang")[] arguments)

    Creates a new [`Statement`](Statement.md "class in java.beans") object
    for the specified target object to invoke the method
    specified by the name and by the array of arguments.

    The `target` and the `methodName` values should not be `null`.
    Otherwise an attempt to execute this `Expression`
    will result in a `NullPointerException`.
    If the `arguments` value is `null`,
    an empty array is used as the value of the `arguments` property.

    Parameters:
    :   `target` - the target object of this statement
    :   `methodName` - the name of the method to invoke on the specified target
    :   `arguments` - the array of arguments to invoke the specified method
* ## Method Details

  + ### getTarget

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getTarget()

    Returns the target object of this statement.
    If this method returns `null`,
    the [`execute()`](#execute()) method
    throws a `NullPointerException`.

    Returns:
    :   the target object of this statement
  + ### getMethodName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getMethodName()

    Returns the name of the method to invoke.
    If this method returns `null`,
    the [`execute()`](#execute()) method
    throws a `NullPointerException`.

    Returns:
    :   the name of the method
  + ### getArguments

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang")[] getArguments()

    Returns the arguments for the method to invoke.
    The number of arguments and their types
    must match the method being called.
    `null` can be used as a synonym of an empty array.

    Returns:
    :   the array of arguments
  + ### execute

    public void execute()
    throws [Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

    The `execute` method finds a method whose name is the same
    as the `methodName` property, and invokes the method on
    the target.
    When the target's class defines many methods with the given name
    the implementation should choose the most specific method using
    the algorithm specified in the Java Language Specification
    (15.11). The dynamic class of the target and arguments are used
    in place of the compile-time type information and, like the
    [`Method`](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") class itself, conversion between
    primitive values and their associated wrapper classes is handled
    internally.

    The following method types are handled as special cases:
    - Static methods may be called by using a class object as the target.- The reserved method name "new" may be used to call a class's constructor
        as if all classes defined static "new" methods. Constructor invocations
        are typically considered `Expression`s rather than `Statement`s
        as they return a value.- The method names "get" and "set" defined in the [`List`](../../../java.base/java/util/List.md "interface in java.util")
          interface may also be applied to array instances, mapping to
          the static methods of the same name in the `Array` class.

    Throws:
    :   `NullPointerException` - if the value of the `target` or
        `methodName` property is `null`
    :   `NoSuchMethodException` - if a matching method is not found
    :   `SecurityException` - if a security manager exists and
        it denies the method invocation
    :   `Exception` - that is thrown by the invoked method

    See Also:
    :   - [`Method`](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect")
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Prints the value of this statement using a Java-style syntax.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.