Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Class URICertStoreParameters

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.cert.URICertStoreParameters

All Implemented Interfaces:
:   `Cloneable`, `CertStoreParameters`

---

public final class URICertStoreParameters
extends [Object](../../lang/Object.md "class in java.lang")
implements [CertStoreParameters](CertStoreParameters.md "interface in java.security.cert")

Parameters used as input for `CertStore` algorithms which use
information contained in a URI to retrieve certificates and CRLs.

This class is used to provide necessary configuration parameters
through a URI as defined in RFC 5280 to implementations of
`CertStore` algorithms.

**Concurrent Access**

Unless otherwise specified, the methods defined in this class are not
thread-safe. Multiple threads that need to access a single
object concurrently should synchronize amongst themselves and
provide the necessary locking. Multiple threads each manipulating
separate objects need not synchronize.

Since:
:   9

See Also:
:   * [`CertStore`](CertStore.md "class in java.security.cert")
    * [`URI`](../../net/URI.md "class in java.net")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `URICertStoreParameters(URI uri)`

  Creates an instance of `URICertStoreParameters` with the
  specified URI.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `URICertStoreParameters`

  `clone()`

  Returns a copy of this object.

  `boolean`

  `equals(Object p)`

  Compares the specified object with this parameters object for equality.

  `URI`

  `getURI()`

  Returns the URI used to construct this
  `URICertStoreParameters` object.

  `int`

  `hashCode()`

  Returns a hash code value for this parameters object.

  `String`

  `toString()`

  Returns a formatted string describing the parameters
  including the URI used to construct this object.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### URICertStoreParameters

    public URICertStoreParameters([URI](../../net/URI.md "class in java.net") uri)

    Creates an instance of `URICertStoreParameters` with the
    specified URI.

    Parameters:
    :   `uri` - the URI which contains configuration information.

    Throws:
    :   `NullPointerException` - if `uri` is null
* ## Method Details

  + ### getURI

    public [URI](../../net/URI.md "class in java.net") getURI()

    Returns the URI used to construct this
    `URICertStoreParameters` object.

    Returns:
    :   the URI.
  + ### clone

    public [URICertStoreParameters](URICertStoreParameters.md "class in java.security.cert") clone()

    Returns a copy of this object. Changes to the copy will not affect
    the original and vice versa.

    Specified by:
    :   `clone` in interface `CertStoreParameters`

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   the copy

    See Also:
    :   - [`Cloneable`](../../lang/Cloneable.md "interface in java.lang")
  + ### hashCode

    public int hashCode()

    Returns a hash code value for this parameters object.
    The hash code is generated using the URI supplied at construction.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this parameters object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../lang/System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](../../lang/Object.md "class in java.lang") p)

    Compares the specified object with this parameters object for equality.
    Two URICertStoreParameters are considered equal if the URIs used
    to construct them are equal.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `p` - the object to test for equality with this parameters object.

    Returns:
    :   true if the specified object is equal to this parameters object.

    See Also:
    :   - [`Object.hashCode()`](../../lang/Object.md#hashCode())
        - [`HashMap`](../../util/HashMap.md "class in java.util")
  + ### toString

    public [String](../../lang/String.md "class in java.lang") toString()

    Returns a formatted string describing the parameters
    including the URI used to construct this object.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a formatted string describing the parameters