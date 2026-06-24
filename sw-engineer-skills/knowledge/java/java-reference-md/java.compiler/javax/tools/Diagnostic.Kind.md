Module [java.compiler](../../module-summary.md)

Package [javax.tools](package-summary.md)

# Enum Class Diagnostic.Kind

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[Diagnostic.Kind](Diagnostic.Kind.md "enum class in javax.tools")>

javax.tools.Diagnostic.Kind

All Implemented Interfaces:
:   `Serializable`, `Comparable<Diagnostic.Kind>`, `Constable`

Enclosing interface:
:   `Diagnostic<S>`

---

public static enum Diagnostic.Kind
extends [Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[Diagnostic.Kind](Diagnostic.Kind.md "enum class in javax.tools")>

Kinds of diagnostics, for example, error or warning.
The kind of a diagnostic can be used to determine how the
diagnostic should be presented to the user. For example,
errors might be colored red or prefixed with the word "Error",
while warnings might be colored yellow or prefixed with the
word "Warning". There is no requirement that the Kind
should imply any inherent semantic meaning to the message
of the diagnostic: for example, a tool might provide an
option to report all warnings as errors.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `ERROR`

  Problem which prevents the tool's normal completion.

  `MANDATORY_WARNING`

  Problem similar to a warning, but is mandated by the tool's
  specification.

  `NOTE`

  Informative message from the tool.

  `OTHER`

  Diagnostic which does not fit within the other kinds.

  `WARNING`

  Problem which does not usually prevent the tool from
  completing normally.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Diagnostic.Kind`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static Diagnostic.Kind[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### ERROR

    public static final [Diagnostic.Kind](Diagnostic.Kind.md "enum class in javax.tools") ERROR

    Problem which prevents the tool's normal completion.
  + ### WARNING

    public static final [Diagnostic.Kind](Diagnostic.Kind.md "enum class in javax.tools") WARNING

    Problem which does not usually prevent the tool from
    completing normally.
  + ### MANDATORY\_WARNING

    public static final [Diagnostic.Kind](Diagnostic.Kind.md "enum class in javax.tools") MANDATORY\_WARNING

    Problem similar to a warning, but is mandated by the tool's
    specification. For example, the Java Language
    Specification mandates warnings on certain
    unchecked operations and the use of deprecated methods.
  + ### NOTE

    public static final [Diagnostic.Kind](Diagnostic.Kind.md "enum class in javax.tools") NOTE

    Informative message from the tool.
  + ### OTHER

    public static final [Diagnostic.Kind](Diagnostic.Kind.md "enum class in javax.tools") OTHER

    Diagnostic which does not fit within the other kinds.
* ## Method Details

  + ### values

    public static [Diagnostic.Kind](Diagnostic.Kind.md "enum class in javax.tools")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [Diagnostic.Kind](Diagnostic.Kind.md "enum class in javax.tools") valueOf([String](../../../java.base/java/lang/String.md "class in java.lang") name)

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