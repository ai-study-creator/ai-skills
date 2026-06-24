Module [java.instrument](../../../module-summary.md)

Package [java.lang.instrument](package-summary.md)

# Class UnmodifiableClassException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

java.lang.instrument.UnmodifiableClassException

All Implemented Interfaces:
:   `Serializable`

---

public class UnmodifiableClassException
extends [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

Thrown by an implementation of
[`Instrumentation.redefineClasses`](Instrumentation.md#redefineClasses(java.lang.instrument.ClassDefinition...))
when one of the specified classes cannot be modified.

Since:
:   1.5

See Also:
:   * [`Instrumentation.redefineClasses(java.lang.instrument.ClassDefinition...)`](Instrumentation.md#redefineClasses(java.lang.instrument.ClassDefinition...))
    * [Serialized Form](../../../../serialized-form.md#java.lang.instrument.UnmodifiableClassException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UnmodifiableClassException()`

  Constructs an `UnmodifiableClassException` with no
  detail message.

  `UnmodifiableClassException(String s)`

  Constructs an `UnmodifiableClassException` with the
  specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UnmodifiableClassException

    public UnmodifiableClassException()

    Constructs an `UnmodifiableClassException` with no
    detail message.
  + ### UnmodifiableClassException

    public UnmodifiableClassException([String](../../../../java.base/java/lang/String.md "class in java.lang") s)

    Constructs an `UnmodifiableClassException` with the
    specified detail message.

    Parameters:
    :   `s` - the detail message.