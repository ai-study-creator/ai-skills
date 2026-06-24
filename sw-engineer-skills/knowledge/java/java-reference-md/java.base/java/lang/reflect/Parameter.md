Module [java.base](../../../module-summary.md)

Package [java.lang.reflect](package-summary.md)

# Class Parameter

[java.lang.Object](../Object.md "class in java.lang")

java.lang.reflect.Parameter

All Implemented Interfaces:
:   `AnnotatedElement`

---

public final class Parameter
extends [Object](../Object.md "class in java.lang")
implements [AnnotatedElement](AnnotatedElement.md "interface in java.lang.reflect")

Information about method parameters.
A `Parameter` provides information about method parameters,
including its name and modifiers. It also provides an alternate
means of obtaining attributes for the parameter.

Since:
:   1.8

* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Set<AccessFlag>`

  `accessFlags()`

  Returns an unmodifiable set of the [access flags](AccessFlag.md "enum class in java.lang.reflect") for the parameter represented by this object,
  possibly empty.

  `boolean`

  `equals(Object obj)`

  Compares based on the executable and the index.

  `AnnotatedType`

  `getAnnotatedType()`

  Returns an AnnotatedType object that represents the use of a type to
  specify the type of the formal parameter represented by this Parameter.

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

  `Executable`

  `getDeclaringExecutable()`

  Returns the `Executable` declaring this parameter.

  `int`

  `getModifiers()`

  Returns the Java language [modifiers](Modifier.md "class in java.lang.reflect") for
  the parameter represented by this object.

  `String`

  `getName()`

  Returns the name of the parameter.

  `Type`

  `getParameterizedType()`

  Returns a `Type` object that identifies the parameterized
  type for the parameter represented by this `Parameter`
  object.

  `Class<?>`

  `getType()`

  Returns a `Class` object that identifies the
  declared type for the parameter represented by this
  `Parameter` object.

  `int`

  `hashCode()`

  Returns a hash code based on the executable's hash code and the
  index.

  `boolean`

  `isImplicit()`

  Returns `true` if this parameter is implicitly declared
  in source code; returns `false` otherwise.

  `boolean`

  `isNamePresent()`

  Returns true if the parameter has a name according to the class
  file; returns false otherwise.

  `boolean`

  `isSynthetic()`

  Returns `true` if this parameter is neither implicitly
  nor explicitly declared in source code; returns `false`
  otherwise.

  `boolean`

  `isVarArgs()`

  Returns `true` if this parameter represents a variable
  argument list; returns `false` otherwise.

  `String`

  `toString()`

  Returns a string describing this parameter.

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.lang.reflect.[AnnotatedElement](AnnotatedElement.md "interface in java.lang.reflect")

  `isAnnotationPresent`

* ## Method Details

  + ### equals

    public boolean equals([Object](../Object.md "class in java.lang") obj)

    Compares based on the executable and the index.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - The object to compare.

    Returns:
    :   Whether or not this is equal to the argument.

    See Also:
    :   - [`Object.hashCode()`](../Object.md#hashCode())
        - [`HashMap`](../../util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns a hash code based on the executable's hash code and the
    index.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   A hash code based on the executable's hash code.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../System.md#identityHashCode(java.lang.Object))
  + ### isNamePresent

    public boolean isNamePresent()

    Returns true if the parameter has a name according to the class
    file; returns false otherwise. Whether a parameter has a name
    is determined by the MethodParameters attribute of
    the method which declares the parameter.

    Returns:
    :   true if and only if the parameter has a name according
        to the class file.
  + ### toString

    public [String](../String.md "class in java.lang") toString()

    Returns a string describing this parameter. The format is the
    modifiers for the parameter, if any, in canonical order as
    recommended by The Java Language
    Specification, followed by the fully-qualified type of
    the parameter (excluding the last [] if the parameter is
    variable arity), followed by "..." if the parameter is variable
    arity, followed by a space, followed by the name of the
    parameter.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   A string representation of the parameter and associated
        information.
  + ### getDeclaringExecutable

    public [Executable](Executable.md "class in java.lang.reflect") getDeclaringExecutable()

    Returns the `Executable` declaring this parameter.

    Returns:
    :   the `Executable` declaring this parameter
  + ### getModifiers

    public int getModifiers()

    Returns the Java language [modifiers](Modifier.md "class in java.lang.reflect") for
    the parameter represented by this object.

    Returns:
    :   the Java language [modifiers](Modifier.md "class in java.lang.reflect") for
        the parameter represented by this object

    See Also:
    :   - [Java
          programming language and JVM modeling in core reflection](../../../../java.base/java/lang/reflect/package-summary.md#LanguageJvmModel)
  + ### accessFlags

    public [Set](../../util/Set.md "interface in java.util")<[AccessFlag](AccessFlag.md "enum class in java.lang.reflect")> accessFlags()

    Returns an unmodifiable set of the [access flags](AccessFlag.md "enum class in java.lang.reflect") for the parameter represented by this object,
    possibly empty.

    Returns:
    :   an unmodifiable set of the [access flags](AccessFlag.md "enum class in java.lang.reflect") for the parameter represented by this object,
        possibly empty

    Since:
    :   20

    See Also:
    :   - [`getModifiers()`](#getModifiers())
  + ### getName

    public [String](../String.md "class in java.lang") getName()

    Returns the name of the parameter. If the parameter's name is
    [present](#isNamePresent()), then this method returns
    the name provided by the class file. Otherwise, this method
    synthesizes a name of the form argN, where N is the index of
    the parameter in the descriptor of the method which declares
    the parameter.

    Returns:
    :   The name of the parameter, either provided by the class
        file or synthesized if the class file does not provide
        a name.
  + ### getParameterizedType

    public [Type](Type.md "interface in java.lang.reflect") getParameterizedType()

    Returns a `Type` object that identifies the parameterized
    type for the parameter represented by this `Parameter`
    object.

    Returns:
    :   a `Type` object identifying the parameterized
        type of the parameter represented by this object
  + ### getType

    public [Class](../Class.md "class in java.lang")<?> getType()

    Returns a `Class` object that identifies the
    declared type for the parameter represented by this
    `Parameter` object.

    Returns:
    :   a `Class` object identifying the declared
        type of the parameter represented by this object
  + ### getAnnotatedType

    public [AnnotatedType](AnnotatedType.md "interface in java.lang.reflect") getAnnotatedType()

    Returns an AnnotatedType object that represents the use of a type to
    specify the type of the formal parameter represented by this Parameter.

    Returns:
    :   an `AnnotatedType` object representing the use of a type
        to specify the type of the formal parameter represented by this
        Parameter
  + ### isImplicit

    public boolean isImplicit()

    Returns `true` if this parameter is implicitly declared
    in source code; returns `false` otherwise.

    Returns:
    :   true if and only if this parameter is implicitly
        declared as defined by The Java Language
        Specification.
  + ### isSynthetic

    public boolean isSynthetic()

    Returns `true` if this parameter is neither implicitly
    nor explicitly declared in source code; returns `false`
    otherwise.

    Returns:
    :   true if and only if this parameter is a synthetic
        construct as defined by
        The Java Language Specification.

    See Also:
    :   - [Java
          programming language and JVM modeling in core reflection](../../../../java.base/java/lang/reflect/package-summary.md#LanguageJvmModel)
  + ### isVarArgs

    public boolean isVarArgs()

    Returns `true` if this parameter represents a variable
    argument list; returns `false` otherwise.

    Returns:
    :   `true` if an only if this parameter represents a
        variable argument list.
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