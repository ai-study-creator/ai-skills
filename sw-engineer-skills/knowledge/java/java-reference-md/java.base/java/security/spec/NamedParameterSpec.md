Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Class NamedParameterSpec

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.spec.NamedParameterSpec

All Implemented Interfaces:
:   `AlgorithmParameterSpec`

Direct Known Subclasses:
:   `ECGenParameterSpec`

---

public class NamedParameterSpec
extends [Object](../../lang/Object.md "class in java.lang")
implements [AlgorithmParameterSpec](AlgorithmParameterSpec.md "interface in java.security.spec")

This class is used to specify any algorithm parameters that are determined
by a standard name. This class also holds constants for standard parameter
set names. The names of these constants exactly match the corresponding
parameter set name. For example, NamedParameterSpec.X25519 represents the
parameter set identified by the string "X25519". These strings are defined
in the [Java Security Standard Algorithm Names Specification](../../../../../specs/security/standard-names.md#parameterspec-names).

Since:
:   11

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final NamedParameterSpec`

  `ED25519`

  The Ed25519 parameters

  `static final NamedParameterSpec`

  `ED448`

  The Ed448 parameters

  `static final NamedParameterSpec`

  `X25519`

  The X25519 parameters

  `static final NamedParameterSpec`

  `X448`

  The X448 parameters
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NamedParameterSpec(String stdName)`

  Creates a parameter specification using a standard (or predefined)
  name `stdName`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getName()`

  Returns the standard name that determines the algorithm parameters.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### X25519

    public static final [NamedParameterSpec](NamedParameterSpec.md "class in java.security.spec") X25519

    The X25519 parameters
  + ### X448

    public static final [NamedParameterSpec](NamedParameterSpec.md "class in java.security.spec") X448

    The X448 parameters
  + ### ED25519

    public static final [NamedParameterSpec](NamedParameterSpec.md "class in java.security.spec") ED25519

    The Ed25519 parameters

    Since:
    :   15
  + ### ED448

    public static final [NamedParameterSpec](NamedParameterSpec.md "class in java.security.spec") ED448

    The Ed448 parameters

    Since:
    :   15
* ## Constructor Details

  + ### NamedParameterSpec

    public NamedParameterSpec([String](../../lang/String.md "class in java.lang") stdName)

    Creates a parameter specification using a standard (or predefined)
    name `stdName`. For the
    list of supported names, please consult the documentation
    of the provider whose implementation will be used.

    Parameters:
    :   `stdName` - the standard name of the algorithm parameters. See the
        ParameterSpec Names section in the
        [Java Security Standard Algorithm Names Specification](../../../../../specs/security/standard-names.md#parameterspec-names) for
        information about standard names.

    Throws:
    :   `NullPointerException` - if `stdName` is null.
* ## Method Details

  + ### getName

    public [String](../../lang/String.md "class in java.lang") getName()

    Returns the standard name that determines the algorithm parameters.

    Returns:
    :   the standard name.