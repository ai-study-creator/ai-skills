Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class BootstrapMethodError

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Error](Error.md "class in java.lang")

[java.lang.LinkageError](LinkageError.md "class in java.lang")

java.lang.BootstrapMethodError

All Implemented Interfaces:
:   `Serializable`

---

public class BootstrapMethodError
extends [LinkageError](LinkageError.md "class in java.lang")

Thrown to indicate that an `invokedynamic` instruction or a dynamic
constant failed to resolve its bootstrap method and arguments,
or for `invokedynamic` instruction the bootstrap method has failed to
provide a
[call site](invoke/CallSite.md "class in java.lang.invoke") with a
[target](invoke/CallSite.md#getTarget())
of the correct [method type](invoke/MethodHandle.md#type()),
or for a dynamic constant the bootstrap method has failed to provide a
constant value of the required type.

Since:
:   1.7

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.BootstrapMethodError)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BootstrapMethodError()`

  Constructs a `BootstrapMethodError` with no detail message.

  `BootstrapMethodError(String s)`

  Constructs a `BootstrapMethodError` with the specified
  detail message.

  `BootstrapMethodError(String s,
  Throwable cause)`

  Constructs a `BootstrapMethodError` with the specified
  detail message and cause.

  `BootstrapMethodError(Throwable cause)`

  Constructs a `BootstrapMethodError` with the specified
  cause.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### BootstrapMethodError

    public BootstrapMethodError()

    Constructs a `BootstrapMethodError` with no detail message.
  + ### BootstrapMethodError

    public BootstrapMethodError([String](String.md "class in java.lang") s)

    Constructs a `BootstrapMethodError` with the specified
    detail message.

    Parameters:
    :   `s` - the detail message.
  + ### BootstrapMethodError

    public BootstrapMethodError([String](String.md "class in java.lang") s,
    [Throwable](Throwable.md "class in java.lang") cause)

    Constructs a `BootstrapMethodError` with the specified
    detail message and cause.

    Parameters:
    :   `s` - the detail message.
    :   `cause` - the cause, may be `null`.
  + ### BootstrapMethodError

    public BootstrapMethodError([Throwable](Throwable.md "class in java.lang") cause)

    Constructs a `BootstrapMethodError` with the specified
    cause.

    Parameters:
    :   `cause` - the cause, may be `null`.