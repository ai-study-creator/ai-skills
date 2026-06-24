Module [java.instrument](../../../module-summary.md)

Package [java.lang.instrument](package-summary.md)

# Class IllegalClassFormatException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

java.lang.instrument.IllegalClassFormatException

All Implemented Interfaces:
:   `Serializable`

---

public class IllegalClassFormatException
extends [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

Thrown by an implementation of
[`ClassFileTransformer.transform`](ClassFileTransformer.md#transform(java.lang.ClassLoader,java.lang.String,java.lang.Class,java.security.ProtectionDomain,byte%5B%5D))
when its input parameters are invalid.
This may occur either because the initial class file bytes were
invalid or a previously applied transform corrupted the bytes.

Since:
:   1.5

See Also:
:   * [`ClassFileTransformer.transform(java.lang.ClassLoader, java.lang.String, java.lang.Class<?>, java.security.ProtectionDomain, byte[])`](ClassFileTransformer.md#transform(java.lang.ClassLoader,java.lang.String,java.lang.Class,java.security.ProtectionDomain,byte%5B%5D))
    * [Serialized Form](../../../../serialized-form.md#java.lang.instrument.IllegalClassFormatException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IllegalClassFormatException()`

  Constructs an `IllegalClassFormatException` with no
  detail message.

  `IllegalClassFormatException(String s)`

  Constructs an `IllegalClassFormatException` with the
  specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### IllegalClassFormatException

    public IllegalClassFormatException()

    Constructs an `IllegalClassFormatException` with no
    detail message.
  + ### IllegalClassFormatException

    public IllegalClassFormatException([String](../../../../java.base/java/lang/String.md "class in java.lang") s)

    Constructs an `IllegalClassFormatException` with the
    specified detail message.

    Parameters:
    :   `s` - the detail message.