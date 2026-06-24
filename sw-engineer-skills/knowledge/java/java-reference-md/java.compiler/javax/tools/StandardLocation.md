Module [java.compiler](../../module-summary.md)

Package [javax.tools](package-summary.md)

# Enum Class StandardLocation

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[StandardLocation](StandardLocation.md "enum class in javax.tools")>

javax.tools.StandardLocation

All Implemented Interfaces:
:   `Serializable`, `Comparable<StandardLocation>`, `Constable`, `JavaFileManager.Location`

---

public enum StandardLocation
extends [Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[StandardLocation](StandardLocation.md "enum class in javax.tools")>
implements [JavaFileManager.Location](JavaFileManager.Location.md "interface in javax.tools")

Standard locations of file objects.

Since:
:   1.6

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `ANNOTATION_PROCESSOR_MODULE_PATH`

  Location to search for modules containing annotation processors.

  `ANNOTATION_PROCESSOR_PATH`

  Location to search for annotation processors.

  `CLASS_OUTPUT`

  Location of new class files.

  `CLASS_PATH`

  Location to search for user class files.

  `MODULE_PATH`

  Location to search for precompiled user modules.

  `MODULE_SOURCE_PATH`

  Location to search for the source code of modules.

  `NATIVE_HEADER_OUTPUT`

  Location of new native header files.

  `PATCH_MODULE_PATH`

  Location to search for module patches.

  `PLATFORM_CLASS_PATH`

  Location to search for platform classes.

  `SOURCE_OUTPUT`

  Location of new source files.

  `SOURCE_PATH`

  Location to search for existing source files.

  `SYSTEM_MODULES`

  Location to search for system modules.

  `UPGRADE_MODULE_PATH`

  Location to search for upgradeable system modules.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getName()`

  Returns the name of this location.

  `boolean`

  `isModuleOrientedLocation()`

  Indicates if this location is module-oriented location, and therefore
  expected to contain classes in a *module/package/class*
  hierarchy, as compared to a package-oriented location, which
  is expected to contain classes in a *package/class* hierarchy.

  `boolean`

  `isOutputLocation()`

  Determines if this is an output location.

  `static JavaFileManager.Location`

  `locationFor(String name)`

  Returns a location object with the given name.

  `static StandardLocation`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static StandardLocation[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### CLASS\_OUTPUT

    public static final [StandardLocation](StandardLocation.md "enum class in javax.tools") CLASS\_OUTPUT

    Location of new class files.
  + ### SOURCE\_OUTPUT

    public static final [StandardLocation](StandardLocation.md "enum class in javax.tools") SOURCE\_OUTPUT

    Location of new source files.
  + ### CLASS\_PATH

    public static final [StandardLocation](StandardLocation.md "enum class in javax.tools") CLASS\_PATH

    Location to search for user class files.
  + ### SOURCE\_PATH

    public static final [StandardLocation](StandardLocation.md "enum class in javax.tools") SOURCE\_PATH

    Location to search for existing source files.
  + ### ANNOTATION\_PROCESSOR\_PATH

    public static final [StandardLocation](StandardLocation.md "enum class in javax.tools") ANNOTATION\_PROCESSOR\_PATH

    Location to search for annotation processors.
  + ### ANNOTATION\_PROCESSOR\_MODULE\_PATH

    public static final [StandardLocation](StandardLocation.md "enum class in javax.tools") ANNOTATION\_PROCESSOR\_MODULE\_PATH

    Location to search for modules containing annotation processors.

    Since:
    :   9
  + ### PLATFORM\_CLASS\_PATH

    public static final [StandardLocation](StandardLocation.md "enum class in javax.tools") PLATFORM\_CLASS\_PATH

    Location to search for platform classes. Sometimes called
    the boot class path.
  + ### NATIVE\_HEADER\_OUTPUT

    public static final [StandardLocation](StandardLocation.md "enum class in javax.tools") NATIVE\_HEADER\_OUTPUT

    Location of new native header files.

    Since:
    :   1.8
  + ### MODULE\_SOURCE\_PATH

    public static final [StandardLocation](StandardLocation.md "enum class in javax.tools") MODULE\_SOURCE\_PATH

    Location to search for the source code of modules.

    Since:
    :   9
  + ### UPGRADE\_MODULE\_PATH

    public static final [StandardLocation](StandardLocation.md "enum class in javax.tools") UPGRADE\_MODULE\_PATH

    Location to search for upgradeable system modules.

    Since:
    :   9
  + ### SYSTEM\_MODULES

    public static final [StandardLocation](StandardLocation.md "enum class in javax.tools") SYSTEM\_MODULES

    Location to search for system modules.

    Since:
    :   9
  + ### MODULE\_PATH

    public static final [StandardLocation](StandardLocation.md "enum class in javax.tools") MODULE\_PATH

    Location to search for precompiled user modules.

    Since:
    :   9
  + ### PATCH\_MODULE\_PATH

    public static final [StandardLocation](StandardLocation.md "enum class in javax.tools") PATCH\_MODULE\_PATH

    Location to search for module patches.

    Since:
    :   9
* ## Method Details

  + ### values

    public static [StandardLocation](StandardLocation.md "enum class in javax.tools")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [StandardLocation](StandardLocation.md "enum class in javax.tools") valueOf([String](../../../java.base/java/lang/String.md "class in java.lang") name)

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
  + ### locationFor

    public static [JavaFileManager.Location](JavaFileManager.Location.md "interface in javax.tools") locationFor([String](../../../java.base/java/lang/String.md "class in java.lang") name)

    Returns a location object with the given name. The following
    property must hold: `locationFor(x) ==
    locationFor(y)` if and only if `x.equals(y)`.
    The returned location will be an output location if and only if
    name ends with `"_OUTPUT"`. It will be considered to
    be a module-oriented location if the name contains the word
    `"MODULE"`.

    Parameters:
    :   `name` - a name

    Returns:
    :   a location
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
  + ### isModuleOrientedLocation

    public boolean isModuleOrientedLocation()

    Indicates if this location is module-oriented location, and therefore
    expected to contain classes in a *module/package/class*
    hierarchy, as compared to a package-oriented location, which
    is expected to contain classes in a *package/class* hierarchy.
    The result of this method is undefined if this is an output
    location.

    Specified by:
    :   `isModuleOrientedLocation` in interface `JavaFileManager.Location`

    Returns:
    :   true if this location is expected to contain modules

    Since:
    :   9