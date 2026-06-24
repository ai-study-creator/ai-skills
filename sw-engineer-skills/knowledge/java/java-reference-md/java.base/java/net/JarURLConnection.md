Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class JarURLConnection

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.net.URLConnection](URLConnection.md "class in java.net")

java.net.JarURLConnection

---

public abstract class JarURLConnection
extends [URLConnection](URLConnection.md "class in java.net")

A URL Connection to a Java ARchive (JAR) file or an entry in a JAR
file.

The syntax of a JAR URL is:

```
 jar:<url>!/{entry}
```

for example:

`jar:http://www.foo.com/bar/baz.jar!/COM/foo/Quux.class`

Jar URLs should be used to refer to a JAR file or entries in
a JAR file. The example above is a JAR URL which refers to a JAR
entry. If the entry name is omitted, the URL refers to the whole
JAR file:
`jar:http://www.foo.com/bar/baz.jar!/`

Users should cast the generic URLConnection to a
JarURLConnection when they know that the URL they created is a JAR
URL, and they need JAR-specific functionality. For example:

```
 URL url = new URL("jar:file:/home/duke/duke.jar!/");
 JarURLConnection jarConnection = (JarURLConnection)url.openConnection();
 Manifest manifest = jarConnection.getManifest();
```

JarURLConnection instances can only be used to read from JAR files.
It is not possible to get a [`OutputStream`](../io/OutputStream.md "class in java.io") to modify or write
to the underlying JAR file using this class.

Examples:

A Jar entry: `jar:http://www.foo.com/bar/baz.jar!/COM/foo/Quux.class` A Jar file: `jar:http://www.foo.com/bar/baz.jar!/` A Jar directory: `jar:http://www.foo.com/bar/baz.jar!/COM/foo/`

`!/` is referred to as the *separator*.

When constructing a JAR url via `new URL(context, spec)`,
the following rules apply:

* if there is no context URL and the specification passed to the
  URL constructor doesn't contain a separator, the URL is considered
  to refer to a JarFile.* if there is a context URL, the context URL is assumed to refer
    to a JAR file or a Jar directory.* if the specification begins with a '/', the Jar directory is
      ignored, and the spec is considered to be at the root of the Jar
      file.

      Examples:

      context: **jar:http://www.foo.com/bar/jar.jar!/**, spec:**baz/entry.txt**: url:**jar:http://www.foo.com/bar/jar.jar!/baz/entry.txt** context: **jar:http://www.foo.com/bar/jar.jar!/baz**, spec:**entry.txt**: url:**jar:http://www.foo.com/bar/jar.jar!/baz/entry.txt** context: **jar:http://www.foo.com/bar/jar.jar!/baz**, spec:**/entry.txt**: url:**jar:http://www.foo.com/bar/jar.jar!/entry.txt**

Since:
:   1.2

