Module [java.base](../../../module-summary.md)

Package [java.lang.reflect](package-summary.md)

# Class Field

[java.lang.Object](../Object.md "class in java.lang")

[java.lang.reflect.AccessibleObject](AccessibleObject.md "class in java.lang.reflect")

java.lang.reflect.Field

All Implemented Interfaces:
:   `AnnotatedElement`, `Member`

---

public final class Field
extends [AccessibleObject](AccessibleObject.md "class in java.lang.reflect")
implements [Member](Member.md "interface in java.lang.reflect")

A `Field` provides information about, and dynamic access to, a
single field of a class or an interface. The reflected field may
be a class (static) field or an instance field.

A `Field` permits widening conversions to occur during a get or
set access operation, but throws an `IllegalArgumentException` if a
narrowing conversion would occur.

Since:
:   1.1

See Also:
:   * [`Member`](Member.md "interface in java.lang.reflect")
    * [`Class`](../Class.md "class in java.lang")
    * [`Class.getFields()`](../Class.md#getFields())
    * [`Class.getField(String)`](../Class.md#getField(java.lang.String))
    * [`Class.getDeclaredFields()`](../Class.md#getDeclaredFields())
    * [`Class.getDeclaredField(String)`](../Class.md#getDeclaredField(java.lang.String))

* ## Field Summary

  ### Fields inherited from interface java.lang.reflect.[Member](Member.md "interface in java.lang.reflect")

  `DECLARED, PUBLIC`
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Set<AccessFlag>`

  `accessFlags()`

  Returns an unmodifiable set of the [access flags](AccessFlag.md "enum class in java.lang.reflect") for this field, possibly empty.

  `boolean`

  `equals(Object obj)`

  Compares this `Field` against the specified object.

  `Object`

  `get(Object obj)`

  Returns the value of the field represented by this `Field`, on
  the specified object.

  `AnnotatedType`

  `getAnnotatedType()`

  Returns an AnnotatedType object that represents the use of a type to specify
  the declared type of the field represented by this Field.

  `<T extends Annotation>  
  T`

  `getAnnotation(Class<T> annotationClass)`

  Returns this element's annotation for the specified type if
  such an annotation is *present*, else null.

  `<T extends Annotation>  
  T[]`

  `getAnnotationsByType(Class<T> annotationClass)`

  Returns annotations that are *associated* with this element.

  `boolean`

  `getBoolean(Object obj)`

  Gets the value of a static or instance `boolean` field.

  `byte`

  `getByte(Object obj)`

  Gets the value of a static or instance `byte` field.

  `char`

  `getChar(Object obj)`

  Gets the value of a static or instance field of type
  `char` or of another primitive type convertible to
  type `char` via a widening conversion.

  `Annotation[]`

  `getDeclaredAnnotations()`

  Returns annotations that are *directly present* on this element.

  `Class<?>`

  `getDeclaringClass()`

  Returns the `Class` object representing the class or interface
  that declares the field represented by this `Field` object.

  `double`

  `getDouble(Object obj)`

  Gets the value of a static or instance field of type
  `double` or of another primitive type convertible to
  type `double` via a widening conversion.

  `float`

  `getFloat(Object obj)`

  Gets the value of a static or instance field of type
  `float` or of another primitive type convertible to
  type `float` via a widening conversion.

  `Type`

  `getGenericType()`

  Returns a `Type` object that represents the declared type for
  the field represented by this `Field` object.

  `int`

  `getInt(Object obj)`

  Gets the value of a static or instance field of type
  `int` or of another primitive type convertible to
  type `int` via a widening conversion.

  `long`

  `getLong(Object obj)`

  Gets the value of a static or instance field of type
  `long` or of another primitive type convertible to
  type `long` via a widening conversion.

  `int`

  `getModifiers()`

  Returns the Java language modifiers for the field represented
  by this `Field` object, as an integer.

  `String`

  `getName()`

  Returns the name of the field represented by this `Field` object.

  `short`

  `getShort(Object obj)`

  Gets the value of a static or instance field of type
  `short` or of another primitive type convertible to
  type `short` via a widening conversion.

  `Class<?>`

  `getType()`

  Returns a `Class` object that identifies the
  declared type for the field represented by this
  `Field` object.

  `int`

  `hashCode()`

  Returns a hashcode for this `Field`.

  `boolean`

  `isEnumConstant()`

  Returns `true` if this field represents an element of
  an enumerated class; returns `false` otherwise.

  `boolean`

  `isSynthetic()`

  Returns `true` if this field is a synthetic
  field; returns `false` otherwise.

  `void`

  `set(Object obj,
  Object value)`

  Sets the field represented by this `Field` object on the
  specified object argument to the specified new value.

  `void`

  `setAccessible(boolean flag)`

  Set the `accessible` flag for this reflected object to
  the indicated boolean value.

  `void`

  `setBoolean(Object obj,
  boolean z)`

  Sets the value of a field as a `boolean` on the specified object.

  `void`

  `setByte(Object obj,
  byte b)`

  Sets the value of a field as a `byte` on the specified object.

  `void`

  `setChar(Object obj,
  char c)`

  Sets the value of a field as a `char` on the specified object.

  `void`

  `setDouble(Object obj,
  double d)`

  Sets the value of a field as a `double` on the specified object.

  `void`

  `setFloat(Object obj,
  float f)`

  Sets the value of a field as a `float` on the specified object.

  `void`

  `setInt(Object obj,
  int i)`

  Sets the value of a field as an `int` on the specified object.

  `void`

  `setLong(Object obj,
  long l)`

  Sets the value of a field as a `long` on the specified object.

  `void`

  `setShort(Object obj,
  short s)`

  Sets the value of a field as a `short` on the specified object.

  `String`

  `toGenericString()`

  Returns a string describing this `Field`, including
  its generic type.

  `String`

  `toString()`

  Returns a string describing this `Field`.

  ### Methods inherited from class java.lang.reflect.[AccessibleObject](AccessibleObject.md "class in java.lang.reflect")

  `canAccess, getAnnotations, getDeclaredAnnotation, getDeclaredAnnotationsByType, isAccessible, isAnnotationPresent, setAccessible, trySetAccessible`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Method Details

  + ### setAccessible

    public void setAccessible(boolean flag)

    Description copied from class: `AccessibleObject`

    Set the `accessible` flag for this reflected object to
    the indicated boolean value. A value of `true` indicates that
    the reflected object should suppress checks for Java language access
    control when it is used. A value of `false` indicates that
    the reflected object should enforce checks for Java language access
    control when it is used, with the variation noted in the class description.

    This method may be used by a caller in class `C` to enable
    access to a [`member`](Member.md "interface in java.lang.reflect") of [`declaring class`](Member.md#getDeclaringClass()) `D` if any of the following hold:

    - `C` and `D` are in the same module.
    - The member is `public` and `D` is `public` in
      a package that the module containing `D` [`exports`](../Module.md#isExported(java.lang.String,java.lang.Module)) to at least the module
      containing `C`.
    - The member is `protected` `static`, `D` is
      `public` in a package that the module containing `D`
      exports to at least the module containing `C`, and `C`
      is a subclass of `D`.
    - `D` is in a package that the module containing `D`
      [`opens`](../Module.md#isOpen(java.lang.String,java.lang.Module)) to at least the module
      containing `C`.
      All packages in unnamed and open modules are open to all modules and
      so this method always succeeds when `D` is in an unnamed or
      open module.

    This method may be used by [JNI code](../../../../../specs/jni/index.md)
    with no caller class on the stack to enable access to a [`member`](Member.md "interface in java.lang.reflect")
    of [`declaring class`](Member.md#getDeclaringClass()) `D` if and only if:
    - The member is `public` and `D` is `public` in
      a package that the module containing `D` [`exports`](../Module.md#isExported(java.lang.String,java.lang.Module)) unconditionally.

    This method cannot be used to enable access to private members,
    members with default (package) access, protected instance members, or
    protected constructors when the declaring class is in a different module
    to the caller and the package containing the declaring class is not open
    to the caller's module.

    This method cannot be used to enable [*write*](#set(java.lang.Object,java.lang.Object))
    access to a *non-modifiable* final field. The following fields
    are non-modifiable:
    - static final fields declared in any class or interface
    - final fields declared in a [hidden class](../Class.md#isHidden())
    - final fields declared in a [record](../Class.md#isRecord())

    The `accessible` flag when `true` suppresses Java language access
    control checks to only enable [*read*](#get(java.lang.Object)) access to
    these non-modifiable final fields.

    If there is a security manager, its
    `checkPermission` method is first called with a
    `ReflectPermission("suppressAccessChecks")` permission.

    Overrides:
    :   `setAccessible` in class `AccessibleObject`

    Parameters:
    :   `flag` - the new value for the `accessible` flag

    Throws:
    :   `InaccessibleObjectException` - if access cannot be enabled
    :   `SecurityException` - if the request is denied by the security manager

    See Also:
    :   - [`AccessibleObject.trySetAccessible()`](AccessibleObject.md#trySetAccessible())
        - [`MethodHandles.privateLookupIn(java.lang.Class<?>, java.lang.invoke.MethodHandles.Lookup)`](../invoke/MethodHandles.md#privateLookupIn(java.lang.Class,java.lang.invoke.MethodHandles.Lookup))

    External Specifications
    :   - [Java Native Interface Specification](../../../../../specs/jni/index.md)
  + ### getDeclaringClass

    public [Class](../Class.md "class in java.lang")<?> getDeclaringClass()

    Returns the `Class` object representing the class or interface
    that declares the field represented by this `Field` object.

    Specified by:
    :   `getDeclaringClass` in interface `Member`

    Returns:
    :   an object representing the declaring class of the
        underlying member
  + ### getName

    public [String](../String.md "class in java.lang") getName()

    Returns the name of the field represented by this `Field` object.

    Specified by:
    :   `getName` in interface `Member`

    Returns:
    :   the simple name of the underlying member
  + ### getModifiers

    public int getModifiers()

    Returns the Java language modifiers for the field represented
    by this `Field` object, as an integer. The `Modifier` class should
    be used to decode the modifiers.

    Specified by:
    :   `getModifiers` in interface `Member`

    Returns:
    :   the Java language modifiers for the underlying member

    See Also:
    :   - [`Modifier`](Modifier.md "class in java.lang.reflect")
        - [`accessFlags()`](#accessFlags())
  + ### accessFlags

    public [Set](../../util/Set.md "interface in java.util")<[AccessFlag](AccessFlag.md "enum class in java.lang.reflect")> accessFlags()

    Returns an unmodifiable set of the [access flags](AccessFlag.md "enum class in java.lang.reflect") for this field, possibly empty.

    Specified by:
    :   `accessFlags` in interface `Member`

    Returns:
    :   an unmodifiable set of the [access flags](AccessFlag.md "enum class in java.lang.reflect") for this field, possibly empty

    Since:
    :   20

    See Also:
    :   - [`getModifiers()`](#getModifiers())
  + ### isEnumConstant

    public boolean isEnumConstant()

    Returns `true` if this field represents an element of
    an enumerated class; returns `false` otherwise.

    Returns:
    :   `true` if and only if this field represents an element of
        an enumerated class.

    Since:
    :   1.5
  + ### isSynthetic

    public boolean isSynthetic()

    Returns `true` if this field is a synthetic
    field; returns `false` otherwise.

    Specified by:
    :   `isSynthetic` in interface `Member`

    Returns:
    :   true if and only if this field is a synthetic
        field as defined by the Java Language Specification.

    Since:
    :   1.5

    See Also:
    :   - [Java
          programming language and JVM modeling in core reflection](../../../../java.base/java/lang/reflect/package-summary.md#LanguageJvmModel)
  + ### getType

    public [Class](../Class.md "class in java.lang")<?> getType()

    Returns a `Class` object that identifies the
    declared type for the field represented by this
    `Field` object.

    Returns:
    :   a `Class` object identifying the declared
        type of the field represented by this object
  + ### getGenericType

    public [Type](Type.md "interface in java.lang.reflect") getGenericType()

    Returns a `Type` object that represents the declared type for
    the field represented by this `Field` object.

    If the declared type of the field is a parameterized type,
    the `Type` object returned must accurately reflect the
    actual type arguments used in the source code.

    If the type of the underlying field is a type variable or a
    parameterized type, it is created. Otherwise, it is resolved.

    Returns:
    :   a `Type` object that represents the declared type for
        the field represented by this `Field` object

    Throws:
    :   `GenericSignatureFormatError` - if the generic field
        signature does not conform to the format specified in
        The Java Virtual Machine Specification
    :   `TypeNotPresentException` - if the generic type
        signature of the underlying field refers to a non-existent
        class or interface declaration
    :   `MalformedParameterizedTypeException` - if the generic
        signature of the underlying field refers to a parameterized type
        that cannot be instantiated for any reason

    Since:
    :   1.5
  + ### equals

    public boolean equals([Object](../Object.md "class in java.lang") obj)

    Compares this `Field` against the specified object. Returns
    true if the objects are the same. Two `Field` objects are the same if
    they were declared by the same class and have the same name
    and type.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the reference object with which to compare.

    Returns:
    :   `true` if this object is the same as the obj
        argument; `false` otherwise.

    See Also:
    :   - [`Object.hashCode()`](../Object.md#hashCode())
        - [`HashMap`](../../util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns a hashcode for this `Field`. This is computed as the
    exclusive-or of the hashcodes for the underlying field's
    declaring class name and its name.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../String.md "class in java.lang") toString()

    Returns a string describing this `Field`. The format is
    the access modifiers for the field, if any, followed
    by the field type, followed by a space, followed by
    the fully-qualified name of the class declaring the field,
    followed by a period, followed by the name of the field.
    For example:

    ```
        public static final int java.lang.Thread.MIN_PRIORITY
        private int java.io.FileDescriptor.fd
    ```

    The modifiers are placed in canonical order as specified by
    "The Java Language Specification". This is `public`,
    `protected` or `private` first, and then other
    modifiers in the following order: `static`, `final`,
    `transient`, `volatile`.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string describing this `Field`
  + ### toGenericString

    public [String](../String.md "class in java.lang") toGenericString()

    Returns a string describing this `Field`, including
    its generic type. The format is the access modifiers for the
    field, if any, followed by the generic field type, followed by
    a space, followed by the fully-qualified name of the class
    declaring the field, followed by a period, followed by the name
    of the field.

    The modifiers are placed in canonical order as specified by
    "The Java Language Specification". This is `public`,
    `protected` or `private` first, and then other
    modifiers in the following order: `static`, `final`,
    `transient`, `volatile`.

    Returns:
    :   a string describing this `Field`, including
        its generic type

    Since:
    :   1.5
  + ### get

    public [Object](../Object.md "class in java.lang") get([Object](../Object.md "class in java.lang") obj)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [IllegalAccessException](../IllegalAccessException.md "class in java.lang")

    Returns the value of the field represented by this `Field`, on
    the specified object. The value is automatically wrapped in an
    object if it has a primitive type.

    The underlying field's value is obtained as follows:

    If the underlying field is a static field, the `obj` argument
    is ignored; it may be null.

    Otherwise, the underlying field is an instance field. If the
    specified `obj` argument is null, the method throws a
    `NullPointerException`. If the specified object is not an
    instance of the class or interface declaring the underlying
    field, the method throws an `IllegalArgumentException`.

    If this `Field` object is enforcing Java language access control, and
    the underlying field is inaccessible, the method throws an
    `IllegalAccessException`.
    If the underlying field is static, the class that declared the
    field is initialized if it has not already been initialized.

    Otherwise, the value is retrieved from the underlying instance
    or static field. If the field has a primitive type, the value
    is wrapped in an object before being returned, otherwise it is
    returned as is.

    If the field is hidden in the type of `obj`,
    the field's value is obtained according to the preceding rules.

    Parameters:
    :   `obj` - object from which the represented field's value is
        to be extracted

    Returns:
    :   the value of the represented field in object
        `obj`; primitive values are wrapped in an appropriate
        object before being returned

    Throws:
    :   `IllegalAccessException` - if this `Field` object
        is enforcing Java language access control and the underlying
        field is inaccessible.
    :   `IllegalArgumentException` - if the specified object is not an
        instance of the class or interface declaring the underlying
        field (or a subclass or implementor thereof).
    :   `NullPointerException` - if the specified object is null
        and the field is an instance field.
    :   `ExceptionInInitializerError` - if the initialization provoked
        by this method fails.
  + ### getBoolean

    public boolean getBoolean([Object](../Object.md "class in java.lang") obj)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [IllegalAccessException](../IllegalAccessException.md "class in java.lang")

    Gets the value of a static or instance `boolean` field.

    Parameters:
    :   `obj` - the object to extract the `boolean` value
        from

    Returns:
    :   the value of the `boolean` field

    Throws:
    :   `IllegalAccessException` - if this `Field` object
        is enforcing Java language access control and the underlying
        field is inaccessible.
    :   `IllegalArgumentException` - if the specified object is not
        an instance of the class or interface declaring the
        underlying field (or a subclass or implementor
        thereof), or if the field value cannot be
        converted to the type `boolean` by a
        widening conversion.
    :   `NullPointerException` - if the specified object is null
        and the field is an instance field.
    :   `ExceptionInInitializerError` - if the initialization provoked
        by this method fails.

    See Also:
    :   - [`get(java.lang.Object)`](#get(java.lang.Object))
  + ### getByte

    public byte getByte([Object](../Object.md "class in java.lang") obj)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [IllegalAccessException](../IllegalAccessException.md "class in java.lang")

    Gets the value of a static or instance `byte` field.

    Parameters:
    :   `obj` - the object to extract the `byte` value
        from

    Returns:
    :   the value of the `byte` field

    Throws:
    :   `IllegalAccessException` - if this `Field` object
        is enforcing Java language access control and the underlying
        field is inaccessible.
    :   `IllegalArgumentException` - if the specified object is not
        an instance of the class or interface declaring the
        underlying field (or a subclass or implementor
        thereof), or if the field value cannot be
        converted to the type `byte` by a
        widening conversion.
    :   `NullPointerException` - if the specified object is null
        and the field is an instance field.
    :   `ExceptionInInitializerError` - if the initialization provoked
        by this method fails.

    See Also:
    :   - [`get(java.lang.Object)`](#get(java.lang.Object))
  + ### getChar

    public char getChar([Object](../Object.md "class in java.lang") obj)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [IllegalAccessException](../IllegalAccessException.md "class in java.lang")

    Gets the value of a static or instance field of type
    `char` or of another primitive type convertible to
    type `char` via a widening conversion.

    Parameters:
    :   `obj` - the object to extract the `char` value
        from

    Returns:
    :   the value of the field converted to type `char`

    Throws:
    :   `IllegalAccessException` - if this `Field` object
        is enforcing Java language access control and the underlying
        field is inaccessible.
    :   `IllegalArgumentException` - if the specified object is not
        an instance of the class or interface declaring the
        underlying field (or a subclass or implementor
        thereof), or if the field value cannot be
        converted to the type `char` by a
        widening conversion.
    :   `NullPointerException` - if the specified object is null
        and the field is an instance field.
    :   `ExceptionInInitializerError` - if the initialization provoked
        by this method fails.

    See Also:
    :   - [`get(java.lang.Object)`](#get(java.lang.Object))
  + ### getShort

    public short getShort([Object](../Object.md "class in java.lang") obj)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [IllegalAccessException](../IllegalAccessException.md "class in java.lang")

    Gets the value of a static or instance field of type
    `short` or of another primitive type convertible to
    type `short` via a widening conversion.

    Parameters:
    :   `obj` - the object to extract the `short` value
        from

    Returns:
    :   the value of the field converted to type `short`

    Throws:
    :   `IllegalAccessException` - if this `Field` object
        is enforcing Java language access control and the underlying
        field is inaccessible.
    :   `IllegalArgumentException` - if the specified object is not
        an instance of the class or interface declaring the
        underlying field (or a subclass or implementor
        thereof), or if the field value cannot be
        converted to the type `short` by a
        widening conversion.
    :   `NullPointerException` - if the specified object is null
        and the field is an instance field.
    :   `ExceptionInInitializerError` - if the initialization provoked
        by this method fails.

    See Also:
    :   - [`get(java.lang.Object)`](#get(java.lang.Object))
  + ### getInt

    public int getInt([Object](../Object.md "class in java.lang") obj)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [IllegalAccessException](../IllegalAccessException.md "class in java.lang")

    Gets the value of a static or instance field of type
    `int` or of another primitive type convertible to
    type `int` via a widening conversion.

    Parameters:
    :   `obj` - the object to extract the `int` value
        from

    Returns:
    :   the value of the field converted to type `int`

    Throws:
    :   `IllegalAccessException` - if this `Field` object
        is enforcing Java language access control and the underlying
        field is inaccessible.
    :   `IllegalArgumentException` - if the specified object is not
        an instance of the class or interface declaring the
        underlying field (or a subclass or implementor
        thereof), or if the field value cannot be
        converted to the type `int` by a
        widening conversion.
    :   `NullPointerException` - if the specified object is null
        and the field is an instance field.
    :   `ExceptionInInitializerError` - if the initialization provoked
        by this method fails.

    See Also:
    :   - [`get(java.lang.Object)`](#get(java.lang.Object))
  + ### getLong

    public long getLong([Object](../Object.md "class in java.lang") obj)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [IllegalAccessException](../IllegalAccessException.md "class in java.lang")

    Gets the value of a static or instance field of type
    `long` or of another primitive type convertible to
    type `long` via a widening conversion.

    Parameters:
    :   `obj` - the object to extract the `long` value
        from

    Returns:
    :   the value of the field converted to type `long`

    Throws:
    :   `IllegalAccessException` - if this `Field` object
        is enforcing Java language access control and the underlying
        field is inaccessible.
    :   `IllegalArgumentException` - if the specified object is not
        an instance of the class or interface declaring the
        underlying field (or a subclass or implementor
        thereof), or if the field value cannot be
        converted to the type `long` by a
        widening conversion.
    :   `NullPointerException` - if the specified object is null
        and the field is an instance field.
    :   `ExceptionInInitializerError` - if the initialization provoked
        by this method fails.

    See Also:
    :   - [`get(java.lang.Object)`](#get(java.lang.Object))
  + ### getFloat

    public float getFloat([Object](../Object.md "class in java.lang") obj)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [IllegalAccessException](../IllegalAccessException.md "class in java.lang")

    Gets the value of a static or instance field of type
    `float` or of another primitive type convertible to
    type `float` via a widening conversion.

    Parameters:
    :   `obj` - the object to extract the `float` value
        from

    Returns:
    :   the value of the field converted to type `float`

    Throws:
    :   `IllegalAccessException` - if this `Field` object
        is enforcing Java language access control and the underlying
        field is inaccessible.
    :   `IllegalArgumentException` - if the specified object is not
        an instance of the class or interface declaring the
        underlying field (or a subclass or implementor
        thereof), or if the field value cannot be
        converted to the type `float` by a
        widening conversion.
    :   `NullPointerException` - if the specified object is null
        and the field is an instance field.
    :   `ExceptionInInitializerError` - if the initialization provoked
        by this method fails.

    See Also:
    :   - [`get(java.lang.Object)`](#get(java.lang.Object))
  + ### getDouble

    public double getDouble([Object](../Object.md "class in java.lang") obj)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [IllegalAccessException](../IllegalAccessException.md "class in java.lang")

    Gets the value of a static or instance field of type
    `double` or of another primitive type convertible to
    type `double` via a widening conversion.

    Parameters:
    :   `obj` - the object to extract the `double` value
        from

    Returns:
    :   the value of the field converted to type `double`

    Throws:
    :   `IllegalAccessException` - if this `Field` object
        is enforcing Java language access control and the underlying
        field is inaccessible.
    :   `IllegalArgumentException` - if the specified object is not
        an instance of the class or interface declaring the
        underlying field (or a subclass or implementor
        thereof), or if the field value cannot be
        converted to the type `double` by a
        widening conversion.
    :   `NullPointerException` - if the specified object is null
        and the field is an instance field.
    :   `ExceptionInInitializerError` - if the initialization provoked
        by this method fails.

    See Also:
    :   - [`get(java.lang.Object)`](#get(java.lang.Object))
  + ### set

    public void set([Object](../Object.md "class in java.lang") obj,
    [Object](../Object.md "class in java.lang") value)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [IllegalAccessException](../IllegalAccessException.md "class in java.lang")

    Sets the field represented by this `Field` object on the
    specified object argument to the specified new value. The new
    value is automatically unwrapped if the underlying field has a
    primitive type.

    The operation proceeds as follows:

    If the underlying field is static, the `obj` argument is
    ignored; it may be null.

    Otherwise the underlying field is an instance field. If the
    specified object argument is null, the method throws a
    `NullPointerException`. If the specified object argument is not
    an instance of the class or interface declaring the underlying
    field, the method throws an `IllegalArgumentException`.

    If this `Field` object is enforcing Java language access control, and
    the underlying field is inaccessible, the method throws an
    `IllegalAccessException`.

    If the underlying field is final, this `Field` object has
    *write* access if and only if the following conditions are met:
    - [`setAccessible(true)`](#setAccessible(boolean)) has succeeded for
      this `Field` object;
    - the field is non-static; and
    - the field's declaring class is not a [hidden class](../Class.md#isHidden()); and
    - the field's declaring class is not a [record class](../Class.md#isRecord()).If any of the above checks is not met, this method throws an
    `IllegalAccessException`.

    Setting a final field in this way
    is meaningful only during deserialization or reconstruction of
    instances of classes with blank final fields, before they are
    made available for access by other parts of a program. Use in
    any other context may have unpredictable effects, including cases
    in which other parts of a program continue to use the original
    value of this field.

    If the underlying field is of a primitive type, an unwrapping
    conversion is attempted to convert the new value to a value of
    a primitive type. If this attempt fails, the method throws an
    `IllegalArgumentException`.

    If, after possible unwrapping, the new value cannot be
    converted to the type of the underlying field by an identity or
    widening conversion, the method throws an
    `IllegalArgumentException`.

    If the underlying field is static, the class that declared the
    field is initialized if it has not already been initialized.

    The field is set to the possibly unwrapped and widened new value.

    If the field is hidden in the type of `obj`,
    the field's value is set according to the preceding rules.

    Parameters:
    :   `obj` - the object whose field should be modified
    :   `value` - the new value for the field of `obj`
        being modified

    Throws:
    :   `IllegalAccessException` - if this `Field` object
        is enforcing Java language access control and the underlying
        field is inaccessible or final;
        or if this `Field` object has no write access.
    :   `IllegalArgumentException` - if the specified object is not an
        instance of the class or interface declaring the underlying
        field (or a subclass or implementor thereof),
        or if an unwrapping conversion fails.
    :   `NullPointerException` - if the specified object is null
        and the field is an instance field.
    :   `ExceptionInInitializerError` - if the initialization provoked
        by this method fails.
  + ### setBoolean

    public void setBoolean([Object](../Object.md "class in java.lang") obj,
    boolean z)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [IllegalAccessException](../IllegalAccessException.md "class in java.lang")

    Sets the value of a field as a `boolean` on the specified object.
    This method is equivalent to
    `set(obj, zObj)`,
    where `zObj` is a `Boolean` object and
    `zObj.booleanValue() == z`.

    Parameters:
    :   `obj` - the object whose field should be modified
    :   `z` - the new value for the field of `obj`
        being modified

    Throws:
    :   `IllegalAccessException` - if this `Field` object
        is enforcing Java language access control and the underlying
        field is either inaccessible or final;
        or if this `Field` object has no write access.
    :   `IllegalArgumentException` - if the specified object is not an
        instance of the class or interface declaring the underlying
        field (or a subclass or implementor thereof),
        or if an unwrapping conversion fails.
    :   `NullPointerException` - if the specified object is null
        and the field is an instance field.
    :   `ExceptionInInitializerError` - if the initialization provoked
        by this method fails.

    See Also:
    :   - [`set(java.lang.Object, java.lang.Object)`](#set(java.lang.Object,java.lang.Object))
  + ### setByte

    public void setByte([Object](../Object.md "class in java.lang") obj,
    byte b)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [IllegalAccessException](../IllegalAccessException.md "class in java.lang")

    Sets the value of a field as a `byte` on the specified object.
    This method is equivalent to
    `set(obj, bObj)`,
    where `bObj` is a `Byte` object and
    `bObj.byteValue() == b`.

    Parameters:
    :   `obj` - the object whose field should be modified
    :   `b` - the new value for the field of `obj`
        being modified

    Throws:
    :   `IllegalAccessException` - if this `Field` object
        is enforcing Java language access control and the underlying
        field is either inaccessible or final;
        or if this `Field` object has no write access.
    :   `IllegalArgumentException` - if the specified object is not an
        instance of the class or interface declaring the underlying
        field (or a subclass or implementor thereof),
        or if an unwrapping conversion fails.
    :   `NullPointerException` - if the specified object is null
        and the field is an instance field.
    :   `ExceptionInInitializerError` - if the initialization provoked
        by this method fails.

    See Also:
    :   - [`set(java.lang.Object, java.lang.Object)`](#set(java.lang.Object,java.lang.Object))
  + ### setChar

    public void setChar([Object](../Object.md "class in java.lang") obj,
    char c)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [IllegalAccessException](../IllegalAccessException.md "class in java.lang")

    Sets the value of a field as a `char` on the specified object.
    This method is equivalent to
    `set(obj, cObj)`,
    where `cObj` is a `Character` object and
    `cObj.charValue() == c`.

    Parameters:
    :   `obj` - the object whose field should be modified
    :   `c` - the new value for the field of `obj`
        being modified

    Throws:
    :   `IllegalAccessException` - if this `Field` object
        is enforcing Java language access control and the underlying
        field is either inaccessible or final;
        or if this `Field` object has no write access.
    :   `IllegalArgumentException` - if the specified object is not an
        instance of the class or interface declaring the underlying
        field (or a subclass or implementor thereof),
        or if an unwrapping conversion fails.
    :   `NullPointerException` - if the specified object is null
        and the field is an instance field.
    :   `ExceptionInInitializerError` - if the initialization provoked
        by this method fails.

    See Also:
    :   - [`set(java.lang.Object, java.lang.Object)`](#set(java.lang.Object,java.lang.Object))
  + ### setShort

    public void setShort([Object](../Object.md "class in java.lang") obj,
    short s)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [IllegalAccessException](../IllegalAccessException.md "class in java.lang")

    Sets the value of a field as a `short` on the specified object.
    This method is equivalent to
    `set(obj, sObj)`,
    where `sObj` is a `Short` object and
    `sObj.shortValue() == s`.

    Parameters:
    :   `obj` - the object whose field should be modified
    :   `s` - the new value for the field of `obj`
        being modified

    Throws:
    :   `IllegalAccessException` - if this `Field` object
        is enforcing Java language access control and the underlying
        field is either inaccessible or final;
        or if this `Field` object has no write access.
    :   `IllegalArgumentException` - if the specified object is not an
        instance of the class or interface declaring the underlying
        field (or a subclass or implementor thereof),
        or if an unwrapping conversion fails.
    :   `NullPointerException` - if the specified object is null
        and the field is an instance field.
    :   `ExceptionInInitializerError` - if the initialization provoked
        by this method fails.

    See Also:
    :   - [`set(java.lang.Object, java.lang.Object)`](#set(java.lang.Object,java.lang.Object))
  + ### setInt

    public void setInt([Object](../Object.md "class in java.lang") obj,
    int i)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [IllegalAccessException](../IllegalAccessException.md "class in java.lang")

    Sets the value of a field as an `int` on the specified object.
    This method is equivalent to
    `set(obj, iObj)`,
    where `iObj` is an `Integer` object and
    `iObj.intValue() == i`.

    Parameters:
    :   `obj` - the object whose field should be modified
    :   `i` - the new value for the field of `obj`
        being modified

    Throws:
    :   `IllegalAccessException` - if this `Field` object
        is enforcing Java language access control and the underlying
        field is either inaccessible or final;
        or if this `Field` object has no write access.
    :   `IllegalArgumentException` - if the specified object is not an
        instance of the class or interface declaring the underlying
        field (or a subclass or implementor thereof),
        or if an unwrapping conversion fails.
    :   `NullPointerException` - if the specified object is null
        and the field is an instance field.
    :   `ExceptionInInitializerError` - if the initialization provoked
        by this method fails.

    See Also:
    :   - [`set(java.lang.Object, java.lang.Object)`](#set(java.lang.Object,java.lang.Object))
  + ### setLong

    public void setLong([Object](../Object.md "class in java.lang") obj,
    long l)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [IllegalAccessException](../IllegalAccessException.md "class in java.lang")

    Sets the value of a field as a `long` on the specified object.
    This method is equivalent to
    `set(obj, lObj)`,
    where `lObj` is a `Long` object and
    `lObj.longValue() == l`.

    Parameters:
    :   `obj` - the object whose field should be modified
    :   `l` - the new value for the field of `obj`
        being modified

    Throws:
    :   `IllegalAccessException` - if this `Field` object
        is enforcing Java language access control and the underlying
        field is either inaccessible or final;
        or if this `Field` object has no write access.
    :   `IllegalArgumentException` - if the specified object is not an
        instance of the class or interface declaring the underlying
        field (or a subclass or implementor thereof),
        or if an unwrapping conversion fails.
    :   `NullPointerException` - if the specified object is null
        and the field is an instance field.
    :   `ExceptionInInitializerError` - if the initialization provoked
        by this method fails.

    See Also:
    :   - [`set(java.lang.Object, java.lang.Object)`](#set(java.lang.Object,java.lang.Object))
  + ### setFloat

    public void setFloat([Object](../Object.md "class in java.lang") obj,
    float f)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [IllegalAccessException](../IllegalAccessException.md "class in java.lang")

    Sets the value of a field as a `float` on the specified object.
    This method is equivalent to
    `set(obj, fObj)`,
    where `fObj` is a `Float` object and
    `fObj.floatValue() == f`.

    Parameters:
    :   `obj` - the object whose field should be modified
    :   `f` - the new value for the field of `obj`
        being modified

    Throws:
    :   `IllegalAccessException` - if this `Field` object
        is enforcing Java language access control and the underlying
        field is either inaccessible or final;
        or if this `Field` object has no write access.
    :   `IllegalArgumentException` - if the specified object is not an
        instance of the class or interface declaring the underlying
        field (or a subclass or implementor thereof),
        or if an unwrapping conversion fails.
    :   `NullPointerException` - if the specified object is null
        and the field is an instance field.
    :   `ExceptionInInitializerError` - if the initialization provoked
        by this method fails.

    See Also:
    :   - [`set(java.lang.Object, java.lang.Object)`](#set(java.lang.Object,java.lang.Object))
  + ### setDouble

    public void setDouble([Object](../Object.md "class in java.lang") obj,
    double d)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [IllegalAccessException](../IllegalAccessException.md "class in java.lang")

    Sets the value of a field as a `double` on the specified object.
    This method is equivalent to
    `set(obj, dObj)`,
    where `dObj` is a `Double` object and
    `dObj.doubleValue() == d`.

    Parameters:
    :   `obj` - the object whose field should be modified
    :   `d` - the new value for the field of `obj`
        being modified

    Throws:
    :   `IllegalAccessException` - if this `Field` object
        is enforcing Java language access control and the underlying
        field is either inaccessible or final;
        or if this `Field` object has no write access.
    :   `IllegalArgumentException` - if the specified object is not an
        instance of the class or interface declaring the underlying
        field (or a subclass or implementor thereof),
        or if an unwrapping conversion fails.
    :   `NullPointerException` - if the specified object is null
        and the field is an instance field.
    :   `ExceptionInInitializerError` - if the initialization provoked
        by this method fails.

    See Also:
    :   - [`set(java.lang.Object, java.lang.Object)`](#set(java.lang.Object,java.lang.Object))
  + ### getAnnotation

    public <T extends [Annotation](../annotation/Annotation.md "interface in java.lang.annotation")> T getAnnotation([Class](../Class.md "class in java.lang")<T> annotationClass)

    Returns this element's annotation for the specified type if
    such an annotation is *present*, else null.

    Note that any annotation returned by this method is a
    declaration annotation.

    Specified by:
    :   `getAnnotation` in interface `AnnotatedElement`

    Overrides:
    :   `getAnnotation` in class `AccessibleObject`

    Type Parameters:
    :   `T` - the type of the annotation to query for and return if present

    Parameters:
    :   `annotationClass` - the Class object corresponding to the
        annotation type

    Returns:
    :   this element's annotation for the specified annotation type if
        present on this element, else null

    Throws:
    :   `NullPointerException` - if the given annotation class is null

    Since:
    :   1.5
  + ### getAnnotationsByType

    public <T extends [Annotation](../annotation/Annotation.md "interface in java.lang.annotation")> T[] getAnnotationsByType([Class](../Class.md "class in java.lang")<T> annotationClass)

    Returns annotations that are *associated* with this element.
    If there are no annotations *associated* with this element, the return
    value is an array of length 0.
    The difference between this method and [`AnnotatedElement.getAnnotation(Class)`](AnnotatedElement.md#getAnnotation(java.lang.Class))
    is that this method detects if its argument is a *repeatable
    annotation type* (JLS ), and if so, attempts to find one or
    more annotations of that type by "looking through" a container
    annotation.
    The caller of this method is free to modify the returned array; it will
    have no effect on the arrays returned to other callers.

    Note that any annotations returned by this method are
    declaration annotations.

    Specified by:
    :   `getAnnotationsByType` in interface `AnnotatedElement`

    Overrides:
    :   `getAnnotationsByType` in class `AccessibleObject`

    Type Parameters:
    :   `T` - the type of the annotation to query for and return if present

    Parameters:
    :   `annotationClass` - the Class object corresponding to the
        annotation type

    Returns:
    :   all this element's annotations for the specified annotation type if
        associated with this element, else an array of length zero

    Throws:
    :   `NullPointerException` - if the given annotation class is null

    Since:
    :   1.8
  + ### getDeclaredAnnotations

    public [Annotation](../annotation/Annotation.md "interface in java.lang.annotation")[] getDeclaredAnnotations()

    Returns annotations that are *directly present* on this element.
    This method ignores inherited annotations.
    If there are no annotations *directly present* on this element,
    the return value is an array of length 0.
    The caller of this method is free to modify the returned array; it will
    have no effect on the arrays returned to other callers.

    Note that any annotations returned by this method are
    declaration annotations.

    Specified by:
    :   `getDeclaredAnnotations` in interface `AnnotatedElement`

    Overrides:
    :   `getDeclaredAnnotations` in class `AccessibleObject`

    Returns:
    :   annotations directly present on this element
  + ### getAnnotatedType

    public [AnnotatedType](AnnotatedType.md "interface in java.lang.reflect") getAnnotatedType()

    Returns an AnnotatedType object that represents the use of a type to specify
    the declared type of the field represented by this Field.

    Returns:
    :   an object representing the declared type of the field
        represented by this Field

    Since:
    :   1.8