Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class ChangedCharSetException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.io.IOException](../../../../java.base/java/io/IOException.md "class in java.io")

javax.swing.text.ChangedCharSetException

All Implemented Interfaces:
:   `Serializable`

---

public class ChangedCharSetException
extends [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

ChangedCharSetException as the name indicates is an exception
thrown when the charset is changed.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ChangedCharSetException(String charSetSpec,
  boolean charSetKey)`

  Constructs a `ChangedCharSetException`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getCharSetSpec()`

  Returns the char set specification.

  `boolean`

  `keyEqualsCharSet()`

  Returns the char set key.

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ChangedCharSetException

    public ChangedCharSetException([String](../../../../java.base/java/lang/String.md "class in java.lang") charSetSpec,
    boolean charSetKey)

    Constructs a `ChangedCharSetException`.

    Parameters:
    :   `charSetSpec` - name of the char set specification
    :   `charSetKey` - char set key
* ## Method Details

  + ### getCharSetSpec

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getCharSetSpec()

    Returns the char set specification.

    Returns:
    :   the char set specification
  + ### keyEqualsCharSet

    public boolean keyEqualsCharSet()

    Returns the char set key.

    Returns:
    :   the char set key