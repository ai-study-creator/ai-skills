Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class Module

[java.lang.Object](Object.md "class in java.lang")

java.lang.Module

All Implemented Interfaces:
:   `AnnotatedElement`

---

public final class Module
extends [Object](Object.md "class in java.lang")
implements [AnnotatedElement](reflect/AnnotatedElement.md "interface in java.lang.reflect")

Represents a run-time module, either [`named`](#isNamed()) or unnamed.

Named modules have a [`name`](#getName()) and are constructed by the
Java Virtual Machine when a graph of modules is defined to the Java virtual
machine to create a [module layer](ModuleLayer.md "class in java.lang").

An unnamed module does not have a name. There is an unnamed module for
each [`ClassLoader`](ClassLoader.md "class in java.lang"), obtained by invoking its [`getUnnamedModule`](ClassLoader.md#getUnnamedModule()) method. All types that are
not in a named module are members of their defining class loader's unnamed
module.

The package names that are parameters or returned by methods defined in
this class are the fully-qualified names of the packages as defined in
section of The Java Language Specification, for
example, `"java.lang"`.

Unless otherwise specified, passing a `null` argument to a method
in this class causes a [`NullPointerException`](NullPointerException.md "class in java.lang") to
be thrown.

Since:
:   9

See Also:
:   * [`Class.getModule()`](Class.md#getModule())

* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Module`

  `addExports(String pn,
  Module other)`

  If the caller's module is this module then update this module to export
  the given package to the given module.

  `Module`

  `addOpens(String pn,
  Module other)`

  If this module has *opened* a package to at least the caller
  module then update this module to open the package to the given module.

  `Module`

  `addReads(Module other)`

  If the caller's module is this module then update this module to read
  the given module.

  `Module`

  `addUses(Class<?> service)`

  If the caller's module is this module then update this module to add a
  service dependence on the given service type.

  `boolean`

  `canRead(Module other)`

  Indicates if this module reads the given module.

  `boolean`

  `canUse(Class<?> service)`

  Indicates if this module has a service dependence on the given service
  type.

  `<T extends Annotation>  
  T`

  `getAnnotation(Class<T> annotationClass)`

  Returns this element's annotation for the specified type if
  such an annotation is *present*, else null.

  `Annotation[]`

  `getAnnotations()`

  Returns annotations that are *present* on this element.

  `ClassLoader`

  `getClassLoader()`

  Returns the `ClassLoader` for this module.

  `Annotation[]`

  `getDeclaredAnnotations()`

  Returns annotations that are *directly present* on this element.

  `ModuleDescriptor`

  `getDescriptor()`

  Returns the module descriptor for this module or `null` if this
  module is an unnamed module.

  `ModuleLayer`

  `getLayer()`

  Returns the module layer that contains this module or `null` if
  this module is not in a module layer.

  `String`

  `getName()`

  Returns the module name or `null` if this module is an unnamed
  module.

  `Set<String>`

  `getPackages()`

  Returns the set of package names for the packages in this module.

  `InputStream`

  `getResourceAsStream(String name)`

  Returns an input stream for reading a resource in this module.

  `boolean`

  `isExported(String pn)`

  Returns `true` if this module exports the given package
  unconditionally.

  `boolean`

  `isExported(String pn,
  Module other)`

  Returns `true` if this module exports the given package to at
  least the given module.

  `boolean`

  `isNamed()`

  Returns `true` if this module is a named module.

  `boolean`

  `isNativeAccessEnabled()`

  Preview.

  Returns `true` if this module can access
  [*restricted*](foreign/package-summary.md#restricted) methods.

  `boolean`

  `isOpen(String pn)`

  Returns `true` if this module has *opened* a package
  unconditionally.

  `boolean`

  `isOpen(String pn,
  Module other)`

  Returns `true` if this module has *opened* a package to at
  least the given module.

  `String`

  `toString()`

  Returns the string representation of this module.

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.lang.reflect.[AnnotatedElement](reflect/AnnotatedElement.md "interface in java.lang.reflect")

  `getAnnotationsByType, getDeclaredAnnotation, getDeclaredAnnotationsByType, isAnnotationPresent`

* ## Method Details

  + ### isNamed

    public boolean isNamed()

    Returns `true` if this module is a named module.

    Returns:
    :   `true` if this is a named module

    See Also:
    :   - [`ClassLoader.getUnnamedModule()`](ClassLoader.md#getUnnamedModule())
  + ### getName

    public [String](String.md "class in java.lang") getName()

    Returns the module name or `null` if this module is an unnamed
    module.

    Returns:
    :   The module name
  + ### getClassLoader

    public [ClassLoader](ClassLoader.md "class in java.lang") getClassLoader()

    Returns the `ClassLoader` for this module.

    If there is a security manager then its `checkPermission`
    method if first called with a `RuntimePermission("getClassLoader")`
    permission to check that the caller is allowed to get access to the
    class loader.

    Returns:
    :   The class loader for this module

    Throws:
    :   `SecurityException` - If denied by the security manager
  + ### getDescriptor

    public [ModuleDescriptor](module/ModuleDescriptor.md "class in java.lang.module") getDescriptor()

    Returns the module descriptor for this module or `null` if this
    module is an unnamed module.

    Returns:
    :   The module descriptor for this module
  + ### getLayer

    public [ModuleLayer](ModuleLayer.md "class in java.lang") getLayer()

    Returns the module layer that contains this module or `null` if
    this module is not in a module layer.
    A module layer contains named modules and therefore this method always
    returns `null` when invoked on an unnamed module.

    [Dynamic modules](reflect/Proxy.md#dynamicmodule) are
    named modules that are generated at runtime. A dynamic module may or may
    not be in a module layer.

    Returns:
    :   The module layer that contains this module

    See Also:
    :   - [`Proxy`](reflect/Proxy.md "class in java.lang.reflect")
  + ### isNativeAccessEnabled

    public boolean isNativeAccessEnabled()

    `isNativeAccessEnabled` is a preview API of the Java platform.

    Programs can only use `isNativeAccessEnabled` when preview features are enabled.

    Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

    Returns `true` if this module can access
    [*restricted*](foreign/package-summary.md#restricted) methods.

    Returns:
    :   `true` if this module can access *restricted* methods.

    Since:
    :   20
  + ### canRead

    public boolean canRead([Module](Module.md "class in java.lang") other)

    Indicates if this module reads the given module. This method returns
    `true` if invoked to test if this module reads itself. It also
    returns `true` if invoked on an unnamed module (as unnamed
    modules read all modules).

    Parameters:
    :   `other` - The other module

    Returns:
    :   `true` if this module reads `other`

    See Also:
    :   - [`addReads(Module)`](#addReads(java.lang.Module))
  + ### addReads

    public [Module](Module.md "class in java.lang") addReads([Module](Module.md "class in java.lang") other)

    If the caller's module is this module then update this module to read
    the given module.
    This method is a no-op if `other` is this module (all modules read
    themselves), this module is an unnamed module (as unnamed modules read
    all modules), or this module already reads `other`.

    Parameters:
    :   `other` - The other module

    Returns:
    :   this module

    Throws:
    :   `IllegalCallerException` - If this is a named module and the caller's module is not this
        module

    See Also:
    :   - [`canRead(java.lang.Module)`](#canRead(java.lang.Module))
  + ### isExported

    public boolean isExported([String](String.md "class in java.lang") pn,
    [Module](Module.md "class in java.lang") other)

    Returns `true` if this module exports the given package to at
    least the given module.

    This method returns `true` if invoked to test if a package in
    this module is exported to itself. It always returns `true` when
    invoked on an unnamed module. A package that is [`open`](#isOpen(java.lang.String,java.lang.Module)) to
    the given module is considered exported to that module at run-time and
    so this method returns `true` if the package is open to the given
    module.

    This method does not check if the given module reads this module.

    Parameters:
    :   `pn` - The package name
    :   `other` - The other module

    Returns:
    :   `true` if this module exports the package to at least the
        given module

    See Also:
    :   - [`ModuleDescriptor.exports()`](module/ModuleDescriptor.md#exports())
        - [`addExports(String,Module)`](#addExports(java.lang.String,java.lang.Module))
  + ### isOpen

    public boolean isOpen([String](String.md "class in java.lang") pn,
    [Module](Module.md "class in java.lang") other)

    Returns `true` if this module has *opened* a package to at
    least the given module.

    This method returns `true` if invoked to test if a package in
    this module is open to itself. It returns `true` when invoked on an
    [`open`](module/ModuleDescriptor.md#isOpen()) module with a package in the module.
    It always returns `true` when invoked on an unnamed module.

    This method does not check if the given module reads this module.

    Parameters:
    :   `pn` - The package name
    :   `other` - The other module

    Returns:
    :   `true` if this module has *opened* the package
        to at least the given module

    See Also:
    :   - [`ModuleDescriptor.opens()`](module/ModuleDescriptor.md#opens())
        - [`addOpens(String,Module)`](#addOpens(java.lang.String,java.lang.Module))
        - [`AccessibleObject.setAccessible(boolean)`](reflect/AccessibleObject.md#setAccessible(boolean))
        - [`MethodHandles.privateLookupIn(java.lang.Class<?>, java.lang.invoke.MethodHandles.Lookup)`](invoke/MethodHandles.md#privateLookupIn(java.lang.Class,java.lang.invoke.MethodHandles.Lookup))
  + ### isExported

    public boolean isExported([String](String.md "class in java.lang") pn)

    Returns `true` if this module exports the given package
    unconditionally.

    This method always returns `true` when invoked on an unnamed
    module. A package that is [`opened`](#isOpen(java.lang.String)) unconditionally
    is considered exported unconditionally at run-time and so this method
    returns `true` if the package is opened unconditionally.

    This method does not check if the given module reads this module.

    Parameters:
    :   `pn` - The package name

    Returns:
    :   `true` if this module exports the package unconditionally

    See Also:
    :   - [`ModuleDescriptor.exports()`](module/ModuleDescriptor.md#exports())
  + ### isOpen

    public boolean isOpen([String](String.md "class in java.lang") pn)

    Returns `true` if this module has *opened* a package
    unconditionally.

    This method always returns `true` when invoked on an unnamed
    module. Additionally, it always returns `true` when invoked on an
    [`open`](module/ModuleDescriptor.md#isOpen()) module with a package in the
    module.

    This method does not check if the given module reads this module.

    Parameters:
    :   `pn` - The package name

    Returns:
    :   `true` if this module has *opened* the package
        unconditionally

    See Also:
    :   - [`ModuleDescriptor.opens()`](module/ModuleDescriptor.md#opens())
        - [`AccessibleObject.setAccessible(boolean)`](reflect/AccessibleObject.md#setAccessible(boolean))
        - [`MethodHandles.privateLookupIn(java.lang.Class<?>, java.lang.invoke.MethodHandles.Lookup)`](invoke/MethodHandles.md#privateLookupIn(java.lang.Class,java.lang.invoke.MethodHandles.Lookup))
  + ### addExports

    public [Module](Module.md "class in java.lang") addExports([String](String.md "class in java.lang") pn,
    [Module](Module.md "class in java.lang") other)

    If the caller's module is this module then update this module to export
    the given package to the given module.

    This method has no effect if the package is already exported (or
    *open*) to the given module.

    Parameters:
    :   `pn` - The package name
    :   `other` - The module

    Returns:
    :   this module

    Throws:
    :   `IllegalArgumentException` - If `pn` is `null`, or this is a named module and the
        package `pn` is not a package in this module
    :   `IllegalCallerException` - If this is a named module and the caller's module is not this
        module

    See Also:
    :   - [`isExported(String,Module)`](#isExported(java.lang.String,java.lang.Module))
  + ### addOpens

    public [Module](Module.md "class in java.lang") addOpens([String](String.md "class in java.lang") pn,
    [Module](Module.md "class in java.lang") other)

    If this module has *opened* a package to at least the caller
    module then update this module to open the package to the given module.
    Opening a package with this method allows all types in the package,
    and all their members, not just public types and their public members,
    to be reflected on by the given module when using APIs that support
    private access or a way to bypass or suppress default Java language
    access control checks.

    This method has no effect if the package is already *open*
    to the given module.

    Parameters:
    :   `pn` - The package name
    :   `other` - The module

    Returns:
    :   this module

    Throws:
    :   `IllegalArgumentException` - If `pn` is `null`, or this is a named module and the
        package `pn` is not a package in this module
    :   `IllegalCallerException` - If this is a named module and this module has not opened the
        package to at least the caller's module

    See Also:
    :   - [`isOpen(String,Module)`](#isOpen(java.lang.String,java.lang.Module))
        - [`AccessibleObject.setAccessible(boolean)`](reflect/AccessibleObject.md#setAccessible(boolean))
        - [`MethodHandles.privateLookupIn(java.lang.Class<?>, java.lang.invoke.MethodHandles.Lookup)`](invoke/MethodHandles.md#privateLookupIn(java.lang.Class,java.lang.invoke.MethodHandles.Lookup))
  + ### addUses

    public [Module](Module.md "class in java.lang") addUses([Class](Class.md "class in java.lang")<?> service)

    If the caller's module is this module then update this module to add a
    service dependence on the given service type. This method is intended
    for use by frameworks that invoke [`ServiceLoader`](../util/ServiceLoader.md "class in java.util") on behalf of other modules or where the framework is
    passed a reference to the service type by other code. This method is
    a no-op when invoked on an unnamed module or an automatic module.

    This method does not cause [`resolveAndBind`](module/Configuration.md#resolveAndBind(java.lang.module.ModuleFinder,java.lang.module.ModuleFinder,java.util.Collection)) to be re-run.

    Parameters:
    :   `service` - The service type

    Returns:
    :   this module

    Throws:
    :   `IllegalCallerException` - If this is a named module and the caller's module is not this
        module

    See Also:
    :   - [`canUse(Class)`](#canUse(java.lang.Class))
        - [`ModuleDescriptor.uses()`](module/ModuleDescriptor.md#uses())
  + ### canUse

    public boolean canUse([Class](Class.md "class in java.lang")<?> service)

    Indicates if this module has a service dependence on the given service
    type. This method always returns `true` when invoked on an unnamed
    module or an automatic module.

    Parameters:
    :   `service` - The service type

    Returns:
    :   `true` if this module uses service type `st`

    See Also:
    :   - [`addUses(Class)`](#addUses(java.lang.Class))
  + ### getPackages

    public [Set](../util/Set.md "interface in java.util")<[String](String.md "class in java.lang")> getPackages()

    Returns the set of package names for the packages in this module.

    For named modules, the returned set contains an element for each
    package in the module.

    For unnamed modules, the returned set contains an element for
    each package that [`has been defined`](ClassLoader.md#getDefinedPackages())
    in the unnamed module.

    Returns:
    :   the set of the package names of the packages in this module
  + ### getAnnotation

    public <T extends [Annotation](annotation/Annotation.md "interface in java.lang.annotation")> T getAnnotation([Class](Class.md "class in java.lang")<T> annotationClass)

    Returns this element's annotation for the specified type if
    such an annotation is *present*, else null.
    This method returns `null` when invoked on an unnamed module.

    Note that any annotation returned by this method is a
    declaration annotation.

    Specified by:
    :   `getAnnotation` in interface `AnnotatedElement`

    Type Parameters:
    :   `T` - the type of the annotation to query for and return if present

    Parameters:
    :   `annotationClass` - the Class object corresponding to the
        annotation type

    Returns:
    :   this element's annotation for the specified annotation type if
        present on this element, else null
  + ### getAnnotations

    public [Annotation](annotation/Annotation.md "interface in java.lang.annotation")[] getAnnotations()

    Returns annotations that are *present* on this element.
    If there are no annotations *present* on this element, the return
    value is an array of length 0.
    The caller of this method is free to modify the returned array; it will
    have no effect on the arrays returned to other callers.
    This method returns an empty array when invoked on an unnamed module.

    Note that any annotations returned by this method are
    declaration annotations.

    Specified by:
    :   `getAnnotations` in interface `AnnotatedElement`

    Returns:
    :   annotations present on this element
  + ### getDeclaredAnnotations

    public [Annotation](annotation/Annotation.md "interface in java.lang.annotation")[] getDeclaredAnnotations()

    Returns annotations that are *directly present* on this element.
    This method ignores inherited annotations.
    If there are no annotations *directly present* on this element,
    the return value is an array of length 0.
    The caller of this method is free to modify the returned array; it will
    have no effect on the arrays returned to other callers.
    This method returns an empty array when invoked on an unnamed module.

    Note that any annotations returned by this method are
    declaration annotations.

    Specified by:
    :   `getDeclaredAnnotations` in interface `AnnotatedElement`

    Returns:
    :   annotations directly present on this element
  + ### getResourceAsStream

    public [InputStream](../io/InputStream.md "class in java.io") getResourceAsStream([String](String.md "class in java.lang") name)
    throws [IOException](../io/IOException.md "class in java.io")

    Returns an input stream for reading a resource in this module.
    The `name` parameter is a `'/'`-separated path name that
    identifies the resource. As with [`Class.getResourceAsStream`](Class.md#getResourceAsStream(java.lang.String)), this method delegates to the module's class
    loader [`findResource(String,String)`](ClassLoader.md#findResource(java.lang.String,java.lang.String)) method, invoking it with the module name
    (or `null` when the module is unnamed) and the name of the
    resource. If the resource name has a leading slash then it is dropped
    before delegation.

    A resource in a named module may be *encapsulated* so that
    it cannot be located by code in other modules. Whether a resource can be
    located or not is determined as follows:

    - If the resource name ends with "`.class`" then it is not
      encapsulated.
    - A *package name* is derived from the resource name. If
      the package name is a [package](#getPackages()) in the
      module then the resource can only be located by the caller of this
      method when the package is [open](#isOpen(java.lang.String,java.lang.Module))
      to at least the caller's module. If the resource is not in a
      package in the module then the resource is not encapsulated.

    In the above, the *package name* for a resource is derived
    from the subsequence of characters that precedes the last `'/'` in
    the name and then replacing each `'/'` character in the subsequence
    with `'.'`. A leading slash is ignored when deriving the package
    name. As an example, the package name derived for a resource named
    "`a/b/c/foo.properties`" is "`a.b.c`". A resource name
    with the name "`META-INF/MANIFEST.MF`" is never encapsulated
    because "`META-INF`" is not a legal package name.

    This method returns `null` if the resource is not in this
    module, the resource is encapsulated and cannot be located by the caller,
    or access to the resource is denied by the security manager.

    Parameters:
    :   `name` - The resource name

    Returns:
    :   An input stream for reading the resource or `null`

    Throws:
    :   `IOException` - If an I/O error occurs

    See Also:
    :   - [`Class.getResourceAsStream(String)`](Class.md#getResourceAsStream(java.lang.String))
  + ### toString

    public [String](String.md "class in java.lang") toString()

    Returns the string representation of this module. For a named module,
    the representation is the string `"module"`, followed by a space,
    and then the module name. For an unnamed module, the representation is
    the string `"unnamed module"`, followed by a space, and then an
    implementation specific string that identifies the unnamed module.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   The string representation of this module