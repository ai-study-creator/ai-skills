Module [java.desktop](../../../module-summary.md)

Package [java.awt.geom](package-summary.md)

# Class NoninvertibleTransformException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

java.awt.geom.NoninvertibleTransformException

All Implemented Interfaces:
:   `Serializable`

---

public class NoninvertibleTransformException
extends [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

The `NoninvertibleTransformException` class represents
an exception that is thrown if an operation is performed requiring
the inverse of an [`AffineTransform`](AffineTransform.md "class in java.awt.geom") object but the
`AffineTransform` is in a non-invertible state.

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.awt.geom.NoninvertibleTransformException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NoninvertibleTransformException(String s)`

  Constructs an instance of
  `NoninvertibleTransformException`
  with the specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NoninvertibleTransformException

    public NoninvertibleTransformException([String](../../../../java.base/java/lang/String.md "class in java.lang") s)

    Constructs an instance of
    `NoninvertibleTransformException`
    with the specified detail message.

    Parameters:
    :   `s` - the detail message

    Since:
    :   1.2