Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Class DSAGenParameterSpec

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.spec.DSAGenParameterSpec

All Implemented Interfaces:
:   `AlgorithmParameterSpec`

---

public final class DSAGenParameterSpec
extends [Object](../../lang/Object.md "class in java.lang")
implements [AlgorithmParameterSpec](AlgorithmParameterSpec.md "interface in java.security.spec")

This immutable class specifies the set of parameters used for
generating DSA parameters as specified in
[FIPS 186-3 Digital Signature Standard (DSS)](http://csrc.nist.gov/publications/fips/fips186-3/fips_186-3.pdf).

Since:
:   1.8

See Also:
:   * [`AlgorithmParameterSpec`](AlgorithmParameterSpec.md "interface in java.security.spec")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DSAGenParameterSpec(int primePLen,
  int subprimeQLen)`

  Creates a domain parameter specification for DSA parameter
  generation using `primePLen` and `subprimeQLen`.

  `DSAGenParameterSpec(int primePLen,
  int subprimeQLen,
  int seedLen)`

  Creates a domain parameter specification for DSA parameter
  generation using `primePLen`, `subprimeQLen`,
  and `seedLen`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getPrimePLength()`

  Returns the desired length of the prime P of the
  to-be-generated DSA domain parameters in bits.

  `int`

  `getSeedLength()`

  Returns the desired length of the domain parameter seed in bits.

  `int`

  `getSubprimeQLength()`

  Returns the desired length of the sub-prime Q of the
  to-be-generated DSA domain parameters in bits.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DSAGenParameterSpec

    public DSAGenParameterSpec(int primePLen,
    int subprimeQLen)

    Creates a domain parameter specification for DSA parameter
    generation using `primePLen` and `subprimeQLen`.
    The value of `subprimeQLen` is also used as the default
    length of the domain parameter seed in bits.

    Parameters:
    :   `primePLen` - the desired length of the prime P in bits.
    :   `subprimeQLen` - the desired length of the sub-prime Q in bits.

    Throws:
    :   `IllegalArgumentException` - if `primePLen`
        or `subprimeQLen` is illegal per the specification of
        FIPS 186-3.
  + ### DSAGenParameterSpec

    public DSAGenParameterSpec(int primePLen,
    int subprimeQLen,
    int seedLen)

    Creates a domain parameter specification for DSA parameter
    generation using `primePLen`, `subprimeQLen`,
    and `seedLen`.

    Parameters:
    :   `primePLen` - the desired length of the prime P in bits.
    :   `subprimeQLen` - the desired length of the sub-prime Q in bits.
    :   `seedLen` - the desired length of the domain parameter seed in bits,
        shall be equal to or greater than `subprimeQLen`.

    Throws:
    :   `IllegalArgumentException` - if `primePLenLen`,
        `subprimeQLen`, or `seedLen` is illegal per the
        specification of FIPS 186-3.
* ## Method Details

  + ### getPrimePLength

    public int getPrimePLength()

    Returns the desired length of the prime P of the
    to-be-generated DSA domain parameters in bits.

    Returns:
    :   the length of the prime P.
  + ### getSubprimeQLength

    public int getSubprimeQLength()

    Returns the desired length of the sub-prime Q of the
    to-be-generated DSA domain parameters in bits.

    Returns:
    :   the length of the sub-prime Q.
  + ### getSeedLength

    public int getSeedLength()

    Returns the desired length of the domain parameter seed in bits.

    Returns:
    :   the length of the domain parameter seed.