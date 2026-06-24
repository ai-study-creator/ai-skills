Module [java.prefs](../../../module-summary.md)

Package [java.util.prefs](package-summary.md)

# Class BackingStoreException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

java.util.prefs.BackingStoreException

All Implemented Interfaces:
:   `Serializable`

---

public class BackingStoreException
extends [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

Thrown to indicate that a preferences operation could not complete because
of a failure in the backing store, or a failure to contact the backing
store.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.util.prefs.BackingStoreException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BackingStoreException(String s)`

  Constructs a BackingStoreException with the specified detail message.

  `BackingStoreException(Throwable cause)`

  Constructs a BackingStoreException with the specified cause.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### BackingStoreException

    public BackingStoreException([String](../../../../java.base/java/lang/String.md "class in java.lang") s)

    Constructs a BackingStoreException with the specified detail message.

    Parameters:
    :   `s` - the detail message.
  + ### BackingStoreException

    public BackingStoreException([Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a BackingStoreException with the specified cause.

    Parameters:
    :   `cause` - the cause