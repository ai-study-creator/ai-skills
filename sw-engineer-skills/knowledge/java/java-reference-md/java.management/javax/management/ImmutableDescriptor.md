Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class ImmutableDescriptor

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.ImmutableDescriptor

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Descriptor`

---

public class ImmutableDescriptor
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Descriptor](Descriptor.md "interface in javax.management")

An immutable descriptor.

Since:
:   1.6

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.ImmutableDescriptor)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final ImmutableDescriptor`

  `EMPTY_DESCRIPTOR`

  An empty descriptor.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ImmutableDescriptor(String... fields)`

  Construct a descriptor containing the given fields.

  `ImmutableDescriptor(String[] fieldNames,
  Object[] fieldValues)`

  Construct a descriptor containing the given fields and values.

  `ImmutableDescriptor(Map<String,?> fields)`

  Construct a descriptor where the names and values of the fields
  are the keys and values of the given Map.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Descriptor`

  `clone()`

  Returns a descriptor which is equal to this descriptor.

  `boolean`

  `equals(Object o)`

  Compares this descriptor to the given object.

  `final String[]`

  `getFieldNames()`

  Returns all the field names in the descriptor.

  `final String[]`

  `getFields()`

  Returns all of the fields contained in this descriptor as a string array.

  `final Object`

  `getFieldValue(String fieldName)`

  Returns the value for a specific field name, or null if no value
  is present for that name.

  `final Object[]`

  `getFieldValues(String... fieldNames)`

  Returns all the field values in the descriptor as an array of Objects.

  `int`

  `hashCode()`

  Returns the hash code value for this descriptor.

  `boolean`

  `isValid()`

  Returns true if all of the fields have legal values given their
  names.

  `final void`

  `removeField(String fieldName)`

  Removes a field from the descriptor.

  `final void`

  `setField(String fieldName,
  Object fieldValue)`

  This operation is unsupported since this class is immutable.

  `final void`

  `setFields(String[] fieldNames,
  Object[] fieldValues)`

  This operation is unsupported since this class is immutable.

  `String`

  `toString()`

  Returns a string representation of the object.

  `static ImmutableDescriptor`

  `union(Descriptor... descriptors)`

  Return an `ImmutableDescriptor` whose contents are the union of
  the given descriptors.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### EMPTY\_DESCRIPTOR

    public static final [ImmutableDescriptor](ImmutableDescriptor.md "class in javax.management") EMPTY\_DESCRIPTOR

    An empty descriptor.
