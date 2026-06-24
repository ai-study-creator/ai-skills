Module [java.management](../../../module-summary.md)

Package [javax.management.loading](package-summary.md)

# Interface MLetMBean

All Known Implementing Classes:
:   `MLet`, `PrivateMLet`

---

[@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="20",
[forRemoval](../../../../java.base/java/lang/Deprecated.md#forRemoval())=true)
public interface MLetMBean

Deprecated, for removal: This API element is subject to removal in a future version.

This API is part of Management Applets (m-lets), which is a legacy feature that allows loading
of remote MBeans. This feature is not usable without a Security Manager, which is deprecated and subject to
removal in a future release. Consequently, this API is also deprecated and subject to removal. There is no replacement.

Exposes the remote management interface of the MLet
MBean.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `addURL(String url)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Appends the specified URL to the list of URLs to search for classes and
  resources.

  `void`

  `addURL(URL url)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Appends the specified URL to the list of URLs to search for classes and
  resources.

  `String`

  `getLibraryDirectory()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Gets the current directory used by the library loader for
  storing native libraries before they are loaded into memory.

  `Set<Object>`

  `getMBeansFromURL(String url)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Loads a text file containing MLET tags that define the MBeans
  to be added to the MBean server.

  `Set<Object>`

  `getMBeansFromURL(URL url)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Loads a text file containing MLET tags that define the MBeans
  to be added to the MBean server.

  `URL`

  `getResource(String name)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Finds the resource with the given name.

  `InputStream`

  `getResourceAsStream(String name)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns an input stream for reading the specified resource.

  `Enumeration<URL>`

  `getResources(String name)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Finds all the resources with the given name.

  `URL[]`

  `getURLs()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns the search path of URLs for loading classes and resources.

  `void`

  `setLibraryDirectory(String libdir)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Sets the directory used by the library loader for storing
  native libraries before they are loaded into memory.

* ## Method Details

  + ### getMBeansFromURL

    [Set](../../../../java.base/java/util/Set.md "interface in java.util")<[Object](../../../../java.base/java/lang/Object.md "class in java.lang")> getMBeansFromURL([String](../../../../java.base/java/lang/String.md "class in java.lang") url)
    throws [ServiceNotFoundException](../ServiceNotFoundException.md "class in javax.management")

    Deprecated, for removal: This API element is subject to removal in a future version.

    Loads a text file containing MLET tags that define the MBeans
    to be added to the MBean server. The location of the text file is
    specified by a URL. The text file is read using the UTF-8
    encoding. The MBeans specified in the MLET file will be
    instantiated and registered in the MBean server.

    Parameters:
    :   `url` - The URL of the text file to be loaded as String object.

    Returns:
    :   A set containing one entry per MLET tag in the m-let
        text file loaded. Each entry specifies either the
        ObjectInstance for the created MBean, or a throwable object
        (that is, an error or an exception) if the MBean could not be
        created.

    Throws:
    :   `ServiceNotFoundException` - One of the following errors
        has occurred: The m-let text file does not contain an MLET tag,
        the m-let text file is not found, a mandatory attribute of the
        MLET tag is not specified, the value of url is malformed.
  + ### getMBeansFromURL

    [Set](../../../../java.base/java/util/Set.md "interface in java.util")<[Object](../../../../java.base/java/lang/Object.md "class in java.lang")> getMBeansFromURL([URL](../../../../java.base/java/net/URL.md "class in java.net") url)
    throws [ServiceNotFoundException](../ServiceNotFoundException.md "class in javax.management")

    Deprecated, for removal: This API element is subject to removal in a future version.

    Loads a text file containing MLET tags that define the MBeans
    to be added to the MBean server. The location of the text file is
    specified by a URL. The text file is read using the UTF-8
    encoding. The MBeans specified in the MLET file will be
    instantiated and registered in the MBean server.

    Parameters:
    :   `url` - The URL of the text file to be loaded as URL object.

    Returns:
    :   A set containing one entry per MLET tag in the m-let
        text file loaded. Each entry specifies either the
        ObjectInstance for the created MBean, or a throwable object
        (that is, an error or an exception) if the MBean could not be
        created.

    Throws:
    :   `ServiceNotFoundException` - One of the following errors
        has occurred: The m-let text file does not contain an MLET tag,
        the m-let text file is not found, a mandatory attribute of the
        MLET tag is not specified, the value of url is null.
  + ### addURL

    void addURL([URL](../../../../java.base/java/net/URL.md "class in java.net") url)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Appends the specified URL to the list of URLs to search for classes and
    resources.

    Parameters:
    :   `url` - the URL to add.
  + ### addURL

    void addURL([String](../../../../java.base/java/lang/String.md "class in java.lang") url)
    throws [ServiceNotFoundException](../ServiceNotFoundException.md "class in javax.management")

    Deprecated, for removal: This API element is subject to removal in a future version.

    Appends the specified URL to the list of URLs to search for classes and
    resources.

    Parameters:
    :   `url` - the URL to add.

    Throws:
    :   `ServiceNotFoundException` - The specified URL is malformed.
  + ### getURLs

    [URL](../../../../java.base/java/net/URL.md "class in java.net")[] getURLs()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns the search path of URLs for loading classes and resources.
    This includes the original list of URLs specified to the constructor,
    along with any URLs subsequently appended by the addURL() method.

    Returns:
    :   the list of URLs.
  + ### getResource

    [URL](../../../../java.base/java/net/URL.md "class in java.net") getResource([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Finds the resource with the given name.
    A resource is some data (images, audio, text, etc) that can be accessed by class code in a way that is
    independent of the location of the code.
    The name of a resource is a "/"-separated path name that identifies the resource.

    Parameters:
    :   `name` - The resource name

    Returns:
    :   An URL for reading the resource, or null if the resource could not be found or the caller doesn't have adequate privileges to get the
        resource.
  + ### getResourceAsStream

    [InputStream](../../../../java.base/java/io/InputStream.md "class in java.io") getResourceAsStream([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns an input stream for reading the specified resource. The search order is described in the documentation for
    getResource(String).

    Parameters:
    :   `name` - The resource name

    Returns:
    :   An input stream for reading the resource, or null if the resource could not be found
  + ### getResources

    [Enumeration](../../../../java.base/java/util/Enumeration.md "interface in java.util")<[URL](../../../../java.base/java/net/URL.md "class in java.net")> getResources([String](../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Deprecated, for removal: This API element is subject to removal in a future version.

    Finds all the resources with the given name. A resource is some
    data (images, audio, text, etc) that can be accessed by class
    code in a way that is independent of the location of the code.
    The name of a resource is a "/"-separated path name that
    identifies the resource.

    Parameters:
    :   `name` - The resource name.

    Returns:
    :   An enumeration of URL to the resource. If no resources
        could be found, the enumeration will be empty. Resources that
        cannot be accessed will not be in the enumeration.

    Throws:
    :   `IOException` - if an I/O exception occurs when
        searching for resources.
  + ### getLibraryDirectory

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getLibraryDirectory()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Gets the current directory used by the library loader for
    storing native libraries before they are loaded into memory.

    Returns:
    :   The current directory used by the library loader.

    Throws:
    :   `UnsupportedOperationException` - if this implementation
        does not support storing native libraries in this way.

    See Also:
    :   - [`setLibraryDirectory(java.lang.String)`](#setLibraryDirectory(java.lang.String))
  + ### setLibraryDirectory

    void setLibraryDirectory([String](../../../../java.base/java/lang/String.md "class in java.lang") libdir)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Sets the directory used by the library loader for storing
    native libraries before they are loaded into memory.

    Parameters:
    :   `libdir` - The directory used by the library loader.

    Throws:
    :   `UnsupportedOperationException` - if this implementation
        does not support storing native libraries in this way.

    See Also:
    :   - [`getLibraryDirectory()`](#getLibraryDirectory())