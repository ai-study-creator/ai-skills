Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class NoClassDefFoundError

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Error](Error.md "class in java.lang")

[java.lang.LinkageError](LinkageError.md "class in java.lang")

java.lang.NoClassDefFoundError

All Implemented Interfaces:
:   `Serializable`

---

public class NoClassDefFoundError
extends [LinkageError](LinkageError.md "class in java.lang")

Thrown if the Java Virtual Machine or a `ClassLoader` instance
tries to load in the definition of a class (as part of a normal method call
or as part of creating a new instance using the `new` expression)
and no definition of the class could be found.

The searched-for class definition existed when the currently
executing class was compiled, but the definition can no longer be
found.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.NoClassDefFoundError)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NoClassDefFoundError()`

  Constructs a `NoClassDefFoundError` with no detail message.

  `NoClassDefFoundError(String s)`

  Constructs a `NoClassDefFoundError` with the specified
  detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NoClassDefFoundError

    public NoClassDefFoundError()

    Constructs a `NoClassDefFoundError` with no detail message.
  + ### NoClassDefFoundError

    public NoClassDefFoundError([String](String.md "class in java.lang") s)

    Constructs a `NoClassDefFoundError` with the specified
    detail message.

    Parameters:
    :   `s` - the detail message.