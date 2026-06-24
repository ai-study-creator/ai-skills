Module [java.desktop](../../module-summary.md)

Package [java.beans](package-summary.md)

# Class IndexedPropertyDescriptor

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.beans.FeatureDescriptor](FeatureDescriptor.md "class in java.beans")

[java.beans.PropertyDescriptor](PropertyDescriptor.md "class in java.beans")

java.beans.IndexedPropertyDescriptor

---

public class IndexedPropertyDescriptor
extends [PropertyDescriptor](PropertyDescriptor.md "class in java.beans")

An IndexedPropertyDescriptor describes a property that acts like an
array and has an indexed read and/or indexed write method to access
specific elements of the array.

An indexed property may also provide simple non-indexed read and write
methods. If these are present, they read and write arrays of the type
returned by the indexed read method.

Since:
:   1.1

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IndexedPropertyDescriptor(String propertyName,
  Class<?> beanClass)`

  This constructor constructs an IndexedPropertyDescriptor for a property
  that follows the standard Java conventions by having getFoo and setFoo
  accessor methods, for both indexed access and array access.

  `IndexedPropertyDescriptor(String propertyName,
  Class<?> beanClass,
  String readMethodName,
  String writeMethodName,
  String indexedReadMethodName,
  String indexedWriteMethodName)`

  This constructor takes the name of a simple property, and method
  names for reading and writing the property, both indexed
  and non-indexed.

  `IndexedPropertyDescriptor(String propertyName,
  Method readMethod,
  Method writeMethod,
  Method indexedReadMethod,
  Method indexedWriteMethod)`

  This constructor takes the name of a simple property, and Method
  objects for reading and writing the property.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Compares this `PropertyDescriptor` against the specified object.

  `Class<?>`

  `getIndexedPropertyType()`

  Returns the Java type info for the indexed property.

  `Method`

  `getIndexedReadMethod()`

  Gets the method that should be used to read an indexed
  property value.

  `Method`

  `getIndexedWriteMethod()`

  Gets the method that should be used to write an indexed property value.

  `int`

  `hashCode()`

  Returns a hash code value for the object.

  `void`

  `setIndexedReadMethod(Method readMethod)`

  Sets the method that should be used to read an indexed property value.

  `void`

  `setIndexedWriteMethod(Method writeMethod)`

  Sets the method that should be used to write an indexed property value.

  ### Methods inherited from class java.beans.[PropertyDescriptor](PropertyDescriptor.md "class in java.beans")

  `createPropertyEditor, getPropertyEditorClass, getPropertyType, getReadMethod, getWriteMethod, isBound, isConstrained, setBound, setConstrained, setPropertyEditorClass, setReadMethod, setWriteMethod`

  ### Methods inherited from class java.beans.[FeatureDescriptor](FeatureDescriptor.md "class in java.beans")

  `attributeNames, getDisplayName, getName, getShortDescription, getValue, isExpert, isHidden, isPreferred, setDisplayName, setExpert, setHidden, setName, setPreferred, setShortDescription, setValue, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### IndexedPropertyDescriptor

    public IndexedPropertyDescriptor([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    [Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> beanClass)
    throws [IntrospectionException](IntrospectionException.md "class in java.beans")

    This constructor constructs an IndexedPropertyDescriptor for a property
    that follows the standard Java conventions by having getFoo and setFoo
    accessor methods, for both indexed access and array access.

    Thus if the argument name is "fred", it will assume that there
    is an indexed reader method "getFred", a non-indexed (array) reader
    method also called "getFred", an indexed writer method "setFred",
    and finally a non-indexed writer method "setFred".

    Parameters:
    :   `propertyName` - The programmatic name of the property.
    :   `beanClass` - The Class object for the target bean.

    Throws:
    :   `IntrospectionException` - if an exception occurs during
        introspection.
  + ### IndexedPropertyDescriptor

    public IndexedPropertyDescriptor([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    [Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> beanClass,
    [String](../../../java.base/java/lang/String.md "class in java.lang") readMethodName,
    [String](../../../java.base/java/lang/String.md "class in java.lang") writeMethodName,
    [String](../../../java.base/java/lang/String.md "class in java.lang") indexedReadMethodName,
    [String](../../../java.base/java/lang/String.md "class in java.lang") indexedWriteMethodName)
    throws [IntrospectionException](IntrospectionException.md "class in java.beans")

    This constructor takes the name of a simple property, and method
    names for reading and writing the property, both indexed
    and non-indexed.

    Parameters:
    :   `propertyName` - The programmatic name of the property.
    :   `beanClass` - The Class object for the target bean.
    :   `readMethodName` - The name of the method used for reading the property
        values as an array. May be null if the property is write-only
        or must be indexed.
    :   `writeMethodName` - The name of the method used for writing the property
        values as an array. May be null if the property is read-only
        or must be indexed.
    :   `indexedReadMethodName` - The name of the method used for reading
        an indexed property value.
        May be null if the property is write-only.
    :   `indexedWriteMethodName` - The name of the method used for writing
        an indexed property value.
        May be null if the property is read-only.

    Throws:
    :   `IntrospectionException` - if an exception occurs during
        introspection.
  + ### IndexedPropertyDescriptor

    public IndexedPropertyDescriptor([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    [Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") readMethod,
    [Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") writeMethod,
    [Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") indexedReadMethod,
    [Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") indexedWriteMethod)
    throws [IntrospectionException](IntrospectionException.md "class in java.beans")

    This constructor takes the name of a simple property, and Method
    objects for reading and writing the property.

    Parameters:
    :   `propertyName` - The programmatic name of the property.
    :   `readMethod` - The method used for reading the property values as an array.
        May be null if the property is write-only or must be indexed.
    :   `writeMethod` - The method used for writing the property values as an array.
        May be null if the property is read-only or must be indexed.
    :   `indexedReadMethod` - The method used for reading an indexed property value.
        May be null if the property is write-only.
    :   `indexedWriteMethod` - The method used for writing an indexed property value.
        May be null if the property is read-only.

    Throws:
    :   `IntrospectionException` - if an exception occurs during
        introspection.
* ## Method Details

  + ### getIndexedReadMethod

    public [Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") getIndexedReadMethod()

    Gets the method that should be used to read an indexed
    property value.

    Returns:
    :   The method that should be used to read an indexed
        property value.
        May return null if the property isn't indexed or is write-only.
  + ### setIndexedReadMethod

    public void setIndexedReadMethod([Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") readMethod)
    throws [IntrospectionException](IntrospectionException.md "class in java.beans")

    Sets the method that should be used to read an indexed property value.

    Parameters:
    :   `readMethod` - The new indexed read method.

    Throws:
    :   `IntrospectionException` - if an exception occurs during
        introspection.

    Since:
    :   1.2
  + ### getIndexedWriteMethod

    public [Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") getIndexedWriteMethod()

    Gets the method that should be used to write an indexed property value.

    Returns:
    :   The method that should be used to write an indexed
        property value.
        May return null if the property isn't indexed or is read-only.
  + ### setIndexedWriteMethod

    public void setIndexedWriteMethod([Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") writeMethod)
    throws [IntrospectionException](IntrospectionException.md "class in java.beans")

    Sets the method that should be used to write an indexed property value.

    Parameters:
    :   `writeMethod` - The new indexed write method.

    Throws:
    :   `IntrospectionException` - if an exception occurs during
        introspection.

    Since:
    :   1.2
  + ### getIndexedPropertyType

    public [Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> getIndexedPropertyType()

    Returns the Java type info for the indexed property.
    Note that the `Class` object may describe
    primitive Java types such as `int`.
    This type is returned by the indexed read method
    or is used as the parameter type of the indexed write method.

    Returns:
    :   the `Class` object that represents the Java type info,
        or `null` if the type cannot be determined
  + ### equals

    public boolean equals([Object](../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Compares this `PropertyDescriptor` against the specified object.
    Returns true if the objects are the same. Two `PropertyDescriptor`s
    are the same if the read, write, property types, property editor and
    flags are equivalent.

    Overrides:
    :   `equals` in class `PropertyDescriptor`

    Parameters:
    :   `obj` - the reference object with which to compare.

    Returns:
    :   `true` if this object is the same as the obj
        argument; `false` otherwise.

    Since:
    :   1.4

    See Also:
    :   - [`Object.hashCode()`](../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns a hash code value for the object.
    See [`Object.hashCode()`](../../../java.base/java/lang/Object.md#hashCode()) for a complete description.

    Overrides:
    :   `hashCode` in class `PropertyDescriptor`

    Returns:
    :   a hash code value for this object.

    Since:
    :   1.5

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))