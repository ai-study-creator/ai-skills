Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Interface KeyStore.Entry.Attribute

All Known Implementing Classes:
:   `PKCS12Attribute`

Enclosing interface:
:   `KeyStore.Entry`

---

public static interface KeyStore.Entry.Attribute

An attribute associated with a keystore entry.
It comprises a name and one or more values.

Since:
:   1.8

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `getName()`

  Returns the attribute's name.

  `String`

  `getValue()`

  Returns the attribute's value.

* ## Method Details

  + ### getName

    [String](../lang/String.md "class in java.lang") getName()

    Returns the attribute's name.

    Returns:
    :   the attribute name
  + ### getValue

    [String](../lang/String.md "class in java.lang") getValue()

    Returns the attribute's value.
    Multivalued attributes encode their values as a single string.

    Returns:
    :   the attribute value