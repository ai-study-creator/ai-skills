Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class Timestamp

[java.lang.Object](../lang/Object.md "class in java.lang")

java.security.Timestamp

All Implemented Interfaces:
:   `Serializable`

---

public final class Timestamp
extends [Object](../lang/Object.md "class in java.lang")
implements [Serializable](../io/Serializable.md "interface in java.io")

This class encapsulates information about a signed timestamp.
It is immutable.
It includes the timestamp's date and time as well as information about the
Timestamping Authority (TSA) which generated and signed the timestamp.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.security.Timestamp)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Timestamp(Date timestamp,
  CertPath signerCertPath)`

  Constructs a `Timestamp`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Tests for equality between the specified object and this
  `Timestamp`.

  `CertPath`

  `getSignerCertPath()`

  Returns the certificate path for the Timestamping Authority.

  `Date`

  `getTimestamp()`

  Returns the date and time when the `Timestamp` was generated.

  `int`

  `hashCode()`

  Returns the hash code value for this `Timestamp`.

  `String`

  `toString()`

  Returns a string describing this `Timestamp`.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### Timestamp

    public Timestamp([Date](../util/Date.md "class in java.util") timestamp,
    [CertPath](cert/CertPath.md "class in java.security.cert") signerCertPath)

    Constructs a `Timestamp`.

    Parameters:
    :   `timestamp` - is the timestamp's date and time. It must not be
        `null`.
    :   `signerCertPath` - is the TSA's certificate path. It must not be
        `null`.

    Throws:
    :   `NullPointerException` - if timestamp or signerCertPath is
        `null`.
* ## Method Details

  + ### getTimestamp

    public [Date](../util/Date.md "class in java.util") getTimestamp()

    Returns the date and time when the `Timestamp` was generated.

    Returns:
    :   The timestamp's date and time.
  + ### getSignerCertPath

    public [CertPath](cert/CertPath.md "class in java.security.cert") getSignerCertPath()

    Returns the certificate path for the Timestamping Authority.

    Returns:
    :   The TSA's certificate path.
  + ### hashCode

    public int hashCode()

    Returns the hash code value for this `Timestamp`.
    The hash code is generated using the date and time of the
    `Timestamp` and the TSA's certificate path.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this `Timestamp`.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../lang/System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](../lang/Object.md "class in java.lang") obj)

    Tests for equality between the specified object and this
    `Timestamp`. Two timestamps are considered equal if the date and
    time of their timestamp's and their signer's certificate paths are equal.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the object to test for equality with this `Timestamp`.

    Returns:
    :   `true` if the timestamps are considered equal,
        `false` otherwise.

    See Also:
    :   - [`Object.hashCode()`](../lang/Object.md#hashCode())
        - [`HashMap`](../util/HashMap.md "class in java.util")
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Returns a string describing this `Timestamp`.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   A string comprising the date and time of the `Timestamp`
        and its signer's certificate.