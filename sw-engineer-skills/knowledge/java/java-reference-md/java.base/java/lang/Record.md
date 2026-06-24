Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class Record

[java.lang.Object](Object.md "class in java.lang")

java.lang.Record

---

public abstract class Record
extends [Object](Object.md "class in java.lang")

This is the common base class of all Java language record classes.

More information about records, including descriptions of the
implicitly declared methods synthesized by the compiler, can be
found in section 8.10 of
The Java Language Specification.

A *record class* is a shallowly immutable, transparent carrier for
a fixed set of values, called the *record components*. The Java
language provides concise syntax for declaring record classes, whereby the
record components are declared in the record header. The list of record
components declared in the record header form the *record descriptor*.

A record class has the following mandated members: a *canonical
constructor*, which must provide at least as much access as the record
class and whose descriptor is the same as the record descriptor;
a private final field corresponding to each component, whose name and
type are the same as that of the component; a public accessor method
corresponding to each component, whose name and return type are the same as
that of the component. If not explicitly declared in the body of the record,
implicit implementations for these members are provided.

The implicit declaration of the canonical constructor has the same accessibility
as the record class and initializes the component fields from the corresponding
constructor arguments. The implicit declaration of the accessor methods returns
the value of the corresponding component field. The implicit declaration of the
[`Object.equals(Object)`](Object.md#equals(java.lang.Object)), [`Object.hashCode()`](Object.md#hashCode()), and [`Object.toString()`](Object.md#toString())
methods are derived from all of the component fields.

The primary reasons to provide an explicit declaration for the
canonical constructor or accessor methods are to validate constructor
arguments, perform defensive copies on mutable components, or normalize groups
of components (such as reducing a rational number to lowest terms.)

For all record classes, the following invariant must hold: if a record R's
components are `c1, c2, ... cn`, then if a record instance is copied
as follows:

```
     R copy = new R(r.c1(), r.c2(), ..., r.cn());
```

then it must be the case that `r.equals(copy)`.

Since:
:   16

External Specifications
:   * [Java Object Serialization Specification](../../../../specs/serialization/index.md)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Record()`

  Constructor for record classes to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract boolean`

  `equals(Object obj)`

  Indicates whether some other object is "equal to" this one.

  `abstract int`

  `hashCode()`

  Returns a hash code value for the record.

  `abstract String`

  `toString()`

  Returns a string representation of the record.

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### Record

    protected Record()

    Constructor for record classes to call.
* ## Method Details

  + ### equals

    public abstract boolean equals([Object](Object.md "class in java.lang") obj)

    Indicates whether some other object is "equal to" this one. In addition
    to the general contract of [`Object.equals`](Object.md#equals(java.lang.Object)),
    record classes must further obey the invariant that when
    a record instance is "copied" by passing the result of the record component
    accessor methods to the canonical constructor, as follows:

    ```
         R copy = new R(r.c1(), r.c2(), ..., r.cn());
    ```

    then it must be the case that `r.equals(copy)`.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the reference object with which to compare.

    Returns:
    :   `true` if this record is equal to the
        argument; `false` otherwise.

    See Also:
    :   - [`Objects.equals(Object,Object)`](../util/Objects.md#equals(java.lang.Object,java.lang.Object))
  + ### hashCode

    public abstract int hashCode()

    Returns a hash code value for the record.
    Obeys the general contract of [`Object.hashCode`](Object.md#hashCode()).
    For records, hashing behavior is constrained by the refined contract
    of [`Record.equals`](#equals(java.lang.Object)), so that any two records
    created from the same components must have the same hash code.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this record.

    See Also:
    :   - [`Object.hashCode()`](Object.md#hashCode())
  + ### toString

    public abstract [String](String.md "class in java.lang") toString()

    Returns a string representation of the record.
    In accordance with the general contract of [`Object.toString()`](Object.md#toString()),
    the `toString` method returns a string that
    "textually represents" this record. The result should
    be a concise but informative representation that is easy for a
    person to read.

    In addition to this general contract, record classes must further
    participate in the invariant that any two records which are
    [equal](#equals(java.lang.Object)) must produce equal
    strings. This invariant is necessarily relaxed in the rare
    case where corresponding equal component values might fail
    to produce equal strings for themselves.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.

    See Also:
    :   - [`Object.toString()`](Object.md#toString())