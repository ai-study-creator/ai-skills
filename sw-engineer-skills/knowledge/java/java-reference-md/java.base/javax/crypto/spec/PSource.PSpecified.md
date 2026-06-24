Module [java.base](../../../module-summary.md)

Package [javax.crypto.spec](package-summary.md)

# Class PSource.PSpecified

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

[javax.crypto.spec.PSource](PSource.md "class in javax.crypto.spec")

javax.crypto.spec.PSource.PSpecified

Enclosing class:
:   `PSource`

---

public static final class PSource.PSpecified
extends [PSource](PSource.md "class in javax.crypto.spec")

This class is used to explicitly specify the value for
encoding input P in OAEP Padding.

Since:
:   1.5

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.crypto.spec.[PSource](PSource.md "class in javax.crypto.spec")

  `PSource.PSpecified`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final PSource.PSpecified`

  `DEFAULT`

  The encoding input P whose value equals byte[0].
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PSpecified(byte[] p)`

  Constructs the source explicitly with the specified
  value `p` as the encoding input P.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `byte[]`

  `getValue()`

  Returns the value of encoding input P.

  ### Methods inherited from class javax.crypto.spec.[PSource](PSource.md "class in javax.crypto.spec")

  `getAlgorithm`

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### DEFAULT

    public static final [PSource.PSpecified](PSource.PSpecified.md "class in javax.crypto.spec") DEFAULT

    The encoding input P whose value equals byte[0].
* ## Constructor Details

  + ### PSpecified

    public PSpecified(byte[] p)

    Constructs the source explicitly with the specified
    value `p` as the encoding input P.
    Note:

    Parameters:
    :   `p` - the value of the encoding input. The contents
        of the array are copied to protect against subsequent
        modification.

    Throws:
    :   `NullPointerException` - if `p` is null.
* ## Method Details

  + ### getValue

    public byte[] getValue()

    Returns the value of encoding input P.

    Returns:
    :   the value of encoding input P. A new array is
        returned each time this method is called.