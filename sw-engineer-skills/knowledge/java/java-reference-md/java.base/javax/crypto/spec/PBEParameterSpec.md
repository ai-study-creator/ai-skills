Module [java.base](../../../module-summary.md)

Package [javax.crypto.spec](package-summary.md)

# Class PBEParameterSpec

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.crypto.spec.PBEParameterSpec

All Implemented Interfaces:
:   `AlgorithmParameterSpec`

---

public class PBEParameterSpec
extends [Object](../../../java/lang/Object.md "class in java.lang")
implements [AlgorithmParameterSpec](../../../java/security/spec/AlgorithmParameterSpec.md "interface in java.security.spec")

This class specifies the set of parameters used with password-based
encryption (PBE), as defined in the
[PKCS #5](http://www.ietf.org/rfc/rfc2898.txt)
standard.

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PBEParameterSpec(byte[] salt,
  int iterationCount)`

  Constructs a parameter set for password-based encryption as defined in
  the PKCS #5 standard.

  `PBEParameterSpec(byte[] salt,
  int iterationCount,
  AlgorithmParameterSpec paramSpec)`

  Constructs a parameter set for password-based encryption as defined in
  the PKCS #5 standard.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getIterationCount()`

  Returns the iteration count.

  `AlgorithmParameterSpec`

  `getParameterSpec()`

  Returns the cipher algorithm parameter specification.

  `byte[]`

  `getSalt()`

  Returns the salt.

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### PBEParameterSpec

    public PBEParameterSpec(byte[] salt,
    int iterationCount)

    Constructs a parameter set for password-based encryption as defined in
    the PKCS #5 standard.

    Parameters:
    :   `salt` - the salt. The contents of `salt` are copied
        to protect against subsequent modification.
    :   `iterationCount` - the iteration count.

    Throws:
    :   `NullPointerException` - if `salt` is null.
  + ### PBEParameterSpec

    public PBEParameterSpec(byte[] salt,
    int iterationCount,
    [AlgorithmParameterSpec](../../../java/security/spec/AlgorithmParameterSpec.md "interface in java.security.spec") paramSpec)

    Constructs a parameter set for password-based encryption as defined in
    the PKCS #5 standard.

    Parameters:
    :   `salt` - the salt. The contents of `salt` are copied
        to protect against subsequent modification.
    :   `iterationCount` - the iteration count.
    :   `paramSpec` - the cipher algorithm parameter specification, which
        may be null.

    Throws:
    :   `NullPointerException` - if `salt` is null.

    Since:
    :   1.8
* ## Method Details

  + ### getSalt

    public byte[] getSalt()

    Returns the salt.

    Returns:
    :   the salt. Returns a new array
        each time this method is called.
  + ### getIterationCount

    public int getIterationCount()

    Returns the iteration count.

    Returns:
    :   the iteration count
  + ### getParameterSpec

    public [AlgorithmParameterSpec](../../../java/security/spec/AlgorithmParameterSpec.md "interface in java.security.spec") getParameterSpec()

    Returns the cipher algorithm parameter specification.

    Returns:
    :   the parameter specification, or null if none was set.

    Since:
    :   1.8