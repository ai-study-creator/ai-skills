Module [java.management](../../../module-summary.md)

Package [java.lang.management](package-summary.md)

# Enum Class MemoryType

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")<[MemoryType](MemoryType.md "enum class in java.lang.management")>

java.lang.management.MemoryType

All Implemented Interfaces:
:   `Serializable`, `Comparable<MemoryType>`, `Constable`

---

public enum MemoryType
extends [Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")<[MemoryType](MemoryType.md "enum class in java.lang.management")>

Types of [`memory pools`](MemoryPoolMXBean.md "interface in java.lang.management").

Since:
:   1.5

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `HEAP`

  Heap memory type.

  `NON_HEAP`

  Non-heap memory type.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `toString()`

  Returns the string representation of this `MemoryType`.

  `static MemoryType`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static MemoryType[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### HEAP

    public static final [MemoryType](MemoryType.md "enum class in java.lang.management") HEAP

    Heap memory type.

    The Java virtual machine has a *heap*
    that is the runtime data area from which
    memory for all class instances and arrays are allocated.
  + ### NON\_HEAP

    public static final [MemoryType](MemoryType.md "enum class in java.lang.management") NON\_HEAP

    Non-heap memory type.

    The Java virtual machine manages memory other than the heap
    (referred as *non-heap memory*). The non-heap memory includes
    the *method area* and memory required for the internal
    processing or optimization for the Java virtual machine.
    It stores per-class structures such as a runtime
    constant pool, field and method data, and the code for
    methods and constructors.
* ## Method Details

  + ### values

    public static [MemoryType](MemoryType.md "enum class in java.lang.management")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [MemoryType](MemoryType.md "enum class in java.lang.management") valueOf([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

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
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns the string representation of this `MemoryType`.

    Overrides:
    :   `toString` in class `Enum<MemoryType>`

    Returns:
    :   the string representation of this `MemoryType`.