Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class Attribute

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.Attribute

All Implemented Interfaces:
:   `Serializable`

---

public class Attribute
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

Represents an MBean attribute by associating its name with its value.
The MBean server and other objects use this class to get and set attributes values.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.Attribute)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Attribute(String name,
  Object value)`

  Constructs an Attribute object which associates the given attribute name with the given value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Compares the current Attribute Object with another Attribute Object.

  `String`

  `getName()`

  Returns a String containing the name of the attribute.

  `Object`

  `getValue()`

  Returns an Object that is the value of this attribute.

  `int`

  `hashCode()`

  Returns a hash code value for this attribute.

  `String`

  `toString()`

  Returns a String object representing this Attribute's value.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### Attribute

    public Attribute([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") value)

    Constructs an Attribute object which associates the given attribute name with the given value.

    Parameters:
    :   `name` - A String containing the name of the attribute to be created. Cannot be null.
    :   `value` - The Object which is assigned to the attribute. This object must be of the same type as the attribute.
* ## Method Details

  + ### getName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getName()

    Returns a String containing the name of the attribute.

    Returns:
    :   the name of the attribute.
  + ### getValue

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getValue()

    Returns an Object that is the value of this attribute.

    Returns:
    :   the value of the attribute.
  + ### equals

    public boolean equals([Object](../../../java.base/java/lang/Object.md "class in java.lang") object)

    Compares the current Attribute Object with another Attribute Object.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `object` - The Attribute that the current Attribute is to be compared with.

    Returns:
    :   True if the two Attribute objects are equal, otherwise false.

    See Also:
    :   - [`Object.hashCode()`](../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns a hash code value for this attribute.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this attribute.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a String object representing this Attribute's value. The format of this
    string is not specified, but users can expect that two Attributes return the
    same string if and only if they are equal.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.