Module [java.management](../../../module-summary.md)

Package [javax.management.openmbean](package-summary.md)

# Class SimpleType<T>

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.management.openmbean.OpenType](OpenType.md "class in javax.management.openmbean")<T>

javax.management.openmbean.SimpleType<T>

Type Parameters:
:   `T` - the Java type that values described by this SimpleType must
    have.

All Implemented Interfaces:
:   `Serializable`

---

public final class SimpleType<T>
extends [OpenType](OpenType.md "class in javax.management.openmbean")<T>

The `SimpleType` class is the *open type* class whose instances describe
all *open data* values which are neither arrays,
nor [`CompositeData`](CompositeData.md "interface in javax.management.openmbean") values,
nor [`TabularData`](TabularData.md "interface in javax.management.openmbean") values.
It predefines all its possible instances as static fields, and has no public constructor.

Given a `SimpleType` instance describing values whose Java class name is *className*,
the internal fields corresponding to the name and description of this `SimpleType` instance
are also set to *className*.
In other words, its methods `getClassName`, `getTypeName` and `getDescription`
all return the same string value *className*.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.openmbean.SimpleType)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final SimpleType<BigDecimal>`

  `BIGDECIMAL`

  The `SimpleType` instance describing values whose
  Java class name is `java.math.BigDecimal`.

  `static final SimpleType<BigInteger>`

  `BIGINTEGER`

  The `SimpleType` instance describing values whose
  Java class name is `java.math.BigInteger`.

  `static final SimpleType<Boolean>`

  `BOOLEAN`

  The `SimpleType` instance describing values whose
  Java class name is `java.lang.Boolean`.

  `static final SimpleType<Byte>`

  `BYTE`

  The `SimpleType` instance describing values whose
  Java class name is `java.lang.Byte`.

  `static final SimpleType<Character>`

  `CHARACTER`

  The `SimpleType` instance describing values whose
  Java class name is `java.lang.Character`.

  `static final SimpleType<Date>`

  `DATE`

  The `SimpleType` instance describing values whose
  Java class name is `java.util.Date`.

  `static final SimpleType<Double>`

  `DOUBLE`

  The `SimpleType` instance describing values whose
  Java class name is `java.lang.Double`.

  `static final SimpleType<Float>`

  `FLOAT`

  The `SimpleType` instance describing values whose
  Java class name is `java.lang.Float`.

  `static final SimpleType<Integer>`

  `INTEGER`

  The `SimpleType` instance describing values whose
  Java class name is `java.lang.Integer`.

  `static final SimpleType<Long>`

  `LONG`

  The `SimpleType` instance describing values whose
  Java class name is `java.lang.Long`.

  `static final SimpleType<ObjectName>`

  `OBJECTNAME`

  The `SimpleType` instance describing values whose
  Java class name is `javax.management.ObjectName`.

  `static final SimpleType<Short>`

  `SHORT`

  The `SimpleType` instance describing values whose
  Java class name is `java.lang.Short`.

  `static final SimpleType<String>`

  `STRING`

  The `SimpleType` instance describing values whose
  Java class name is `java.lang.String`.

  `static final SimpleType<Void>`

  `VOID`

  The `SimpleType` instance describing values whose
  Java class name is `java.lang.Void`.

  ### Fields inherited from class javax.management.openmbean.[OpenType](OpenType.md "class in javax.management.openmbean")

  `ALLOWED_CLASSNAMES, ALLOWED_CLASSNAMES_LIST`
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Compares the specified `obj` parameter with this `SimpleType` instance for equality.

  `int`

  `hashCode()`

  Returns the hash code value for this `SimpleType` instance.

  `boolean`

  `isValue(Object obj)`

  Tests whether obj is a value for this
  `SimpleType` instance.

  `Object`

  `readResolve()`

  Replace an object read from an [`ObjectInputStream`](../../../../java.base/java/io/ObjectInputStream.md "class in java.io") with the unique instance for that
  value.

  `String`

  `toString()`

  Returns a string representation of this `SimpleType` instance.

  ### Methods inherited from class javax.management.openmbean.[OpenType](OpenType.md "class in javax.management.openmbean")

  `getClassName, getDescription, getTypeName, isArray`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### VOID

    public static final [SimpleType](SimpleType.md "class in javax.management.openmbean")<[Void](../../../../java.base/java/lang/Void.md "class in java.lang")> VOID

    The `SimpleType` instance describing values whose
    Java class name is `java.lang.Void`.
  + ### BOOLEAN

    public static final [SimpleType](SimpleType.md "class in javax.management.openmbean")<[Boolean](../../../../java.base/java/lang/Boolean.md "class in java.lang")> BOOLEAN

    The `SimpleType` instance describing values whose
    Java class name is `java.lang.Boolean`.
  + ### CHARACTER

    public static final [SimpleType](SimpleType.md "class in javax.management.openmbean")<[Character](../../../../java.base/java/lang/Character.md "class in java.lang")> CHARACTER

    The `SimpleType` instance describing values whose
    Java class name is `java.lang.Character`.
  + ### BYTE

    public static final [SimpleType](SimpleType.md "class in javax.management.openmbean")<[Byte](../../../../java.base/java/lang/Byte.md "class in java.lang")> BYTE

    The `SimpleType` instance describing values whose
    Java class name is `java.lang.Byte`.
  + ### SHORT

    public static final [SimpleType](SimpleType.md "class in javax.management.openmbean")<[Short](../../../../java.base/java/lang/Short.md "class in java.lang")> SHORT

    The `SimpleType` instance describing values whose
    Java class name is `java.lang.Short`.
  + ### INTEGER

    public static final [SimpleType](SimpleType.md "class in javax.management.openmbean")<[Integer](../../../../java.base/java/lang/Integer.md "class in java.lang")> INTEGER

    The `SimpleType` instance describing values whose
    Java class name is `java.lang.Integer`.
  + ### LONG

    public static final [SimpleType](SimpleType.md "class in javax.management.openmbean")<[Long](../../../../java.base/java/lang/Long.md "class in java.lang")> LONG

    The `SimpleType` instance describing values whose
    Java class name is `java.lang.Long`.
  + ### FLOAT

    public static final [SimpleType](SimpleType.md "class in javax.management.openmbean")<[Float](../../../../java.base/java/lang/Float.md "class in java.lang")> FLOAT

    The `SimpleType` instance describing values whose
    Java class name is `java.lang.Float`.
  + ### DOUBLE

    public static final [SimpleType](SimpleType.md "class in javax.management.openmbean")<[Double](../../../../java.base/java/lang/Double.md "class in java.lang")> DOUBLE

    The `SimpleType` instance describing values whose
    Java class name is `java.lang.Double`.
  + ### STRING

    public static final [SimpleType](SimpleType.md "class in javax.management.openmbean")<[String](../../../../java.base/java/lang/String.md "class in java.lang")> STRING

    The `SimpleType` instance describing values whose
    Java class name is `java.lang.String`.
  + ### BIGDECIMAL

    public static final [SimpleType](SimpleType.md "class in javax.management.openmbean")<[BigDecimal](../../../../java.base/java/math/BigDecimal.md "class in java.math")> BIGDECIMAL

    The `SimpleType` instance describing values whose
    Java class name is `java.math.BigDecimal`.
  + ### BIGINTEGER

    public static final [SimpleType](SimpleType.md "class in javax.management.openmbean")<[BigInteger](../../../../java.base/java/math/BigInteger.md "class in java.math")> BIGINTEGER

    The `SimpleType` instance describing values whose
    Java class name is `java.math.BigInteger`.
  + ### DATE

    public static final [SimpleType](SimpleType.md "class in javax.management.openmbean")<[Date](../../../../java.base/java/util/Date.md "class in java.util")> DATE

    The `SimpleType` instance describing values whose
    Java class name is `java.util.Date`.
  + ### OBJECTNAME

    public static final [SimpleType](SimpleType.md "class in javax.management.openmbean")<[ObjectName](../ObjectName.md "class in javax.management")> OBJECTNAME

    The `SimpleType` instance describing values whose
    Java class name is `javax.management.ObjectName`.
* ## Method Details

  + ### isValue

    public boolean isValue([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Tests whether obj is a value for this
    `SimpleType` instance.

    This method returns
    `true` if and only if obj is not null and
    obj's class name is the same as the className field
    defined for this `SimpleType` instance (ie the class
    name returned by the [`getClassName`](OpenType.md#getClassName()) method).

    Specified by:
    :   `isValue` in class `OpenType<T>`

    Parameters:
    :   `obj` - the object to be tested.

    Returns:
    :   `true` if obj is a value for this
        `SimpleType` instance.
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Compares the specified `obj` parameter with this `SimpleType` instance for equality.

    Two `SimpleType` instances are equal if and only if their
    [`getClassName`](OpenType.md#getClassName()) methods return the same value.

    Specified by:
    :   `equals` in class `OpenType<T>`

    Parameters:
    :   `obj` - the object to be compared for equality with this `SimpleType` instance;
        if obj is `null` or is not an instance of the class `SimpleType`,
        `equals` returns `false`.

    Returns:
    :   `true` if the specified object is equal to this `SimpleType` instance.

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns the hash code value for this `SimpleType` instance.
    The hash code of a `SimpleType` instance is the hash code of
    the string value returned by the [`getClassName`](OpenType.md#getClassName()) method.

    As `SimpleType` instances are immutable, the hash code for this instance is calculated once,
    on the first call to `hashCode`, and then the same value is returned for subsequent calls.

    Specified by:
    :   `hashCode` in class `OpenType<T>`

    Returns:
    :   the hash code value for this `SimpleType` instance

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this `SimpleType` instance.

    The string representation consists of
    the name of this class (ie `javax.management.openmbean.SimpleType`) and the type name
    for this instance (which is the java class name of the values this `SimpleType` instance represents).

    As `SimpleType` instances are immutable, the string representation for this instance is calculated once,
    on the first call to `toString`, and then the same value is returned for subsequent calls.

    Specified by:
    :   `toString` in class `OpenType<T>`

    Returns:
    :   a string representation of this `SimpleType` instance
  + ### readResolve

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") readResolve()
    throws [ObjectStreamException](../../../../java.base/java/io/ObjectStreamException.md "class in java.io")

    Replace an object read from an [`ObjectInputStream`](../../../../java.base/java/io/ObjectInputStream.md "class in java.io") with the unique instance for that
    value.

    Returns:
    :   the replacement object.

    Throws:
    :   `ObjectStreamException` - if the read object cannot be
        resolved.