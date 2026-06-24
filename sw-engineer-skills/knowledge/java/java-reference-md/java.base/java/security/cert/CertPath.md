Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Class CertPath

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.cert.CertPath

All Implemented Interfaces:
:   `Serializable`

---

public abstract class CertPath
extends [Object](../../lang/Object.md "class in java.lang")
implements [Serializable](../../io/Serializable.md "interface in java.io")

An immutable sequence of certificates (a certification path).

This is an abstract class that defines the methods common to all
`CertPath`s. Subclasses can handle different kinds of
certificates (X.509, PGP, etc.).

All `CertPath` objects have a type, a list of
`Certificate`s, and one or more supported encodings. Because the
`CertPath` class is immutable, a `CertPath` cannot
change in any externally visible way after being constructed. This
stipulation applies to all public fields and methods of this class and any
added or overridden by subclasses.

The type is a `String` that identifies the type of
`Certificate`s in the certification path. For each
certificate `cert` in a certification path `certPath`,
`cert.getType().equals(certPath.getType())` must be
`true`.

The list of `Certificate`s is an ordered `List` of
zero or more `Certificate`s. This `List` and all
of the `Certificate`s contained in it must be immutable.

Each `CertPath` object must support one or more encodings
so that the object can be translated into a byte array for storage or
transmission to other parties. Preferably, these encodings should be
well-documented standards (such as PKCS#7). One of the encodings supported
by a `CertPath` is considered the default encoding. This
encoding is used if no encoding is explicitly requested (for the
[`getEncoded()`](#getEncoded()) method, for instance).

All `CertPath` objects are also `Serializable`.
`CertPath` objects are resolved into an alternate
[`CertPathRep`](CertPath.CertPathRep.md "class in java.security.cert") object during serialization. This allows
a `CertPath` object to be serialized into an equivalent
representation regardless of its underlying implementation.

`CertPath` objects can be created with a
`CertificateFactory` or they can be returned by other classes,
such as a `CertPathBuilder`.

By convention, X.509 `CertPath`s (consisting of
`X509Certificate`s), are ordered starting with the target
certificate and ending with a certificate issued by the trust anchor. That
is, the issuer of one certificate is the subject of the following one. The
certificate representing the [`TrustAnchor`](TrustAnchor.md "class in java.security.cert") should not be
included in the certification path. Unvalidated X.509 `CertPath`s
may not follow these conventions. PKIX `CertPathValidator`s will
detect any departure from these conventions that cause the certification
path to be invalid and throw a `CertPathValidatorException`.

Every implementation of the Java platform is required to support the
following standard `CertPath` encodings:

* `PKCS7`
* `PkiPath`

These encodings are described in the [CertPath Encodings section](../../../../../specs/security/standard-names.md#certpath-encodings) of the
Java Security Standard Algorithm Names Specification.
Consult the release documentation for your implementation to see if any
other encodings are supported.

**Concurrent Access**

All `CertPath` objects must be thread-safe. That is, multiple
threads may concurrently invoke the methods defined in this class on a
single `CertPath` object (or more than one) with no
ill effects. This is also true for the `List` returned by
`CertPath.getCertificates`.

Requiring `CertPath` objects to be immutable and thread-safe
allows them to be passed around to various pieces of code without worrying
about coordinating access. Providing this thread-safety is
generally not difficult, since the `CertPath` and
`List` objects in question are immutable.

Since:
:   1.4

See Also:
:   * [`CertificateFactory`](CertificateFactory.md "class in java.security.cert")
    * [`CertPathBuilder`](CertPathBuilder.md "class in java.security.cert")
    * [Serialized Form](../../../../serialized-form.md#java.security.cert.CertPath)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected static class`

  `CertPath.CertPathRep`

  Alternate `CertPath` class for serialization.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `CertPath(String type)`

  Creates a `CertPath` of the specified type.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object other)`

  Compares this certification path for equality with the specified
  object.

  `abstract List<? extends Certificate>`

  `getCertificates()`

  Returns the list of certificates in this certification path.

  `abstract byte[]`

  `getEncoded()`

  Returns the encoded form of this certification path, using the default
  encoding.

  `abstract byte[]`

  `getEncoded(String encoding)`

  Returns the encoded form of this certification path, using the
  specified encoding.

  `abstract Iterator<String>`

  `getEncodings()`

  Returns an iteration of the encodings supported by this certification
  path, with the default encoding first.

  `String`

  `getType()`

  Returns the type of `Certificate`s in this certification
  path.

  `int`

  `hashCode()`

  Returns the hashcode for this certification path.

  `String`

  `toString()`

  Returns a string representation of this certification path.

  `protected Object`

  `writeReplace()`

  Replaces the `CertPath` to be serialized with a
  [`CertPathRep`](CertPath.CertPathRep.md "class in java.security.cert") object containing the
  `Certificate` type and encoded bytes of the `CertPath`.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### CertPath

    protected CertPath([String](../../lang/String.md "class in java.lang") type)

    Creates a `CertPath` of the specified type.

    This constructor is protected because most users should use a
    `CertificateFactory` to create `CertPath`s.

    Parameters:
    :   `type` - the standard name of the type of
        `Certificate`s in this path
* ## Method Details

  + ### getType

    public [String](../../lang/String.md "class in java.lang") getType()

    Returns the type of `Certificate`s in this certification
    path. This is the same string that would be returned by
    [`cert.getType()`](Certificate.md#getType())
    for all `Certificate`s in the certification path.

    Returns:
    :   the type of `Certificate`s in this certification
        path (never null)
  + ### getEncodings

    public abstract [Iterator](../../util/Iterator.md "interface in java.util")<[String](../../lang/String.md "class in java.lang")> getEncodings()

    Returns an iteration of the encodings supported by this certification
    path, with the default encoding first. Attempts to modify the returned
    `Iterator` via its `remove` method result in an
    `UnsupportedOperationException`.

    Returns:
    :   an `Iterator` over the names of the supported
        encodings (as Strings)
  + ### equals

    public boolean equals([Object](../../lang/Object.md "class in java.lang") other)

    Compares this certification path for equality with the specified
    object. Two `CertPath`s are equal if and only if their
    types are equal and their certificate `List`s (and by
    implication the `Certificate`s in those `List`s)
    are equal. A `CertPath` is never equal to an object that is
    not a `CertPath`.

    This algorithm is implemented by this method. If it is overridden,
    the behavior specified here must be maintained.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `other` - the object to test for equality with this certification path

    Returns:
    :   true if the specified object is equal to this certification path,
        false otherwise

    See Also:
    :   - [`Object.hashCode()`](../../lang/Object.md#hashCode())
        - [`HashMap`](../../util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns the hashcode for this certification path. The hash code of
    a certification path is defined to be the result of the following
    calculation:

    ```
      hashCode = path.getType().hashCode();
      hashCode = 31*hashCode + path.getCertificates().hashCode();
    ```

    This ensures that `path1.equals(path2)` implies that
    `path1.hashCode()==path2.hashCode()` for any two certification
    paths, `path1` and `path2`, as required by the
    general contract of `Object.hashCode`.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   the hashcode value for this certification path

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../../lang/String.md "class in java.lang") toString()

    Returns a string representation of this certification path.
    This calls the `toString` method on each of the
    `Certificate`s in the path.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this certification path
  + ### getEncoded

    public abstract byte[] getEncoded()
    throws [CertificateEncodingException](CertificateEncodingException.md "class in java.security.cert")

    Returns the encoded form of this certification path, using the default
    encoding.

    Returns:
    :   the encoded bytes

    Throws:
    :   `CertificateEncodingException` - if an encoding error occurs
  + ### getEncoded

    public abstract byte[] getEncoded([String](../../lang/String.md "class in java.lang") encoding)
    throws [CertificateEncodingException](CertificateEncodingException.md "class in java.security.cert")

    Returns the encoded form of this certification path, using the
    specified encoding.

    Parameters:
    :   `encoding` - the name of the encoding to use

    Returns:
    :   the encoded bytes

    Throws:
    :   `CertificateEncodingException` - if an encoding error occurs or
        the encoding requested is not supported
  + ### getCertificates

    public abstract [List](../../util/List.md "interface in java.util")<? extends [Certificate](Certificate.md "class in java.security.cert")> getCertificates()

    Returns the list of certificates in this certification path.
    The `List` returned must be immutable and thread-safe.

    Returns:
    :   an immutable `List` of `Certificate`s
        (may be empty, but not null)
  + ### writeReplace

    protected [Object](../../lang/Object.md "class in java.lang") writeReplace()
    throws [ObjectStreamException](../../io/ObjectStreamException.md "class in java.io")

    Replaces the `CertPath` to be serialized with a
    [`CertPathRep`](CertPath.CertPathRep.md "class in java.security.cert") object containing the
    `Certificate` type and encoded bytes of the `CertPath`.

    Returns:
    :   a `CertPathRep` containing the `Certificate` type
        and encoded bytes of the `CertPath`

    Throws:
    :   `ObjectStreamException` - if a `CertPathRep` object
        representing this certification path could not be created