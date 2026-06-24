Module [java.base](../../../module-summary.md)

Package [javax.crypto.spec](package-summary.md)

# Class PSource

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.crypto.spec.PSource

Direct Known Subclasses:
:   `PSource.PSpecified`

---

public class PSource
extends [Object](../../../java/lang/Object.md "class in java.lang")

This class specifies the source for encoding input P in OAEP Padding,
as defined in the
[PKCS#1 v2.2](https://tools.ietf.org/rfc/rfc8017.txt) standard.

```
 PSourceAlgorithm ::= AlgorithmIdentifier {
   {PKCS1PSourceAlgorithms}
 }
```

where

```
 PKCS1PSourceAlgorithms    ALGORITHM-IDENTIFIER ::= {
   { OID id-pSpecified PARAMETERS EncodingParameters },
   ...  -- Allows for future expansion --
 }
 EncodingParameters ::= OCTET STRING(SIZE(0..MAX))
```

Since:
:   1.5

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static final class`

  `PSource.PSpecified`

  This class is used to explicitly specify the value for
  encoding input P in OAEP Padding.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `PSource(String pSrcName)`

  Constructs a source of the encoding input P for OAEP
  padding as defined in the PKCS #1 standard using the
  specified PSource algorithm.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getAlgorithm()`

  Returns the PSource algorithm name.

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### PSource

    protected PSource([String](../../../java/lang/String.md "class in java.lang") pSrcName)

    Constructs a source of the encoding input P for OAEP
    padding as defined in the PKCS #1 standard using the
    specified PSource algorithm.

    Parameters:
    :   `pSrcName` - the algorithm for the source of the
        encoding input P.

    Throws:
    :   `NullPointerException` - if `pSrcName`
        is null.
* ## Method Details

  + ### getAlgorithm

    public [String](../../../java/lang/String.md "class in java.lang") getAlgorithm()

    Returns the PSource algorithm name.

    Returns:
    :   the PSource algorithm name.