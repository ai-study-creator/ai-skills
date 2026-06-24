Module [java.xml.crypto](../../../module-summary.md)

Package [javax.xml.crypto](package-summary.md)

# Class KeySelector.Purpose

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.crypto.KeySelector.Purpose

Enclosing class:
:   `KeySelector`

---

public static class KeySelector.Purpose
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

The purpose of the key that is to be selected.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final KeySelector.Purpose`

  `DECRYPT`

  A key for decrypting.

  `static final KeySelector.Purpose`

  `ENCRYPT`

  A key for encrypting.

  `static final KeySelector.Purpose`

  `SIGN`

  A key for signing.

  `static final KeySelector.Purpose`

  `VERIFY`

  A key for verifying.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `toString()`

  Returns a string representation of this purpose ("sign",
  "verify", "encrypt", or "decrypt").

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### SIGN

    public static final [KeySelector.Purpose](KeySelector.Purpose.md "class in javax.xml.crypto") SIGN

    A key for signing.
  + ### VERIFY

    public static final [KeySelector.Purpose](KeySelector.Purpose.md "class in javax.xml.crypto") VERIFY

    A key for verifying.
  + ### ENCRYPT

    public static final [KeySelector.Purpose](KeySelector.Purpose.md "class in javax.xml.crypto") ENCRYPT

    A key for encrypting.
  + ### DECRYPT

    public static final [KeySelector.Purpose](KeySelector.Purpose.md "class in javax.xml.crypto") DECRYPT

    A key for decrypting.
* ## Method Details

  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this purpose ("sign",
    "verify", "encrypt", or "decrypt").

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this purpose