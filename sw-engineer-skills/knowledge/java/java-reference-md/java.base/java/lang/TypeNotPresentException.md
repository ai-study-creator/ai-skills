Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class TypeNotPresentException

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Exception](Exception.md "class in java.lang")

[java.lang.RuntimeException](RuntimeException.md "class in java.lang")

java.lang.TypeNotPresentException

All Implemented Interfaces:
:   `Serializable`

---

public class TypeNotPresentException
extends [RuntimeException](RuntimeException.md "class in java.lang")

Thrown when an application tries to access a type using a string
representing the type's name, but no definition for the type with
the specified name can be found. This exception differs from
[`ClassNotFoundException`](ClassNotFoundException.md "class in java.lang") in that `ClassNotFoundException` is a
checked exception, whereas this exception is unchecked.

Note that this exception may be used when undefined type variables
are accessed as well as when types (e.g., classes, interfaces or
annotation types) are loaded.
In particular, this exception can be thrown by the [API used to read annotations
reflectively](reflect/AnnotatedElement.md "interface in java.lang.reflect").

Since:
:   1.5

See Also:
:   * [`AnnotatedElement`](reflect/AnnotatedElement.md "interface in java.lang.reflect")
    * [Serialized Form](../../../serialized-form.md#java.lang.TypeNotPresentException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TypeNotPresentException(String typeName,
  Throwable cause)`

  Constructs a `TypeNotPresentException` for the named type
  with the specified cause.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `typeName()`

  Returns the fully qualified name of the unavailable type.

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### TypeNotPresentException

    public TypeNotPresentException([String](String.md "class in java.lang") typeName,
    [Throwable](Throwable.md "class in java.lang") cause)

    Constructs a `TypeNotPresentException` for the named type
    with the specified cause.

    Parameters:
    :   `typeName` - the fully qualified name of the unavailable type
    :   `cause` - the exception that was thrown when the system attempted to
        load the named type, or `null` if unavailable or inapplicable
* ## Method Details

  + ### typeName

    public [String](String.md "class in java.lang") typeName()

    Returns the fully qualified name of the unavailable type.

    Returns:
    :   the fully qualified name of the unavailable type