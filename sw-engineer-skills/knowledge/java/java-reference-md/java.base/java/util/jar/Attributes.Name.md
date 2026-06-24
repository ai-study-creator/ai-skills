Module [java.base](../../../module-summary.md)

Package [java.util.jar](package-summary.md)

# Class Attributes.Name

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.util.jar.Attributes.Name

Enclosing class:
:   `Attributes`

---

public static class Attributes.Name
extends [Object](../../lang/Object.md "class in java.lang")

The Attributes.Name class represents an attribute name stored in
this Map. Valid attribute names are case-insensitive, are restricted
to the ASCII characters in the set [0-9a-zA-Z\_-], and cannot exceed
70 characters in length. Attribute values can contain any characters
and will be UTF8-encoded when written to the output stream. See the
[JAR File Specification](../../../../../specs/jar/jar.md)
for more information about valid attribute names and values.

External Specifications
:   * [JAR File Specification](../../../../../specs/jar/jar.md)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final Attributes.Name`

  `CLASS_PATH`

  `Name` object for `Class-Path`
  manifest attribute.

  `static final Attributes.Name`

  `CONTENT_TYPE`

  `Name` object for `Content-Type`
  manifest attribute.

  `static final Attributes.Name`

  `EXTENSION_INSTALLATION`

  Deprecated.

  Extension mechanism is no longer supported.

  `static final Attributes.Name`

  `EXTENSION_LIST`

  `Name` object for `Extension-List` manifest attribute
  used for the extension mechanism that is no longer supported.

  `static final Attributes.Name`

  `EXTENSION_NAME`

  `Name` object for `Extension-Name` manifest attribute
  used for the extension mechanism that is no longer supported.

  `static final Attributes.Name`

  `IMPLEMENTATION_TITLE`

  `Name` object for `Implementation-Title`
  manifest attribute used for package versioning.

  `static final Attributes.Name`

  `IMPLEMENTATION_URL`

  Deprecated.

  Extension mechanism is no longer supported.

  `static final Attributes.Name`

  `IMPLEMENTATION_VENDOR`

  `Name` object for `Implementation-Vendor`
  manifest attribute used for package versioning.

  `static final Attributes.Name`

  `IMPLEMENTATION_VENDOR_ID`

  Deprecated.

  Extension mechanism is no longer supported.

  `static final Attributes.Name`

  `IMPLEMENTATION_VERSION`

  `Name` object for `Implementation-Version`
  manifest attribute used for package versioning.

  `static final Attributes.Name`

  `MAIN_CLASS`

  `Name` object for `Main-Class` manifest
  attribute used for launching applications packaged in JAR files.

  `static final Attributes.Name`

  `MANIFEST_VERSION`

  `Name` object for `Manifest-Version`
  manifest attribute.

  `static final Attributes.Name`

  `MULTI_RELEASE`

  `Name` object for `Multi-Release`
  manifest attribute that indicates this is a multi-release JAR file.

  `static final Attributes.Name`

  `SEALED`

  `Name` object for `Sealed` manifest attribute
  used for sealing.

  `static final Attributes.Name`

  `SIGNATURE_VERSION`

  `Name` object for `Signature-Version`
  manifest attribute used when signing JAR files.

  `static final Attributes.Name`

  `SPECIFICATION_TITLE`

  `Name` object for `Specification-Title`
  manifest attribute used for package versioning.

  `static final Attributes.Name`

  `SPECIFICATION_VENDOR`

  `Name` object for `Specification-Vendor`
  manifest attribute used for package versioning.

  `static final Attributes.Name`

  `SPECIFICATION_VERSION`

  `Name` object for `Specification-Version`
  manifest attribute used for package versioning.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Name(String name)`

  Constructs a new attribute name using the given string name.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object o)`

  Compares this attribute name to another for equality.

  `int`

  `hashCode()`

  Computes the hash value for this attribute name.

  `String`

  `toString()`

  Returns the attribute name as a String.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### MANIFEST\_VERSION

    public static final [Attributes.Name](Attributes.Name.md "class in java.util.jar") MANIFEST\_VERSION

    `Name` object for `Manifest-Version`
    manifest attribute. This attribute indicates the version number
    of the manifest standard to which a JAR file's manifest conforms.

    See Also:
    :   - [Manifest and Signature Specification](../../../../../specs/jar/jar.md#jar-manifest)
  + ### SIGNATURE\_VERSION

    public static final [Attributes.Name](Attributes.Name.md "class in java.util.jar") SIGNATURE\_VERSION

    `Name` object for `Signature-Version`
    manifest attribute used when signing JAR files.

    See Also:
    :   - [Manifest and Signature Specification](../../../../../specs/jar/jar.md#jar-manifest)
  + ### CONTENT\_TYPE

    public static final [Attributes.Name](Attributes.Name.md "class in java.util.jar") CONTENT\_TYPE

    `Name` object for `Content-Type`
    manifest attribute.
  + ### CLASS\_PATH

    public static final [Attributes.Name](Attributes.Name.md "class in java.util.jar") CLASS\_PATH

    `Name` object for `Class-Path`
    manifest attribute.

    See Also:
    :   - [JAR file specification](../../../../../specs/jar/jar.md#class-path-attribute)
  + ### MAIN\_CLASS

    public static final [Attributes.Name](Attributes.Name.md "class in java.util.jar") MAIN\_CLASS

    `Name` object for `Main-Class` manifest
    attribute used for launching applications packaged in JAR files.
    The `Main-Class` attribute is used in conjunction
    with the `-jar` command-line option of the
    `java` application launcher.
  + ### SEALED

    public static final [Attributes.Name](Attributes.Name.md "class in java.util.jar") SEALED

    `Name` object for `Sealed` manifest attribute
    used for sealing.

    See Also:
    :   - [Package Sealing](../../../../../specs/jar/jar.md#package-sealing)
  + ### EXTENSION\_LIST

    public static final [Attributes.Name](Attributes.Name.md "class in java.util.jar") EXTENSION\_LIST

    `Name` object for `Extension-List` manifest attribute
    used for the extension mechanism that is no longer supported.
  + ### EXTENSION\_NAME

    public static final [Attributes.Name](Attributes.Name.md "class in java.util.jar") EXTENSION\_NAME

    `Name` object for `Extension-Name` manifest attribute
    used for the extension mechanism that is no longer supported.
  + ### EXTENSION\_INSTALLATION

    [@Deprecated](../../lang/Deprecated.md "annotation interface in java.lang")
    public static final [Attributes.Name](Attributes.Name.md "class in java.util.jar") EXTENSION\_INSTALLATION

    Deprecated.

    Extension mechanism is no longer supported.

    `Name` object for `Extension-Installation` manifest attribute.
  + ### IMPLEMENTATION\_TITLE

    public static final [Attributes.Name](Attributes.Name.md "class in java.util.jar") IMPLEMENTATION\_TITLE

    `Name` object for `Implementation-Title`
    manifest attribute used for package versioning.
  + ### IMPLEMENTATION\_VERSION

    public static final [Attributes.Name](Attributes.Name.md "class in java.util.jar") IMPLEMENTATION\_VERSION

    `Name` object for `Implementation-Version`
    manifest attribute used for package versioning.
  + ### IMPLEMENTATION\_VENDOR

    public static final [Attributes.Name](Attributes.Name.md "class in java.util.jar") IMPLEMENTATION\_VENDOR

    `Name` object for `Implementation-Vendor`
    manifest attribute used for package versioning.
  + ### IMPLEMENTATION\_VENDOR\_ID

    [@Deprecated](../../lang/Deprecated.md "annotation interface in java.lang")
    public static final [Attributes.Name](Attributes.Name.md "class in java.util.jar") IMPLEMENTATION\_VENDOR\_ID

    Deprecated.

    Extension mechanism is no longer supported.

    `Name` object for `Implementation-Vendor-Id`
    manifest attribute.
  + ### IMPLEMENTATION\_URL

    [@Deprecated](../../lang/Deprecated.md "annotation interface in java.lang")
    public static final [Attributes.Name](Attributes.Name.md "class in java.util.jar") IMPLEMENTATION\_URL

    Deprecated.

    Extension mechanism is no longer supported.

    `Name` object for `Implementation-URL`
    manifest attribute.
  + ### SPECIFICATION\_TITLE

    public static final [Attributes.Name](Attributes.Name.md "class in java.util.jar") SPECIFICATION\_TITLE

    `Name` object for `Specification-Title`
    manifest attribute used for package versioning.
  + ### SPECIFICATION\_VERSION

    public static final [Attributes.Name](Attributes.Name.md "class in java.util.jar") SPECIFICATION\_VERSION

    `Name` object for `Specification-Version`
    manifest attribute used for package versioning.
  + ### SPECIFICATION\_VENDOR

    public static final [Attributes.Name](Attributes.Name.md "class in java.util.jar") SPECIFICATION\_VENDOR

    `Name` object for `Specification-Vendor`
    manifest attribute used for package versioning.
  + ### MULTI\_RELEASE

    public static final [Attributes.Name](Attributes.Name.md "class in java.util.jar") MULTI\_RELEASE

    `Name` object for `Multi-Release`
    manifest attribute that indicates this is a multi-release JAR file.

    Since:
    :   9
* ## Constructor Details

  + ### Name

    public Name([String](../../lang/String.md "class in java.lang") name)

    Constructs a new attribute name using the given string name.

    Parameters:
    :   `name` - the attribute string name

    Throws:
    :   `IllegalArgumentException` - if the attribute name was
        invalid
    :   `NullPointerException` - if the attribute name was null
* ## Method Details

  + ### equals

    public boolean equals([Object](../../lang/Object.md "class in java.lang") o)

    Compares this attribute name to another for equality.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `o` - the object to compare

    Returns:
    :   true if this attribute name is equal to the
        specified attribute object

    See Also:
    :   - [`Object.hashCode()`](../../lang/Object.md#hashCode())
        - [`HashMap`](../HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Computes the hash value for this attribute name.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../../lang/String.md "class in java.lang") toString()

    Returns the attribute name as a String.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.