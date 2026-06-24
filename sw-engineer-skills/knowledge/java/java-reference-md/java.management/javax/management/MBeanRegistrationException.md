Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class MBeanRegistrationException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.management.JMException](JMException.md "class in javax.management")

[javax.management.MBeanException](MBeanException.md "class in javax.management")

javax.management.MBeanRegistrationException

All Implemented Interfaces:
:   `Serializable`

---

public class MBeanRegistrationException
extends [MBeanException](MBeanException.md "class in javax.management")

Wraps exceptions thrown by the preRegister(), preDeregister() methods
of the `MBeanRegistration` interface.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.MBeanRegistrationException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MBeanRegistrationException(Exception e)`

  Creates an `MBeanRegistrationException` that wraps
  the actual `java.lang.Exception`.

  `MBeanRegistrationException(Exception e,
  String message)`

  Creates an `MBeanRegistrationException` that wraps
  the actual `java.lang.Exception` with a detailed
  message.
* ## Method Summary

  ### Methods inherited from class javax.management.[MBeanException](MBeanException.md "class in javax.management")

  `getCause, getTargetException`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### MBeanRegistrationException

    public MBeanRegistrationException([Exception](../../../java.base/java/lang/Exception.md "class in java.lang") e)

    Creates an `MBeanRegistrationException` that wraps
    the actual `java.lang.Exception`.

    Parameters:
    :   `e` - the wrapped exception.
  + ### MBeanRegistrationException

    public MBeanRegistrationException([Exception](../../../java.base/java/lang/Exception.md "class in java.lang") e,
    [String](../../../java.base/java/lang/String.md "class in java.lang") message)

    Creates an `MBeanRegistrationException` that wraps
    the actual `java.lang.Exception` with a detailed
    message.

    Parameters:
    :   `e` - the wrapped exception.
    :   `message` - the detail message.