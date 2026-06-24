Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class Package

[java.lang.Object](Object.md "class in java.lang")

java.lang.Package

All Implemented Interfaces:
:   `AnnotatedElement`

---

public class Package
extends [Object](Object.md "class in java.lang")
implements [AnnotatedElement](reflect/AnnotatedElement.md "interface in java.lang.reflect")

Represents metadata about a run-time package associated with a class loader.
Metadata includes annotations, versioning, and sealing.

Annotations for the run-time package are read from `package-info.class`
at the same code source as classes in the run-time package.

The set of classes that make up the run-time package may implement a
particular specification. The specification title, version, and vendor
(indicating the owner/maintainer of the specification) can be provided
when the `Package` is defined. An application can ask if the
`Package` is compatible with a particular specification version
by using the [`Package.isCompatibleWith(String)`](#isCompatibleWith(java.lang.String))
method. In addition, information about the actual classes that make up the
run-time package can be provided when the `Package` is defined.
This information consists of an implementation title, version, and vendor
(indicating the supplier of the classes).

A `Package` may be explicitly defined with
the [`ClassLoader.definePackage(String, String, String, String, String, String, String, URL)`](ClassLoader.md#definePackage(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.net.URL)) method.
The caller supplies the specification and implementation titles, versions, and
vendors. The caller also indicates whether the package is
[sealed](../util/jar/Attributes.Name.md#SEALED).
If a `Package` is not explicitly defined for a run-time package when
a class in that run-time package is defined, then a `Package` is
automatically defined by the class's defining class loader, as follows.

A `Package` automatically defined for classes in a named module has
the following properties:

* The name of the package is derived from the [binary names](Class.md#getName())
  of the classes. Since classes in a named module must be in a named package,
  the derived name is never empty.
* The package is sealed with the [module location](module/ModuleReference.md#location()) as the code source, if known.
* The specification and implementation titles, versions, and vendors
  are unspecified.
* Any annotations on the package are read from `package-info.class`
  as specified above.

A `Package` automatically defined for classes in an unnamed module
has the following properties:

* The name of the package is either `""` (for classes in an unnamed package)
  or derived from the [binary names](Class.md#getName()) of the classes
  (for classes in a named package).
* The package is not sealed.
* The specification and implementation titles, versions, and vendors
  are unspecified.
* Any annotations on the package are read from `package-info.class`
  as specified above.

A `Package` can be obtained with the [`Package.getPackage(String)`](#getPackage(java.lang.String)) and [`ClassLoader.getDefinedPackage(String)`](ClassLoader.md#getDefinedPackage(java.lang.String)) methods.
Every `Package` defined by a class loader can be obtained
with the [`Package.getPackages()`](#getPackages()) and
[`ClassLoader.getDefinedPackages()`](ClassLoader.md#getDefinedPackages()) methods.

Since:
:   1.2

See Also:
:   * [The JAR File Specification: Package Sealing](../../../../specs/jar/jar.md#package-sealing)
    * [`ClassLoader.definePackage(String, String, String, String, String, String, String, URL)`](ClassLoader.md#definePackage(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.net.URL))

* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `<A extends Annotation>  
  A`

  `getAnnotation(Class<A> annotationClass)`

  Returns this element's annotation for the specified type if
  such an annotation is *present*, else null.

  `Annotation[]`

  `getAnnotations()`

  Returns annotations that are *present* on this element.

  `<A extends Annotation>  
  A[]`

  `getAnnotationsByType(Class<A> annotationClass)`

  Returns annotations that are *associated* with this element.

  `<A extends Annotation>  
  A`

  `getDeclaredAnnotation(Class<A> annotationClass)`

  Returns this element's annotation for the specified type if
  such an annotation is *directly present*, else null.

  `Annotation[]`

  `getDeclaredAnnotations()`

  Returns annotations that are *directly present* on this element.

  `<A extends Annotation>  
  A[]`

  `getDeclaredAnnotationsByType(Class<A> annotationClass)`

  Returns this element's annotation(s) for the specified type if
  such annotations are either *directly present* or
  *indirectly present*.

  `String`

  `getImplementationTitle()`

  Return the title of this package.

  `String`

  `getImplementationVendor()`

  Returns the vendor that implemented this package, `null`
  is returned if it is not known.

  `String`

  `getImplementationVersion()`

  Return the version of this implementation.

  `String`

  `getName()`

  Return the name of this package.

  `static Package`

  `getPackage(String name)`

  Deprecated.

  If multiple class loaders delegate to each other and define classes
  with the same package name, and one such loader relies on the lookup
  behavior of `getPackage` to return a `Package` from
  a parent loader, then the properties exposed by the `Package`
  may not be as expected in the rest of the program.

  `static Package[]`

  `getPackages()`

  Returns all of the `Package`s defined by the caller's class loader
  and its ancestors.

  `String`

  `getSpecificationTitle()`

  Return the title of the specification that this package implements.

  `String`

  `getSpecificationVendor()`

  Return the name of the organization, vendor,
  or company that owns and maintains the specification
  of the classes that implement this package.

  `String`

  `getSpecificationVersion()`

  Returns the version number of the specification
  that this package implements.

  `int`

  `hashCode()`

  Return the hash code computed from the package name.

  `boolean`

  `isAnnotationPresent(Class<? extends Annotation> annotationClass)`

  Returns true if an annotation for the specified type
  is *present* on this element, else false.

  `boolean`

  `isCompatibleWith(String desired)`

  Compare this package's specification version with a
  desired version.

  `boolean`

  `isSealed()`

  Returns true if this package is sealed.

  `boolean`

  `isSealed(URL url)`

  Returns true if this package is sealed with respect to the specified
  code source `url`.

  `String`

  `toString()`

  Returns the string representation of this Package.

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Method Details

  + ### getName

    public [String](String.md "class in java.lang") getName()

    Return the name of this package.

    Returns:
    :   The fully-qualified name of this package as defined in section of
        The Java Language Specification,
        for example, `java.lang`
  + ### getSpecificationTitle

    public [String](String.md "class in java.lang") getSpecificationTitle()

    Return the title of the specification that this package implements.

    Returns:
    :   the specification title, `null` is returned if it is not known.
  + ### getSpecificationVersion

    public [String](String.md "class in java.lang") getSpecificationVersion()

    Returns the version number of the specification
    that this package implements.
    This version string must be a sequence of non-negative decimal
    integers separated by "."'s and may have leading zeros.
    When version strings are compared the most significant
    numbers are compared.

    Specification version numbers use a syntax that consists of non-negative
    decimal integers separated by periods ".", for example "2.0" or
    "1.2.3.4.5.6.7". This allows an extensible number to be used to represent
    major, minor, micro, etc. versions. The version specification is described
    by the following formal grammar:
    > *SpecificationVersion:*: *Digits RefinedVersionopt* *RefinedVersion:*: `.` *Digits*: `.` *Digits RefinedVersion* *Digits:*: *Digit*: *Digits* *Digit:*: any character for which [`Character.isDigit(char)`](Character.md#isDigit(char)) returns `true`, e.g. 0, 1, 2, ...

    Returns:
    :   the specification version, `null` is returned if it is not known.
  + ### getSpecificationVendor

    public [String](String.md "class in java.lang") getSpecificationVendor()

    Return the name of the organization, vendor,
    or company that owns and maintains the specification
    of the classes that implement this package.

    Returns:
    :   the specification vendor, `null` is returned if it is not known.
  + ### getImplementationTitle

    public [String](String.md "class in java.lang") getImplementationTitle()

    Return the title of this package.

    Returns:
    :   the title of the implementation, `null` is returned if it is not known.
  + ### getImplementationVersion

    public [String](String.md "class in java.lang") getImplementationVersion()

    Return the version of this implementation. It consists of any string
    assigned by the vendor of this implementation and does
    not have any particular syntax specified or expected by the Java
    runtime. It may be compared for equality with other
    package version strings used for this implementation
    by this vendor for this package.

    Returns:
    :   the version of the implementation, `null` is returned if it is not known.
  + ### getImplementationVendor

    public [String](String.md "class in java.lang") getImplementationVendor()

    Returns the vendor that implemented this package, `null`
    is returned if it is not known.

    Returns:
    :   the vendor that implemented this package, `null`
        is returned if it is not known.
  + ### isSealed

    public boolean isSealed()

    Returns true if this package is sealed.

    Returns:
    :   true if the package is sealed, false otherwise
  + ### isSealed

    public boolean isSealed([URL](../net/URL.md "class in java.net") url)

    Returns true if this package is sealed with respect to the specified
    code source `url`.

    Parameters:
    :   `url` - the code source URL

    Returns:
    :   true if this package is sealed with respect to the given `url`
  + ### isCompatibleWith

    public boolean isCompatibleWith([String](String.md "class in java.lang") desired)
    throws [NumberFormatException](NumberFormatException.md "class in java.lang")

    Compare this package's specification version with a
    desired version. It returns true if
    this packages specification version number is greater than or equal
    to the desired version number.

    Version numbers are compared by sequentially comparing corresponding
    components of the desired and specification strings.
    Each component is converted as a decimal integer and the values
    compared.
    If the specification value is greater than the desired
    value true is returned. If the value is less false is returned.
    If the values are equal the period is skipped and the next pair of
    components is compared.

    Parameters:
    :   `desired` - the version string of the desired version.

    Returns:
    :   true if this package's version number is greater
        than or equal to the desired version number

    Throws:
    :   `NumberFormatException` - if the current version is not known or
        the desired or current version is not of the correct dotted form.
  + ### getPackage

    [@Deprecated](Deprecated.md "annotation interface in java.lang")([since](Deprecated.md#since())="9")
    public static [Package](Package.md "class in java.lang") getPackage([String](String.md "class in java.lang") name)

    Deprecated.

    If multiple class loaders delegate to each other and define classes
    with the same package name, and one such loader relies on the lookup
    behavior of `getPackage` to return a `Package` from
    a parent loader, then the properties exposed by the `Package`
    may not be as expected in the rest of the program.
    For example, the `Package` will only expose annotations from the
    `package-info.class` file defined by the parent loader, even if
    annotations exist in a `package-info.class` file defined by
    a child loader. A more robust approach is to use the
    [`ClassLoader.getDefinedPackage(java.lang.String)`](ClassLoader.md#getDefinedPackage(java.lang.String)) method which returns
    a `Package` for the specified class loader.

    Finds a package by name in the caller's class loader and its
    ancestors.

    If the caller's class loader defines a `Package` of the given name,
    the `Package` is returned. Otherwise, the ancestors of the
    caller's class loader are searched recursively (parent by parent)
    for a `Package` of the given name.

    Calling this method is equivalent to calling [`ClassLoader.getPackage(java.lang.String)`](ClassLoader.md#getPackage(java.lang.String))
    on a `ClassLoader` instance which is the caller's class loader.

    Parameters:
    :   `name` - A package name, such as "`java.lang`".

    Returns:
    :   The `Package` of the given name defined by the caller's
        class loader or its ancestors, or `null` if not found.

    Throws:
    :   `NullPointerException` - if `name` is `null`.

    See Also:
    :   - [`ClassLoader.getDefinedPackage(java.lang.String)`](ClassLoader.md#getDefinedPackage(java.lang.String))
  + ### getPackages

    public static [Package](Package.md "class in java.lang")[] getPackages()

    Returns all of the `Package`s defined by the caller's class loader
    and its ancestors. The returned array may contain more than one
    `Package` object of the same package name, each defined by
    a different class loader in the class loader hierarchy.

    Calling this method is equivalent to calling [`ClassLoader.getPackages()`](ClassLoader.md#getPackages())
    on a `ClassLoader` instance which is the caller's class loader.

    Returns:
    :   The array of `Package` objects defined by this
        class loader and its ancestors

    See Also:
    :   - [`ClassLoader.getDefinedPackages()`](ClassLoader.md#getDefinedPackages())
  + ### hashCode

    public int hashCode()

    Return the hash code computed from the package name.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   the hash code computed from the package name.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](String.md "class in java.lang") toString()

    Returns the string representation of this Package.
    Its value is the string "package " and the package name.
    If the package title is defined it is appended.
    If the package version is defined it is appended.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   the string representation of the package.
  + ### getAnnotation

    public <A extends [Annotation](annotation/Annotation.md "interface in java.lang.annotation")> A getAnnotation([Class](Class.md "class in java.lang")<A> annotationClass)

    Returns this element's annotation for the specified type if
    such an annotation is *present*, else null.

    Note that any annotation returned by this method is a
    declaration annotation.

    Specified by:
    :   `getAnnotation` in interface `AnnotatedElement`

    Type Parameters:
    :   `A` - the type of the annotation to query for and return if present

    Parameters:
    :   `annotationClass` - the Class object corresponding to the
        annotation type

    Returns:
    :   this element's annotation for the specified annotation type if
        present on this element, else null

    Throws:
    :   `NullPointerException` - if the given annotation class is null

    Since:
    :   1.5
  + ### isAnnotationPresent

    public boolean isAnnotationPresent([Class](Class.md "class in java.lang")<? extends [Annotation](annotation/Annotation.md "interface in java.lang.annotation")> annotationClass)

    Returns true if an annotation for the specified type
    is *present* on this element, else false. This method
    is designed primarily for convenient access to marker annotations.

    The truth value returned by this method is equivalent to:
    `getAnnotation(annotationClass) != null`

    Specified by:
    :   `isAnnotationPresent` in interface `AnnotatedElement`

    Parameters:
    :   `annotationClass` - the Class object corresponding to the
        annotation type

    Returns:
    :   true if an annotation for the specified annotation
        type is present on this element, else false

    Throws:
    :   `NullPointerException` - if the given annotation class is null

    Since:
    :   1.5
  + ### getAnnotationsByType

    public <A extends [Annotation](annotation/Annotation.md "interface in java.lang.annotation")> A[] getAnnotationsByType([Class](Class.md "class in java.lang")<A> annotationClass)

    Returns annotations that are *associated* with this element.
    If there are no annotations *associated* with this element, the return
    value is an array of length 0.
    The difference between this method and [`AnnotatedElement.getAnnotation(Class)`](reflect/AnnotatedElement.md#getAnnotation(java.lang.Class))
    is that this method detects if its argument is a *repeatable
    annotation type* (JLS ), and if so, attempts to find one or
    more annotations of that type by "looking through" a container
    annotation.
    The caller of this method is free to modify the returned array; it will
    have no effect on the arrays returned to other callers.

    Note that any annotations returned by this method are
    declaration annotations.

    Specified by:
    :   `getAnnotationsByType` in interface `AnnotatedElement`

    Type Parameters:
    :   `A` - the type of the annotation to query for and return if present

    Parameters:
    :   `annotationClass` - the Class object corresponding to the
        annotation type

    Returns:
    :   all this element's annotations for the specified annotation type if
        associated with this element, else an array of length zero

    Throws:
    :   `NullPointerException` - if the given annotation class is null

    Since:
    :   1.8
  + ### getAnnotations

    public [Annotation](annotation/Annotation.md "interface in java.lang.annotation")[] getAnnotations()

    Returns annotations that are *present* on this element.
    If there are no annotations *present* on this element, the return
    value is an array of length 0.
    The caller of this method is free to modify the returned array; it will
    have no effect on the arrays returned to other callers.

    Note that any annotations returned by this method are
    declaration annotations.

    Specified by:
    :   `getAnnotations` in interface `AnnotatedElement`

    Returns:
    :   annotations present on this element

    Since:
    :   1.5
  + ### getDeclaredAnnotation

    public <A extends [Annotation](annotation/Annotation.md "interface in java.lang.annotation")> A getDeclaredAnnotation([Class](Class.md "class in java.lang")<A> annotationClass)

    Returns this element's annotation for the specified type if
    such an annotation is *directly present*, else null.
    This method ignores inherited annotations. (Returns null if no
    annotations are directly present on this element.)

    Note that any annotation returned by this method is a
    declaration annotation.

    Specified by:
    :   `getDeclaredAnnotation` in interface `AnnotatedElement`

    Type Parameters:
    :   `A` - the type of the annotation to query for and return if directly present

    Parameters:
    :   `annotationClass` - the Class object corresponding to the
        annotation type

    Returns:
    :   this element's annotation for the specified annotation type if
        directly present on this element, else null

    Throws:
    :   `NullPointerException` - if the given annotation class is null

    Since:
    :   1.8
  + ### getDeclaredAnnotationsByType

    public <A extends [Annotation](annotation/Annotation.md "interface in java.lang.annotation")> A[] getDeclaredAnnotationsByType([Class](Class.md "class in java.lang")<A> annotationClass)

    Description copied from interface: `AnnotatedElement`

    Returns this element's annotation(s) for the specified type if
    such annotations are either *directly present* or
    *indirectly present*. This method ignores inherited
    annotations.
    If there are no specified annotations directly or indirectly
    present on this element, the return value is an array of length
    0.
    The difference between this method and [`AnnotatedElement.getDeclaredAnnotation(Class)`](reflect/AnnotatedElement.md#getDeclaredAnnotation(java.lang.Class)) is that this method detects if its
    argument is a *repeatable annotation type* (JLS ), and if so,
    attempts to find one or more annotations of that type by "looking
    through" a container annotation if one is present.
    The caller of this method is free to modify the returned array; it will
    have no effect on the arrays returned to other callers.

    Specified by:
    :   `getDeclaredAnnotationsByType` in interface `AnnotatedElement`

    Type Parameters:
    :   `A` - the type of the annotation to query for and return
        if directly or indirectly present

    Parameters:
    :   `annotationClass` - the Class object corresponding to the
        annotation type

    Returns:
    :   all this element's annotations for the specified annotation type if
        directly or indirectly present on this element, else an array of length zero

    Throws:
    :   `NullPointerException` - if the given annotation class is null

    Since:
    :   1.8
  + ### getDeclaredAnnotations

    public [Annotation](annotation/Annotation.md "interface in java.lang.annotation")[] getDeclaredAnnotations()

    Returns annotations that are *directly present* on this element.
    This method ignores inherited annotations.
    If there are no annotations *directly present* on this element,
    the return value is an array of length 0.
    The caller of this method is free to modify the returned array; it will
    have no effect on the arrays returned to other callers.

    Note that any annotations returned by this method are
    declaration annotations.

    Specified by:
    :   `getDeclaredAnnotations` in interface `AnnotatedElement`

    Returns:
    :   annotations directly present on this element

    Since:
    :   1.5