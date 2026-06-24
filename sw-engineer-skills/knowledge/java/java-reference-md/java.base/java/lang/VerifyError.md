Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class VerifyError

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Error](Error.md "class in java.lang")

[java.lang.LinkageError](LinkageError.md "class in java.lang")

java.lang.VerifyError

All Implemented Interfaces:
:   `Serializable`

---

public class VerifyError
extends [LinkageError](LinkageError.md "class in java.lang")

Thrown when the "verifier" detects that a class file,
though well formed, contains some sort of internal inconsistency
or security problem.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.VerifyError)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `VerifyError()`

  Constructs an `VerifyError` with no detail message.

  `VerifyError(String s)`

  Constructs an `VerifyError` with the specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### VerifyError

    public VerifyError()

    Constructs an `VerifyError` with no detail message.
  + ### VerifyError

    public VerifyError([String](String.md "class in java.lang") s)

    Constructs an `VerifyError` with the specified detail message.

    Parameters:
    :   `s` - the detail message.