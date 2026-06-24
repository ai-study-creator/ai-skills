Module [java.desktop](../../../module-summary.md)

Package [javax.print.attribute](package-summary.md)

# Interface PrintServiceAttributeSet

All Superinterfaces:
:   `AttributeSet`

All Known Implementing Classes:
:   `HashPrintServiceAttributeSet`

---

public interface PrintServiceAttributeSet
extends [AttributeSet](AttributeSet.md "interface in javax.print.attribute")

Interface `PrintServiceAttributeSet` specifies the interface for a set
of print job attributes, i.e. printing attributes that implement interface
[`PrintServiceAttribute`](PrintServiceAttribute.md "interface in javax.print.attribute"). In the Print Service
API, the Print Service instance uses a `PrintServiceAttributeSet` to
report the status of the print service.

A `PrintServiceAttributeSet` is just an
[`AttributeSet`](AttributeSet.md "interface in javax.print.attribute") whose constructors and mutating operations
guarantee an additional invariant, namely that all attribute values in the
`PrintServiceAttributeSet` must be instances of interface
[`PrintServiceAttribute`](PrintServiceAttribute.md "interface in javax.print.attribute"). The
[`add(Attribute)`](#add(javax.print.attribute.Attribute)), and
[`addAll(AttributeSet)`](#addAll(javax.print.attribute.AttributeSet)) operations are respecified
below to guarantee this additional invariant.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `add(Attribute attribute)`

  Adds the specified attribute value to this attribute set if it is not
  already present, first removing any existing value in the same attribute
  category as the specified attribute value (optional operation).

  `boolean`

  `addAll(AttributeSet attributes)`

  Adds all of the elements in the specified set to this attribute.

  ### Methods inherited from interface javax.print.attribute.[AttributeSet](AttributeSet.md "interface in javax.print.attribute")

  `clear, containsKey, containsValue, equals, get, hashCode, isEmpty, remove, remove, size, toArray`

* ## Method Details

  + ### add

    boolean add([Attribute](Attribute.md "interface in javax.print.attribute") attribute)

    Adds the specified attribute value to this attribute set if it is not
    already present, first removing any existing value in the same attribute
    category as the specified attribute value (optional operation).

    Specified by:
    :   `add` in interface `AttributeSet`

    Parameters:
    :   `attribute` - attribute value to be added to this attribute set

    Returns:
    :   `true` if this attribute set changed as a result of the
        call, i.e., the given attribute value was not already a member of
        this attribute set

    Throws:
    :   `UnmodifiableSetException` - if this attribute set does not support
        the `add()` operation
    :   `ClassCastException` - if the `attribute` is not an instance of
        interface [`PrintServiceAttribute`](PrintServiceAttribute.md "interface in javax.print.attribute")
    :   `NullPointerException` - if the `attribute` is `null`
  + ### addAll

    boolean addAll([AttributeSet](AttributeSet.md "interface in javax.print.attribute") attributes)

    Adds all of the elements in the specified set to this attribute. The
    outcome is the same as if the [`add(Attribute)`](#add(javax.print.attribute.Attribute))
    operation had been applied to this attribute set successively with each
    element from the specified set. If none of the categories in the
    specified set are the same as any categories in this attribute set, the
    `addAll()` operation effectively modifies this attribute set so
    that its value is the *union* of the two sets.

    The behavior of the `addAll()` operation is unspecified if the
    specified set is modified while the operation is in progress.

    If the `addAll()` operation throws an exception, the effect on this
    attribute set's state is implementation dependent; elements from the
    specified set before the point of the exception may or may not have been
    added to this attribute set.

    Specified by:
    :   `addAll` in interface `AttributeSet`

    Parameters:
    :   `attributes` - whose elements are to be added to this attribute set

    Returns:
    :   `true` if this attribute set changed as a result of the
        call

    Throws:
    :   `UnmodifiableSetException` - if this attribute set does not support
        the `addAll()` method
    :   `ClassCastException` - if some element in the specified set is not an
        instance of interface
        [`PrintServiceAttribute`](PrintServiceAttribute.md "interface in javax.print.attribute")
    :   `NullPointerException` - if the specified set is `null`

    See Also:
    :   - [`add(Attribute)`](#add(javax.print.attribute.Attribute))