Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class Exception

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

java.lang.Exception

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `AlreadyBoundException`, `AWTException`, `BackingStoreException`, `BadAttributeValueExpException`, `BadBinaryOpValueExpException`, `BadLocationException`, `BadStringOperationException`, `BrokenBarrierException`, `CertificateException`, `CloneNotSupportedException`, `DataFormatException`, `DatatypeConfigurationException`, `DestroyFailedException`, `ExecutionException`, `ExpandVetoException`, `FontFormatException`, `GeneralSecurityException`, `GSSException`, `IllegalClassFormatException`, `InterruptedException`, `IntrospectionException`, `InvalidApplicationException`, `InvalidMidiDataException`, `InvalidPreferencesFormatException`, `InvalidTargetObjectTypeException`, `IOException`, `JMException`, `KeySelectorException`, `LambdaConversionException`, `LineUnavailableException`, `MarshalException`, `MidiUnavailableException`, `MimeTypeParseException`, `NamingException`, `NoninvertibleTransformException`, `NotBoundException`, `ParseException`, `ParserConfigurationException`, `PrinterException`, `PrintException`, `PrivilegedActionException`, `PropertyVetoException`, `ReflectiveOperationException`, `RefreshFailedException`, `RuntimeException`, `SAXException`, `ScriptException`, `ServerNotActiveException`, `SQLException`, `StringConcatException`, `TimeoutException`, `TooManyListenersException`, `TransformerException`, `TransformException`, `UnmodifiableClassException`, `UnsupportedAudioFileException`, `UnsupportedCallbackException`, `UnsupportedFlavorException`, `UnsupportedLookAndFeelException`, `URIReferenceException`, `URISyntaxException`, `XAException`, `XMLParseException`, `XMLSignatureException`, `XMLStreamException`, `XPathException`

---

public class Exception
extends [Throwable](Throwable.md "class in java.lang")

The class `Exception` and its subclasses are a form of
`Throwable` that indicates conditions that a reasonable
application might want to catch.

The class `Exception` and any subclasses that are not also
subclasses of [`RuntimeException`](RuntimeException.md "class in java.lang") are *checked
exceptions*. Checked exceptions need to be declared in a
method or constructor's `throws` clause if they can be thrown
by the execution of the method or constructor and propagate outside
the method or constructor boundary.

Since:
:   1.0

See Also:
:   * [`Error`](Error.md "class in java.lang")
    * [Serialized Form](../../../serialized-form.md#java.lang.Exception)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `Exception()`

  Constructs a new exception with `null` as its detail message.

  `Exception(String message)`

  Constructs a new exception with the specified detail message.

  `Exception(String message,
  Throwable cause)`

  Constructs a new exception with the specified detail message and
  cause.

  `protected`

  `Exception(String message,
  Throwable cause,
  boolean enableSuppression,
  boolean writableStackTrace)`

  Constructs a new exception with the specified detail message,
  cause, suppression enabled or disabled, and writable stack
  trace enabled or disabled.

  `Exception(Throwable cause)`

  Constructs a new exception with the specified cause and a detail
  message of `(cause==null ? null : cause.toString())` (which
  typically contains the class and detail message of `cause`).
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### Exception

    public Exception()

    Constructs a new exception with `null` as its detail message.
    The cause is not initialized, and may subsequently be initialized by a
    call to [`Throwable.initCause(java.lang.Throwable)`](Throwable.md#initCause(java.lang.Throwable)).
  + ### Exception

    public Exception([String](String.md "class in java.lang") message)

    Constructs a new exception with the specified detail message. The
    cause is not initialized, and may subsequently be initialized by
    a call to [`Throwable.initCause(java.lang.Throwable)`](Throwable.md#initCause(java.lang.Throwable)).

    Parameters:
    :   `message` - the detail message. The detail message is saved for
        later retrieval by the [`Throwable.getMessage()`](Throwable.md#getMessage()) method.
  + ### Exception

    public Exception([String](String.md "class in java.lang") message,
    [Throwable](Throwable.md "class in java.lang") cause)

    Constructs a new exception with the specified detail message and
    cause.

    Note that the detail message associated with
    `cause` is *not* automatically incorporated in
    this exception's detail message.

    Parameters:
    :   `message` - the detail message (which is saved for later retrieval
        by the [`Throwable.getMessage()`](Throwable.md#getMessage()) method).
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](Throwable.md#getCause()) method). (A `null` value is
        permitted, and indicates that the cause is nonexistent or
        unknown.)

    Since:
    :   1.4
  + ### Exception

    public Exception([Throwable](Throwable.md "class in java.lang") cause)

    Constructs a new exception with the specified cause and a detail
    message of `(cause==null ? null : cause.toString())` (which
    typically contains the class and detail message of `cause`).
    This constructor is useful for exceptions that are little more than
    wrappers for other throwables (for example, [`PrivilegedActionException`](../security/PrivilegedActionException.md "class in java.security")).

    Parameters:
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](Throwable.md#getCause()) method). (A `null` value is
        permitted, and indicates that the cause is nonexistent or
        unknown.)

    Since:
    :   1.4
  + ### Exception

    protected Exception([String](String.md "class in java.lang") message,
    [Throwable](Throwable.md "class in java.lang") cause,
    boolean enableSuppression,
    boolean writableStackTrace)

    Constructs a new exception with the specified detail message,
    cause, suppression enabled or disabled, and writable stack
    trace enabled or disabled.

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