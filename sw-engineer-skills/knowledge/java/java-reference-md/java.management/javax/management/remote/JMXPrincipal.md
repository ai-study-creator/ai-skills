Module [java.management](../../../module-summary.md)

Package [javax.management.remote](package-summary.md)

# Class JMXPrincipal

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.remote.JMXPrincipal

All Implemented Interfaces:
:   `Serializable`, `Principal`

---

public class JMXPrincipal
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Principal](../../../../java.base/java/security/Principal.md "interface in java.security"), [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

The identity of a remote client of the JMX Remote API.

Principals such as this `JMXPrincipal`
may be associated with a particular `Subject`
to augment that `Subject` with an additional
identity. Refer to the [`Subject`](../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth")
class for more information on how to achieve this.
Authorization decisions can then be based upon
the Principals associated with a `Subject`.

Since:
:   1.5

See Also:
:   * [`Principal`](../../../../java.base/java/security/Principal.md "interface in java.security")
    * [`Subject`](../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth")
    * [Serialized Form](../../../../serialized-form.md#javax.management.remote.JMXPrincipal)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JMXPrincipal(String name)`

  Creates a JMXPrincipal for a given identity.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object o)`

  Compares the specified Object with this `JMXPrincipal`
  for equality.

  `String`

  `getName()`

  Returns the name of this principal.

  `int`

  `hashCode()`

  Returns a hash code for this `JMXPrincipal`.

  `String`

  `toString()`

  Returns a string representation of this `JMXPrincipal`.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.security.[Principal](../../../../java.base/java/security/Principal.md "interface in java.security")

  `implies`

* ## Constructor Details

  + ### JMXPrincipal

    public JMXPrincipal([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Creates a JMXPrincipal for a given identity.

    Parameters:
    :   `name` - the JMX Remote API name for this identity.

    Throws:
    :   `NullPointerException` - if the `name` is
        `null`.
* ## Method Details

  + ### getName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Returns the name of this principal.

    Specified by:
    :   `getName` in interface `Principal`

    Returns:
    :   the name of this `JMXPrincipal`.
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this `JMXPrincipal`.

    Specified by:
    :   `toString` in interface `Principal`

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this `JMXPrincipal`.
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") o)

    Compares the specified Object with this `JMXPrincipal`
    for equality. Returns true if the given object is also a
    `JMXPrincipal` and the two JMXPrincipals
    have the same name.

    Specified by:
    :   `equals` in interface `Principal`

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `o` - Object to be compared for equality with this
        `JMXPrincipal`.

    Returns:
    :   true if the specified Object is equal to this
        `JMXPrincipal`.

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns a hash code for this `JMXPrincipal`.

    Specified by:
    :   `hashCode` in interface `Principal`

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code for this `JMXPrincipal`.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))