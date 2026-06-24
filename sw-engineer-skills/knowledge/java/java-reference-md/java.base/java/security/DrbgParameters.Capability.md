Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Enum Class DrbgParameters.Capability

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Enum](../lang/Enum.md "class in java.lang")<[DrbgParameters.Capability](DrbgParameters.Capability.md "enum class in java.security")>

java.security.DrbgParameters.Capability

All Implemented Interfaces:
:   `Serializable`, `Comparable<DrbgParameters.Capability>`, `Constable`

Enclosing class:
:   `DrbgParameters`

---

public static enum DrbgParameters.Capability
extends [Enum](../lang/Enum.md "class in java.lang")<[DrbgParameters.Capability](DrbgParameters.Capability.md "enum class in java.security")>

The reseedable and prediction resistance capabilities of a DRBG.

When this object is passed to a `SecureRandom.getInstance()` call,
it is the requested minimum capability. When it's returned from
`SecureRandom.getParameters()`, it is the effective capability.

Please note that while the `Instantiate_function` defined in
NIST SP 800-90Ar1 only includes a `prediction_resistance_flag`
parameter, the `Capability` type includes an extra value
[`RESEED_ONLY`](#RESEED_ONLY) because reseeding is an optional function.
If `NONE` is used in an `Instantiation` object in calling the
`SecureRandom.getInstance` method, the returned DRBG instance
is not guaranteed to support reseeding. If `RESEED_ONLY` or
`PR_AND_RESEED` is used, the instance must support reseeding.

The table below lists possible effective values if a certain
capability is requested, i.e.
> ```
>  Capability requested = ...;
>  SecureRandom s = SecureRandom.getInstance("DRBG",
>          DrbgParameters(-1, requested, null));
>  Capability effective = ((DrbgParametes.Initiate) s.getParameters())
>          .getCapability();
> ```

requested and effective capabilities

| Requested Value | Possible Effective Values |
| --- | --- |
| NONE | NONE, RESEED\_ONLY, PR\_AND\_RESEED |
| RESEED\_ONLY | RESEED\_ONLY, PR\_AND\_RESEED |
| PR\_AND\_RESEED | PR\_AND\_RESEED |

A DRBG implementation supporting prediction resistance must also
support reseeding.

Since:
:   9

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `NONE`

  Neither prediction resistance nor reseed.

  `PR_AND_RESEED`

  Both prediction resistance and reseed.

  `RESEED_ONLY`

  Reseed but no prediction resistance.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `supportsPredictionResistance()`

  Returns whether this capability supports prediction resistance.

  `boolean`

  `supportsReseeding()`

  Returns whether this capability supports reseeding.

  `String`

  `toString()`

  Returns the name of this enum constant, as contained in the
  declaration.

  `static DrbgParameters.Capability`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static DrbgParameters.Capability[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, valueOf`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### PR\_AND\_RESEED

    public static final [DrbgParameters.Capability](DrbgParameters.Capability.md "enum class in java.security") PR\_AND\_RESEED

    Both prediction resistance and reseed.
  + ### RESEED\_ONLY

    public static final [DrbgParameters.Capability](DrbgParameters.Capability.md "enum class in java.security") RESEED\_ONLY

    Reseed but no prediction resistance.
  + ### NONE

    public static final [DrbgParameters.Capability](DrbgParameters.Capability.md "enum class in java.security") NONE

    Neither prediction resistance nor reseed.
* ## Method Details

  + ### values

    public static [DrbgParameters.Capability](DrbgParameters.Capability.md "enum class in java.security")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [DrbgParameters.Capability](DrbgParameters.Capability.md "enum class in java.security") valueOf([String](../lang/String.md "class in java.lang") name)

    Returns the enum constant of this class with the specified name.
    The string must match *exactly* an identifier used to declare an
    enum constant in this class. (Extraneous whitespace characters are
    not permitted.)

    Parameters:
    :   `name` - the name of the enum constant to be returned.

    Returns:
    :   the enum constant with the specified name

    Throws:
    :   `IllegalArgumentException` - if this enum class has no constant with the specified name
    :   `NullPointerException` - if the argument is null
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Description copied from class: `Enum`

    Returns the name of this enum constant, as contained in the
    declaration. This method may be overridden, though it typically
    isn't necessary or desirable. An enum class should override this
    method when a more "programmer-friendly" string form exists.

    Overrides:
    :   `toString` in class `Enum<DrbgParameters.Capability>`

    Returns:
    :   the name of this enum constant
  + ### supportsReseeding

    public boolean supportsReseeding()

    Returns whether this capability supports reseeding.

    Returns:
    :   `true` for [`PR_AND_RESEED`](#PR_AND_RESEED) and
        [`RESEED_ONLY`](#RESEED_ONLY), and `false` for [`NONE`](#NONE)
  + ### supportsPredictionResistance

    public boolean supportsPredictionResistance()

    Returns whether this capability supports prediction resistance.

    Returns:
    :   `true` for [`PR_AND_RESEED`](#PR_AND_RESEED), and `false`
        for [`RESEED_ONLY`](#RESEED_ONLY) and [`NONE`](#NONE)