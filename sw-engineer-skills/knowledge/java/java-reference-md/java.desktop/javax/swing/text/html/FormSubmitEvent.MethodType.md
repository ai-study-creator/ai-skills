Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.html](package-summary.md)

# Enum Class FormSubmitEvent.MethodType

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")<[FormSubmitEvent.MethodType](FormSubmitEvent.MethodType.md "enum class in javax.swing.text.html")>

javax.swing.text.html.FormSubmitEvent.MethodType

All Implemented Interfaces:
:   `Serializable`, `Comparable<FormSubmitEvent.MethodType>`, `Constable`

Enclosing class:
:   `FormSubmitEvent`

---

public static enum FormSubmitEvent.MethodType
extends [Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")<[FormSubmitEvent.MethodType](FormSubmitEvent.MethodType.md "enum class in javax.swing.text.html")>

Represents an HTML form method type.

* `GET` corresponds to the GET form method
* `POST` corresponds to the POST from method

Since:
:   1.5

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `GET`

  `GET` corresponds to the GET form method

  `POST`

  `POST` corresponds to the POST from method
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static FormSubmitEvent.MethodType`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static FormSubmitEvent.MethodType[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### GET

    public static final [FormSubmitEvent.MethodType](FormSubmitEvent.MethodType.md "enum class in javax.swing.text.html") GET

    `GET` corresponds to the GET form method
  + ### POST

    public static final [FormSubmitEvent.MethodType](FormSubmitEvent.MethodType.md "enum class in javax.swing.text.html") POST

    `POST` corresponds to the POST from method
* ## Method Details

  + ### values

    public static [FormSubmitEvent.MethodType](FormSubmitEvent.MethodType.md "enum class in javax.swing.text.html")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [FormSubmitEvent.MethodType](FormSubmitEvent.MethodType.md "enum class in javax.swing.text.html") valueOf([String](../../../../../java.base/java/lang/String.md "class in java.lang") name)

    Returns the enum constant of this class with the specified name.
    The string must match *exactly* an identifier used to declare an
    enum constant in this class. (Extraneous whitespace characters are
    not permitted.)

    Parameters:
    :   `name` - the name of the enum constant to be returned.

    Returns:
    :   the enum constant with the specified name

    Throws:
    :   `IllegalArgumentException` - if this enum class has no constant with the specified name
    :   `NullPointerException` - if the argument is null