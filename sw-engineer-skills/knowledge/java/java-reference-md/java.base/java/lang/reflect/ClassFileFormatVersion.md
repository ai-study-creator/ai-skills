Module [java.base](../../../module-summary.md)

Package [java.lang.reflect](package-summary.md)

# Enum Class ClassFileFormatVersion

[java.lang.Object](../Object.md "class in java.lang")

[java.lang.Enum](../Enum.md "class in java.lang")<[ClassFileFormatVersion](ClassFileFormatVersion.md "enum class in java.lang.reflect")>

java.lang.reflect.ClassFileFormatVersion

All Implemented Interfaces:
:   `Serializable`, `Comparable<ClassFileFormatVersion>`, `Constable`

---

public enum ClassFileFormatVersion
extends [Enum](../Enum.md "class in java.lang")<[ClassFileFormatVersion](ClassFileFormatVersion.md "enum class in java.lang.reflect")>

Class file format versions of the Java virtual machine.
See the appropriate edition of The Java Virtual Machine
Specification for information about a particular class file
format version.

Note that additional class file format version constants will be
added to model future releases of the Java Virtual Machine
Specification.

Since:
:   20

See Also:
:   * [`System property java.class.version`](../System.md#getProperties())
    * [`SourceVersion`](../../../../java.compiler/javax/lang/model/SourceVersion.md "enum class in javax.lang.model")

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `RELEASE_0`

  The original version.

  `RELEASE_1`

  The version recognized by the Java Platform 1.1.

  `RELEASE_10`

  The version introduced by the Java Platform, Standard Edition
  10.

  `RELEASE_11`

  The version introduced by the Java Platform, Standard Edition
  11.

  `RELEASE_12`

  The version introduced by the Java Platform, Standard Edition
  12.

  `RELEASE_13`

  The version introduced by the Java Platform, Standard Edition
  13.

  `RELEASE_14`

  The version introduced by the Java Platform, Standard Edition
  14.

  `RELEASE_15`

  The version introduced by the Java Platform, Standard Edition
  15.

  `RELEASE_16`

  The version introduced by the Java Platform, Standard Edition
  16.

  `RELEASE_17`

  The version introduced by the Java Platform, Standard Edition
  17.

  `RELEASE_18`

  The version introduced by the Java Platform, Standard Edition
  18.

  `RELEASE_19`

  The version introduced by the Java Platform, Standard Edition
  19.

  `RELEASE_2`

  The version introduced by the Java 2 Platform, Standard Edition,
  v 1.2.

  `RELEASE_20`

  The version introduced by the Java Platform, Standard Edition
  20.

  `RELEASE_21`

  The version introduced by the Java Platform, Standard Edition
  21.

  `RELEASE_3`

  The version introduced by the Java 2 Platform, Standard Edition,
  v 1.3.

  `RELEASE_4`

  The version introduced by the Java 2 Platform, Standard Edition,
  v 1.4.

  `RELEASE_5`

  The version introduced by the Java 2 Platform, Standard
  Edition 5.0.

  `RELEASE_6`

  The version introduced by the Java Platform, Standard Edition
  6.

  `RELEASE_7`

  The version introduced by the Java Platform, Standard Edition
  7.

  `RELEASE_8`

  The version introduced by the Java Platform, Standard Edition
  8.

  `RELEASE_9`

  The version introduced by the Java Platform, Standard Edition
  9.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ClassFileFormatVersion`

  `fromMajor(int major)`

  Returns the latest class file format version whose major class
  file version matches the argument.

  `static ClassFileFormatVersion`

  `latest()`

  Returns the latest class file format version.

  `int`

  `major()`

  Returns the major class file version as an integer.

  `Runtime.Version`

  `runtimeVersion()`

  Returns the least runtime version that supports this class
  file format version; otherwise `null`.

  `static ClassFileFormatVersion`

  `valueOf(Runtime.Version rv)`

  Returns the latest class file format version that is usable
  under the runtime version argument.

  `static ClassFileFormatVersion`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static ClassFileFormatVersion[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### RELEASE\_0

    public static final [ClassFileFormatVersion](ClassFileFormatVersion.md "enum class in java.lang.reflect") RELEASE\_0

    The original version.
    The format described in The Java Virtual Specification,
    First Edition.
  + ### RELEASE\_1

    public static final [ClassFileFormatVersion](ClassFileFormatVersion.md "enum class in java.lang.reflect") RELEASE\_1

    The version recognized by the Java Platform 1.1.
  + ### RELEASE\_2

    public static final [ClassFileFormatVersion](ClassFileFormatVersion.md "enum class in java.lang.reflect") RELEASE\_2

    The version introduced by the Java 2 Platform, Standard Edition,
    v 1.2.
    The format described in The Java Virtual Machine
    Specification, Second Edition, which includes the [`ACC_STRICT`](AccessFlag.md#STRICT) access flag.
  + ### RELEASE\_3

    public static final [ClassFileFormatVersion](ClassFileFormatVersion.md "enum class in java.lang.reflect") RELEASE\_3

    The version introduced by the Java 2 Platform, Standard Edition,
    v 1.3.
  + ### RELEASE\_4

    public static final [ClassFileFormatVersion](ClassFileFormatVersion.md "enum class in java.lang.reflect") RELEASE\_4

    The version introduced by the Java 2 Platform, Standard Edition,
    v 1.4.
  + ### RELEASE\_5

    public static final [ClassFileFormatVersion](ClassFileFormatVersion.md "enum class in java.lang.reflect") RELEASE\_5

    The version introduced by the Java 2 Platform, Standard
    Edition 5.0.

    See Also:
    :   - [The Java Virtual Machine Specification, Second Edition updated for Java SE 5.0](https://jcp.org/aboutJava/communityprocess/maintenance/jsr924/index.html)
        - [JSR 14: Add Generic Types To The Java™ Programming Language](https://jcp.org/en/jsr/detail?id=14)
        - [JSR 175: A Metadata Facility for the Java™ Programming Language](https://jcp.org/en/jsr/detail?id=175)
  + ### RELEASE\_6

    public static final [ClassFileFormatVersion](ClassFileFormatVersion.md "enum class in java.lang.reflect") RELEASE\_6

    The version introduced by the Java Platform, Standard Edition
    6.

    See Also:
    :   - [The Java Virtual Machine Specification, Java SE, Second Edition updated for Java SE 6](https://jcp.org/aboutJava/communityprocess/maintenance/jsr924/index2.html)
  + ### RELEASE\_7

    public static final [ClassFileFormatVersion](ClassFileFormatVersion.md "enum class in java.lang.reflect") RELEASE\_7

    The version introduced by the Java Platform, Standard Edition
    7.

    See Also:
    :   - [The Java Virtual Machine Specification, Java SE 7 Edition](https://docs.oracle.com/javase/specs/jvms/se7/html/index.html)
  + ### RELEASE\_8

    public static final [ClassFileFormatVersion](ClassFileFormatVersion.md "enum class in java.lang.reflect") RELEASE\_8

    The version introduced by the Java Platform, Standard Edition
    8.

    See Also:
    :   - [The Java Virtual Machine Specification, Java SE 8 Edition](https://docs.oracle.com/javase/specs/jvms/se8/html/index.html)
        - [JSR 335: Lambda Expressions for the Java™ Programming Language](https://jcp.org/en/jsr/detail?id=335)
  + ### RELEASE\_9

    public static final [ClassFileFormatVersion](ClassFileFormatVersion.md "enum class in java.lang.reflect") RELEASE\_9

    The version introduced by the Java Platform, Standard Edition
    9.

    See Also:
    :   - [The Java Virtual Machine Specification, Java SE 9 Edition](https://docs.oracle.com/javase/specs/jvms/se9/html/index.html)
        - [JSR 376: Java™ Platform Module System](https://jcp.org/en/jsr/detail?id=376)
  + ### RELEASE\_10

    public static final [ClassFileFormatVersion](ClassFileFormatVersion.md "enum class in java.lang.reflect") RELEASE\_10

    The version introduced by the Java Platform, Standard Edition
    10.

    See Also:
    :   - [The Java Virtual Machine Specification, Java SE 10 Edition](https://docs.oracle.com/javase/specs/jvms/se10/html/index.html)
  + ### RELEASE\_11

    public static final [ClassFileFormatVersion](ClassFileFormatVersion.md "enum class in java.lang.reflect") RELEASE\_11

    The version introduced by the Java Platform, Standard Edition
    11.

    See Also:
    :   - [The Java Virtual Machine Specification, Java SE 11 Edition](https://docs.oracle.com/javase/specs/jvms/se11/html/index.html)
        - [JEP 181: Nest-Based Access Control](https://openjdk.org/jeps/181)
  + ### RELEASE\_12

    public static final [ClassFileFormatVersion](ClassFileFormatVersion.md "enum class in java.lang.reflect") RELEASE\_12

    The version introduced by the Java Platform, Standard Edition
    12.

    See Also:
    :   - [The Java Virtual Machine Specification, Java SE 12 Edition](https://docs.oracle.com/javase/specs/jvms/se12/html/index.html)
  + ### RELEASE\_13

    public static final [ClassFileFormatVersion](ClassFileFormatVersion.md "enum class in java.lang.reflect") RELEASE\_13

    The version introduced by the Java Platform, Standard Edition
    13.

    See Also:
    :   - [The Java Virtual Machine Specification, Java SE 13 Edition](https://docs.oracle.com/javase/specs/jvms/se13/html/index.html)
  + ### RELEASE\_14

    public static final [ClassFileFormatVersion](ClassFileFormatVersion.md "enum class in java.lang.reflect") RELEASE\_14

    The version introduced by the Java Platform, Standard Edition
    14.

    See Also:
    :   - [The Java Virtual Machine Specification, Java SE 14 Edition](https://docs.oracle.com/javase/specs/jvms/se14/html/index.html)
  + ### RELEASE\_15

    public static final [ClassFileFormatVersion](ClassFileFormatVersion.md "enum class in java.lang.reflect") RELEASE\_15

    The version introduced by the Java Platform, Standard Edition
    15.

    See Also:
    :   - [The Java Virtual Machine Specification, Java SE 15 Edition](https://docs.oracle.com/javase/specs/jvms/se15/html/index.html)
        - [JEP 371: Hidden Classes](https://openjdk.org/jeps/371)
  + ### RELEASE\_16

    public static final [ClassFileFormatVersion](ClassFileFormatVersion.md "enum class in java.lang.reflect") RELEASE\_16

    The version introduced by the Java Platform, Standard Edition
    16.

    See Also:
    :   - [The Java Virtual Machine Specification, Java SE 16 Edition](https://docs.oracle.com/javase/specs/jvms/se16/html/index.html)
  + ### RELEASE\_17

    public static final [ClassFileFormatVersion](ClassFileFormatVersion.md "enum class in java.lang.reflect") RELEASE\_17

    The version introduced by the Java Platform, Standard Edition
    17.
    Additions in this release include sealed classes and
    restoration of always-strict floating-point semantics.

    See Also:
    :   - [The Java Virtual Machine Specification, Java SE 17 Edition](https://docs.oracle.com/javase/specs/jvms/se17/html/index.html)
        - [JEP 306: Restore Always-Strict Floating-Point Semantics](https://openjdk.org/jeps/306)
        - [JEP 409: Sealed Classes](https://openjdk.org/jeps/409)
  + ### RELEASE\_18

    public static final [ClassFileFormatVersion](ClassFileFormatVersion.md "enum class in java.lang.reflect") RELEASE\_18

    The version introduced by the Java Platform, Standard Edition
    18.

    See Also:
    :   - [The Java Virtual Machine Specification, Java SE 18 Edition](https://docs.oracle.com/javase/specs/jvms/se18/html/index.html)
  + ### RELEASE\_19

    public static final [ClassFileFormatVersion](ClassFileFormatVersion.md "enum class in java.lang.reflect") RELEASE\_19

    The version introduced by the Java Platform, Standard Edition
    19.

    See Also:
    :   - [The Java Virtual Machine Specification, Java SE 19 Edition](https://docs.oracle.com/javase/specs/jvms/se19/html/index.html)
  + ### RELEASE\_20

    public static final [ClassFileFormatVersion](ClassFileFormatVersion.md "enum class in java.lang.reflect") RELEASE\_20

    The version introduced by the Java Platform, Standard Edition
    20.

    See Also:
    :   - [The Java Virtual Machine Specification, Java SE 20 Edition](https://docs.oracle.com/javase/specs/jvms/se20/html/index.html)
  + ### RELEASE\_21

    public static final [ClassFileFormatVersion](ClassFileFormatVersion.md "enum class in java.lang.reflect") RELEASE\_21

    The version introduced by the Java Platform, Standard Edition
    21.

    Since:
    :   21

    See Also:
    :   - [The Java Virtual Machine Specification, Java SE 21 Edition](https://docs.oracle.com/javase/specs/jvms/se21/html/index.html)
* ## Method Details

  + ### values

    public static [ClassFileFormatVersion](ClassFileFormatVersion.md "enum class in java.lang.reflect")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [ClassFileFormatVersion](ClassFileFormatVersion.md "enum class in java.lang.reflect") valueOf([String](../String.md "class in java.lang") name)

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
  + ### latest

    public static [ClassFileFormatVersion](ClassFileFormatVersion.md "enum class in java.lang.reflect") latest()

    Returns the latest class file format version.

    Returns:
    :   the latest class file format version
  + ### major

    public int major()

    Returns the major class file version as an integer.

    Returns:
    :   the major class file version as an integer
  + ### valueOf

    public static [ClassFileFormatVersion](ClassFileFormatVersion.md "enum class in java.lang.reflect") valueOf([Runtime.Version](../Runtime.Version.md "class in java.lang") rv)

    Returns the latest class file format version that is usable
    under the runtime version argument. If the runtime version's
    [feature](../Runtime.Version.md#feature()) is greater than
    the feature of the [runtime
    version](#runtimeVersion()) of the [latest class file format
    version](#latest()), an `IllegalArgumentException` is thrown.

    Because the class file format versions of the Java platform
    have so far followed a linear progression, only the feature
    component of a runtime version is queried to determine the
    mapping to a class file format version. If that linearity
    changes in the future, other components of the runtime version
    may influence the result.

    Parameters:
    :   `rv` - runtime version to map to a class file format version

    Returns:
    :   the latest class file format version that is usable
        under the runtime version argument

    Throws:
    :   `IllegalArgumentException` - if the feature of version
        argument is greater than the feature of the platform version.
  + ### runtimeVersion

    public [Runtime.Version](../Runtime.Version.md "class in java.lang") runtimeVersion()

    Returns the least runtime version that supports this class
    file format version; otherwise `null`. The returned
    runtime version has a [feature](../Runtime.Version.md#feature()) large enough to support this class file format version
    and has no other elements set.
    Class file format versions greater than or equal to [`RELEASE_6`](#RELEASE_6) have non-`null` results.

    Returns:
    :   the least runtime version that supports this class
        file format version; otherwise `null`
  + ### fromMajor

    public static [ClassFileFormatVersion](ClassFileFormatVersion.md "enum class in java.lang.reflect") fromMajor(int major)

    Returns the latest class file format version whose major class
    file version matches the argument.

    Parameters:
    :   `major` - the major class file version as an integer

    Returns:
    :   the latest class file format version whose major class
        file version matches the argument

    Throws:
    :   `IllegalArgumentException` - if the argument is outside of
        the range of major class file versions