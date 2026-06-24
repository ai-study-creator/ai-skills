Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class SecureClassLoader

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.ClassLoader](../lang/ClassLoader.md "class in java.lang")

java.security.SecureClassLoader

Direct Known Subclasses:
:   `URLClassLoader`

---

public class SecureClassLoader
extends [ClassLoader](../lang/ClassLoader.md "class in java.lang")

This class extends `ClassLoader` with additional support for defining
classes with an associated code source and permissions which are
retrieved by the system policy by default.

Since:
:   1.2

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SecureClassLoader()`

  Creates a new `SecureClassLoader` using the default parent class
  loader for delegation.

  `protected`

  `SecureClassLoader(ClassLoader parent)`

  Creates a new `SecureClassLoader` using the specified parent
  class loader for delegation.

  `protected`

  `SecureClassLoader(String name,
  ClassLoader parent)`

  Creates a new `SecureClassLoader` of the specified name and
  using the specified parent class loader for delegation.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected final Class<?>`

  `defineClass(String name,
  byte[] b,
  int off,
  int len,
  CodeSource cs)`

  Converts an array of bytes into an instance of class `Class`,
  with an optional CodeSource.

  `protected final Class<?>`

  `defineClass(String name,
  ByteBuffer b,
  CodeSource cs)`

  Converts a [`ByteBuffer`](../nio/ByteBuffer.md "class in java.nio")
  into an instance of class `Class`, with an optional CodeSource.

  `protected PermissionCollection`

  `getPermissions(CodeSource codesource)`

  Returns the permissions for the given CodeSource object.

  ### Methods inherited from class java.lang.[ClassLoader](../lang/ClassLoader.md "class in java.lang")

  `clearAssertionStatus, defineClass, defineClass, defineClass, defineClass, definePackage, findClass, findClass, findLibrary, findLoadedClass, findResource, findResource, findResources, findSystemClass, getClassLoadingLock, getDefinedPackage, getDefinedPackages, getName, getPackage, getPackages, getParent, getPlatformClassLoader, getResource, getResourceAsStream, getResources, getSystemClassLoader, getSystemResource, getSystemResourceAsStream, getSystemResources, getUnnamedModule, isRegisteredAsParallelCapable, loadClass, loadClass, registerAsParallelCapable, resolveClass, resources, setClassAssertionStatus, setDefaultAssertionStatus, setPackageAssertionStatus, setSigners`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SecureClassLoader

    protected SecureClassLoader([ClassLoader](../lang/ClassLoader.md "class in java.lang") parent)

    Creates a new `SecureClassLoader` using the specified parent
    class loader for delegation.

    If there is a security manager, this method first
    calls the security manager's `checkCreateClassLoader`
    method to ensure creation of a class loader is allowed.

    Parameters:
    :   `parent` - the parent ClassLoader

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkCreateClassLoader` method doesn't allow
        creation of a class loader.

    See Also:
    :   - [`SecurityManager.checkCreateClassLoader()`](../lang/SecurityManager.md#checkCreateClassLoader())
  + ### SecureClassLoader

    protected SecureClassLoader()

    Creates a new `SecureClassLoader` using the default parent class
    loader for delegation.

    If there is a security manager, this method first
    calls the security manager's `checkCreateClassLoader`
    method to ensure creation of a class loader is allowed.

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkCreateClassLoader` method doesn't allow
        creation of a class loader.

    See Also:
    :   - [`SecurityManager.checkCreateClassLoader()`](../lang/SecurityManager.md#checkCreateClassLoader())
  + ### SecureClassLoader

    protected SecureClassLoader([String](../lang/String.md "class in java.lang") name,
    [ClassLoader](../lang/ClassLoader.md "class in java.lang") parent)

    Creates a new `SecureClassLoader` of the specified name and
    using the specified parent class loader for delegation.

    Parameters:
    :   `name` - class loader name; or `null` if not named
    :   `parent` - the parent class loader

    Throws:
    :   `IllegalArgumentException` - if the given name is empty.
    :   `SecurityException` - if a security manager exists and its
        [`SecurityManager.checkCreateClassLoader()`](../lang/SecurityManager.md#checkCreateClassLoader()) method
        doesn't allow creation of a class loader.

    Since:
    :   9
* ## Method Details

  + ### defineClass

    protected final [Class](../lang/Class.md "class in java.lang")<?> defineClass([String](../lang/String.md "class in java.lang") name,
    byte[] b,
    int off,
    int len,
    [CodeSource](CodeSource.md "class in java.security") cs)

    Converts an array of bytes into an instance of class `Class`,
    with an optional CodeSource. Before the
    class can be used it must be resolved.

    If a non-null CodeSource is supplied a ProtectionDomain is
    constructed and associated with the class being defined.

    Parameters:
    :   `name` - the expected name of the class, or `null`
        if not known, using '.' and not '/' as the separator
        and without a trailing ".class" suffix.
    :   `b` - the bytes that make up the class data. The bytes in
        positions `off` through `off+len-1`
        should have the format of a valid class file as defined by
        The Java Virtual Machine Specification.
    :   `off` - the start offset in `b` of the class data
    :   `len` - the length of the class data
    :   `cs` - the associated CodeSource, or `null` if none

    Returns:
    :   the `Class` object created from the data,
        and optional CodeSource.

    Throws:
    :   `ClassFormatError` - if the data did not contain a valid class
    :   `IndexOutOfBoundsException` - if either `off` or
        `len` is negative, or if
        `off+len` is greater than `b.length`.
    :   `SecurityException` - if an attempt is made to add this class
        to a package that contains classes that were signed by
        a different set of certificates than this class, or if
        the class name begins with "java.".
  + ### defineClass

    protected final [Class](../lang/Class.md "class in java.lang")<?> defineClass([String](../lang/String.md "class in java.lang") name,
    [ByteBuffer](../nio/ByteBuffer.md "class in java.nio") b,
    [CodeSource](CodeSource.md "class in java.security") cs)

    Converts a [`ByteBuffer`](../nio/ByteBuffer.md "class in java.nio")
    into an instance of class `Class`, with an optional CodeSource.
    Before the class can be used it must be resolved.

    If a non-null CodeSource is supplied a ProtectionDomain is
    constructed and associated with the class being defined.

    Parameters:
    :   `name` - the expected name of the class, or `null`
        if not known, using '.' and not '/' as the separator
        and without a trailing ".class" suffix.
    :   `b` - the bytes that make up the class data. The bytes from positions
        `b.position()` through `b.position() + b.limit() -1`
        should have the format of a valid class file as defined by
        The Java Virtual Machine Specification.
    :   `cs` - the associated CodeSource, or `null` if none

    Returns:
    :   the `Class` object created from the data,
        and optional CodeSource.

    Throws:
    :   `ClassFormatError` - if the data did not contain a valid class
    :   `SecurityException` - if an attempt is made to add this class
        to a package that contains classes that were signed by
        a different set of certificates than this class, or if
        the class name begins with "java.".

    Since:
    :   1.5
  + ### getPermissions

    protected [PermissionCollection](PermissionCollection.md "class in java.security") getPermissions([CodeSource](CodeSource.md "class in java.security") codesource)

    Returns the permissions for the given CodeSource object.

    This method is invoked by the defineClass method which takes
    a CodeSource as an argument when it is constructing the
    ProtectionDomain for the class being defined.

    Parameters:
    :   `codesource` - the codesource.

    Returns:
    :   the permissions granted to the codesource.