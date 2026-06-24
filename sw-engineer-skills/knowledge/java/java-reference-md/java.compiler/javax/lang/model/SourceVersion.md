Module [java.compiler](../../../module-summary.md)

Package [javax.lang.model](package-summary.md)

# Enum Class SourceVersion

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")<[SourceVersion](SourceVersion.md "enum class in javax.lang.model")>

javax.lang.model.SourceVersion

All Implemented Interfaces:
:   `Serializable`, `Comparable<SourceVersion>`, `Constable`

---

public enum SourceVersion
extends [Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")<[SourceVersion](SourceVersion.md "enum class in javax.lang.model")>

Source versions of the Java programming language.
See the appropriate edition of
The Java Language Specification
for information about a particular source version.

Note that additional source version constants will be added to
model future releases of the language.

Since:
:   1.6

See Also:
:   * [`ClassFileFormatVersion`](../../../../java.base/java/lang/reflect/ClassFileFormatVersion.md "enum class in java.lang.reflect")

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `RELEASE_0`

  The original version.

  `RELEASE_1`

  The version introduced by the Java Platform 1.1.

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

  `static boolean`

  `isIdentifier(CharSequence name)`

  Returns whether or not `name` is a syntactically valid
  identifier (simple name) or keyword in the latest source
  version.

  `static boolean`

  `isKeyword(CharSequence s)`

  Returns whether or not `s` is a keyword, boolean literal,
  or null literal in the latest source version.

  `static boolean`

  `isKeyword(CharSequence s,
  SourceVersion version)`

  Returns whether or not `s` is a keyword, boolean literal,
  or null literal in the given source version.

  `static boolean`

  `isName(CharSequence name)`

  Returns whether or not `name` is a syntactically valid
  qualified name in the latest source version.

  `static boolean`

  `isName(CharSequence name,
  SourceVersion version)`

  Returns whether or not `name` is a syntactically valid
  qualified name in the given source version.

  `static SourceVersion`

  `latest()`

  Returns the latest source version that can be modeled.

  `static SourceVersion`

  `latestSupported()`

  Returns the latest source version fully supported by the
  current execution environment.

  `Runtime.Version`

  `runtimeVersion()`

  Returns the least runtime version that supports this source
  version; otherwise `null`.

  `static SourceVersion`

  `valueOf(Runtime.Version rv)`

  Returns the latest source version that is usable under the
  runtime version argument.

  `static SourceVersion`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static SourceVersion[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### RELEASE\_0

    public static final [SourceVersion](SourceVersion.md "enum class in javax.lang.model") RELEASE\_0

    The original version.
    The language described in
    The Java Language Specification, First Edition.
  + ### RELEASE\_1

    public static final [SourceVersion](SourceVersion.md "enum class in javax.lang.model") RELEASE\_1

    The version introduced by the Java Platform 1.1.
    The language is `RELEASE_0` augmented with nested classes
    as described in the 1.1 update to The Java Language
    Specification, First Edition.
  + ### RELEASE\_2

    public static final [SourceVersion](SourceVersion.md "enum class in javax.lang.model") RELEASE\_2

    The version introduced by the Java 2 Platform, Standard Edition,
    v 1.2.
    The language described in
    The Java Language Specification,
    Second Edition, which includes the `strictfp` modifier.
  + ### RELEASE\_3

    public static final [SourceVersion](SourceVersion.md "enum class in javax.lang.model") RELEASE\_3

    The version introduced by the Java 2 Platform, Standard Edition,
    v 1.3.
    No major changes from `RELEASE_2`.
  + ### RELEASE\_4

    public static final [SourceVersion](SourceVersion.md "enum class in javax.lang.model") RELEASE\_4

    The version introduced by the Java 2 Platform, Standard Edition,
    v 1.4.
    Added a simple assertion facility.

    See Also:
    :   - [JSR 41: A Simple Assertion Facility](https://jcp.org/en/jsr/detail?id=41)
  + ### RELEASE\_5

    public static final [SourceVersion](SourceVersion.md "enum class in javax.lang.model") RELEASE\_5

    The version introduced by the Java 2 Platform, Standard
    Edition 5.0.
    The language described in
    The Java Language Specification,
    Third Edition. First release to support
    generics, annotations, autoboxing, var-args, enhanced `for` loop, and hexadecimal floating-point literals.

    See Also:
    :   - [JSR 14: Add Generic Types To The Java™ Programming Language](https://jcp.org/en/jsr/detail?id=14)
        - [JSR 175: A Metadata Facility for the Java™ Programming Language](https://jcp.org/en/jsr/detail?id=175)
        - [JSR 201: Extending the Java™ Programming Language with Enumerations,
          Autoboxing, Enhanced for loops and Static Import](https://jcp.org/en/jsr/detail?id=201)
  + ### RELEASE\_6

    public static final [SourceVersion](SourceVersion.md "enum class in javax.lang.model") RELEASE\_6

    The version introduced by the Java Platform, Standard Edition
    6.
    No major changes from `RELEASE_5`.

    See Also:
    :   - [The Java Language Specification, Third Edition](https://docs.oracle.com/javase/specs/jls/se6/html/j3TOC.html)
  + ### RELEASE\_7

    public static final [SourceVersion](SourceVersion.md "enum class in javax.lang.model") RELEASE\_7

    The version introduced by the Java Platform, Standard Edition
    7.
    Additions in this release include diamond syntax for
    constructors, `try`-with-resources, strings in switch,
    binary literals, and multi-catch.

    Since:
    :   1.7

    See Also:
    :   - [The Java Language Specification, Java SE 7 Edition](https://docs.oracle.com/javase/specs/jls/se7/html/index.html)
        - [JSR 334: Small Enhancements to the Java™ Programming Language](https://jcp.org/en/jsr/detail?id=334)
  + ### RELEASE\_8

    public static final [SourceVersion](SourceVersion.md "enum class in javax.lang.model") RELEASE\_8

    The version introduced by the Java Platform, Standard Edition
    8.
    Additions in this release include lambda expressions and default methods.

    Since:
    :   1.8

    See Also:
    :   - [The Java Language Specification, Java SE 8 Edition](https://docs.oracle.com/javase/specs/jls/se8/html/index.html)
        - [JSR 335: Lambda Expressions for the Java™ Programming Language](https://jcp.org/en/jsr/detail?id=335)
  + ### RELEASE\_9

    public static final [SourceVersion](SourceVersion.md "enum class in javax.lang.model") RELEASE\_9

    The version introduced by the Java Platform, Standard Edition
    9.
    Additions in this release include modules and removal of a
    single underscore from the set of legal identifier names.

    Since:
    :   9

    See Also:
    :   - [The Java Language Specification, Java SE 9 Edition](https://docs.oracle.com/javase/specs/jls/se9/html/index.html)
        - [JSR 376: Java™ Platform Module System](https://jcp.org/en/jsr/detail?id=376)
        - [JEP 213: Milling Project Coin](https://openjdk.org/jeps/213)
  + ### RELEASE\_10

    public static final [SourceVersion](SourceVersion.md "enum class in javax.lang.model") RELEASE\_10

    The version introduced by the Java Platform, Standard Edition
    10.
    Additions in this release include local-variable type inference
    (`var`).

    Since:
    :   10

    See Also:
    :   - [The Java Language Specification, Java SE 10 Edition](https://docs.oracle.com/javase/specs/jls/se10/html/index.html)
        - [JEP 286: Local-Variable Type Inference](https://openjdk.org/jeps/286)
  + ### RELEASE\_11

    public static final [SourceVersion](SourceVersion.md "enum class in javax.lang.model") RELEASE\_11

    The version introduced by the Java Platform, Standard Edition
    11.
    Additions in this release include local-variable syntax for
    lambda parameters.

    Since:
    :   11

    See Also:
    :   - [The Java Language Specification, Java SE 11 Edition](https://docs.oracle.com/javase/specs/jls/se11/html/index.html)
        - [JEP 323: Local-Variable Syntax for Lambda Parameters](https://openjdk.org/jeps/323)
  + ### RELEASE\_12

    public static final [SourceVersion](SourceVersion.md "enum class in javax.lang.model") RELEASE\_12

    The version introduced by the Java Platform, Standard Edition
    12.
    No major changes from the prior release.

    Since:
    :   12

    See Also:
    :   - [The Java Language Specification, Java SE 12 Edition](https://docs.oracle.com/javase/specs/jls/se12/html/index.html)
  + ### RELEASE\_13

    public static final [SourceVersion](SourceVersion.md "enum class in javax.lang.model") RELEASE\_13

    The version introduced by the Java Platform, Standard Edition
    13.
    No major changes from the prior release.

    Since:
    :   13

    See Also:
    :   - [The Java Language Specification, Java SE 13 Edition](https://docs.oracle.com/javase/specs/jls/se13/html/index.html)
  + ### RELEASE\_14

    public static final [SourceVersion](SourceVersion.md "enum class in javax.lang.model") RELEASE\_14

    The version introduced by the Java Platform, Standard Edition
    14.
    Additions in this release include switch expressions.

    Since:
    :   14

    See Also:
    :   - [The Java Language Specification, Java SE 14 Edition](https://docs.oracle.com/javase/specs/jls/se14/html/index.html)
        - [JEP 361: Switch Expressions](https://openjdk.org/jeps/361)
  + ### RELEASE\_15

    public static final [SourceVersion](SourceVersion.md "enum class in javax.lang.model") RELEASE\_15

    The version introduced by the Java Platform, Standard Edition
    15.
    Additions in this release include text blocks.

    Since:
    :   15

    See Also:
    :   - [The Java Language Specification, Java SE 15 Edition](https://docs.oracle.com/javase/specs/jls/se15/html/index.html)
        - [JEP 378: Text Blocks](https://openjdk.org/jeps/378)
  + ### RELEASE\_16

    public static final [SourceVersion](SourceVersion.md "enum class in javax.lang.model") RELEASE\_16

    The version introduced by the Java Platform, Standard Edition
    16.
    Additions in this release include records and pattern matching
    for `instanceof`.

    Since:
    :   16

    See Also:
    :   - [The Java Language Specification, Java SE 16 Edition](https://docs.oracle.com/javase/specs/jls/se16/html/index.html)
        - [JEP 394: Pattern Matching for instanceof](https://openjdk.org/jeps/394)
        - [JEP 395: Records](https://openjdk.org/jeps/395)
  + ### RELEASE\_17

    public static final [SourceVersion](SourceVersion.md "enum class in javax.lang.model") RELEASE\_17

    The version introduced by the Java Platform, Standard Edition
    17.
    Additions in this release include sealed classes and
    restoration of always-strict floating-point semantics.

    Since:
    :   17

    See Also:
    :   - [The Java Language Specification, Java SE 17 Edition](https://docs.oracle.com/javase/specs/jls/se17/html/index.html)
        - [JEP 306: Restore Always-Strict Floating-Point Semantics](https://openjdk.org/jeps/306)
        - [JEP 409: Sealed Classes](https://openjdk.org/jeps/409)
  + ### RELEASE\_18

    public static final [SourceVersion](SourceVersion.md "enum class in javax.lang.model") RELEASE\_18

    The version introduced by the Java Platform, Standard Edition
    18.
    No major changes from the prior release.

    Since:
    :   18

    See Also:
    :   - [The Java Language Specification, Java SE 18 Edition](https://docs.oracle.com/javase/specs/jls/se18/html/index.html)
  + ### RELEASE\_19

    public static final [SourceVersion](SourceVersion.md "enum class in javax.lang.model") RELEASE\_19

    The version introduced by the Java Platform, Standard Edition
    19.
    No major changes from the prior release.

    Since:
    :   19

    See Also:
    :   - [The Java Language Specification, Java SE 19 Edition](https://docs.oracle.com/javase/specs/jls/se19/html/index.html)
  + ### RELEASE\_20

    public static final [SourceVersion](SourceVersion.md "enum class in javax.lang.model") RELEASE\_20

    The version introduced by the Java Platform, Standard Edition
    20.
    No major changes from the prior release.

    Since:
    :   20

    See Also:
    :   - [The Java Language Specification, Java SE 20 Edition](https://docs.oracle.com/javase/specs/jls/se20/html/index.html)
  + ### RELEASE\_21

    public static final [SourceVersion](SourceVersion.md "enum class in javax.lang.model") RELEASE\_21

    The version introduced by the Java Platform, Standard Edition
    21.
    Additions in this release include record patterns and pattern
    matching for `switch`.

    Since:
    :   21

    See Also:
    :   - [The Java Language Specification, Java SE 21 Edition](https://docs.oracle.com/javase/specs/jls/se21/html/index.html)
        - [Record Patterns](https://openjdk.org/jeps/440)
        - [Pattern Matching for switch](https://openjdk.org/jeps/441)
* ## Method Details

  + ### values

    public static [SourceVersion](SourceVersion.md "enum class in javax.lang.model")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [SourceVersion](SourceVersion.md "enum class in javax.lang.model") valueOf([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

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

    public static [SourceVersion](SourceVersion.md "enum class in javax.lang.model") latest()

    Returns the latest source version that can be modeled.

    Returns:
    :   the latest source version that can be modeled
  + ### latestSupported

    public static [SourceVersion](SourceVersion.md "enum class in javax.lang.model") latestSupported()

    Returns the latest source version fully supported by the
    current execution environment. `RELEASE_9` or later must
    be returned.

    Returns:
    :   the latest source version fully supported by the
        current execution environment
  + ### isIdentifier

    public static boolean isIdentifier([CharSequence](../../../../java.base/java/lang/CharSequence.md "interface in java.lang") name)

    Returns whether or not `name` is a syntactically valid
    identifier (simple name) or keyword in the latest source
    version. The method returns `true` if the name consists
    of an initial character for which [`Character.isJavaIdentifierStart(int)`](../../../../java.base/java/lang/Character.md#isJavaIdentifierStart(int)) returns `true`,
    followed only by characters for which [`Character.isJavaIdentifierPart(int)`](../../../../java.base/java/lang/Character.md#isJavaIdentifierPart(int)) returns `true`.
    This pattern matches regular identifiers, keywords, contextual
    keywords, and the literals `"true"`,
    `"false"`, `"null"`.
    The method returns `false` for all other strings.

    Parameters:
    :   `name` - the string to check

    Returns:
    :   `true` if this string is a
        syntactically valid identifier or keyword, `false`
        otherwise.
  + ### isName

    public static boolean isName([CharSequence](../../../../java.base/java/lang/CharSequence.md "interface in java.lang") name)

    Returns whether or not `name` is a syntactically valid
    qualified name in the latest source version.
    Syntactically, a qualified name is a sequence of identifiers
    separated by period characters ("`.`"). This method
    splits the input string into period-separated segments and
    applies checks to each segment in turn.
    Unlike [`isIdentifier`](#isIdentifier(java.lang.CharSequence)), this method returns
    `false` for keywords, boolean literals, and the null
    literal in any segment.
    This method returns `true` for *contextual
    keywords*.

    Parameters:
    :   `name` - the string to check

    Returns:
    :   `true` if this string is a
        syntactically valid name, `false` otherwise.
  + ### isName

    public static boolean isName([CharSequence](../../../../java.base/java/lang/CharSequence.md "interface in java.lang") name,
    [SourceVersion](SourceVersion.md "enum class in javax.lang.model") version)

    Returns whether or not `name` is a syntactically valid
    qualified name in the given source version.
    Syntactically, a qualified name is a sequence of identifiers
    separated by period characters ("`.`"). This method
    splits the input string into period-separated segments and
    applies checks to each segment in turn.
    Unlike [`isIdentifier`](#isIdentifier(java.lang.CharSequence)), this method returns
    `false` for keywords, boolean literals, and the null
    literal in any segment.
    This method returns `true` for *contextual
    keywords*.

    Parameters:
    :   `name` - the string to check
    :   `version` - the version to use

    Returns:
    :   `true` if this string is a
        syntactically valid name, `false` otherwise.

    Since:
    :   9
  + ### isKeyword

    public static boolean isKeyword([CharSequence](../../../../java.base/java/lang/CharSequence.md "interface in java.lang") s)

    Returns whether or not `s` is a keyword, boolean literal,
    or null literal in the latest source version.
    This method returns `false` for *contextual
    keywords*.

    Parameters:
    :   `s` - the string to check

    Returns:
    :   `true` if `s` is a keyword, or boolean
        literal, or null literal, `false` otherwise.
  + ### isKeyword

    public static boolean isKeyword([CharSequence](../../../../java.base/java/lang/CharSequence.md "interface in java.lang") s,
    [SourceVersion](SourceVersion.md "enum class in javax.lang.model") version)

    Returns whether or not `s` is a keyword, boolean literal,
    or null literal in the given source version.
    This method returns `false` for *contextual
    keywords*.

    Parameters:
    :   `s` - the string to check
    :   `version` - the version to use

    Returns:
    :   `true` if `s` is a keyword, or boolean
        literal, or null literal, `false` otherwise.

    Since:
    :   9
  + ### valueOf

    public static [SourceVersion](SourceVersion.md "enum class in javax.lang.model") valueOf([Runtime.Version](../../../../java.base/java/lang/Runtime.Version.md "class in java.lang") rv)

    Returns the latest source version that is usable under the
    runtime version argument. If the runtime version's [feature](../../../../java.base/java/lang/Runtime.Version.md#feature()) is greater than the feature
    of the [runtime version](#runtimeVersion()) of the
    [latest source version](#latest()), an `IllegalArgumentException` is thrown.

    Because the source versions of the Java programming language
    have so far followed a linear progression, only the feature
    component of a runtime version is queried to determine the
    mapping to a source version. If that linearity changes in the
    future, other components of the runtime version may influence
    the result.

    Parameters:
    :   `rv` - runtime version to map to a source version

    Returns:
    :   the latest source version that is usable under the
        runtime version argument

    Throws:
    :   `IllegalArgumentException` - if the feature of version
        argument is greater than the feature of the platform version.

    Since:
    :   18
  + ### runtimeVersion

    public [Runtime.Version](../../../../java.base/java/lang/Runtime.Version.md "class in java.lang") runtimeVersion()

    Returns the least runtime version that supports this source
    version; otherwise `null`. The returned runtime version
    has a [feature](../../../../java.base/java/lang/Runtime.Version.md#feature()) large
    enough to support this source version and has no other elements
    set.
    Source versions greater than or equal to [`RELEASE_6`](#RELEASE_6)
    have non-`null` results.

    Returns:
    :   the least runtime version that supports this source
        version; otherwise `null`

    Since:
    :   18