See Also:
:   * [`URL`](URL.md "class in java.net")
    * [`URLConnection`](URLConnection.md "class in java.net")
    * [`JarFile`](../util/jar/JarFile.md "class in java.util.jar")
    * [`JarInputStream`](../util/jar/JarInputStream.md "class in java.util.jar")
    * [`Manifest`](../util/jar/Manifest.md "class in java.util.jar")
    * [`ZipEntry`](../util/zip/ZipEntry.md "class in java.util.zip")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected URLConnection`

  `jarFileURLConnection`

  The connection to the JAR file URL, if the connection has been
  initiated.

  ### Fields inherited from class java.net.[URLConnection](URLConnection.md "class in java.net")

  `allowUserInteraction, connected, doInput, doOutput, ifModifiedSince, url, useCaches`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `JarURLConnection(URL url)`

  Creates the new JarURLConnection to the specified URL.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Attributes`

  `getAttributes()`

  Return the Attributes object for this connection if the URL
  for it points to a JAR file entry, null otherwise.

  `Certificate[]`

  `getCertificates()`

  Returns the Certificate objects for this connection if the URL
  for it points to a JAR file entry, null otherwise.

  `String`

  `getEntryName()`

  Return the entry name for this connection.

  `JarEntry`

  `getJarEntry()`

  Return the JAR entry object for this connection, if any.

  `abstract JarFile`

  `getJarFile()`

  Return the JAR file for this connection.

  `URL`

  `getJarFileURL()`

  Returns the URL for the Jar file for this connection.

  `Attributes`

  `getMainAttributes()`

  Returns the main Attributes for the JAR file for this
  connection.

  `Manifest`

  `getManifest()`

  Returns the Manifest for this connection, or null if none.

  ### Methods inherited from class java.net.[URLConnection](URLConnection.md "class in java.net")

  `addRequestProperty, connect, getAllowUserInteraction, getConnectTimeout, getContent, getContent, getContentEncoding, getContentLength, getContentLengthLong, getContentType, getDate, getDefaultAllowUserInteraction, getDefaultRequestProperty, getDefaultUseCaches, getDefaultUseCaches, getDoInput, getDoOutput, getExpiration, getFileNameMap, getHeaderField, getHeaderField, getHeaderFieldDate, getHeaderFieldInt, getHeaderFieldKey, getHeaderFieldLong, getHeaderFields, getIfModifiedSince, getInputStream, getLastModified, getOutputStream, getPermission, getReadTimeout, getRequestProperties, getRequestProperty, getURL, getUseCaches, guessContentTypeFromName, guessContentTypeFromStream, setAllowUserInteraction, setConnectTimeout, setContentHandlerFactory, setDefaultAllowUserInteraction, setDefaultRequestProperty, setDefaultUseCaches, setDefaultUseCaches, setDoInput, setDoOutput, setFileNameMap, setIfModifiedSince, setReadTimeout, setRequestProperty, setUseCaches, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### jarFileURLConnection

    protected [URLConnection](URLConnection.md "class in java.net") jarFileURLConnection

    The connection to the JAR file URL, if the connection has been
    initiated. This should be set by connect.
* ## Constructor Details

  + ### JarURLConnection

    protected JarURLConnection([URL](URL.md "class in java.net") url)
    throws [MalformedURLException](MalformedURLException.md "class in java.net")

    Creates the new JarURLConnection to the specified URL.

    Parameters:
    :   `url` - the URL

    Throws:
    :   `MalformedURLException` - if no legal protocol
        could be found in a specification string or the
        string could not be parsed.
* ## Method Details

  + ### getJarFileURL

    public [URL](URL.md "class in java.net") getJarFileURL()

    Returns the URL for the Jar file for this connection.

    Returns:
    :   the URL for the Jar file for this connection.
  + ### getEntryName

    public [String](../lang/String.md "class in java.lang") getEntryName()

    Return the entry name for this connection. This method
    returns null if the JAR file URL corresponding to this
    connection points to a JAR file and not a JAR file entry.

    Returns:
    :   the entry name for this connection, if any.
  + ### getJarFile

    public abstract [JarFile](../util/jar/JarFile.md "class in java.util.jar") getJarFile()
    throws [IOException](../io/IOException.md "class in java.io")

    Return the JAR file for this connection.

    Returns:
    :   the JAR file for this connection. If the connection is
        a connection to an entry of a JAR file, the JAR file object is
        returned

    Throws:
    :   `IOException` - if an IOException occurs while trying to
        connect to the JAR file for this connection.

    See Also:
    :   - [`URLConnection.connect()`](URLConnection.md#connect())
  + ### getManifest

    public [Manifest](../util/jar/Manifest.md "class in java.util.jar") getManifest()
    throws [IOException](../io/IOException.md "class in java.io")

    Returns the Manifest for this connection, or null if none.

    Returns:
    :   the manifest object corresponding to the JAR file object
        for this connection.

    Throws:
    :   `IOException` - if getting the JAR file for this
        connection causes an IOException to be thrown.

    See Also:
    :   - [`getJarFile()`](#getJarFile())
  + ### getJarEntry

    public [JarEntry](../util/jar/JarEntry.md "class in java.util.jar") getJarEntry()
    throws [IOException](../io/IOException.md "class in java.io")

    Return the JAR entry object for this connection, if any. This
    method returns null if the JAR file URL corresponding to this
    connection points to a JAR file and not a JAR file entry.

    Returns:
    :   the JAR entry object for this connection, or null if
        the JAR URL for this connection points to a JAR file.

    Throws:
    :   `IOException` - if getting the JAR file for this
        connection causes an IOException to be thrown.

    See Also:
    :   - [`getJarFile()`](#getJarFile())
        - [`getJarEntry()`](#getJarEntry())
  + ### getAttributes

    public [Attributes](../util/jar/Attributes.md "class in java.util.jar") getAttributes()
    throws [IOException](../io/IOException.md "class in java.io")

    Return the Attributes object for this connection if the URL
    for it points to a JAR file entry, null otherwise.

    Returns:
    :   the Attributes object for this connection if the URL
        for it points to a JAR file entry, null otherwise.

    Throws:
    :   `IOException` - if getting the JAR entry causes an
        IOException to be thrown.

    See Also:
    :   - [`getJarEntry()`](#getJarEntry())
  + ### getMainAttributes

    public [Attributes](../util/jar/Attributes.md "class in java.util.jar") getMainAttributes()
    throws [IOException](../io/IOException.md "class in java.io")

    Returns the main Attributes for the JAR file for this
    connection.

    Returns:
    :   the main Attributes for the JAR file for this
        connection.

    Throws:
    :   `IOException` - if getting the manifest causes an
        IOException to be thrown.

    See Also:
    :   - [`getJarFile()`](#getJarFile())
        - [`getManifest()`](#getManifest())
  + ### getCertificates

    public [Certificate](../security/cert/Certificate.md "class in java.security.cert")[] getCertificates()
    throws [IOException](../io/IOException.md "class in java.io")

    Returns the Certificate objects for this connection if the URL
    for it points to a JAR file entry, null otherwise. This method
    can only be called once
    the connection has been completely verified by reading
    from the input stream until the end of the stream has been
    reached. Otherwise, this method will return `null`

    Returns:
    :   the Certificate object for this connection if the URL
        for it points to a JAR file entry, null otherwise.

    Throws:
    :   `IOException` - if getting the JAR entry causes an
        IOException to be thrown.

    See Also:
    :   - [`getJarEntry()`](#getJarEntry())