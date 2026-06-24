Module [java.base](../../../module-summary.md)

Package [java.lang.annotation](package-summary.md)

# Interface Annotation

All Known Implementing Classes:
:   `BeanProperty`, `ConstructorParameters`, `ConstructorProperties`, `Deprecated`, `DescriptorKey`, `Documented`, `FunctionalInterface`, `Generated`, `Inherited`, `JavaBean`, `MXBean`, `Native`, `Override`, `Repeatable`, `Retention`, `SafeVarargs`, `Serial`, `SupportedAnnotationTypes`, `SupportedOptions`, `SupportedSourceVersion`, `SuppressWarnings`, `SwingContainer`, `Target`, `Transient`

---

public interface Annotation

The common interface extended by all annotation interfaces. Note that an
interface that manually extends this one does *not* define
an annotation interface. Also note that this interface does not itself
define an annotation interface.
More information about annotation interfaces can be found in section
of The Java Language Specification.
The [`AnnotatedElement`](../reflect/AnnotatedElement.md "interface in java.lang.reflect") interface discusses
compatibility concerns when evolving an annotation interface from being
non-repeatable to being repeatable.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Class<? extends Annotation>`

  `annotationType()`

  Returns the annotation interface of this annotation.

  `boolean`

  `equals(Object obj)`

  Returns true if the specified object represents an annotation
  that is logically equivalent to this one.

  `int`

  `hashCode()`

  Returns the hash code of this annotation.

  `String`

  `toString()`

  Returns a string representation of this annotation.

* ## Method Details

  + ### equals

    boolean equals([Object](../Object.md "class in java.lang") obj)

    Returns true if the specified object represents an annotation
    that is logically equivalent to this one. In other words,
    returns true if the specified object is an instance of the same
    annotation interface as this instance, all of whose members are equal
    to the corresponding member of this annotation, as defined below:
    - Two corresponding primitive typed members whose values are
      `x` and `y` are considered equal if `x == y`,
      unless their type is `float` or `double`.- Two corresponding `float` members whose values
        are `x` and `y` are considered equal if
        `Float.valueOf(x).equals(Float.valueOf(y))`.
        (Unlike the `==` operator, NaN is considered equal
        to itself, and `0.0f` unequal to `-0.0f`.)- Two corresponding `double` members whose values
          are `x` and `y` are considered equal if
          `Double.valueOf(x).equals(Double.valueOf(y))`.
          (Unlike the `==` operator, NaN is considered equal
          to itself, and `0.0` unequal to `-0.0`.)- Two corresponding `String`, `Class`, enum, or
            annotation typed members whose values are `x` and `y`
            are considered equal if `x.equals(y)`. (Note that this
            definition is recursive for annotation typed members.)- Two corresponding array typed members `x` and `y`
              are considered equal if `Arrays.equals(x, y)`, for the
              appropriate overloading of [`Arrays.equals`](../../util/Arrays.md#equals(long%5B%5D,long%5B%5D)).

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the reference object with which to compare.

    Returns:
    :   true if the specified object represents an annotation
        that is logically equivalent to this one, otherwise false

    See Also:
    :   - [`Object.hashCode()`](../Object.md#hashCode())
        - [`HashMap`](../../util/HashMap.md "class in java.util")
  + ### hashCode

    int hashCode()

    Returns the hash code of this annotation.

    The hash code of an annotation is the sum of the hash codes
    of its members (including those with default values).
    The hash code of an annotation member is (127 times the hash code
    of the member-name as computed by [`String.hashCode()`](../String.md#hashCode())) XOR
    the hash code of the member-value.
    The hash code of a member-value depends on its type as defined below:
    - The hash code of a primitive value *`v`* is equal to
      `WrapperType.valueOf(v).hashCode()`, where
      *`WrapperType`* is the wrapper type corresponding
      to the primitive type of *`v`* ([`Byte`](../Byte.md "class in java.lang"),
      [`Character`](../Character.md "class in java.lang"), [`Double`](../Double.md "class in java.lang"), [`Float`](../Float.md "class in java.lang"), [`Integer`](../Integer.md "class in java.lang"),
      [`Long`](../Long.md "class in java.lang"), [`Short`](../Short.md "class in java.lang"), or [`Boolean`](../Boolean.md "class in java.lang")).- The hash code of a string, enum, class, or annotation member-value
        *`v`* is computed as by calling
        `v.hashCode()`. (In the case of annotation
        member values, this is a recursive definition.)- The hash code of an array member-value is computed by calling
          the appropriate overloading of
          [`Arrays.hashCode`](../../util/Arrays.md#hashCode(long%5B%5D))
          on the value. (There is one overloading for each primitive
          type, and one for object reference types.)

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   the hash code of this annotation

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../System.md#identityHashCode(java.lang.Object))
  + ### toString

    [String](../String.md "class in java.lang") toString()

    Returns a string representation of this annotation. The details
    of the representation are implementation-dependent, but the following
    may be regarded as typical:

    ```
       @com.example.Name(first="Duke", middle="of", last="Java")
    ```

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this annotation
  + ### annotationType

    [Class](../Class.md "class in java.lang")<? extends [Annotation](Annotation.md "interface in java.lang.annotation")> annotationType()

    Returns the annotation interface of this annotation.

    Returns:
    :   the annotation interface of this annotation

    See Also:
    :   - [`Enum.getDeclaringClass()`](../Enum.md#getDeclaringClass())