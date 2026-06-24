Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Class CertPath.CertPathRep

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.cert.CertPath.CertPathRep

All Implemented Interfaces:
:   `Serializable`

Enclosing class:
:   `CertPath`

---

protected static class CertPath.CertPathRep
extends [Object](../../lang/Object.md "class in java.lang")
implements [Serializable](../../io/Serializable.md "interface in java.io")

Alternate `CertPath` class for serialization.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.security.cert.CertPath.CertPathRep)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `CertPathRep(String type,
  byte[] data)`

  Creates a `CertPathRep` with the specified
  type and encoded form of a certification path.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected Object`

  `readResolve()`

  Returns a `CertPath` constructed from the type and data of
  this `CertPathRep`.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### CertPathRep

    protected CertPathRep([String](../../lang/String.md "class in java.lang") type,
    byte[] data)

    Creates a `CertPathRep` with the specified
    type and encoded form of a certification path.

    Parameters:
    :   `type` - the standard name of a `Certificate` type
    :   `data` - the encoded form of the certification path
* ## Method Details

  + ### readResolve

    protected [Object](../../lang/Object.md "class in java.lang") readResolve()
    throws [ObjectStreamException](../../io/ObjectStreamException.md "class in java.io")

    Returns a `CertPath` constructed from the type and data of
    this `CertPathRep`.

    Returns:
    :   the resolved `CertPath` object

    Throws:
    :   `ObjectStreamException` - if a `CertPath` object could not
        be constructed