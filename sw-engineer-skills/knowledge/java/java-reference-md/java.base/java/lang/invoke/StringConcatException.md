Module [java.base](../../../module-summary.md)

Package [java.lang.invoke](package-summary.md)

# Class StringConcatException

[java.lang.Object](../Object.md "class in java.lang")

[java.lang.Throwable](../Throwable.md "class in java.lang")

[java.lang.Exception](../Exception.md "class in java.lang")

java.lang.invoke.StringConcatException

All Implemented Interfaces:
:   `Serializable`

---

public class StringConcatException
extends [Exception](../Exception.md "class in java.lang")

StringConcatException is thrown by [`StringConcatFactory`](StringConcatFactory.md "class in java.lang.invoke") when linkage
invariants are violated.

Since:
:   9

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.lang.invoke.StringConcatException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `StringConcatException(String msg)`

  Constructs an exception with a message

  `StringConcatException(String msg,
  Throwable cause)`

  Constructs an exception with a message and a linked throwable
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### StringConcatException

    public StringConcatException([String](../String.md "class in java.lang") msg)

    Constructs an exception with a message

    Parameters:
    :   `msg` - exception message
  + ### StringConcatException

    public StringConcatException([String](../String.md "class in java.lang") msg,
    [Throwable](../Throwable.md "class in java.lang") cause)

    Constructs an exception with a message and a linked throwable

    Parameters:
    :   `msg` - exception message
    :   `cause` - throwable cause