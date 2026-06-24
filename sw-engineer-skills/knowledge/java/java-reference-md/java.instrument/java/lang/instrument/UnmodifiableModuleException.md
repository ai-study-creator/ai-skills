Module [java.instrument](../../../module-summary.md)

Package [java.lang.instrument](package-summary.md)

# Class UnmodifiableModuleException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

java.lang.instrument.UnmodifiableModuleException

All Implemented Interfaces:
:   `Serializable`

---

public class UnmodifiableModuleException
extends [RuntimeException](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

Thrown to indicate that a module cannot be modified.

Since:
:   9

See Also:
:   * [`Instrumentation.redefineModule(java.lang.Module, java.util.Set<java.lang.Module>, java.util.Map<java.lang.String, java.util.Set<java.lang.Module>>, java.util.Map<java.lang.String, java.util.Set<java.lang.Module>>, java.util.Set<java.lang.Class<?>>, java.util.Map<java.lang.Class<?>, java.util.List<java.lang.Class<?>>>)`](Instrumentation.md#redefineModule(java.lang.Module,java.util.Set,java.util.Map,java.util.Map,java.util.Set,java.util.Map))
    * [Serialized Form](../../../../serialized-form.md#java.lang.instrument.UnmodifiableModuleException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UnmodifiableModuleException()`

  Constructs an `UnmodifiableModuleException` with no
  detail message.

  `UnmodifiableModuleException(String msg)`

  Constructs an `UnmodifiableModuleException` with the
  specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UnmodifiableModuleException

    public UnmodifiableModuleException()

    Constructs an `UnmodifiableModuleException` with no
    detail message.
  + ### UnmodifiableModuleException

    public UnmodifiableModuleException([String](../../../../java.base/java/lang/String.md "class in java.lang") msg)

    Constructs an `UnmodifiableModuleException` with the
    specified detail message.

    Parameters:
    :   `msg` - the detail message.