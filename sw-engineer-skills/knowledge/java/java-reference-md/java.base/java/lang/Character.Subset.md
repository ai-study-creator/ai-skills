Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class Character.Subset

[java.lang.Object](Object.md "class in java.lang")

java.lang.Character.Subset

Direct Known Subclasses:
:   `Character.UnicodeBlock`, `InputSubset`

Enclosing class:
:   `Character`

---

public static class Character.Subset
extends [Object](Object.md "class in java.lang")

Instances of this class represent particular subsets of the Unicode
character set. The only family of subsets defined in the
`Character` class is [`Character.UnicodeBlock`](Character.UnicodeBlock.md "class in java.lang").
Other portions of the Java API may define other subsets for their
own purposes.

Since:
:   1.2

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Subset(String name)`

  Constructs a new `Subset` instance.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final boolean`

  `equals(Object obj)`

  Compares two `Subset` objects for equality.

  `final int`

  `hashCode()`

  Returns the standard hash code as defined by the
  [`Object.hashCode()`](Object.md#hashCode()) method.

  `final String`

  `toString()`

  Returns the name of this subset.

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### Subset

    protected Subset([String](String.md "class in java.lang") name)

    Constructs a new `Subset` instance.

    Parameters:
    :   `name` - The name of this subset

    Throws:
    :   `NullPointerException` - if name is `null`
* ## Method Details

  + ### equals

    public final boolean equals([Object](Object.md "class in java.lang") obj)

    Compares two `Subset` objects for equality.
    This method returns `true` if and only if
    `this` and the argument refer to the same
    object; since this method is `final`, this
    guarantee holds for all subclasses.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the reference object with which to compare.

    Returns:
    :   `true` if this object is the same as the obj
        argument; `false` otherwise.

    See Also:
    :   - [`Object.hashCode()`](Object.md#hashCode())
        - [`HashMap`](../util/HashMap.md "class in java.util")
  + ### hashCode

    public final int hashCode()

    Returns the standard hash code as defined by the
    [`Object.hashCode()`](Object.md#hashCode()) method. This method
    is `final` in order to ensure that the
    `equals` and `hashCode` methods will
    be consistent in all subclasses.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](System.md#identityHashCode(java.lang.Object))
  + ### toString

    public final [String](String.md "class in java.lang") toString()

    Returns the name of this subset.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.