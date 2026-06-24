Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class RenderingHints.Key

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.RenderingHints.Key

Enclosing class:
:   `RenderingHints`

---

public abstract static class RenderingHints.Key
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

Defines the base type of all keys used along with the
[`RenderingHints`](RenderingHints.md "class in java.awt") class to control various
algorithm choices in the rendering and imaging pipelines.
Instances of this class are immutable and unique which
means that tests for matches can be made using the
`==` operator instead of the more expensive
`equals()` method.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Key(int privatekey)`

  Construct a key using the indicated private key.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final boolean`

  `equals(Object o)`

  The equals method for all Key objects will return the same
  result as the equality operator '=='.

  `final int`

  `hashCode()`

  The hash code for all Key objects will be the same as the
  system identity code of the object as defined by the
  System.identityHashCode() method.

  `protected final int`

  `intKey()`

  Returns the private integer key that the subclass
  instantiated this Key with.

  `abstract boolean`

  `isCompatibleValue(Object val)`

  Returns true if the specified object is a valid value
  for this Key.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### Key

    protected Key(int privatekey)

    Construct a key using the indicated private key. Each
    subclass of Key maintains its own unique domain of integer
    keys. No two objects with the same integer key and of the
    same specific subclass can be constructed. An exception
    will be thrown if an attempt is made to construct another
    object of a given class with the same integer key as a
    pre-existing instance of that subclass of Key.

    Parameters:
    :   `privatekey` - the specified key
* ## Method Details

  + ### isCompatibleValue

    public abstract boolean isCompatibleValue([Object](../../../java.base/java/lang/Object.md "class in java.lang") val)

    Returns true if the specified object is a valid value
    for this Key.

    Parameters:
    :   `val` - the `Object` to test for validity

    Returns:
    :   `true` if `val` is valid;
        `false` otherwise.
  + ### intKey

    protected final int intKey()

    Returns the private integer key that the subclass
    instantiated this Key with.

    Returns:
    :   the private integer key that the subclass
        instantiated this Key with.
  + ### hashCode

    public final int hashCode()

    The hash code for all Key objects will be the same as the
    system identity code of the object as defined by the
    System.identityHashCode() method.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### equals

    public final boolean equals([Object](../../../java.base/java/lang/Object.md "class in java.lang") o)

    The equals method for all Key objects will return the same
    result as the equality operator '=='.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `o` - the reference object with which to compare.

    Returns:
    :   `true` if this object is the same as the obj
        argument; `false` otherwise.

    See Also:
    :   - [`Object.hashCode()`](../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../java.base/java/util/HashMap.md "class in java.util")