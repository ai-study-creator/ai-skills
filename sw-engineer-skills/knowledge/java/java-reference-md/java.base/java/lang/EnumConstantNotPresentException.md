Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class EnumConstantNotPresentException

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Exception](Exception.md "class in java.lang")

[java.lang.RuntimeException](RuntimeException.md "class in java.lang")

java.lang.EnumConstantNotPresentException

All Implemented Interfaces:
:   `Serializable`

---

public class EnumConstantNotPresentException
extends [RuntimeException](RuntimeException.md "class in java.lang")

Thrown when an application tries to access an enum constant by name
and the enum type contains no constant with the specified name.
This exception can be thrown by the [API used to read annotations
reflectively](reflect/AnnotatedElement.md "interface in java.lang.reflect").

Since:
:   1.5

See Also:
:   * [`AnnotatedElement`](reflect/AnnotatedElement.md "interface in java.lang.reflect")
    * [Serialized Form](../../../serialized-form.md#java.lang.EnumConstantNotPresentException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `EnumConstantNotPresentException(Class<? extends Enum> enumType,
  String constantName)`

  Constructs an `EnumConstantNotPresentException` for the
  specified constant.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `constantName()`

  Returns the name of the missing enum constant.

  `Class<? extends Enum>`

  `enumType()`

  Returns the type of the missing enum constant.

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### EnumConstantNotPresentException

    public EnumConstantNotPresentException([Class](Class.md "class in java.lang")<? extends [Enum](Enum.md "class in java.lang")> enumType,
    [String](String.md "class in java.lang") constantName)

    Constructs an `EnumConstantNotPresentException` for the
    specified constant.

    Parameters:
    :   `enumType` - the type of the missing enum constant
    :   `constantName` - the name of the missing enum constant
* ## Method Details

  + ### enumType

    public [Class](Class.md "class in java.lang")<? extends [Enum](Enum.md "class in java.lang")> enumType()

    Returns the type of the missing enum constant.

    Returns:
    :   the type of the missing enum constant
  + ### constantName

    public [String](String.md "class in java.lang") constantName()

    Returns the name of the missing enum constant.

    Returns:
    :   the name of the missing enum constant