Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class ClassNotFoundException

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Exception](Exception.md "class in java.lang")

[java.lang.ReflectiveOperationException](ReflectiveOperationException.md "class in java.lang")

java.lang.ClassNotFoundException

All Implemented Interfaces:
:   `Serializable`

---

public class ClassNotFoundException
extends [ReflectiveOperationException](ReflectiveOperationException.md "class in java.lang")

Thrown when an application tries to load in a class through its
string name using:

* The `forName` method in class `Class`.* The `findSystemClass` method in class
    `ClassLoader` .* The `loadClass` method in class `ClassLoader`.

but no definition for the class with the specified name could be found.

Since:
:   1.0

See Also:
:   * [`Class.forName(java.lang.String)`](Class.md#forName(java.lang.String))
    * [`ClassLoader.findSystemClass(java.lang.String)`](ClassLoader.md#findSystemClass(java.lang.String))
    * [`ClassLoader.loadClass(java.lang.String, boolean)`](ClassLoader.md#loadClass(java.lang.String,boolean))
    * [Serialized Form](../../../serialized-form.md#java.lang.ClassNotFoundException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ClassNotFoundException()`

  Constructs a `ClassNotFoundException` with no detail message.

  `ClassNotFoundException(String s)`

  Constructs a `ClassNotFoundException` with the
  specified detail message.

  `ClassNotFoundException(String s,
  Throwable ex)`

  Constructs a `ClassNotFoundException` with the
  specified detail message and optional exception that was
  raised while loading the class.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Throwable`

  `getException()`

  Returns the exception that was raised if an error occurred while
  attempting to load the class.

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ClassNotFoundException

    public ClassNotFoundException()

    Constructs a `ClassNotFoundException` with no detail message.
  + ### ClassNotFoundException

    public ClassNotFoundException([String](String.md "class in java.lang") s)

    Constructs a `ClassNotFoundException` with the
    specified detail message.

    Parameters:
    :   `s` - the detail message.
  + ### ClassNotFoundException

    public ClassNotFoundException([String](String.md "class in java.lang") s,
    [Throwable](Throwable.md "class in java.lang") ex)

    Constructs a `ClassNotFoundException` with the
    specified detail message and optional exception that was
    raised while loading the class.

    Parameters:
    :   `s` - the detail message
    :   `ex` - the exception that was raised while loading the class

    Since:
    :   1.2
* ## Method Details

  + ### getException

    public [Throwable](Throwable.md "class in java.lang") getException()

    Returns the exception that was raised if an error occurred while
    attempting to load the class. Otherwise, returns `null`.

    Returns:
    :   the `Exception` that was raised while loading a class

    Since:
    :   1.2