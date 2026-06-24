Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class JobAttributes.DestinationType

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.JobAttributes.DestinationType

Enclosing class:
:   `JobAttributes`

---

public static final class JobAttributes.DestinationType
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

A type-safe enumeration of possible job destinations.

Since:
:   1.3

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final JobAttributes.DestinationType`

  `FILE`

  The `DestinationType` instance to use for
  specifying print to file.

  `static final JobAttributes.DestinationType`

  `PRINTER`

  The `DestinationType` instance to use for
  specifying print to printer.
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

  + ### FILE

    public static final [JobAttributes.DestinationType](JobAttributes.DestinationType.md "class in java.awt") FILE

    The `DestinationType` instance to use for
    specifying print to file.
  + ### PRINTER

    public static final [JobAttributes.DestinationType](JobAttributes.DestinationType.md "class in java.awt") PRINTER

    The `DestinationType` instance to use for
    specifying print to printer.
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