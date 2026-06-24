Module [java.desktop](../../module-summary.md)

Package [java.beans](package-summary.md)

# Class PropertyDescriptor

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.beans.FeatureDescriptor](FeatureDescriptor.md "class in java.beans")

java.beans.PropertyDescriptor

Direct Known Subclasses:
:   `IndexedPropertyDescriptor`

---

public class PropertyDescriptor
extends [FeatureDescriptor](FeatureDescriptor.md "class in java.beans")

A PropertyDescriptor describes one property that a Java Bean
exports via a pair of accessor methods.

Since:
:   1.1

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PropertyDescriptor(String propertyName,
  Class<?> beanClass)`

  Constructs a PropertyDescriptor for a property that follows
  the standard Java convention by having getFoo and setFoo
  accessor methods.

  `PropertyDescriptor(String propertyName,
  Class<?> beanClass,
  String readMethodName,
  String writeMethodName)`

  This constructor takes the name of a simple property, and method
  names for reading and writing the property.

  `PropertyDescriptor(String propertyName,
  Method readMethod,
  Method writeMethod)`

  This constructor takes the name of a simple property, and Method
  objects for reading and writing the property.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `PropertyEditor`

  `createPropertyEditor(Object bean)`

  Constructs an instance of a property editor using the current
  property editor class.

  `boolean`

  `equals(Object obj)`

  Compares this `PropertyDescriptor` against the specified object.

  `Class<?>`

  `getPropertyEditorClass()`

  Gets any explicit PropertyEditor Class that has been registered
  for this property.

  `Class<?>`

  `getPropertyType()`

  Returns the Java type info for the property.

  `Method`

  `getReadMethod()`

  Gets the method that should be used to read the property value.

  `Method`

  `getWriteMethod()`

  Gets the method that should be used to write the property value.

  `int`

  `hashCode()`

  Returns a hash code value for the object.

  `boolean`

  `isBound()`

  Updates to "bound" properties will cause a "PropertyChange" event to
  get fired when the property is changed.

  `boolean`

  `isConstrained()`

  Attempted updates to "Constrained" properties will cause a "VetoableChange"
  event to get fired when the property is changed.

  `void`

  `setBound(boolean bound)`

  Updates to "bound" properties will cause a "PropertyChange" event to
  get fired when the property is changed.

  `void`

  `setConstrained(boolean constrained)`

  Attempted updates to "Constrained" properties will cause a "VetoableChange"
  event to get fired when the property is changed.

  `void`

  `setPropertyEditorClass(Class<?> propertyEditorClass)`

  Normally PropertyEditors will be found using the PropertyEditorManager.

  `void`

  `setReadMethod(Method readMethod)`

  Sets the method that should be used to read the property value.

  `void`

  `setWriteMethod(Method writeMethod)`

  Sets the method that should be used to write the property value.

  ### Methods inherited from class java.beans.[FeatureDescriptor](FeatureDescriptor.md "class in java.beans")

  `attributeNames, getDisplayName, getName, getShortDescription, getValue, isExpert, isHidden, isPreferred, setDisplayName, setExpert, setHidden, setName, setPreferred, setShortDescription, setValue, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### PropertyDescriptor

    public PropertyDescriptor([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    [Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> beanClass)
    throws [IntrospectionException](IntrospectionException.md "class in java.beans")

    Constructs a PropertyDescriptor for a property that follows
    the standard Java convention by having getFoo and setFoo
    accessor methods. Thus if the argument name is "fred", it will
    assume that the writer method is "setFred" and the reader method
    is "getFred" (or "isFred" for a boolean property). Note that the
    property name should start with a lower case character, which will
    be capitalized in the method names.

    Parameters:
    :   `propertyName` - The programmatic name of the property.
    :   `beanClass` - The Class object for the target bean. For
        example sun.beans.OurButton.class.

    Throws:
    :   `IntrospectionException` - if an exception occurs during
        introspection.
  + ### PropertyDescriptor

    public PropertyDescriptor([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    [Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> beanClass,
    [String](../../../java.base/java/lang/String.md "class in java.lang") readMethodName,
    [String](../../../java.base/java/lang/String.md "class in java.lang") writeMethodName)
    throws [IntrospectionException](IntrospectionException.md "class in java.beans")

    This constructor takes the name of a simple property, and method
    names for reading and writing the property.

    Parameters:
    :   `propertyName` - The programmatic name of the property.
    :   `beanClass` - The Class object for the target bean. For
        example sun.beans.OurButton.class.
    :   `readMethodName` - The name of the method used for reading the property
        value. May be null if the property is write-only.
    :   `writeMethodName` - The name of the method used for writing the property
        value. May be null if the property is read-only.

    Throws:
    :   `IntrospectionException` - if an exception occurs during
        introspection.
  + ### PropertyDescriptor

    public PropertyDescriptor([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    [Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") readMethod,
    [Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") writeMethod)
    throws [IntrospectionException](IntrospectionException.md "class in java.beans")

    This constructor takes the name of a simple property, and Method
    objects for reading and writing the property.

    Parameters:
    :   `propertyName` - The programmatic name of the property.
    :   `readMethod` - The method used for reading the property value.
        May be null if the property is write-only.
    :   `writeMethod` - The method used for writing the property value.
        May be null if the property is read-only.

    Throws:
    :   `IntrospectionException` - if an exception occurs during
        introspection.
* ## Method Details

  + ### getPropertyType

    public [Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> getPropertyType()

    Returns the Java type info for the property.
    Note that the `Class` object may describe
    primitive Java types such as `int`.
    This type is returned by the read method
    or is used as the parameter type of the write method.
    Returns `null` if the type is an indexed property
    that does not support non-indexed access.

    Returns:
    :   the `Class` object that represents the Java type info,
        or `null` if the type cannot be determined
  + ### getReadMethod

    public [Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") getReadMethod()

    Gets the method that should be used to read the property value.

    Returns:
    :   The method that should be used to read the property value.
        May return null if the property can't be read.
  + ### setReadMethod

    public void setReadMethod([Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") readMethod)
    throws [IntrospectionException](IntrospectionException.md "class in java.beans")

    Sets the method that should be used to read the property value.

    Parameters:
    :   `readMethod` - The new read method.

    Throws:
    :   `IntrospectionException` - if the read method is invalid

    Since:
    :   1.2
  + ### getWriteMethod

    public [Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") getWriteMethod()

    Gets the method that should be used to write the property value.

    Returns:
    :   The method that should be used to write the property value.
        May return null if the property can't be written.
  + ### setWriteMethod

    public void setWriteMethod([Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") writeMethod)
    throws [IntrospectionException](IntrospectionException.md "class in java.beans")

    Sets the method that should be used to write the property value.

    Parameters:
    :   `writeMethod` - The new write method.

    Throws:
    :   `IntrospectionException` - if the write method is invalid

    Since:
    :   1.2
  + ### isBound

    public boolean isBound()

    Updates to "bound" properties will cause a "PropertyChange" event to
    get fired when the property is changed.

    Returns:
    :   True if this is a bound property.
  + ### setBound

    public void setBound(boolean bound)

    Updates to "bound" properties will cause a "PropertyChange" event to
    get fired when the property is changed.

    Parameters:
    :   `bound` - True if this is a bound property.
  + ### isConstrained

    public boolean isConstrained()

    Attempted updates to "Constrained" properties will cause a "VetoableChange"
    event to get fired when the property is changed.

    Returns:
    :   True if this is a constrained property.
  + ### setConstrained

    public void setConstrained(boolean constrained)

    Attempted updates to "Constrained" properties will cause a "VetoableChange"
    event to get fired when the property is changed.

    Parameters:
    :   `constrained` - True if this is a constrained property.
  + ### setPropertyEditorClass

    public void setPropertyEditorClass([Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> propertyEditorClass)

    Normally PropertyEditors will be found using the PropertyEditorManager.
    However if for some reason you want to associate a particular
    PropertyEditor with a given property, then you can do it with
    this method.

    Parameters:
    :   `propertyEditorClass` - The Class for the desired PropertyEditor.
  + ### getPropertyEditorClass

    public [Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> getPropertyEditorClass()

    Gets any explicit PropertyEditor Class that has been registered
    for this property.

    Returns:
    :   Any explicit PropertyEditor Class that has been registered
        for this property. Normally this will return "null",
        indicating that no special editor has been registered,
        so the PropertyEditorManager should be used to locate
        a suitable PropertyEditor.
  + ### createPropertyEditor

    public [PropertyEditor](PropertyEditor.md "interface in java.beans") createPropertyEditor([Object](../../../java.base/java/lang/Object.md "class in java.lang") bean)

    Constructs an instance of a property editor using the current
    property editor class.

    If the property editor class has a public constructor that takes an
    Object argument then it will be invoked using the bean parameter
    as the argument. Otherwise, the default constructor will be invoked.

    Parameters:
    :   `bean` - the source object

    Returns:
    :   a property editor instance or null if a property editor has
        not been defined or cannot be created

    Since:
    :   1.5
  + ### equals

    public boolean equals([Object](../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Compares this `PropertyDescriptor` against the specified object.
    Returns true if the objects are the same. Two `PropertyDescriptor`s
    are the same if the read, write, property types, property editor and
    flags are equivalent.

    Overrides:
    :   `equals` in class `Object`

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
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    Since:
    :   1.5

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))