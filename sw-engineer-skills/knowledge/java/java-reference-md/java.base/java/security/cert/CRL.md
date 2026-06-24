Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Class CRL

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.cert.CRL

Direct Known Subclasses:
:   `X509CRL`

---

public abstract class CRL
extends [Object](../../lang/Object.md "class in java.lang")

This class is an abstraction of certificate revocation lists (CRLs) that
have different formats but important common uses. For example, all CRLs
share the functionality of listing revoked certificates, and can be queried
on whether they list a given certificate.

Specialized CRL types can be defined by subclassing off of this abstract
class.

Since:
:   1.2

See Also:
:   * [`X509CRL`](X509CRL.md "class in java.security.cert")
    * [`CertificateFactory`](CertificateFactory.md "class in java.security.cert")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `CRL(String type)`

  Creates a CRL of the specified type.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final String`

  `getType()`

  Returns the type of this CRL.

  `abstract boolean`

  `isRevoked(Certificate cert)`

  Checks whether the given certificate is on this CRL.

  `abstract String`

  `toString()`

  Returns a string representation of this CRL.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### CRL

    protected CRL([String](../../lang/String.md "class in java.lang") type)

    Creates a CRL of the specified type.

    Parameters:
    :   `type` - the standard name of the CRL type.
        See the [Java Security Standard Algorithm Names](../../../../../specs/security/standard-names.md) document
        for information about standard CRL types.
* ## Method Details

  + ### getType

    public final [String](../../lang/String.md "class in java.lang") getType()

    Returns the type of this CRL.

    Returns:
    :   the type of this CRL.
  + ### toString

    public abstract [String](../../lang/String.md "class in java.lang") toString()

    Returns a string representation of this CRL.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this CRL.
  + ### isRevoked

    public abstract boolean isRevoked([Certificate](Certificate.md "class in java.security.cert") cert)

    Checks whether the given certificate is on this CRL.

    Parameters:
    :   `cert` - the certificate to check for.

    Returns:
    :   true if the given certificate is on this CRL,
        false otherwise.