Module [java.management](../../../module-summary.md)

Package [javax.management.loading](package-summary.md)

# Interface ClassLoaderRepository

---

public interface ClassLoaderRepository

Instances of this interface are used to keep the list of ClassLoaders
registered in an MBean Server.
They provide the necessary methods to load classes using the registered
ClassLoaders.

The first ClassLoader in a `ClassLoaderRepository` is
always the MBean Server's own ClassLoader.

When an MBean is registered in an MBean Server, if it is of a
subclass of [`ClassLoader`](../../../../java.base/java/lang/ClassLoader.md "class in java.lang") and if it does not
implement the interface [`PrivateClassLoader`](PrivateClassLoader.md "interface in javax.management.loading"), it is added to
the end of the MBean Server's `ClassLoaderRepository`.
If it is subsequently unregistered from the MBean Server, it is
removed from the `ClassLoaderRepository`.

The order of MBeans in the `ClassLoaderRepository` is
significant. For any two MBeans *X* and *Y* in the
`ClassLoaderRepository`, *X* must appear before
*Y* if the registration of *X* was completed before
the registration of *Y* started. If *X* and
*Y* were registered concurrently, their order is
indeterminate. The registration of an MBean corresponds to the
call to [`MBeanServer.registerMBean(java.lang.Object, javax.management.ObjectName)`](../MBeanServer.md#registerMBean(java.lang.Object,javax.management.ObjectName)) or one of the [`MBeanServer`](../MBeanServer.md "interface in javax.management")`.createMBean` methods.

Since:
:   1.5

See Also:
:   * [`MBeanServerFactory`](../MBeanServerFactory.md "class in javax.management")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Class<?>`

  `loadClass(String className)`

  Load the given class name through the list of class loaders.

  `Class<?>`

  `loadClassBefore(ClassLoader stop,
  String className)`

  Load the given class name through the list of class loaders,
  stopping at the given one.

  `Class<?>`

  `loadClassWithout(ClassLoader exclude,
  String className)`

  Load the given class name through the list of class loaders,
  excluding the given one.

* ## Method Details

  + ### loadClass

    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> loadClass([String](../../../../java.base/java/lang/String.md "class in java.lang") className)
    throws [ClassNotFoundException](../../../../java.base/java/lang/ClassNotFoundException.md "class in java.lang")

    Load the given class name through the list of class loaders.
    Each ClassLoader in turn from the ClassLoaderRepository is
    asked to load the class via its [`ClassLoader.loadClass(String)`](../../../../java.base/java/lang/ClassLoader.md#loadClass(java.lang.String)) method. If it successfully
    returns a [`Class`](../../../../java.base/java/lang/Class.md "class in java.lang") object, that is the result of this
    method. If it throws a [`ClassNotFoundException`](../../../../java.base/java/lang/ClassNotFoundException.md "class in java.lang"), the
    search continues with the next ClassLoader. If it throws
    another exception, the exception is propagated from this
    method. If the end of the list is reached, a [`ClassNotFoundException`](../../../../java.base/java/lang/ClassNotFoundException.md "class in java.lang") is thrown.

    Parameters:
    :   `className` - The name of the class to be loaded.

    Returns:
    :   the loaded class.

    Throws:
    :   `ClassNotFoundException` - The specified class could not be
        found.
  + ### loadClassWithout

    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> loadClassWithout([ClassLoader](../../../../java.base/java/lang/ClassLoader.md "class in java.lang") exclude,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") className)
    throws [ClassNotFoundException](../../../../java.base/java/lang/ClassNotFoundException.md "class in java.lang")

    Load the given class name through the list of class loaders,
    excluding the given one. Each ClassLoader in turn from the
    ClassLoaderRepository, except `exclude`, is asked to
    load the class via its [`ClassLoader.loadClass(String)`](../../../../java.base/java/lang/ClassLoader.md#loadClass(java.lang.String))
    method. If it successfully returns a [`Class`](../../../../java.base/java/lang/Class.md "class in java.lang") object,
    that is the result of this method. If it throws a [`ClassNotFoundException`](../../../../java.base/java/lang/ClassNotFoundException.md "class in java.lang"), the search continues with the next
    ClassLoader. If it throws another exception, the exception is
    propagated from this method. If the end of the list is
    reached, a [`ClassNotFoundException`](../../../../java.base/java/lang/ClassNotFoundException.md "class in java.lang") is thrown.

    Be aware that if a ClassLoader in the ClassLoaderRepository
    calls this method from its [`loadClass`](../../../../java.base/java/lang/ClassLoader.md#loadClass(java.lang.String)) method, it exposes itself to a deadlock if another
    ClassLoader in the ClassLoaderRepository does the same thing at
    the same time. The [`loadClassBefore(java.lang.ClassLoader, java.lang.String)`](#loadClassBefore(java.lang.ClassLoader,java.lang.String)) method is
    recommended to avoid the risk of deadlock.

    Parameters:
    :   `exclude` - The class loader to be excluded. May be null,
        in which case this method is equivalent to [`loadClass(className)`](#loadClass(java.lang.String)).
    :   `className` - The name of the class to be loaded.

    Returns:
    :   the loaded class.

    Throws:
    :   `ClassNotFoundException` - The specified class could not
        be found.
  + ### loadClassBefore

    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> loadClassBefore([ClassLoader](../../../../java.base/java/lang/ClassLoader.md "class in java.lang") stop,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") className)
    throws [ClassNotFoundException](../../../../java.base/java/lang/ClassNotFoundException.md "class in java.lang")

    Load the given class name through the list of class loaders,
    stopping at the given one. Each ClassLoader in turn from the
    ClassLoaderRepository is asked to load the class via its [`ClassLoader.loadClass(String)`](../../../../java.base/java/lang/ClassLoader.md#loadClass(java.lang.String)) method. If it successfully
    returns a [`Class`](../../../../java.base/java/lang/Class.md "class in java.lang") object, that is the result of this
    method. If it throws a [`ClassNotFoundException`](../../../../java.base/java/lang/ClassNotFoundException.md "class in java.lang"), the
    search continues with the next ClassLoader. If it throws
    another exception, the exception is propagated from this
    method. If the search reaches `stop` or the end of
    the list, a [`ClassNotFoundException`](../../../../java.base/java/lang/ClassNotFoundException.md "class in java.lang") is thrown.

    Typically this method is called from the [`loadClass`](../../../../java.base/java/lang/ClassLoader.md#loadClass(java.lang.String)) method of
    `stop`, to consult loaders that appear before it
    in the `ClassLoaderRepository`. By stopping the
    search as soon as `stop` is reached, a potential
    deadlock with concurrent class loading is avoided.

    Parameters:
    :   `stop` - The class loader at which to stop. May be null, in
        which case this method is equivalent to [`loadClass(className)`](#loadClass(java.lang.String)).
    :   `className` - The name of the class to be loaded.

    Returns:
    :   the loaded class.

    Throws:
    :   `ClassNotFoundException` - The specified class could not
        be found.