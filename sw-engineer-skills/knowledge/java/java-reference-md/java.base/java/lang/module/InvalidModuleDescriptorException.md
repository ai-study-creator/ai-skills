Module [java.base](../../../module-summary.md)

Package [java.lang.module](package-summary.md)

# Class InvalidModuleDescriptorException

[java.lang.Object](../Object.md "class in java.lang")

[java.lang.Throwable](../Throwable.md "class in java.lang")

[java.lang.Exception](../Exception.md "class in java.lang")

[java.lang.RuntimeException](../RuntimeException.md "class in java.lang")

java.lang.module.InvalidModuleDescriptorException

All Implemented Interfaces:
:   `Serializable`

---

public class InvalidModuleDescriptorException
extends [RuntimeException](../RuntimeException.md "class in java.lang")

Thrown when reading a module descriptor and the module descriptor is found
to be malformed or otherwise cannot be interpreted as a module descriptor.

Since:
:   9

See Also:
:   * [`ModuleDescriptor.read(java.io.InputStream, java.util.function.Supplier<java.util.Set<java.lang.String>>)`](ModuleDescriptor.md#read(java.io.InputStream,java.util.function.Supplier))
    * [Serialized Form](../../../../serialized-form.md#java.lang.module.InvalidModuleDescriptorException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InvalidModuleDescriptorException()`

  Constructs an `InvalidModuleDescriptorException` with no detail
  message.

  `InvalidModuleDescriptorException(String msg)`

  Constructs an `InvalidModuleDescriptorException` with the
  specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InvalidModuleDescriptorException

    public InvalidModuleDescriptorException()

    Constructs an `InvalidModuleDescriptorException` with no detail
    message.
  + ### InvalidModuleDescriptorException

    public InvalidModuleDescriptorException([String](../String.md "class in java.lang") msg)

    Constructs an `InvalidModuleDescriptorException` with the
    specified detail message.

    Parameters:
    :   `msg` - The detail message; can be `null`