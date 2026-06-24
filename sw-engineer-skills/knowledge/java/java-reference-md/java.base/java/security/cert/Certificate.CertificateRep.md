Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Class Certificate.CertificateRep

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.cert.Certificate.CertificateRep

All Implemented Interfaces:
:   `Serializable`

Enclosing class:
:   `Certificate`

---

protected static class Certificate.CertificateRep
extends [Object](../../lang/Object.md "class in java.lang")
implements [Serializable](../../io/Serializable.md "interface in java.io")

Alternate `Certificate` class for serialization.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.security.cert.Certificate.CertificateRep)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `CertificateRep(String type,
  byte[] data)`

  Construct the alternate `Certificate` class with the
  `Certificate` type and `Certificate` encoding bytes.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected Object`

  `readResolve()`

  Returns a `Certificate` with the type and data of this
  `CertificateRep`.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### CertificateRep

    protected CertificateRep([String](../../lang/String.md "class in java.lang") type,
    byte[] data)

    Construct the alternate `Certificate` class with the
    `Certificate` type and `Certificate` encoding bytes.

    Parameters:
    :   `type` - the standard name of the `Certificate` type.
    :   `data` - the `Certificate` data.
* ## Method Details

  + ### readResolve

    protected [Object](../../lang/Object.md "class in java.lang") readResolve()
    throws [ObjectStreamException](../../io/ObjectStreamException.md "class in java.io")

    Returns a `Certificate` with the type and data of this
    `CertificateRep`.

    Returns:
    :   the resolved `Certificate` object

    Throws:
    :   `ObjectStreamException` - if the `Certificate`
        could not be resolved