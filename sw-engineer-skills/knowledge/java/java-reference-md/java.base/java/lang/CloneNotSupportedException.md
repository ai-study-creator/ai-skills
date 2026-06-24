Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class CloneNotSupportedException

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Exception](Exception.md "class in java.lang")

java.lang.CloneNotSupportedException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `ServerCloneException`

---

public class CloneNotSupportedException
extends [Exception](Exception.md "class in java.lang")

Thrown to indicate that the `clone` method in class
`Object` has been called to clone an object, but that
the object's class does not implement the `Cloneable`
interface.

Applications that override the `clone` method can also
throw this exception to indicate that an object could not or
should not be cloned.

Since:
:   1.0

See Also:
:   * [`Cloneable`](Cloneable.md "interface in java.lang")
    * [`Object.clone()`](Object.md#clone())
    * [Serialized Form](../../../serialized-form.md#java.lang.CloneNotSupportedException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CloneNotSupportedException()`

  Constructs a `CloneNotSupportedException` with no
  detail message.

  `CloneNotSupportedException(String s)`

  Constructs a `CloneNotSupportedException` with the
  specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### CloneNotSupportedException

    public CloneNotSupportedException()

    Constructs a `CloneNotSupportedException` with no
    detail message.
  + ### CloneNotSupportedException

    public CloneNotSupportedException([String](String.md "class in java.lang") s)

    Constructs a `CloneNotSupportedException` with the
    specified detail message.

    Parameters:
    :   `s` - the detail message.