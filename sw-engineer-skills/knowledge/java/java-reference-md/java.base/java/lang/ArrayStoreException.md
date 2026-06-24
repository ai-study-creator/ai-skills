Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class ArrayStoreException

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Exception](Exception.md "class in java.lang")

[java.lang.RuntimeException](RuntimeException.md "class in java.lang")

java.lang.ArrayStoreException

All Implemented Interfaces:
:   `Serializable`

---

public class ArrayStoreException
extends [RuntimeException](RuntimeException.md "class in java.lang")

Thrown to indicate that an attempt has been made to store the
wrong type of object into an array of objects. For example, the
following code generates an `ArrayStoreException`:
> ```
>      Object x[] = new String[3];
>      x[0] = Integer.valueOf(0);
> ```

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.ArrayStoreException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ArrayStoreException()`

  Constructs an `ArrayStoreException` with no detail message.

  `ArrayStoreException(String s)`

  Constructs an `ArrayStoreException` with the specified
  detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ArrayStoreException

    public ArrayStoreException()

    Constructs an `ArrayStoreException` with no detail message.
  + ### ArrayStoreException

    public ArrayStoreException([String](String.md "class in java.lang") s)

    Constructs an `ArrayStoreException` with the specified
    detail message.

    Parameters:
    :   `s` - the detail message.