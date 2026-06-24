Module [java.base](../../../module-summary.md)

Package [java.nio.file](package-summary.md)

# Enum Class StandardCopyOption

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Enum](../../lang/Enum.md "class in java.lang")<[StandardCopyOption](StandardCopyOption.md "enum class in java.nio.file")>

java.nio.file.StandardCopyOption

All Implemented Interfaces:
:   `Serializable`, `Comparable<StandardCopyOption>`, `Constable`, `CopyOption`

---

public enum StandardCopyOption
extends [Enum](../../lang/Enum.md "class in java.lang")<[StandardCopyOption](StandardCopyOption.md "enum class in java.nio.file")>
implements [CopyOption](CopyOption.md "interface in java.nio.file")

Defines the standard copy options.

Since:
:   1.7

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `ATOMIC_MOVE`

  Move the file as an atomic file system operation.

  `COPY_ATTRIBUTES`

  Copy attributes to the new file.

  `REPLACE_EXISTING`

  Replace an existing file if it exists.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static StandardCopyOption`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static StandardCopyOption[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### REPLACE\_EXISTING

    public static final [StandardCopyOption](StandardCopyOption.md "enum class in java.nio.file") REPLACE\_EXISTING

    Replace an existing file if it exists.
  + ### COPY\_ATTRIBUTES

    public static final [StandardCopyOption](StandardCopyOption.md "enum class in java.nio.file") COPY\_ATTRIBUTES

    Copy attributes to the new file.
  + ### ATOMIC\_MOVE

    public static final [StandardCopyOption](StandardCopyOption.md "enum class in java.nio.file") ATOMIC\_MOVE

    Move the file as an atomic file system operation.
* ## Method Details

  + ### values

    public static [StandardCopyOption](StandardCopyOption.md "enum class in java.nio.file")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [StandardCopyOption](StandardCopyOption.md "enum class in java.nio.file") valueOf([String](../../lang/String.md "class in java.lang") name)

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