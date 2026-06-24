Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class ClassCastException

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Exception](Exception.md "class in java.lang")

[java.lang.RuntimeException](RuntimeException.md "class in java.lang")

java.lang.ClassCastException

All Implemented Interfaces:
:   `Serializable`

---

public class ClassCastException
extends [RuntimeException](RuntimeException.md "class in java.lang")

Thrown to indicate that the code has attempted to cast an object
to a subclass of which it is not an instance. For example, the
following code generates a `ClassCastException`:
> ```
>      Object x = Integer.valueOf(0);
>      System.out.println((String)x);
> ```

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.ClassCastException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ClassCastException()`

  Constructs a `ClassCastException` with no detail message.

  `ClassCastException(String s)`

  Constructs a `ClassCastException` with the specified
  detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ClassCastException

    public ClassCastException()

    Constructs a `ClassCastException` with no detail message.
  + ### ClassCastException

    public ClassCastException([String](String.md "class in java.lang") s)

    Constructs a `ClassCastException` with the specified
    detail message.

    Parameters:
    :   `s` - the detail message.