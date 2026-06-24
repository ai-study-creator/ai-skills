Module [java.base](../../../module-summary.md)

Package [java.nio.file](package-summary.md)

# Class ProviderNotFoundException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../lang/RuntimeException.md "class in java.lang")

java.nio.file.ProviderNotFoundException

All Implemented Interfaces:
:   `Serializable`

---

public class ProviderNotFoundException
extends [RuntimeException](../../lang/RuntimeException.md "class in java.lang")

Runtime exception thrown when a provider of the required type cannot be found.

Since:
:   1.7

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.nio.file.ProviderNotFoundException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ProviderNotFoundException()`

  Constructs an instance of this class.

  `ProviderNotFoundException(String msg)`

  Constructs an instance of this class.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ProviderNotFoundException

    public ProviderNotFoundException()

    Constructs an instance of this class.
  + ### ProviderNotFoundException

    public ProviderNotFoundException([String](../../lang/String.md "class in java.lang") msg)

    Constructs an instance of this class.

    Parameters:
    :   `msg` - the detail message