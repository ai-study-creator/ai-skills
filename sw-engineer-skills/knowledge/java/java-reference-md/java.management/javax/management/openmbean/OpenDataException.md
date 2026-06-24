Module [java.management](../../../module-summary.md)

Package [javax.management.openmbean](package-summary.md)

# Class OpenDataException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.management.JMException](../JMException.md "class in javax.management")

javax.management.openmbean.OpenDataException

All Implemented Interfaces:
:   `Serializable`

---

public class OpenDataException
extends [JMException](../JMException.md "class in javax.management")

This checked exception is thrown when an *open type*, an *open data* or an *open MBean metadata info* instance
could not be constructed because one or more validity constraints were not met.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.openmbean.OpenDataException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `OpenDataException()`

  An OpenDataException with no detail message.

  `OpenDataException(String msg)`

  An OpenDataException with a detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### OpenDataException

    public OpenDataException()

    An OpenDataException with no detail message.
  + ### OpenDataException

    public OpenDataException([String](../../../../java.base/java/lang/String.md "class in java.lang") msg)

    An OpenDataException with a detail message.

    Parameters:
    :   `msg` - the detail message.