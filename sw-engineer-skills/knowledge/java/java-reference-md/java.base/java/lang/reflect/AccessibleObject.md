Module [java.base](../../../module-summary.md)

Package [java.lang.reflect](package-summary.md)

# Class AccessibleObject

[java.lang.Object](../Object.md "class in java.lang")

java.lang.reflect.AccessibleObject

All Implemented Interfaces:
:   `AnnotatedElement`

Direct Known Subclasses:
:   `Executable`, `Field`

---

public class AccessibleObject
extends [Object](../Object.md "class in java.lang")
implements [AnnotatedElement](AnnotatedElement.md "interface in java.lang.reflect")

The `AccessibleObject` class is the base class for `Field`,
`Method`, and `Constructor` objects (known as *reflected
objects*). It provides the ability to flag a reflected object as
suppressing checks for Java language access control when it is used. This
permits sophisticated applications with sufficient privilege, such as Java
Object Serialization or other persistence mechanisms, to manipulate objects
in a manner that would normally be prohibited.

Java language access control prevents use of private members outside
their top-level class; package access members outside their package; protected members
outside their package or subclasses; and public members outside their
module unless they are declared in an [`exported`](../Module.md#isExported(java.lang.String,java.lang.Module)) package and the user [`reads`](../Module.md#canRead(java.lang.Module)) their module. By
default, Java language access control is enforced (with one variation) when
`Field`s, `Method`s, or `Constructor`s are used to get or
set fields, to invoke methods, or to create and initialize new instances of
classes, respectively. Every reflected object checks that the code using it
is in an appropriate class, package, or module. The check when invoked by
[JNI code](../../../../../specs/jni/index.md) with no Java
class on the stack only succeeds if the member and the declaring class are
public, and the class is in a package that is exported to all modules.

The one variation from Java language access control is that the checks
by reflected objects assume readability. That is, the module containing
the use of a reflected object is assumed to read the module in which
the underlying field, method, or constructor is declared.

Whether the checks for Java language access control can be suppressed
(and thus, whether access can be enabled) depends on whether the reflected
object corresponds to a member in an exported or open package
(see [`setAccessible(boolean)`](#setAccessible(boolean))).

Since:
:   1.2

External Specifications
:   * [Java Native Interface Specification](../../../../../specs/jni/index.md)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AccessibleObject()`

  Deprecated.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `final boolean`

  `canAccess(Object obj)`

  Test if the caller can access this reflected object.

  `<T extends Annotation>  
  T`

  `getAnnotation(Class<T> annotationClass)`

  Returns this element's annotation for the specified type if
  such an annotation is *present*, else null.

  `Annotation[]`

  `getAnnotations()`

  Returns annotations that are *present* on this element.

  `<T extends Annotation>  
  T[]`

  `getAnnotationsByType(Class<T> annotationClass)`

  Returns annotations that are *associated* with this element.

  `<T extends Annotation>  
  T`

  `getDeclaredAnnotation(Class<T> annotationClass)`

  Returns this element's annotation for the specified type if
  such an annotation is *directly present*, else null.

  `Annotation[]`

  `getDeclaredAnnotations()`

  Returns annotations that are *directly present* on this element.

  `<T extends Annotation>  
  T[]`

  `getDeclaredAnnotationsByType(Class<T> annotationClass)`

  Returns this element's annotation(s) for the specified type if
  such annotations are either *directly present* or
  *indirectly present*.

  `boolean`

  `isAccessible()`

  Deprecated.

  This method is deprecated because its name hints that it checks
  if the reflected object is accessible when it actually indicates
  if the checks for Java language access control are suppressed.

  `boolean`

  `isAnnotationPresent(Class<? extends Annotation> annotationClass)`

  Returns true if an annotation for the specified type
  is *present* on this element, else false.

  `void`

  `setAccessible(boolean flag)`

  Set the `accessible` flag for this reflected object to
  the indicated boolean value.

  `static void`

  `setAccessible(AccessibleObject[] array,
  boolean flag)`

  Convenience method to set the `accessible` flag for an
  array of reflected objects with a single security check (for efficiency).

  `final boolean`

  `trySetAccessible()`

  Set the `accessible` flag for this reflected object to `true`
  if possible.

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AccessibleObject

    [@Deprecated](../Deprecated.md "annotation interface in java.lang")([since](../Deprecated.md#since())="17")
    protected AccessibleObject()

    Deprecated.

    Constructor: only used by the Java Virtual Machine.
* ## Method Details

  + ### setAccessible

    public static void setAccessible([AccessibleObject](AccessibleObject.md "class in java.lang.reflect")[] array,
    boolean flag)

    Convenience method to set the `accessible` flag for an
    array of reflected objects with a single security check (for efficiency).

    This method may be used to enable access to all reflected objects in
    the array when access to each reflected object can be enabled as
    specified by [`setAccessible(boolean)`](#setAccessible(boolean)).

    If there is a security manager, its
    `checkPermission` method is first called with a
    `ReflectPermission("suppressAccessChecks")` permission.

    A `SecurityException` is also thrown if any of the elements of
    the input `array` is a [`Constructor`](Constructor.md "class in java.lang.reflect")
    object for the class `java.lang.Class` and `flag` is true.

    Parameters:
    :   `array` - the array of AccessibleObjects
    :   `flag` - the new value for the `accessible` flag
        in each object

    Throws:
    :   `InaccessibleObjectException` - if access cannot be enabled for all
        objects in the array
    :   `SecurityException` - if the request is denied by the security manager
        or an element in the array is a constructor for `java.lang.Class`

    See Also:
    :   - [`SecurityManager.checkPermission(java.security.Permission)`](../SecurityManager.md#checkPermission(java.security.Permission))
        - [`ReflectPermission`](ReflectPermission.md "class in java.lang.reflect")
  + ### setAccessible

    public void setAccessible(boolean flag)

    Set the `accessible` flag for this reflected object to
    the indicated boolean value. A value of `true` indicates that
    the reflected object should suppress checks for Java language access
    control when it is used. A value of `false` indicates that
    the reflected object should enforce checks for Java language access
    control when it is used, with the variation noted in the class description.

    This method may be used by a caller in class `C` to enable
    access to a [`member`](Member.md "interface in java.lang.reflect") of [`declaring class`](Member.md#getDeclaringClass()) `D` if any of the following hold:

    - `C` and `D` are in the same module.
    - The member is `public` and `D` is `public` in
      a package that the module containing `D` [`exports`](../Module.md#isExported(java.lang.String,java.lang.Module)) to at least the module
      containing `C`.
    - The member is `protected` `static`, `D` is
      `public` in a package that the module containing `D`
      exports to at least the module containing `C`, and `C`
      is a subclass of `D`.
    - `D` is in a package that the module containing `D`
      [`opens`](../Module.md#isOpen(java.lang.String,java.lang.Module)) to at least the module
      containing `C`.
      All packages in unnamed and open modules are open to all modules and
      so this method always succeeds when `D` is in an unnamed or
      open module.

    This method may be used by [JNI code](../../../../../specs/jni/index.md)
    with no caller class on the stack to enable access to a [`member`](Member.md "interface in java.lang.reflect")
    of [`declaring class`](Member.md#getDeclaringClass()) `D` if and only if:
    - The member is `public` and `D` is `public` in
      a package that the module containing `D` [`exports`](../Module.md#isExported(java.lang.String,java.lang.Module)) unconditionally.

    This method cannot be used to enable access to private members,
    members with default (package) access, protected instance members, or
    protected constructors when the declaring class is in a different module
    to the caller and the package containing the declaring class is not open
    to the caller's module.

    This method cannot be used to enable [*write*](Field.md#set(java.lang.Object,java.lang.Object))
    access to a *non-modifiable* final field. The following fields
    are non-modifiable:
    - static final fields declared in any class or interface
    - final fields declared in a [hidden class](../Class.md#isHidden())
    - final fields declared in a [record](../Class.md#isRecord())

    The `accessible` flag when `true` suppresses Java language access
    control checks to only enable [*read*](Field.md#get(java.lang.Object)) access to
    these non-modifiable final fields.

    If there is a security manager, its
    `checkPermission` method is first called with a
    `ReflectPermission("suppressAccessChecks")` permission.

    Parameters:
    :   `flag` - the new value for the `accessible` flag

    Throws:
    :   `InaccessibleObjectException` - if access cannot be enabled
    :   `SecurityException` - if the request is denied by the security manager

    See Also:
    :   - [`trySetAccessible()`](#trySetAccessible())
        - [`MethodHandles.privateLookupIn(java.lang.Class<?>, java.lang.invoke.MethodHandles.Lookup)`](../invoke/MethodHandles.md#privateLookupIn(java.lang.Class,java.lang.invoke.MethodHandles.Lookup))

    External Specifications
    :   - [Java Native Interface Specification](../../../../../specs/jni/index.md)
  + ### trySetAccessible

    public final boolean trySetAccessible()

    Set the `accessible` flag for this reflected object to `true`
    if possible. This method sets the `accessible` flag, as if by
    invoking [`setAccessible(true)`](#setAccessible(boolean)), and returns
    the possibly-updated value for the `accessible` flag. If access
    cannot be enabled, i.e. the checks or Java language access control cannot
    be suppressed, this method returns `false` (as opposed to `setAccessible(true)` throwing `InaccessibleObjectException` when
    it fails).

    This method is a no-op if the `accessible` flag for
    this reflected object is `true`.

    For example, a caller can invoke `trySetAccessible`
    on a `Method` object for a private instance method
    `p.T::privateMethod` to suppress the checks for Java language access
    control when the `Method` is invoked.
    If `p.T` class is in a different module to the caller and
    package `p` is open to at least the caller's module,
    the code below successfully sets the `accessible` flag
    to `true`.

    ```
         p.T obj = ....;  // instance of p.T
         :
         Method m = p.T.class.getDeclaredMethod("privateMethod");
         if (m.trySetAccessible()) {
             m.invoke(obj);
         } else {
             // package p is not opened to the caller to access private member of T
             ...
         }
    ```

    If this method is invoked by [JNI code](../../../../../specs/jni/index.md)
    with no caller class on the stack, the `accessible` flag can
    only be set if the member and the declaring class are public, and
    the class is in a package that is exported unconditionally.

    If there is a security manager, its `checkPermission` method
    is first called with a `ReflectPermission("suppressAccessChecks")`
    permission.

    Returns:
    :   `true` if the `accessible` flag is set to `true`;
        `false` if access cannot be enabled.

    Throws:
    :   `SecurityException` - if the request is denied by the security manager

    Since:
    :   9

    See Also:
    :   - [`MethodHandles.privateLookupIn(java.lang.Class<?>, java.lang.invoke.MethodHandles.Lookup)`](../invoke/MethodHandles.md#privateLookupIn(java.lang.Class,java.lang.invoke.MethodHandles.Lookup))

    External Specifications
    :   - [Java Native Interface Specification](../../../../../specs/jni/index.md)
  + ### isAccessible

    [@Deprecated](../Deprecated.md "annotation interface in java.lang")([since](../Deprecated.md#since())="9")
    public boolean isAccessible()

    Deprecated.

    This method is deprecated because its name hints that it checks
    if the reflected object is accessible when it actually indicates
    if the checks for Java language access control are suppressed.
    This method may return `false` on a reflected object that is
    accessible to the caller. To test if this reflected object is accessible,
    it should use [`canAccess(Object)`](#canAccess(java.lang.Object)).

    Get the value of the `accessible` flag for this reflected object.

    Returns:
    :   the value of the object's `accessible` flag
  + ### canAccess

    public final boolean canAccess([Object](../Object.md "class in java.lang") obj)

    Test if the caller can access this reflected object. If this reflected
    object corresponds to an instance method or field then this method tests
    if the caller can access the given `obj` with the reflected object.
    For instance methods or fields then the `obj` argument must be an
    instance of the [`declaring class`](Member.md#getDeclaringClass()). For
    static members and constructors then `obj` must be `null`.

    This method returns `true` if the `accessible` flag
    is set to `true`, i.e. the checks for Java language access control
    are suppressed, or if the caller can access the member as
    specified in The Java Language Specification,
    with the variation noted in the class description.
    If this method is invoked by [JNI code](../../../../../specs/jni/index.md)
    with no caller class on the stack, this method returns `true`
    if the member and the declaring class are public, and the class is in
    a package that is exported unconditionally.

    Parameters:
    :   `obj` - an instance object of the declaring class of this reflected
        object if it is an instance method or field

    Returns:
    :   `true` if the caller can access this reflected object.

    Throws:
    :   `IllegalArgumentException` -
        - if this reflected object is a static member or constructor and
          the given `obj` is non-`null`, or
        - if this reflected object is an instance method or field
          and the given `obj` is `null` or of type
          that is not a subclass of the [`declaring class`](Member.md#getDeclaringClass()) of the member.

    Since:
    :   9

    See Also:
    :   - [`trySetAccessible()`](#trySetAccessible())
        - [`setAccessible(boolean)`](#setAccessible(boolean))

    External Specifications
    :   - [Java Native Interface Specification](../../../../../specs/jni/index.md)
  + ### getAnnotation

    public <T extends [Annotation](../annotation/Annotation.md "interface in java.lang.annotation")> T getAnnotation([Class](../Class.md "class in java.lang")<T> annotationClass)

    Returns this element's annotation for the specified type if
    such an annotation is *present*, else null.

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

    Throws:
    :   `NullPointerException` - if the given annotation class is null

    Since:
    :   1.5
  + ### isAnnotationPresent

    public boolean isAnnotationPresent([Class](../Class.md "class in java.lang")<? extends [Annotation](../annotation/Annotation.md "interface in java.lang.annotation")> annotationClass)

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

    public <T extends [Annotation](../annotation/Annotation.md "interface in java.lang.annotation")> T[] getAnnotationsByType([Class](../Class.md "class in java.lang")<T> annotationClass)

    Returns annotations that are *associated* with this element.
    If there are no annotations *associated* with this element, the return
    value is an array of length 0.
    The difference between this method and [`AnnotatedElement.getAnnotation(Class)`](AnnotatedElement.md#getAnnotation(java.lang.Class))
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
    :   `T` - the type of the annotation to query for and return if present

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

    public [Annotation](../annotation/Annotation.md "interface in java.lang.annotation")[] getAnnotations()

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

    public <T extends [Annotation](../annotation/Annotation.md "interface in java.lang.annotation")> T getDeclaredAnnotation([Class](../Class.md "class in java.lang")<T> annotationClass)

    Returns this element's annotation for the specified type if
    such an annotation is *directly present*, else null.
    This method ignores inherited annotations. (Returns null if no
    annotations are directly present on this element.)

    Note that any annotation returned by this method is a
    declaration annotation.

    Specified by:
    :   `getDeclaredAnnotation` in interface `AnnotatedElement`

    Type Parameters:
    :   `T` - the type of the annotation to query for and return if directly present

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

    public <T extends [Annotation](../annotation/Annotation.md "interface in java.lang.annotation")> T[] getDeclaredAnnotationsByType([Class](../Class.md "class in java.lang")<T> annotationClass)

    Returns this element's annotation(s) for the specified type if
    such annotations are either *directly present* or
    *indirectly present*. This method ignores inherited
    annotations.
    If there are no specified annotations directly or indirectly
    present on this element, the return value is an array of length
    0.
    The difference between this method and [`AnnotatedElement.getDeclaredAnnotation(Class)`](AnnotatedElement.md#getDeclaredAnnotation(java.lang.Class)) is that this method detects if its
    argument is a *repeatable annotation type* (JLS ), and if so,
    attempts to find one or more annotations of that type by "looking
    through" a container annotation if one is present.
    The caller of this method is free to modify the returned array; it will
    have no effect on the arrays returned to other callers.

    Note that any annotations returned by this method are
    declaration annotations.

    Specified by:
    :   `getDeclaredAnnotationsByType` in interface `AnnotatedElement`

    Type Parameters:
    :   `T` - the type of the annotation to query for and return
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

    public [Annotation](../annotation/Annotation.md "interface in java.lang.annotation")[] getDeclaredAnnotations()

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