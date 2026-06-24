Module [java.compiler](../../../module-summary.md)

Package [javax.lang.model](package-summary.md)

# Class UnknownEntityException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

javax.lang.model.UnknownEntityException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `UnknownAnnotationValueException`, `UnknownDirectiveException`, `UnknownElementException`, `UnknownTypeException`

---

public class UnknownEntityException
extends [RuntimeException](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

Superclass of exceptions which indicate that an unknown kind of
entity was encountered. This situation can occur if the language
evolves and new kinds of constructs are introduced. Subclasses of
this exception may be thrown by visitors to indicate that the
visitor was created for a prior version of the language.

Since:
:   1.7

See Also:
:   * [`UnknownElementException`](element/UnknownElementException.md "class in javax.lang.model.element")
    * [`UnknownAnnotationValueException`](element/UnknownAnnotationValueException.md "class in javax.lang.model.element")
    * [`UnknownTypeException`](type/UnknownTypeException.md "class in javax.lang.model.type")
    * [Serialized Form](../../../../serialized-form.md#javax.lang.model.UnknownEntityException)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `UnknownEntityException(String message)`

  Creates a new `UnknownEntityException` with the specified
  detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UnknownEntityException

    protected UnknownEntityException([String](../../../../java.base/java/lang/String.md "class in java.lang") message)

    Creates a new `UnknownEntityException` with the specified
    detail message.

    Parameters:
    :   `message` - the detail message