* ## Constructor Details

  + ### ImmutableDescriptor

    public ImmutableDescriptor([String](../../../java.base/java/lang/String.md "class in java.lang")[] fieldNames,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang")[] fieldValues)

    Construct a descriptor containing the given fields and values.

    Parameters:
    :   `fieldNames` - the field names
    :   `fieldValues` - the field values

    Throws:
    :   `IllegalArgumentException` - if either array is null, or
        if the arrays have different sizes, or
        if a field name is null or empty, or if the same field name
        appears more than once.
  + ### ImmutableDescriptor

    public ImmutableDescriptor([String](../../../java.base/java/lang/String.md "class in java.lang")... fields)

    Construct a descriptor containing the given fields. Each String
    must be of the form `fieldName=fieldValue`. The field name
    ends at the first `=` character; for example if the String
    is `a=b=c` then the field name is `a` and its value
    is `b=c`.

    Parameters:
    :   `fields` - the field names

    Throws:
    :   `IllegalArgumentException` - if the parameter is null, or
        if a field name is empty, or if the same field name appears
        more than once, or if one of the strings does not contain
        an `=` character.
  + ### ImmutableDescriptor

    public ImmutableDescriptor([Map](../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../java.base/java/lang/String.md "class in java.lang"),?> fields)

    Construct a descriptor where the names and values of the fields
    are the keys and values of the given Map.

    Parameters:
    :   `fields` - the field names and values

    Throws:
    :   `IllegalArgumentException` - if the parameter is null, or
        if a field name is null or empty, or if the same field name appears
        more than once (which can happen because field names are not case
        sensitive).
* ## Method Details

  + ### union

    public static [ImmutableDescriptor](ImmutableDescriptor.md "class in javax.management") union([Descriptor](Descriptor.md "interface in javax.management")... descriptors)

    Return an `ImmutableDescriptor` whose contents are the union of
    the given descriptors. Every field name that appears in any of
    the descriptors will appear in the result with the
    value that it has when the method is called. Subsequent changes
    to any of the descriptors do not affect the ImmutableDescriptor
    returned here.

    In the simplest case, there is only one descriptor and the
    returned `ImmutableDescriptor` is a copy of its fields at the
    time this method is called:

    ```
     Descriptor d = something();
     ImmutableDescriptor copy = ImmutableDescriptor.union(d);
    ```

    Parameters:
    :   `descriptors` - the descriptors to be combined. Any of the
        descriptors can be null, in which case it is skipped.

    Returns:
    :   an `ImmutableDescriptor` that is the union of the given
        descriptors. The returned object may be identical to one of the
        input descriptors if it is an ImmutableDescriptor that contains all of
        the required fields.

    Throws:
    :   `IllegalArgumentException` - if two Descriptors contain the
        same field name with different associated values. Primitive array
        values are considered the same if they are of the same type with
        the same elements. Object array values are considered the same if
        [`Arrays.deepEquals(Object[],Object[])`](../../../java.base/java/util/Arrays.md#deepEquals(java.lang.Object%5B%5D,java.lang.Object%5B%5D)) returns true.
  + ### getFieldValue

    public final [Object](../../../java.base/java/lang/Object.md "class in java.lang") getFieldValue([String](../../../java.base/java/lang/String.md "class in java.lang") fieldName)

    Description copied from interface: `Descriptor`

    Returns the value for a specific field name, or null if no value
    is present for that name.

    Specified by:
    :   `getFieldValue` in interface `Descriptor`

    Parameters:
    :   `fieldName` - the field name.

    Returns:
    :   the corresponding value, or null if the field is not present.
  + ### getFields

    public final [String](../../../java.base/java/lang/String.md "class in java.lang")[] getFields()

    Description copied from interface: `Descriptor`

    Returns all of the fields contained in this descriptor as a string array.

    Specified by:
    :   `getFields` in interface `Descriptor`

    Returns:
    :   String array of fields in the format *fieldName=fieldValue*
          
        If the value of a field is not a String, then the toString() method
        will be called on it and the returned value, enclosed in parentheses,
        used as the value for the field in the returned array. If the value
        of a field is null, then the value of the field in the returned array
        will be empty. If the descriptor is empty, you will get
        an empty array.

    See Also:
    :   - [`Descriptor.setFields(java.lang.String[], java.lang.Object[])`](Descriptor.md#setFields(java.lang.String%5B%5D,java.lang.Object%5B%5D))
  + ### getFieldValues

    public final [Object](../../../java.base/java/lang/Object.md "class in java.lang")[] getFieldValues([String](../../../java.base/java/lang/String.md "class in java.lang")... fieldNames)

    Description copied from interface: `Descriptor`

    Returns all the field values in the descriptor as an array of Objects. The
    returned values are in the same order as the `fieldNames` String array parameter.

    Specified by:
    :   `getFieldValues` in interface `Descriptor`

    Parameters:
    :   `fieldNames` - String array of the names of the fields that
        the values should be returned for. If the array is empty then
        an empty array will be returned. If the array is null then all
        values will be returned, as if the parameter were the array
        returned by [`Descriptor.getFieldNames()`](Descriptor.md#getFieldNames()). If a field name in the
        array does not exist, including the case where it is null or
        the empty string, then null is returned for the matching array
        element being returned.

    Returns:
    :   Object array of field values. If the list of `fieldNames`
        is empty, you will get an empty array.
  + ### getFieldNames

    public final [String](../../../java.base/java/lang/String.md "class in java.lang")[] getFieldNames()

    Description copied from interface: `Descriptor`

    Returns all the field names in the descriptor.

    Specified by:
    :   `getFieldNames` in interface `Descriptor`

    Returns:
    :   String array of field names. If the descriptor is empty,
        you will get an empty array.
  + ### equals

    public boolean equals([Object](../../../java.base/java/lang/Object.md "class in java.lang") o)

    Compares this descriptor to the given object. The objects are equal if
    the given object is also a Descriptor, and if the two Descriptors have
    the same field names (possibly differing in case) and the same
    associated values. The respective values for a field in the two
    Descriptors are equal if the following conditions hold:
    - If one value is null then the other must be too.
    - If one value is a primitive array then the other must be a primitive
      array of the same type with the same elements.
    - If one value is an object array then the other must be too and
      [`Arrays.deepEquals(Object[],Object[])`](../../../java.base/java/util/Arrays.md#deepEquals(java.lang.Object%5B%5D,java.lang.Object%5B%5D)) must return true.
    - Otherwise [`Object.equals(Object)`](../../../java.base/java/lang/Object.md#equals(java.lang.Object)) must return true.

    Specified by:
    :   `equals` in interface `Descriptor`

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `o` - the object to compare with.

    Returns:
    :   `true` if the objects are the same; `false`
        otherwise.

    See Also:
    :   - [`Object.hashCode()`](../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns the hash code value for this descriptor. The hash
    code is computed as the sum of the hash codes for each field in
    the descriptor. The hash code of a field with name `n`
    and value `v` is `n.toLowerCase().hashCode() ^ h`.
    Here `h` is the hash code of `v`, computed as
    follows:

    - If `v` is null then `h` is 0.
    - If `v` is a primitive array then `h` is computed using
      the appropriate overloading of `java.util.Arrays.hashCode`.
    - If `v` is an object array then `h` is computed using
      [`Arrays.deepHashCode(Object[])`](../../../java.base/java/util/Arrays.md#deepHashCode(java.lang.Object%5B%5D)).
    - Otherwise `h` is `v.hashCode()`.

    Specified by:
    :   `hashCode` in interface `Descriptor`

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   A hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Description copied from class: `Object`

    Returns a string representation of the object.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.
  + ### isValid

    public boolean isValid()

    Returns true if all of the fields have legal values given their
    names. This method always returns true, but a subclass can
    override it to return false when appropriate.

    Specified by:
    :   `isValid` in interface `Descriptor`

    Returns:
    :   true if the values are legal.

    Throws:
    :   `RuntimeOperationsException` - if the validity checking fails.
        The method returns false if the descriptor is not valid, but throws
        this exception if the attempt to determine validity fails.
  + ### clone

    public [Descriptor](Descriptor.md "interface in javax.management") clone()

    Returns a descriptor which is equal to this descriptor.
    Changes to the returned descriptor will have no effect on this
    descriptor, and vice versa.

    This method returns the object on which it is called.
    A subclass can override it
    to return another object provided the contract is respected.

    Specified by:
    :   `clone` in interface `Descriptor`

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   a clone of this instance.

    Throws:
    :   `RuntimeOperationsException` - for illegal value for field Names
        or field Values.
        If the descriptor construction fails for any reason, this exception will
        be thrown.

    See Also:
    :   - [`Cloneable`](../../../java.base/java/lang/Cloneable.md "interface in java.lang")
  + ### setFields

    public final void setFields([String](../../../java.base/java/lang/String.md "class in java.lang")[] fieldNames,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang")[] fieldValues)
    throws [RuntimeOperationsException](RuntimeOperationsException.md "class in javax.management")

    This operation is unsupported since this class is immutable. If
    this call would change a mutable descriptor with the same contents,
    then a [`RuntimeOperationsException`](RuntimeOperationsException.md "class in javax.management") wrapping an
    [`UnsupportedOperationException`](../../../java.base/java/lang/UnsupportedOperationException.md "class in java.lang") is thrown. Otherwise,
    the behavior is the same as it would be for a mutable descriptor:
    either an exception is thrown because of illegal parameters, or
    there is no effect.

    Specified by:
    :   `setFields` in interface `Descriptor`

    Parameters:
    :   `fieldNames` - String array of field names. The array and array
        elements cannot be null.
    :   `fieldValues` - Object array of the corresponding field values.
        The array cannot be null. Elements of the array can be null.

    Throws:
    :   `RuntimeOperationsException` - if the change fails for any reason.
        Wrapped exception is [`IllegalArgumentException`](../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang") if
        `fieldNames` or `fieldValues` is null, or if
        the arrays are of different lengths, or if there is an
        illegal value in one of them.
        Wrapped exception is [`UnsupportedOperationException`](../../../java.base/java/lang/UnsupportedOperationException.md "class in java.lang")
        if the descriptor is immutable, and the call would change
        its contents.

    See Also:
    :   - [`Descriptor.getFields()`](Descriptor.md#getFields())
  + ### setField

    public final void setField([String](../../../java.base/java/lang/String.md "class in java.lang") fieldName,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") fieldValue)
    throws [RuntimeOperationsException](RuntimeOperationsException.md "class in javax.management")

    This operation is unsupported since this class is immutable. If
    this call would change a mutable descriptor with the same contents,
    then a [`RuntimeOperationsException`](RuntimeOperationsException.md "class in javax.management") wrapping an
    [`UnsupportedOperationException`](../../../java.base/java/lang/UnsupportedOperationException.md "class in java.lang") is thrown. Otherwise,
    the behavior is the same as it would be for a mutable descriptor:
    either an exception is thrown because of illegal parameters, or
    there is no effect.

    Specified by:
    :   `setField` in interface `Descriptor`

    Parameters:
    :   `fieldName` - The field name to be set. Cannot be null or empty.
    :   `fieldValue` - The field value to be set for the field
        name. Can be null if that is a valid value for the field.

    Throws:
    :   `RuntimeOperationsException` - if the field name or field value
        is illegal (wrapped exception is [`IllegalArgumentException`](../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")); or
        if the descriptor is immutable (wrapped exception is
        [`UnsupportedOperationException`](../../../java.base/java/lang/UnsupportedOperationException.md "class in java.lang")).
  + ### removeField

    public final void removeField([String](../../../java.base/java/lang/String.md "class in java.lang") fieldName)

    Removes a field from the descriptor.

    Specified by:
    :   `removeField` in interface `Descriptor`

    Parameters:
    :   `fieldName` - String name of the field to be removed.
        If the field name is illegal or the field is not found,
        no exception is thrown.

    Throws:
    :   `RuntimeOperationsException` - if a field of the given name
        exists and the descriptor is immutable. The wrapped exception will
        be an [`UnsupportedOperationException`](../../../java.base/java/lang/UnsupportedOperationException.md "class in java.lang").