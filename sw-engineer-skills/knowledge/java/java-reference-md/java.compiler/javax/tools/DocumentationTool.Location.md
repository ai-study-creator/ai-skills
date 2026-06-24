Module [java.compiler](../../module-summary.md)

Package [javax.tools](package-summary.md)

# Enum Class DocumentationTool.Location

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[DocumentationTool.Location](DocumentationTool.Location.md "enum class in javax.tools")>

javax.tools.DocumentationTool.Location

All Implemented Interfaces:
:   `Serializable`, `Comparable<DocumentationTool.Location>`, `Constable`, `JavaFileManager.Location`

Enclosing interface:
:   `DocumentationTool`

---

public static enum DocumentationTool.Location
extends [Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[DocumentationTool.Location](DocumentationTool.Location.md "enum class in javax.tools")>
implements [JavaFileManager.Location](JavaFileManager.Location.md "interface in javax.tools")

Locations specific to [`DocumentationTool`](DocumentationTool.md "interface in javax.tools").

See Also:
:   * [`StandardLocation`](StandardLocation.md "enum class in javax.tools")

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `DOCLET_PATH`

  Location to search for doclets.

  `DOCUMENTATION_OUTPUT`

  Location of new documentation files.

  `SNIPPET_PATH`

  Location to search for snippets.

  `TAGLET_PATH`

  Location to search for taglets.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getName()`

  Returns the name of this location.

  `boolean`

  `isOutputLocation()`

  Determines if this is an output location.

  `static DocumentationTool.Location`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static DocumentationTool.Location[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface javax.tools.[JavaFileManager.Location](JavaFileManager.Location.md "interface in javax.tools")

  `isModuleOrientedLocation`

* ## Enum Constant Details

  + ### DOCUMENTATION\_OUTPUT

    public static final [DocumentationTool.Location](DocumentationTool.Location.md "enum class in javax.tools") DOCUMENTATION\_OUTPUT

    Location of new documentation files.
  + ### DOCLET\_PATH

    public static final [DocumentationTool.Location](DocumentationTool.Location.md "enum class in javax.tools") DOCLET\_PATH

    Location to search for doclets.
  + ### TAGLET\_PATH

    public static final [DocumentationTool.Location](DocumentationTool.Location.md "enum class in javax.tools") TAGLET\_PATH

    Location to search for taglets.
  + ### SNIPPET\_PATH

    public static final [DocumentationTool.Location](DocumentationTool.Location.md "enum class in javax.tools") SNIPPET\_PATH

    Location to search for snippets.
* ## Method Details

  + ### values

    public static [DocumentationTool.Location](DocumentationTool.Location.md "enum class in javax.tools")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [DocumentationTool.Location](DocumentationTool.Location.md "enum class in javax.tools") valueOf([String](../../../java.base/java/lang/String.md "class in java.lang") name)

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
  + ### getName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getName()

    Description copied from interface: `JavaFileManager.Location`

    Returns the name of this location.

    Specified by:
    :   `getName` in interface `JavaFileManager.Location`

    Returns:
    :   a name
  + ### isOutputLocation

    public boolean isOutputLocation()

    Description copied from interface: `JavaFileManager.Location`

    Determines if this is an output location.
    An output location is a location that is conventionally used for
    output.

    Specified by:
    :   `isOutputLocation` in interface `JavaFileManager.Location`

    Returns:
    :   true if this is an output location, false otherwise