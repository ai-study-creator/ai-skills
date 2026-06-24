Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Interface Principal

All Known Subinterfaces:
:   `GroupPrincipal`, `UserPrincipal`

All Known Implementing Classes:
:   `Identity`, `IdentityScope`, `JMXPrincipal`, `KerberosPrincipal`, `Signer`, `X500Principal`

---

public interface Principal

This interface represents the abstract notion of a `Principal`, which
can be used to represent any entity, such as an individual, a
corporation, and a login id.

Since:
:   1.1

See Also:
:   * [`X509Certificate`](cert/X509Certificate.md "class in java.security.cert")

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object another)`

  Compares this `Principal` to the specified object.

  `String`

  `getName()`

  Returns the name of this `Principal`.

  `int`

  `hashCode()`

  Returns a hashcode for this `Principal`.

  `default boolean`

  `implies(Subject subject)`

  Returns `true` if the specified subject is implied by this
  `Principal`.

  `String`

  `toString()`

  Returns a string representation of this `Principal`.

* ## Method Details

  + ### equals

    boolean equals([Object](../lang/Object.md "class in java.lang") another)

    Compares this `Principal` to the specified object.
    Returns `true`
    if the object passed in matches the `Principal` represented by
    the implementation of this interface.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `another` - `Principal` to compare with.

    Returns:
    :   `true` if the `Principal` passed in is the same as
        that encapsulated by this `Principal`, and `false` otherwise.

    See Also:
    :   - [`Object.hashCode()`](../lang/Object.md#hashCode())
        - [`HashMap`](../util/HashMap.md "class in java.util")
  + ### toString

    [String](../lang/String.md "class in java.lang") toString()

    Returns a string representation of this `Principal`.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this `Principal`.
  + ### hashCode

    int hashCode()

    Returns a hashcode for this `Principal`.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hashcode for this `Principal`.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../lang/System.md#identityHashCode(java.lang.Object))
  + ### getName

    [String](../lang/String.md "class in java.lang") getName()

    Returns the name of this `Principal`.

    Returns:
    :   the name of this `Principal`.
  + ### implies

    default boolean implies([Subject](../../javax/security/auth/Subject.md "class in javax.security.auth") subject)

    Returns `true` if the specified subject is implied by this
    `Principal`.

    Parameters:
    :   `subject` - the `Subject`

    Returns:
    :   `true` if `subject` is non-null and is
        implied by this `Principal`, or false otherwise.

    Since:
    :   1.8