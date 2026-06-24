Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class RuntimeException

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Exception](Exception.md "class in java.lang")

java.lang.RuntimeException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `AnnotationTypeMismatchException`, `ArithmeticException`, `ArrayStoreException`, `BufferOverflowException`, `BufferUnderflowException`, `CannotRedoException`, `CannotUndoException`, `CatalogException`, `ClassCastException`, `CMMException`, `CompletionException`, `ConcurrentModificationException`, `DateTimeException`, `DOMException`, `EmptyStackException`, `EnumConstantNotPresentException`, `EventException`, `FileSystemAlreadyExistsException`, `FileSystemNotFoundException`, `FindException`, `IllegalArgumentException`, `IllegalCallerException`, `IllegalMonitorStateException`, `IllegalPathStateException`, `IllegalStateException`, `IllformedLocaleException`, `ImagingOpException`, `InaccessibleObjectException`, `IncompleteAnnotationException`, `IndexOutOfBoundsException`, `InvalidModuleDescriptorException`, `JMRuntimeException`, `LayerInstantiationException`, `LSException`, `MalformedParameterizedTypeException`, `MalformedParametersException`, `MatchException`, `MirroredTypesException`, `MissingResourceException`, `NegativeArraySizeException`, `NoSuchElementException`, `NoSuchMechanismException`, `NullPointerException`, `ProfileDataException`, `ProviderException`, `ProviderNotFoundException`, `RangeException`, `RasterFormatException`, `RejectedExecutionException`, `ResolutionException`, `SecurityException`, `StructureViolationExceptionPREVIEW`, `TypeNotPresentException`, `UncheckedIOException`, `UndeclaredThrowableException`, `UnknownEntityException`, `UnmodifiableModuleException`, `UnmodifiableSetException`, `UnsupportedOperationException`, `WrongMethodTypeException`, `WrongThreadException`

---

public class RuntimeException
extends [Exception](Exception.md "class in java.lang")

`RuntimeException` is the superclass of those
exceptions that can be thrown during the normal operation of the
Java Virtual Machine.

`RuntimeException` and its subclasses are *unchecked
exceptions*. Unchecked exceptions do *not* need to be
declared in a method or constructor's `throws` clause if they
can be thrown by the execution of the method or constructor and
propagate outside the method or constructor boundary.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.RuntimeException)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `RuntimeException()`

  Constructs a new runtime exception with `null` as its
  detail message.

  `RuntimeException(String message)`

  Constructs a new runtime exception with the specified detail message.

  `RuntimeException(String message,
  Throwable cause)`

  Constructs a new runtime exception with the specified detail message and
  cause.

  `protected`

  `RuntimeException(String message,
  Throwable cause,
  boolean enableSuppression,
  boolean writableStackTrace)`

  Constructs a new runtime exception with the specified detail
  message, cause, suppression enabled or disabled, and writable
  stack trace enabled or disabled.

  `RuntimeException(Throwable cause)`

  Constructs a new runtime exception with the specified cause and a
  detail message of `(cause==null ? null : cause.toString())`
  (which typically contains the class and detail message of
  `cause`).
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### RuntimeException

    public RuntimeException()

    Constructs a new runtime exception with `null` as its
    detail message. The cause is not initialized, and may subsequently be
    initialized by a call to [`Throwable.initCause(java.lang.Throwable)`](Throwable.md#initCause(java.lang.Throwable)).
  + ### RuntimeException

    public RuntimeException([String](String.md "class in java.lang") message)

    Constructs a new runtime exception with the specified detail message.
    The cause is not initialized, and may subsequently be initialized by a
    call to [`Throwable.initCause(java.lang.Throwable)`](Throwable.md#initCause(java.lang.Throwable)).

    Parameters:
    :   `message` - the detail message. The detail message is saved for
        later retrieval by the [`Throwable.getMessage()`](Throwable.md#getMessage()) method.
  + ### RuntimeException

    public RuntimeException([String](String.md "class in java.lang") message,
    [Throwable](Throwable.md "class in java.lang") cause)

    Constructs a new runtime exception with the specified detail message and
    cause.

    Note that the detail message associated with
    `cause` is *not* automatically incorporated in
    this runtime exception's detail message.

    Parameters:
    :   `message` - the detail message (which is saved for later retrieval
        by the [`Throwable.getMessage()`](Throwable.md#getMessage()) method).
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](Throwable.md#getCause()) method). (A `null` value is
        permitted, and indicates that the cause is nonexistent or
        unknown.)

    Since:
    :   1.4
  + ### RuntimeException

    public RuntimeException([Throwable](Throwable.md "class in java.lang") cause)

    Constructs a new runtime exception with the specified cause and a
    detail message of `(cause==null ? null : cause.toString())`
    (which typically contains the class and detail message of
    `cause`). This constructor is useful for runtime exceptions
    that are little more than wrappers for other throwables.

    Parameters:
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](Throwable.md#getCause()) method). (A `null` value is
        permitted, and indicates that the cause is nonexistent or
        unknown.)

    Since:
    :   1.4
  + ### RuntimeException

    protected RuntimeException([String](String.md "class in java.lang") message,
    [Throwable](Throwable.md "class in java.lang") cause,
    boolean enableSuppression,
    boolean writableStackTrace)

    Constructs a new runtime exception with the specified detail
    message, cause, suppression enabled or disabled, and writable
    stack trace enabled or disabled.

    Parameters:
    :   `message` - the detail message.
    :   `cause` - the cause. (A `null` value is permitted,
        and indicates that the cause is nonexistent or unknown.)
    :   `enableSuppression` - whether or not suppression is enabled
        or disabled
    :   `writableStackTrace` - whether or not the stack trace should
        be writable

    Since:
    :   1.7