Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class AssertionError

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Error](Error.md "class in java.lang")

java.lang.AssertionError

All Implemented Interfaces:
:   `Serializable`

---

public class AssertionError
extends [Error](Error.md "class in java.lang")

Thrown to indicate that an assertion has failed.

The seven one-argument public constructors provided by this
class ensure that the assertion error returned by the invocation:

```
     new AssertionError(expression)
```

has as its detail message the *string conversion* of
*expression* (as defined in section of
The Java Language Specification),
regardless of the type of *expression*.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.AssertionError)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AssertionError()`

  Constructs an AssertionError with no detail message.

  `AssertionError(boolean detailMessage)`

  Constructs an AssertionError with its detail message derived
  from the specified `boolean`, which is converted to
  a string as defined in section of
  The Java Language Specification.

  `AssertionError(char detailMessage)`

  Constructs an AssertionError with its detail message derived
  from the specified `char`, which is converted to a
  string as defined in section of
  The Java Language Specification.

  `AssertionError(double detailMessage)`

  Constructs an AssertionError with its detail message derived
  from the specified `double`, which is converted to a
  string as defined in section of
  The Java Language Specification.

  `AssertionError(float detailMessage)`

  Constructs an AssertionError with its detail message derived
  from the specified `float`, which is converted to a
  string as defined in section of
  The Java Language Specification.

  `AssertionError(int detailMessage)`

  Constructs an AssertionError with its detail message derived
  from the specified `int`, which is converted to a
  string as defined in section of
  The Java Language Specification.

  `AssertionError(long detailMessage)`

  Constructs an AssertionError with its detail message derived
  from the specified `long`, which is converted to a
  string as defined in section of
  The Java Language Specification.

  `AssertionError(Object detailMessage)`

  Constructs an AssertionError with its detail message derived
  from the specified object, which is converted to a string as
  defined in section of
  The Java Language Specification.

  `AssertionError(String message,
  Throwable cause)`

  Constructs a new `AssertionError` with the specified
  detail message and cause.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AssertionError

    public AssertionError()

    Constructs an AssertionError with no detail message.
  + ### AssertionError

    public AssertionError([Object](Object.md "class in java.lang") detailMessage)

    Constructs an AssertionError with its detail message derived
    from the specified object, which is converted to a string as
    defined in section of
    The Java Language Specification.

    If the specified object is an instance of `Throwable`, it
    becomes the *cause* of the newly constructed assertion error.

    Parameters:
    :   `detailMessage` - value to be used in constructing detail message

    See Also:
    :   - [`Throwable.getCause()`](Throwable.md#getCause())
  + ### AssertionError

    public AssertionError(boolean detailMessage)

    Constructs an AssertionError with its detail message derived
    from the specified `boolean`, which is converted to
    a string as defined in section of
    The Java Language Specification.

    Parameters:
    :   `detailMessage` - value to be used in constructing detail message
  + ### AssertionError

    public AssertionError(char detailMessage)

    Constructs an AssertionError with its detail message derived
    from the specified `char`, which is converted to a
    string as defined in section of
    The Java Language Specification.

    Parameters:
    :   `detailMessage` - value to be used in constructing detail message
  + ### AssertionError

    public AssertionError(int detailMessage)

    Constructs an AssertionError with its detail message derived
    from the specified `int`, which is converted to a
    string as defined in section of
    The Java Language Specification.

    Parameters:
    :   `detailMessage` - value to be used in constructing detail message
  + ### AssertionError

    public AssertionError(long detailMessage)

    Constructs an AssertionError with its detail message derived
    from the specified `long`, which is converted to a
    string as defined in section of
    The Java Language Specification.

    Parameters:
    :   `detailMessage` - value to be used in constructing detail message
  + ### AssertionError

    public AssertionError(float detailMessage)

    Constructs an AssertionError with its detail message derived
    from the specified `float`, which is converted to a
    string as defined in section of
    The Java Language Specification.

    Parameters:
    :   `detailMessage` - value to be used in constructing detail message
  + ### AssertionError

    public AssertionError(double detailMessage)

    Constructs an AssertionError with its detail message derived
    from the specified `double`, which is converted to a
    string as defined in section of
    The Java Language Specification.

    Parameters:
    :   `detailMessage` - value to be used in constructing detail message
  + ### AssertionError

    public AssertionError([String](String.md "class in java.lang") message,
    [Throwable](Throwable.md "class in java.lang") cause)

    Constructs a new `AssertionError` with the specified
    detail message and cause.

    Note that the detail message associated with
    `cause` is *not* automatically incorporated in
    this error's detail message.

    Parameters:
    :   `message` - the detail message, may be `null`
    :   `cause` - the cause, may be `null`

    Since:
    :   1.7