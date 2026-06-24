Module [java.base](../../../module-summary.md)

Package [java.lang.module](package-summary.md)

# Class ResolvedModule

[java.lang.Object](../Object.md "class in java.lang")

java.lang.module.ResolvedModule

---

public final class ResolvedModule
extends [Object](../Object.md "class in java.lang")

A module in a graph of *resolved modules*.

`ResolvedModule` defines the [`configuration`](#configuration())
method to get the configuration that the resolved module is in. It defines
the [`reference`](#reference()) method to get the reference to the
module's content.

Since:
:   9

See Also:
:   * [`Configuration.modules()`](Configuration.md#modules())

* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Configuration`

  `configuration()`

  Returns the configuration that this resolved module is in.

  `boolean`

  `equals(Object ob)`

  Tests this resolved module for equality with the given object.

  `int`

  `hashCode()`

  Computes a hash code for this resolved module.

  `String`

  `name()`

  Returns the module name.

  `Set<ResolvedModule>`

  `reads()`

  Returns the set of resolved modules that this resolved module reads.

  `ModuleReference`

  `reference()`

  Returns the reference to the module's content.

  `String`

  `toString()`

  Returns a string describing this resolved module.

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Method Details

  + ### configuration

    public [Configuration](Configuration.md "class in java.lang.module") configuration()

    Returns the configuration that this resolved module is in.

    Returns:
    :   The configuration that this resolved module is in
  + ### reference

    public [ModuleReference](ModuleReference.md "class in java.lang.module") reference()

    Returns the reference to the module's content.

    Returns:
    :   The reference to the module's content
  + ### name

    public [String](../String.md "class in java.lang") name()

    Returns the module name.
    This convenience method is the equivalent to invoking:

    ```
         reference().descriptor().name()
    ```

    Returns:
    :   The module name
  + ### reads

    public [Set](../../util/Set.md "interface in java.util")<[ResolvedModule](ResolvedModule.md "class in java.lang.module")> reads()

    Returns the set of resolved modules that this resolved module reads.

    Returns:
    :   A possibly-empty unmodifiable set of resolved modules that
        this resolved module reads
  + ### hashCode

    public int hashCode()

    Computes a hash code for this resolved module.

    The hash code is based upon the components of the resolved module
    and satisfies the general contract of the [`Object.hashCode`](../Object.md#hashCode()) method.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   The hash-code value for this resolved module

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](../Object.md "class in java.lang") ob)

    Tests this resolved module for equality with the given object.

    If the given object is not a `ResolvedModule` then this
    method returns `false`. Two `ResolvedModule` objects are
    equal if they are in the same configuration and have equal references
    to the module content.

    This method satisfies the general contract of the [`Object.equals`](../Object.md#equals(java.lang.Object)) method.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `ob` - the object to which this object is to be compared

    Returns:
    :   `true` if, and only if, the given object is a module
        reference that is equal to this module reference

    See Also:
    :   - [`Object.hashCode()`](../Object.md#hashCode())
        - [`HashMap`](../../util/HashMap.md "class in java.util")
  + ### toString

    public [String](../String.md "class in java.lang") toString()

    Returns a string describing this resolved module.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   A string describing this resolved module