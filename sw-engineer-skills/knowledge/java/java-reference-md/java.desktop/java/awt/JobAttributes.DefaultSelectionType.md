Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class JobAttributes.DefaultSelectionType

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.JobAttributes.DefaultSelectionType

Enclosing class:
:   `JobAttributes`

---

public static final class JobAttributes.DefaultSelectionType
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

A type-safe enumeration of possible default selection states.

Since:
:   1.3

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final JobAttributes.DefaultSelectionType`

  `ALL`

  The `DefaultSelectionType` instance to use for
  specifying that all pages of the job should be printed.

  `static final JobAttributes.DefaultSelectionType`

  `RANGE`

  The `DefaultSelectionType` instance to use for
  specifying that a range of pages of the job should be printed.

  `static final JobAttributes.DefaultSelectionType`

  `SELECTION`

  The `DefaultSelectionType` instance to use for
  specifying that the current selection should be printed.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `hashCode()`

  Returns a hash code value for the object.

  `String`

  `toString()`

  Returns a string representation of the object.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### ALL

    public static final [JobAttributes.DefaultSelectionType](JobAttributes.DefaultSelectionType.md "class in java.awt") ALL

    The `DefaultSelectionType` instance to use for
    specifying that all pages of the job should be printed.
  + ### RANGE

    public static final [JobAttributes.DefaultSelectionType](JobAttributes.DefaultSelectionType.md "class in java.awt") RANGE

    The `DefaultSelectionType` instance to use for
    specifying that a range of pages of the job should be printed.
  + ### SELECTION

    public static final [JobAttributes.DefaultSelectionType](JobAttributes.DefaultSelectionType.md "class in java.awt") SELECTION

    The `DefaultSelectionType` instance to use for
    specifying that the current selection should be printed.
* ## Method Details

  + ### hashCode

    public int hashCode()

    Description copied from class: `Object`

    Returns a hash code value for the object. This method is
    supported for the benefit of hash tables such as those provided by
    [`HashMap`](../../../java.base/java/util/HashMap.md "class in java.util").

    The general contract of `hashCode` is:
    - Whenever it is invoked on the same object more than once during
      an execution of a Java application, the `hashCode` method
      must consistently return the same integer, provided no information
      used in `equals` comparisons on the object is modified.
      This integer need not remain consistent from one execution of an
      application to another execution of the same application.- If two objects are equal according to the [`equals`](../../../java.base/java/lang/Object.md#equals(java.lang.Object)) method, then calling the `hashCode` method on each of the two objects must produce the
        same integer result.- It is *not* required that if two objects are unequal
          according to the [`equals`](../../../java.base/java/lang/Object.md#equals(java.lang.Object)) method, then
          calling the `hashCode` method on each of the two objects
          must produce distinct integer results. However, the programmer
          should be aware that producing distinct integer results for
          unequal objects may improve the performance of hash tables.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Description copied from class: `Object`

    Returns a string representation of the object.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.