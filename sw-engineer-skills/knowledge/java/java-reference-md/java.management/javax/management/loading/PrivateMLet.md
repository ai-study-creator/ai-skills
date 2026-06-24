Module [java.management](../../../module-summary.md)

Package [javax.management.loading](package-summary.md)

# Class PrivateMLet

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.ClassLoader](../../../../java.base/java/lang/ClassLoader.md "class in java.lang")

[java.security.SecureClassLoader](../../../../java.base/java/security/SecureClassLoader.md "class in java.security")

[java.net.URLClassLoader](../../../../java.base/java/net/URLClassLoader.md "class in java.net")

[javax.management.loading.MLet](MLet.md "class in javax.management.loading")

javax.management.loading.PrivateMLet

All Implemented Interfaces:
:   `Closeable`, `Externalizable`, `Serializable`, `AutoCloseable`, `MLetMBean`, `PrivateClassLoader`, `MBeanRegistration`

---

[@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="20",
[forRemoval](../../../../java.base/java/lang/Deprecated.md#forRemoval())=true)
public class PrivateMLet
extends [MLet](MLet.md "class in javax.management.loading")
implements [PrivateClassLoader](PrivateClassLoader.md "interface in javax.management.loading")

Deprecated, for removal: This API element is subject to removal in a future version.

This API is part of Management Applets (m-lets), which is a legacy feature that allows loading
of remote MBeans. This feature is not usable without a Security Manager, which is deprecated and subject to
removal in a future release. Consequently, this API is also deprecated and subject to removal. There is no replacement.

An MLet that is not added to the [`ClassLoaderRepository`](ClassLoaderRepository.md "interface in javax.management.loading").
This class acts exactly like its parent class, [`MLet`](MLet.md "class in javax.management.loading"), with
one exception. When a PrivateMLet is registered in an MBean
server, it is not added to that MBean server's [`ClassLoaderRepository`](ClassLoaderRepository.md "interface in javax.management.loading"). This is true because this class implements
the interface [`PrivateClassLoader`](PrivateClassLoader.md "interface in javax.management.loading").

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.loading.PrivateMLet)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PrivateMLet(URL[] urls,
  boolean delegateToCLR)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Constructs a new PrivateMLet for the specified URLs using the
  default delegation parent ClassLoader.

  `PrivateMLet(URL[] urls,
  ClassLoader parent,
  boolean delegateToCLR)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Constructs a new PrivateMLet for the given URLs.

  `PrivateMLet(URL[] urls,
  ClassLoader parent,
  URLStreamHandlerFactory factory,
  boolean delegateToCLR)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Constructs a new PrivateMLet for the specified URLs, parent
  class loader, and URLStreamHandlerFactory.
* ## Method Summary

  ### Methods inherited from class javax.management.loading.[MLet](MLet.md "class in javax.management.loading")

  `addURL, addURL, check, findClass, findLibrary, getLibraryDirectory, getMBeansFromURL, getMBeansFromURL, getURLs, loadClass, postDeregister, postRegister, preDeregister, preRegister, readExternal, setLibraryDirectory, writeExternal`

  ### Methods inherited from class java.net.[URLClassLoader](../../../../java.base/java/net/URLClassLoader.md "class in java.net")

  `close, definePackage, findResource, findResources, getPermissions, getResourceAsStream, newInstance, newInstance`

  ### Methods inherited from class java.security.[SecureClassLoader](../../../../java.base/java/security/SecureClassLoader.md "class in java.security")

  `defineClass, defineClass`

  ### Methods inherited from class java.lang.[ClassLoader](../../../../java.base/java/lang/ClassLoader.md "class in java.lang")

  `clearAssertionStatus, defineClass, defineClass, defineClass, defineClass, definePackage, findClass, findLoadedClass, findResource, findSystemClass, getClassLoadingLock, getDefinedPackage, getDefinedPackages, getName, getPackage, getPackages, getParent, getPlatformClassLoader, getResource, getResources, getSystemClassLoader, getSystemResource, getSystemResourceAsStream, getSystemResources, getUnnamedModule, isRegisteredAsParallelCapable, loadClass, loadClass, registerAsParallelCapable, resolveClass, resources, setClassAssertionStatus, setDefaultAssertionStatus, setPackageAssertionStatus, setSigners`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.management.loading.[MLetMBean](MLetMBean.md "interface in javax.management.loading")

  `getResource, getResourceAsStream, getResources`

* ## Constructor Details

  + ### PrivateMLet

    public PrivateMLet([URL](../../../../java.base/java/net/URL.md "class in java.net")[] urls,
    boolean delegateToCLR)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Constructs a new PrivateMLet for the specified URLs using the
    default delegation parent ClassLoader. The URLs will be
    searched in the order specified for classes and resources
    after first searching in the parent class loader.

    Parameters:
    :   `urls` - The URLs from which to load classes and resources.
    :   `delegateToCLR` - True if, when a class is not found in
        either the parent ClassLoader or the URLs, the MLet should delegate
        to its containing MBeanServer's [`ClassLoaderRepository`](ClassLoaderRepository.md "interface in javax.management.loading").
  + ### PrivateMLet

    public PrivateMLet([URL](../../../../java.base/java/net/URL.md "class in java.net")[] urls,
    [ClassLoader](../../../../java.base/java/lang/ClassLoader.md "class in java.lang") parent,
    boolean delegateToCLR)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Constructs a new PrivateMLet for the given URLs. The URLs will
    be searched in the order specified for classes and resources
    after first searching in the specified parent class loader.
    The parent argument will be used as the parent class loader
    for delegation.

    Parameters:
    :   `urls` - The URLs from which to load classes and resources.
    :   `parent` - The parent class loader for delegation.
    :   `delegateToCLR` - True if, when a class is not found in
        either the parent ClassLoader or the URLs, the MLet should delegate
        to its containing MBeanServer's [`ClassLoaderRepository`](ClassLoaderRepository.md "interface in javax.management.loading").
  + ### PrivateMLet

    public PrivateMLet([URL](../../../../java.base/java/net/URL.md "class in java.net")[] urls,
    [ClassLoader](../../../../java.base/java/lang/ClassLoader.md "class in java.lang") parent,
    [URLStreamHandlerFactory](../../../../java.base/java/net/URLStreamHandlerFactory.md "interface in java.net") factory,
    boolean delegateToCLR)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Constructs a new PrivateMLet for the specified URLs, parent
    class loader, and URLStreamHandlerFactory. The parent argument
    will be used as the parent class loader for delegation. The
    factory argument will be used as the stream handler factory to
    obtain protocol handlers when creating new URLs.

    Parameters:
    :   `urls` - The URLs from which to load classes and resources.
    :   `parent` - The parent class loader for delegation.
    :   `factory` - The URLStreamHandlerFactory to use when creating URLs.
    :   `delegateToCLR` - True if, when a class is not found in
        either the parent ClassLoader or the URLs, the MLet should delegate
        to its containing MBeanServer's [`ClassLoaderRepository`](ClassLoaderRepository.md "interface in javax.management.loading").