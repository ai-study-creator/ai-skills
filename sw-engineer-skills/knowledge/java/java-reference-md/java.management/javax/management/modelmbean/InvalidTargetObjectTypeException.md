Module [java.management](../../../module-summary.md)

Package [javax.management.modelmbean](package-summary.md)

# Class InvalidTargetObjectTypeException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

javax.management.modelmbean.InvalidTargetObjectTypeException

All Implemented Interfaces:
:   `Serializable`

---

public class InvalidTargetObjectTypeException
extends [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

Exception thrown when an invalid target object type is specified.

The **serialVersionUID** of this class is `1190536278266811217L`.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.modelmbean.InvalidTargetObjectTypeException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InvalidTargetObjectTypeException()`

  Default constructor.

  `InvalidTargetObjectTypeException(Exception e,
  String s)`

  Constructor taking an exception and a string.

  `InvalidTargetObjectTypeException(String s)`

  Constructor from a string.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InvalidTargetObjectTypeException

    public InvalidTargetObjectTypeException()

    Default constructor.
  + ### InvalidTargetObjectTypeException

    public InvalidTargetObjectTypeException([String](../../../../java.base/java/lang/String.md "class in java.lang") s)

    Constructor from a string.

    Parameters:
    :   `s` - String value that will be incorporated in the message for
        this exception.
  + ### InvalidTargetObjectTypeException

    public InvalidTargetObjectTypeException([Exception](../../../../java.base/java/lang/Exception.md "class in java.lang") e,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") s)

    Constructor taking an exception and a string.

    Parameters:
    :   `e` - Exception that we may have caught to reissue as an
        InvalidTargetObjectTypeException. The message will be used, and we may want to
        consider overriding the printStackTrace() methods to get data
        pointing back to original throw stack.
    :   `s` - String value that will be incorporated in message for
        this exception.