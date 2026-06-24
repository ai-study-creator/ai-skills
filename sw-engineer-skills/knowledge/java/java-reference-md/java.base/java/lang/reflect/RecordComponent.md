Module [java.base](../../../module-summary.md)

Package [java.lang.reflect](package-summary.md)

# Class RecordComponent

[java.lang.Object](../Object.md "class in java.lang")

java.lang.reflect.RecordComponent

All Implemented Interfaces:
:   `AnnotatedElement`

---

public final class RecordComponent
extends [Object](../Object.md "class in java.lang")
implements [AnnotatedElement](AnnotatedElement.md "interface in java.lang.reflect")

A `RecordComponent` provides information about, and dynamic access to, a
component of a record class.

Since:
:   16

See Also:
:   * [`Class.getRecordComponents()`](../Class.md#getRecordComponents())
    * [`Record`](../Record.md "class in java.lang")

* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Method`

  `getAccessor()`

  Returns a `Method` that represents the accessor for this record
  component.

  `AnnotatedType`

  `getAnnotatedType()`

  Returns an `AnnotatedType` object that represents the use of a type to specify
  the declared type of this record component.

  `<T extends Annotation>  
  T`

  `getAnnotation(Class<T> annotationClass)`

  Returns this element's annotation for the specified type if
  such an annotation is *present*, else null.

  `Annotation[]`

  `getAnnotations()`

  Returns annotations that are *present* on this element.

  `Annotation[]`

  `getDeclaredAnnotations()`

  Returns annotations that are *directly present* on this element.

  `Class<?>`

  `getDeclaringRecord()`

  Returns the record class which declares this record component.

  `String`

  `getGenericSignature()`

  Returns a `String` that describes the generic type signature for
  this record component.

  `Type`

  `getGenericType()`

  Returns a `Type` object that represents the declared type for
  this record component.

  `String`

  `getName()`

  Returns the name of this record component.

  `Class<?>`

  `getType()`

  Returns a `Class` that identifies the declared type for this
  record component.

  `String`

  `toString()`

  Returns a string describing this record component.

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.lang.reflect.[AnnotatedElement](AnnotatedElement.md "interface in java.lang.reflect")

  `getAnnotationsByType, getDeclaredAnnotation, getDeclaredAnnotationsByType, isAnnotationPresent`

* ## Method Details

  + ### getName

    public [String](../String.md "class in java.lang") getName()

    Returns the name of this record component.

    Returns:
    :   the name of this record component
  + ### getType

    public [Class](../Class.md "class in java.lang")<?> getType()

    Returns a `Class` that identifies the declared type for this
    record component.

    Returns:
    :   a `Class` identifying the declared type of the component
        represented by this record component
  + ### getGenericSignature

    public [String](../String.md "class in java.lang") getGenericSignature()

    Returns a `String` that describes the generic type signature for
    this record component.

    Returns:
    :   a `String` that describes the generic type signature for
        this record component
  + ### getGenericType

    public [Type](Type.md "interface in java.lang.reflect") getGenericType()

    Returns a `Type` object that represents the declared type for
    this record component.

    If the declared type of the record component is a parameterized type,
    the `Type` object returned reflects the actual type arguments used
    in the source code.

    If the type of the underlying record component is a type variable or a
    parameterized type, it is created. Otherwise, it is resolved.

    Returns:
    :   a `Type` object that represents the declared type for
        this record component

    Throws:
    :   `GenericSignatureFormatError` - if the generic record component
        signature does not conform to the format specified in
        The Java Virtual Machine Specification
    :   `TypeNotPresentException` - if the generic type
        signature of the underlying record component refers to a non-existent
        type declaration
    :   `MalformedParameterizedTypeException` - if the generic
        signature of the underlying record component refers to a parameterized
        type that cannot be instantiated for any reason
  + ### getAnnotatedType

    public [AnnotatedType](AnnotatedType.md "interface in java.lang.reflect") getAnnotatedType()

    Returns an `AnnotatedType` object that represents the use of a type to specify
    the declared type of this record component.

    Returns:
    :   an object representing the declared type of this record component
  + ### getAccessor

    public [Method](Method.md "class in java.lang.reflect") getAccessor()

    Returns a `Method` that represents the accessor for this record
    component.

    Returns:
    :   a `Method` that represents the accessor for this record
        component
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
  + ### toString

    public [String](../String.md "class in java.lang") toString()

    Returns a string describing this record component. The format is
    the record component type, followed by a space, followed by the name
    of the record component.
    For example:

    ```
        java.lang.String name
        int age
    ```

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string describing this record component
  + ### getDeclaringRecord

    public [Class](../Class.md "class in java.lang")<?> getDeclaringRecord()

    Returns the record class which declares this record component.

    Returns:
    :   The record class declaring this record component.