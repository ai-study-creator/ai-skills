Module [java.management](../../../module-summary.md)

Package [javax.management.loading](package-summary.md)

# Class MLetContent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.loading.MLetContent

---

[@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="20",
[forRemoval](../../../../java.base/java/lang/Deprecated.md#forRemoval())=true)
public class MLetContent
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

Deprecated, for removal: This API element is subject to removal in a future version.

This API is part of Management Applets (m-lets), which is a legacy feature that allows loading
of remote MBeans. This feature is not usable without a Security Manager, which is deprecated and subject to
removal in a future release. Consequently, this API is also deprecated and subject to removal. There is no replacement.

This class represents the contents of the `MLET` tag.
It can be consulted by a subclass of [`MLet`](MLet.md "class in javax.management.loading") that overrides
the [`MLet.check`](MLet.md#check(java.lang.String,java.net.URL,java.lang.String,javax.management.loading.MLetContent)) method.

Since:
:   1.6

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MLetContent(URL url,
  Map<String,String> attributes,
  List<String> types,
  List<String> values)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Creates an `MLet` instance initialized with attributes read
  from an `MLET` tag in an MLet text file.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `Map<String,String>`

  `getAttributes()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Gets the attributes of the `MLET` tag.

  `String`

  `getCode()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Gets the value of the `CODE`
  attribute of the `MLET` tag.

  `URL`

  `getCodeBase()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Gets the code base URL.

  `URL`

  `getDocumentBase()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Gets the MLet text file's base URL.

  `String`

  `getJarFiles()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Gets the list of `.jar` files specified by the `ARCHIVE`
  attribute of the `MLET` tag.

  `String`

  `getName()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Gets the value of the `NAME`
  attribute of the `MLET` tag.

  `List<String>`

  `getParameterTypes()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Gets the list of values of the `TYPE` attribute in
  each nested <PARAM> tag within the `MLET`
  tag.

  `List<String>`

  `getParameterValues()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Gets the list of values of the `VALUE` attribute in
  each nested <PARAM> tag within the `MLET`
  tag.

  `String`

  `getSerializedObject()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Gets the value of the `OBJECT`
  attribute of the `MLET` tag.

  `String`

  `getVersion()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Gets the value of the `VERSION`
  attribute of the `MLET` tag.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MLetContent

    public MLetContent([URL](../../../../java.base/java/net/URL.md "class in java.net") url,
    [Map](../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang"),[String](../../../../java.base/java/lang/String.md "class in java.lang")> attributes,
    [List](../../../../java.base/java/util/List.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang")> types,
    [List](../../../../java.base/java/util/List.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang")> values)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Creates an `MLet` instance initialized with attributes read
    from an `MLET` tag in an MLet text file.

    Parameters:
    :   `url` - The URL of the MLet text file containing the
        `MLET` tag.
    :   `attributes` - A map of the attributes of the `MLET` tag.
        The keys in this map are the attribute names in lowercase, for
        example `codebase`. The values are the associated attribute
        values.
    :   `types` - A list of the TYPE attributes that appeared in nested
        <PARAM> tags.
    :   `values` - A list of the VALUE attributes that appeared in nested
        <PARAM> tags.
* ## Method Details

  + ### getAttributes

    public [Map](../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang"),[String](../../../../java.base/java/lang/String.md "class in java.lang")> getAttributes()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Gets the attributes of the `MLET` tag. The keys in
    the returned map are the attribute names in lowercase, for
    example `codebase`. The values are the associated
    attribute values.

    Returns:
    :   A map of the attributes of the `MLET` tag
        and their values.
  + ### getDocumentBase

    public [URL](../../../../java.base/java/net/URL.md "class in java.net") getDocumentBase()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Gets the MLet text file's base URL.

    Returns:
    :   The MLet text file's base URL.
  + ### getCodeBase

    public [URL](../../../../java.base/java/net/URL.md "class in java.net") getCodeBase()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Gets the code base URL.

    Returns:
    :   The code base URL.
  + ### getJarFiles

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getJarFiles()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Gets the list of `.jar` files specified by the `ARCHIVE`
    attribute of the `MLET` tag.

    Returns:
    :   A comma-separated list of `.jar` file names.
  + ### getCode

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getCode()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Gets the value of the `CODE`
    attribute of the `MLET` tag.

    Returns:
    :   The value of the `CODE`
        attribute of the `MLET` tag.
  + ### getSerializedObject

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getSerializedObject()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Gets the value of the `OBJECT`
    attribute of the `MLET` tag.

    Returns:
    :   The value of the `OBJECT`
        attribute of the `MLET` tag.
  + ### getName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Gets the value of the `NAME`
    attribute of the `MLET` tag.

    Returns:
    :   The value of the `NAME`
        attribute of the `MLET` tag.
  + ### getVersion

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getVersion()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Gets the value of the `VERSION`
    attribute of the `MLET` tag.

    Returns:
    :   The value of the `VERSION`
        attribute of the `MLET` tag.
  + ### getParameterTypes

    public [List](../../../../java.base/java/util/List.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang")> getParameterTypes()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Gets the list of values of the `TYPE` attribute in
    each nested <PARAM> tag within the `MLET`
    tag.

    Returns:
    :   the list of types.
  + ### getParameterValues

    public [List](../../../../java.base/java/util/List.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang")> getParameterValues()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Gets the list of values of the `VALUE` attribute in
    each nested <PARAM> tag within the `MLET`
    tag.

    Returns:
    :   the list of values.