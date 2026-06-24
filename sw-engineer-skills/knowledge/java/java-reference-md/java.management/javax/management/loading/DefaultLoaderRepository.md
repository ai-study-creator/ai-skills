Module [java.management](../../../module-summary.md)

Package [javax.management.loading](package-summary.md)

# Class DefaultLoaderRepository

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.loading.DefaultLoaderRepository

---

[@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
public class DefaultLoaderRepository
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

Deprecated.

Use
[`MBeanServer.getClassLoaderRepository()`](../MBeanServer.md#getClassLoaderRepository())
instead.

Keeps the list of Class Loaders registered in the MBean Server.
It provides the necessary methods to load classes using the registered
Class Loaders.

This deprecated class is maintained for compatibility. In
previous versions of JMX, there was one
`DefaultLoaderRepository` shared by all MBean servers.
As of JMX 1.2, that functionality is approximated by using [`MBeanServerFactory.findMBeanServer(java.lang.String)`](../MBeanServerFactory.md#findMBeanServer(java.lang.String)) to find all known MBean
servers, and consulting the [`ClassLoaderRepository`](ClassLoaderRepository.md "interface in javax.management.loading") of each
one. It is strongly recommended that code referencing
`DefaultLoaderRepository` be rewritten.

Since:
:   1.5

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DefaultLoaderRepository()`

  Deprecated.

  Constructs a `DefaultLoaderRepository`.
* ## Method Summary

  All MethodsStatic MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `static Class<?>`

  `loadClass(String className)`

  Deprecated.

  Go through the list of class loaders and try to load the requested
  class.

  `static Class<?>`

  `loadClassWithout(ClassLoader loader,
  String className)`

  Deprecated.

  Go through the list of class loaders but exclude the given
  class loader, then try to load
  the requested class.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DefaultLoaderRepository

    public DefaultLoaderRepository()

    Deprecated.

    Constructs a `DefaultLoaderRepository`.
* ## Method Details

  + ### loadClass

    public static [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> loadClass([String](../../../../java.base/java/lang/String.md "class in java.lang") className)
    throws [ClassNotFoundException](../../../../java.base/java/lang/ClassNotFoundException.md "class in java.lang")

    Deprecated.

    Go through the list of class loaders and try to load the requested
    class.
    The method will stop as soon as the class is found. If the class
    is not found the method will throw a `ClassNotFoundException`
    exception.

    Parameters:
    :   `className` - The name of the class to be loaded.

    Returns:
    :   the loaded class.

    Throws:
    :   `ClassNotFoundException` - The specified class could not be
        found.
  + ### loadClassWithout

    public static [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> loadClassWithout([ClassLoader](../../../../java.base/java/lang/ClassLoader.md "class in java.lang") loader,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") className)
    throws [ClassNotFoundException](../../../../java.base/java/lang/ClassNotFoundException.md "class in java.lang")

    Deprecated.

    Go through the list of class loaders but exclude the given
    class loader, then try to load
    the requested class.
    The method will stop as soon as the class is found. If the class
    is not found the method will throw a `ClassNotFoundException`
    exception.

    Parameters:
    :   `loader` - The class loader to be excluded.
    :   `className` - The name of the class to be loaded.

    Returns:
    :   the loaded class.

    Throws:
    :   `ClassNotFoundException` - The specified class could not be
        found.