Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Interface ECField

All Known Implementing Classes:
:   `ECFieldF2m`, `ECFieldFp`

---

public interface ECField

This interface represents an elliptic curve (EC) finite field.
All specialized EC fields must implements this interface.

Since:
:   1.5

See Also:
:   * [`ECFieldFp`](ECFieldFp.md "class in java.security.spec")
    * [`ECFieldF2m`](ECFieldF2m.md "class in java.security.spec")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `int`

  `getFieldSize()`

  Returns the field size in bits.

* ## Method Details

  + ### getFieldSize

    int getFieldSize()

    Returns the field size in bits. Note: For prime finite
    field ECFieldFp, size of prime p in bits is returned.
    For characteristic 2 finite field ECFieldF2m, m is returned.

    Returns:
    :   the field size in bits.