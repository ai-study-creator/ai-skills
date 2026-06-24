Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class NullPointerException

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Exception](Exception.md "class in java.lang")

[java.lang.RuntimeException](RuntimeException.md "class in java.lang")

java.lang.NullPointerException

All Implemented Interfaces:
:   `Serializable`

---

public class NullPointerException
extends [RuntimeException](RuntimeException.md "class in java.lang")

Thrown when an application attempts to use `null` in a
case where an object is required. These include:

* Calling the instance method of a `null` object.* Accessing or modifying the field of a `null` object.* Taking the length of `null` as if it were an array.* Accessing or modifying the slots of `null` as if it
        were an array.* Throwing `null` as if it were a `Throwable`
          value.

Applications should throw instances of this class to indicate
other illegal uses of the `null` object.
`NullPointerException` objects may be constructed by the
virtual machine as if [suppression were disabled and/or the
stack trace was not writable](Throwable.md#%3Cinit%3E(java.lang.String,java.lang.Throwable,boolean,boolean)).

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.NullPointerException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NullPointerException()`

  Constructs a `NullPointerException` with no detail message.

  `NullPointerException(String s)`

  Constructs a `NullPointerException` with the specified
  detail message.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Throwable`

  `fillInStackTrace()`

  Fills in the execution stack trace.

  `String`

  `getMessage()`

  Returns the detail message string of this throwable.

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, getCause, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NullPointerException

    public NullPointerException()

    Constructs a `NullPointerException` with no detail message.
  + ### NullPointerException

    public NullPointerException([String](String.md "class in java.lang") s)

    Constructs a `NullPointerException` with the specified
    detail message.

    Parameters:
    :   `s` - the detail message.
* ## Method Details

  + ### fillInStackTrace

    public [Throwable](Throwable.md "class in java.lang") fillInStackTrace()

    Fills in the execution stack trace. This method records within this
    `Throwable` object information about the current state of
    the stack frames for the current thread.

    If the stack trace of this `Throwable` [is not
    writable](Throwable.md#%3Cinit%3E(java.lang.String,java.lang.Throwable,boolean,boolean)), calling this method has no effect.

    Overrides:
    :   `fillInStackTrace` in class `Throwable`

    Returns:
    :   a reference to this `Throwable` instance.

    See Also:
    :   - [`Throwable.printStackTrace()`](Throwable.md#printStackTrace())
  + ### getMessage

    public [String](String.md "class in java.lang") getMessage()

    Returns the detail message string of this throwable.

    If a non-null message was supplied in a constructor it is
    returned. Otherwise, an implementation specific message or
    `null` is returned.

    Overrides:
    :   `getMessage` in class `Throwable`

    Returns:
    :   the detail message string, which may be `null`.