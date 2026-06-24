Module [java.rmi](../../../module-summary.md)

Package [java.rmi.server](package-summary.md)

# Class RMIClassLoaderSpi

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.rmi.server.RMIClassLoaderSpi

---

public abstract class RMIClassLoaderSpi
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

`RMIClassLoaderSpi` is the service provider interface for
`RMIClassLoader`.
In particular, an `RMIClassLoaderSpi` instance provides an
implementation of the following static methods of
`RMIClassLoader`:

* [`RMIClassLoader.loadClass(URL,String)`](RMIClassLoader.md#loadClass(java.net.URL,java.lang.String))* [`RMIClassLoader.loadClass(String,String)`](RMIClassLoader.md#loadClass(java.lang.String,java.lang.String))* [`RMIClassLoader.loadClass(String,String,ClassLoader)`](RMIClassLoader.md#loadClass(java.lang.String,java.lang.String,java.lang.ClassLoader))* [`RMIClassLoader.loadProxyClass(String,String[],ClassLoader)`](RMIClassLoader.md#loadProxyClass(java.lang.String,java.lang.String%5B%5D,java.lang.ClassLoader))* [`RMIClassLoader.getClassLoader(String)`](RMIClassLoader.md#getClassLoader(java.lang.String))* [`RMIClassLoader.getClassAnnotation(Class)`](RMIClassLoader.md#getClassAnnotation(java.lang.Class))

When one of those methods is invoked, its behavior is to delegate
to a corresponding method on an instance of this class.
The details of how each method delegates to the provider instance is
described in the documentation for each particular method.
See the documentation for [`RMIClassLoader`](RMIClassLoader.md "class in java.rmi.server") for a description
of how a provider instance is chosen.

Since:
:   1.4

See Also:
:   * [`RMIClassLoader`](RMIClassLoader.md "class in java.rmi.server")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RMIClassLoaderSpi()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract String`

  `getClassAnnotation(Class<?> cl)`

  Provides the implementation for
  [`RMIClassLoader.getClassAnnotation(Class)`](RMIClassLoader.md#getClassAnnotation(java.lang.Class)).

  `abstract ClassLoader`

  `getClassLoader(String codebase)`

  Provides the implementation for
  [`RMIClassLoader.getClassLoader(String)`](RMIClassLoader.md#getClassLoader(java.lang.String)).

  `abstract Class<?>`

  `loadClass(String codebase,
  String name,
  ClassLoader defaultLoader)`

  Provides the implementation for
  [`RMIClassLoader.loadClass(URL,String)`](RMIClassLoader.md#loadClass(java.net.URL,java.lang.String)),
  [`RMIClassLoader.loadClass(String,String)`](RMIClassLoader.md#loadClass(java.lang.String,java.lang.String)), and
  [`RMIClassLoader.loadClass(String,String,ClassLoader)`](RMIClassLoader.md#loadClass(java.lang.String,java.lang.String,java.lang.ClassLoader)).

  `abstract Class<?>`

  `loadProxyClass(String codebase,
  String[] interfaces,
  ClassLoader defaultLoader)`

  Provides the implementation for
  [`RMIClassLoader.loadProxyClass(String,String[],ClassLoader)`](RMIClassLoader.md#loadProxyClass(java.lang.String,java.lang.String%5B%5D,java.lang.ClassLoader)).

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### RMIClassLoaderSpi

    public RMIClassLoaderSpi()

    Constructor for subclasses to call.
* ## Method Details

  + ### loadClass

    public abstract [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> loadClass([String](../../../../java.base/java/lang/String.md "class in java.lang") codebase,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [ClassLoader](../../../../java.base/java/lang/ClassLoader.md "class in java.lang") defaultLoader)
    throws [MalformedURLException](../../../../java.base/java/net/MalformedURLException.md "class in java.net"),
    [ClassNotFoundException](../../../../java.base/java/lang/ClassNotFoundException.md "class in java.lang")

    Provides the implementation for
    [`RMIClassLoader.loadClass(URL,String)`](RMIClassLoader.md#loadClass(java.net.URL,java.lang.String)),
    [`RMIClassLoader.loadClass(String,String)`](RMIClassLoader.md#loadClass(java.lang.String,java.lang.String)), and
    [`RMIClassLoader.loadClass(String,String,ClassLoader)`](RMIClassLoader.md#loadClass(java.lang.String,java.lang.String,java.lang.ClassLoader)).
    Loads a class from a codebase URL path, optionally using the
    supplied loader.
    Typically, a provider implementation will attempt to
    resolve the named class using the given `defaultLoader`,
    if specified, before attempting to resolve the class from the
    codebase URL path.

    An implementation of this method must either return a class
    with the given name or throw an exception.

    Parameters:
    :   `codebase` - the list of URLs (separated by spaces) to load
        the class from, or `null`
    :   `name` - the name of the class to load
    :   `defaultLoader` - additional contextual class loader
        to use, or `null`

    Returns:
    :   the `Class` object representing the loaded class

    Throws:
    :   `MalformedURLException` - if `codebase` is
        non-`null` and contains an invalid URL, or
        if `codebase` is `null` and a provider-specific
        URL used to load classes is invalid
    :   `ClassNotFoundException` - if a definition for the class
        could not be found at the specified location
  + ### loadProxyClass

    public abstract [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> loadProxyClass([String](../../../../java.base/java/lang/String.md "class in java.lang") codebase,
    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] interfaces,
    [ClassLoader](../../../../java.base/java/lang/ClassLoader.md "class in java.lang") defaultLoader)
    throws [MalformedURLException](../../../../java.base/java/net/MalformedURLException.md "class in java.net"),
    [ClassNotFoundException](../../../../java.base/java/lang/ClassNotFoundException.md "class in java.lang")

    Provides the implementation for
    [`RMIClassLoader.loadProxyClass(String,String[],ClassLoader)`](RMIClassLoader.md#loadProxyClass(java.lang.String,java.lang.String%5B%5D,java.lang.ClassLoader)).
    Loads a dynamic proxy class (see [`Proxy`](../../../../java.base/java/lang/reflect/Proxy.md "class in java.lang.reflect")
    that implements a set of interfaces with the given names
    from a codebase URL path, optionally using the supplied loader.

    An implementation of this method must either return a proxy
    class that implements the named interfaces or throw an exception.

    Parameters:
    :   `codebase` - the list of URLs (space-separated) to load
        classes from, or `null`
    :   `interfaces` - the names of the interfaces for the proxy class
        to implement
    :   `defaultLoader` - additional contextual class loader
        to use, or `null`

    Returns:
    :   a dynamic proxy class that implements the named interfaces

    Throws:
    :   `MalformedURLException` - if `codebase` is
        non-`null` and contains an invalid URL, or
        if `codebase` is `null` and a provider-specific
        URL used to load classes is invalid
    :   `ClassNotFoundException` - if a definition for one of
        the named interfaces could not be found at the specified location,
        or if creation of the dynamic proxy class failed (such as if
        [`Proxy.getProxyClass(ClassLoader,Class[])`](../../../../java.base/java/lang/reflect/Proxy.md#getProxyClass(java.lang.ClassLoader,java.lang.Class...))
        would throw an `IllegalArgumentException` for the given
        interface list)
  + ### getClassLoader

    public abstract [ClassLoader](../../../../java.base/java/lang/ClassLoader.md "class in java.lang") getClassLoader([String](../../../../java.base/java/lang/String.md "class in java.lang") codebase)
    throws [MalformedURLException](../../../../java.base/java/net/MalformedURLException.md "class in java.net")

    Provides the implementation for
    [`RMIClassLoader.getClassLoader(String)`](RMIClassLoader.md#getClassLoader(java.lang.String)).
    Returns a class loader that loads classes from the given codebase
    URL path.

    If there is a security manager, its `checkPermission`
    method will be invoked with a
    `RuntimePermission("getClassLoader")` permission;
    this could result in a `SecurityException`.
    The implementation of this method may also perform further security
    checks to verify that the calling context has permission to connect
    to all of the URLs in the codebase URL path.

    Parameters:
    :   `codebase` - the list of URLs (space-separated) from which
        the returned class loader will load classes from, or `null`

    Returns:
    :   a class loader that loads classes from the given codebase URL
        path

    Throws:
    :   `MalformedURLException` - if `codebase` is
        non-`null` and contains an invalid URL, or
        if `codebase` is `null` and a provider-specific
        URL used to identify the class loader is invalid
    :   `SecurityException` - if there is a security manager and the
        invocation of its `checkPermission` method fails, or
        if the caller does not have permission to connect to all of the
        URLs in the codebase URL path
  + ### getClassAnnotation

    public abstract [String](../../../../java.base/java/lang/String.md "class in java.lang") getClassAnnotation([Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> cl)

    Provides the implementation for
    [`RMIClassLoader.getClassAnnotation(Class)`](RMIClassLoader.md#getClassAnnotation(java.lang.Class)).
    Returns the annotation string (representing a location for
    the class definition) that RMI will use to annotate the class
    descriptor when marshalling objects of the given class.

    Parameters:
    :   `cl` - the class to obtain the annotation for

    Returns:
    :   a string to be used to annotate the given class when
        it gets marshalled, or `null`

    Throws:
    :   `NullPointerException` - if `cl` is `null`