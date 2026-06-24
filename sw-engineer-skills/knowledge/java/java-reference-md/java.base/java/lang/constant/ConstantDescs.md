Module [java.base](../../../module-summary.md)

Package [java.lang.constant](package-summary.md)

# Class ConstantDescs

[java.lang.Object](../Object.md "class in java.lang")

java.lang.constant.ConstantDescs

---

public final class ConstantDescs
extends [Object](../Object.md "class in java.lang")

Predefined values of [nominal descriptor](package-summary.md#nominal)
for common constants, including descriptors for primitive class types and
other common platform types, and descriptors for method handles for standard
bootstrap methods.

Since:
:   12

See Also:
:   * [`ConstantDesc`](ConstantDesc.md "interface in java.lang.constant")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final DirectMethodHandleDesc`

  `BSM_CLASS_DATA`

  [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant") representing [`MethodHandles.classData`](../invoke/MethodHandles.md#classData(java.lang.invoke.MethodHandles.Lookup,java.lang.String,java.lang.Class))

  `static final DirectMethodHandleDesc`

  `BSM_CLASS_DATA_AT`

  [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant") representing [`MethodHandles.classDataAt`](../invoke/MethodHandles.md#classDataAt(java.lang.invoke.MethodHandles.Lookup,java.lang.String,java.lang.Class,int))

  `static final DirectMethodHandleDesc`

  `BSM_ENUM_CONSTANT`

  [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant") representing [`ConstantBootstraps.enumConstant`](../invoke/ConstantBootstraps.md#enumConstant(java.lang.invoke.MethodHandles.Lookup,java.lang.String,java.lang.Class))

  `static final DirectMethodHandleDesc`

  `BSM_EXPLICIT_CAST`

  [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant") representing [`ConstantBootstraps.explicitCast`](../invoke/ConstantBootstraps.md#explicitCast(java.lang.invoke.MethodHandles.Lookup,java.lang.String,java.lang.Class,java.lang.Object))

  `static final DirectMethodHandleDesc`

  `BSM_GET_STATIC_FINAL`

  [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant") representing [`ConstantBootstraps.getStaticFinal`](../invoke/ConstantBootstraps.md#getStaticFinal(java.lang.invoke.MethodHandles.Lookup,java.lang.String,java.lang.Class,java.lang.Class))

  `static final DirectMethodHandleDesc`

  `BSM_INVOKE`

  [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant") representing [`ConstantBootstraps.invoke`](../invoke/ConstantBootstraps.md#invoke(java.lang.invoke.MethodHandles.Lookup,java.lang.String,java.lang.Class,java.lang.invoke.MethodHandle,java.lang.Object...))

  `static final DirectMethodHandleDesc`

  `BSM_NULL_CONSTANT`

  [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant") representing [`ConstantBootstraps.nullConstant`](../invoke/ConstantBootstraps.md#nullConstant(java.lang.invoke.MethodHandles.Lookup,java.lang.String,java.lang.Class))

  `static final DirectMethodHandleDesc`

  `BSM_PRIMITIVE_CLASS`

  [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant") representing [`ConstantBootstraps.primitiveClass`](../invoke/ConstantBootstraps.md#primitiveClass(java.lang.invoke.MethodHandles.Lookup,java.lang.String,java.lang.Class))

  `static final DirectMethodHandleDesc`

  `BSM_VARHANDLE_ARRAY`

  [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant") representing [`ConstantBootstraps.arrayVarHandle`](../invoke/ConstantBootstraps.md#arrayVarHandle(java.lang.invoke.MethodHandles.Lookup,java.lang.String,java.lang.Class,java.lang.Class))

  `static final DirectMethodHandleDesc`

  `BSM_VARHANDLE_FIELD`

  [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant") representing [`ConstantBootstraps.fieldVarHandle`](../invoke/ConstantBootstraps.md#fieldVarHandle(java.lang.invoke.MethodHandles.Lookup,java.lang.String,java.lang.Class,java.lang.Class,java.lang.Class))

  `static final DirectMethodHandleDesc`

  `BSM_VARHANDLE_STATIC_FIELD`

  [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant") representing [`ConstantBootstraps.staticFieldVarHandle`](../invoke/ConstantBootstraps.md#staticFieldVarHandle(java.lang.invoke.MethodHandles.Lookup,java.lang.String,java.lang.Class,java.lang.Class,java.lang.Class))

  `static final ClassDesc`

  `CD_boolean`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing the primitive type `boolean`

  `static final ClassDesc`

  `CD_Boolean`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Boolean`](../Boolean.md "class in java.lang")

  `static final ClassDesc`

  `CD_byte`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing the primitive type `byte`

  `static final ClassDesc`

  `CD_Byte`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Byte`](../Byte.md "class in java.lang")

  `static final ClassDesc`

  `CD_CallSite`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`CallSite`](../invoke/CallSite.md "class in java.lang.invoke")

  `static final ClassDesc`

  `CD_char`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing the primitive type `char`

  `static final ClassDesc`

  `CD_Character`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Character`](../Character.md "class in java.lang")

  `static final ClassDesc`

  `CD_Class`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Class`](../Class.md "class in java.lang")

  `static final ClassDesc`

  `CD_ClassDesc`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`ClassDesc`](ClassDesc.md "interface in java.lang.constant")

  `static final ClassDesc`

  `CD_Collection`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Collection`](../../util/Collection.md "interface in java.util")

  `static final ClassDesc`

  `CD_ConstantBootstraps`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`ConstantBootstraps`](../invoke/ConstantBootstraps.md "class in java.lang.invoke")

  `static final ClassDesc`

  `CD_ConstantDesc`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`ConstantDesc`](ConstantDesc.md "interface in java.lang.constant")

  `static final ClassDesc`

  `CD_DirectMethodHandleDesc`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`DirectMethodHandleDesc`](DirectMethodHandleDesc.md "interface in java.lang.constant")

  `static final ClassDesc`

  `CD_double`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing the primitive type `double`

  `static final ClassDesc`

  `CD_Double`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Double`](../Double.md "class in java.lang")

  `static final ClassDesc`

  `CD_DynamicCallSiteDesc`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`DynamicCallSiteDesc`](DynamicCallSiteDesc.md "class in java.lang.constant")

  `static final ClassDesc`

  `CD_DynamicConstantDesc`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`DynamicConstantDesc`](DynamicConstantDesc.md "class in java.lang.constant")

  `static final ClassDesc`

  `CD_Enum`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Enum`](../Enum.md "class in java.lang")

  `static final ClassDesc`

  `CD_EnumDesc`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Enum.EnumDesc`](../Enum.EnumDesc.md "class in java.lang")

  `static final ClassDesc`

  `CD_Exception`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Exception`](../Exception.md "class in java.lang")

  `static final ClassDesc`

  `CD_float`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing the primitive type `float`

  `static final ClassDesc`

  `CD_Float`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Float`](../Float.md "class in java.lang")

  `static final ClassDesc`

  `CD_int`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing the primitive type `int`

  `static final ClassDesc`

  `CD_Integer`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Integer`](../Integer.md "class in java.lang")

  `static final ClassDesc`

  `CD_List`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`List`](../../util/List.md "interface in java.util")

  `static final ClassDesc`

  `CD_long`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing the primitive type `long`

  `static final ClassDesc`

  `CD_Long`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Long`](../Long.md "class in java.lang")

  `static final ClassDesc`

  `CD_Map`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Map`](../../util/Map.md "interface in java.util")

  `static final ClassDesc`

  `CD_MethodHandle`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`MethodHandle`](../invoke/MethodHandle.md "class in java.lang.invoke")

  `static final ClassDesc`

  `CD_MethodHandleDesc`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant")

  `static final ClassDesc`

  `CD_MethodHandleDesc_Kind`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`DirectMethodHandleDesc.Kind`](DirectMethodHandleDesc.Kind.md "enum class in java.lang.constant")

  `static final ClassDesc`

  `CD_MethodHandles`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`MethodHandles`](../invoke/MethodHandles.md "class in java.lang.invoke")

  `static final ClassDesc`

  `CD_MethodHandles_Lookup`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`MethodHandles.Lookup`](../invoke/MethodHandles.Lookup.md "class in java.lang.invoke")

  `static final ClassDesc`

  `CD_MethodType`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`MethodType`](../invoke/MethodType.md "class in java.lang.invoke")

  `static final ClassDesc`

  `CD_MethodTypeDesc`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`MethodTypeDesc`](MethodTypeDesc.md "interface in java.lang.constant")

  `static final ClassDesc`

  `CD_Number`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Number`](../Number.md "class in java.lang")

  `static final ClassDesc`

  `CD_Object`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Object`](../Object.md "class in java.lang")

  `static final ClassDesc`

  `CD_Set`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Set`](../../util/Set.md "interface in java.util")

  `static final ClassDesc`

  `CD_short`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing the primitive type `short`

  `static final ClassDesc`

  `CD_Short`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Short`](../Short.md "class in java.lang")

  `static final ClassDesc`

  `CD_String`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`String`](../String.md "class in java.lang")

  `static final ClassDesc`

  `CD_Throwable`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Throwable`](../Throwable.md "class in java.lang")

  `static final ClassDesc`

  `CD_VarHandle`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`VarHandle`](../invoke/VarHandle.md "class in java.lang.invoke")

  `static final ClassDesc`

  `CD_VarHandleDesc`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`VarHandle.VarHandleDesc`](../invoke/VarHandle.VarHandleDesc.md "class in java.lang.invoke")

  `static final ClassDesc`

  `CD_void`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing the primitive type `void`

  `static final ClassDesc`

  `CD_Void`

  [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Void`](../Void.md "class in java.lang")

  `static final String`

  `CLASS_INIT_NAME`

  The special name of class initialization methods, "<clinit>".

  `static final String`

  `DEFAULT_NAME`

  Invocation name to use when no name is needed, such as the name of a
  constructor, or the invocation name of a dynamic constant or dynamic
  callsite when the bootstrap is known to ignore the invocation name.

  `static final DynamicConstantDesc<Boolean>`

  `FALSE`

  Nominal descriptor representing the constant [Boolean.FALSE](../Boolean.md#FALSE)

  `static final String`

  `INIT_NAME`

  The special name of instance initialization methods, "<init>".

  `static final MethodTypeDesc`

  `MTD_void`

  Nominal descriptor representing the method descriptor `()V`,
  taking no argument and returning `void`.

  `static final ConstantDesc`

  `NULL`

  Nominal descriptor representing the constant `null`

  `static final DynamicConstantDesc<Boolean>`

  `TRUE`

  Nominal descriptor representing the constant [Boolean.TRUE](../Boolean.md#TRUE)
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static DirectMethodHandleDesc`

  `ofCallsiteBootstrap(ClassDesc owner,
  String name,
  ClassDesc returnType,
  ClassDesc... paramTypes)`

  Returns a [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant") corresponding to a bootstrap method for
  an `invokedynamic` callsite, which is a static method whose leading
  parameter types are `Lookup`, `String`, and `MethodType`.

  `static DirectMethodHandleDesc`

  `ofConstantBootstrap(ClassDesc owner,
  String name,
  ClassDesc returnType,
  ClassDesc... paramTypes)`

  Returns a [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant") corresponding to a bootstrap method for a
  dynamic constant, which is a static method whose leading arguments are
  `Lookup`, `String`, and `Class`.

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### DEFAULT\_NAME

    public static final [String](../String.md "class in java.lang") DEFAULT\_NAME

    Invocation name to use when no name is needed, such as the name of a
    constructor, or the invocation name of a dynamic constant or dynamic
    callsite when the bootstrap is known to ignore the invocation name.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.lang.constant.ConstantDescs.DEFAULT_NAME)
  + ### CD\_Object

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_Object

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Object`](../Object.md "class in java.lang")
  + ### CD\_String

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_String

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`String`](../String.md "class in java.lang")
  + ### CD\_Class

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_Class

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Class`](../Class.md "class in java.lang")
  + ### CD\_Number

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_Number

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Number`](../Number.md "class in java.lang")
  + ### CD\_Integer

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_Integer

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Integer`](../Integer.md "class in java.lang")
  + ### CD\_Long

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_Long

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Long`](../Long.md "class in java.lang")
  + ### CD\_Float

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_Float

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Float`](../Float.md "class in java.lang")
  + ### CD\_Double

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_Double

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Double`](../Double.md "class in java.lang")
  + ### CD\_Short

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_Short

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Short`](../Short.md "class in java.lang")
  + ### CD\_Byte

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_Byte

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Byte`](../Byte.md "class in java.lang")
  + ### CD\_Character

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_Character

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Character`](../Character.md "class in java.lang")
  + ### CD\_Boolean

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_Boolean

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Boolean`](../Boolean.md "class in java.lang")
  + ### CD\_Void

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_Void

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Void`](../Void.md "class in java.lang")
  + ### CD\_Throwable

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_Throwable

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Throwable`](../Throwable.md "class in java.lang")
  + ### CD\_Exception

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_Exception

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Exception`](../Exception.md "class in java.lang")
  + ### CD\_Enum

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_Enum

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Enum`](../Enum.md "class in java.lang")
  + ### CD\_VarHandle

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_VarHandle

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`VarHandle`](../invoke/VarHandle.md "class in java.lang.invoke")
  + ### CD\_MethodHandles

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_MethodHandles

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`MethodHandles`](../invoke/MethodHandles.md "class in java.lang.invoke")
  + ### CD\_MethodHandles\_Lookup

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_MethodHandles\_Lookup

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`MethodHandles.Lookup`](../invoke/MethodHandles.Lookup.md "class in java.lang.invoke")
  + ### CD\_MethodHandle

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_MethodHandle

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`MethodHandle`](../invoke/MethodHandle.md "class in java.lang.invoke")
  + ### CD\_MethodType

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_MethodType

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`MethodType`](../invoke/MethodType.md "class in java.lang.invoke")
  + ### CD\_CallSite

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_CallSite

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`CallSite`](../invoke/CallSite.md "class in java.lang.invoke")
  + ### CD\_Collection

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_Collection

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Collection`](../../util/Collection.md "interface in java.util")
  + ### CD\_List

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_List

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`List`](../../util/List.md "interface in java.util")
  + ### CD\_Set

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_Set

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Set`](../../util/Set.md "interface in java.util")
  + ### CD\_Map

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_Map

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Map`](../../util/Map.md "interface in java.util")
  + ### CD\_ConstantDesc

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_ConstantDesc

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`ConstantDesc`](ConstantDesc.md "interface in java.lang.constant")
  + ### CD\_ClassDesc

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_ClassDesc

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`ClassDesc`](ClassDesc.md "interface in java.lang.constant")
  + ### CD\_EnumDesc

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_EnumDesc

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`Enum.EnumDesc`](../Enum.EnumDesc.md "class in java.lang")
  + ### CD\_MethodTypeDesc

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_MethodTypeDesc

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`MethodTypeDesc`](MethodTypeDesc.md "interface in java.lang.constant")
  + ### CD\_MethodHandleDesc

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_MethodHandleDesc

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant")
  + ### CD\_DirectMethodHandleDesc

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_DirectMethodHandleDesc

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`DirectMethodHandleDesc`](DirectMethodHandleDesc.md "interface in java.lang.constant")
  + ### CD\_VarHandleDesc

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_VarHandleDesc

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`VarHandle.VarHandleDesc`](../invoke/VarHandle.VarHandleDesc.md "class in java.lang.invoke")
  + ### CD\_MethodHandleDesc\_Kind

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_MethodHandleDesc\_Kind

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`DirectMethodHandleDesc.Kind`](DirectMethodHandleDesc.Kind.md "enum class in java.lang.constant")
  + ### CD\_DynamicConstantDesc

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_DynamicConstantDesc

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`DynamicConstantDesc`](DynamicConstantDesc.md "class in java.lang.constant")
  + ### CD\_DynamicCallSiteDesc

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_DynamicCallSiteDesc

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`DynamicCallSiteDesc`](DynamicCallSiteDesc.md "class in java.lang.constant")
  + ### CD\_ConstantBootstraps

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_ConstantBootstraps

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing [`ConstantBootstraps`](../invoke/ConstantBootstraps.md "class in java.lang.invoke")
  + ### BSM\_PRIMITIVE\_CLASS

    public static final [DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant") BSM\_PRIMITIVE\_CLASS

    [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant") representing [`ConstantBootstraps.primitiveClass`](../invoke/ConstantBootstraps.md#primitiveClass(java.lang.invoke.MethodHandles.Lookup,java.lang.String,java.lang.Class))
  + ### BSM\_ENUM\_CONSTANT

    public static final [DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant") BSM\_ENUM\_CONSTANT

    [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant") representing [`ConstantBootstraps.enumConstant`](../invoke/ConstantBootstraps.md#enumConstant(java.lang.invoke.MethodHandles.Lookup,java.lang.String,java.lang.Class))
  + ### BSM\_GET\_STATIC\_FINAL

    public static final [DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant") BSM\_GET\_STATIC\_FINAL

    [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant") representing [`ConstantBootstraps.getStaticFinal`](../invoke/ConstantBootstraps.md#getStaticFinal(java.lang.invoke.MethodHandles.Lookup,java.lang.String,java.lang.Class,java.lang.Class))

    Since:
    :   15
  + ### BSM\_NULL\_CONSTANT

    public static final [DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant") BSM\_NULL\_CONSTANT

    [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant") representing [`ConstantBootstraps.nullConstant`](../invoke/ConstantBootstraps.md#nullConstant(java.lang.invoke.MethodHandles.Lookup,java.lang.String,java.lang.Class))
  + ### BSM\_VARHANDLE\_FIELD

    public static final [DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant") BSM\_VARHANDLE\_FIELD

    [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant") representing [`ConstantBootstraps.fieldVarHandle`](../invoke/ConstantBootstraps.md#fieldVarHandle(java.lang.invoke.MethodHandles.Lookup,java.lang.String,java.lang.Class,java.lang.Class,java.lang.Class))
  + ### BSM\_VARHANDLE\_STATIC\_FIELD

    public static final [DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant") BSM\_VARHANDLE\_STATIC\_FIELD

    [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant") representing [`ConstantBootstraps.staticFieldVarHandle`](../invoke/ConstantBootstraps.md#staticFieldVarHandle(java.lang.invoke.MethodHandles.Lookup,java.lang.String,java.lang.Class,java.lang.Class,java.lang.Class))
  + ### BSM\_VARHANDLE\_ARRAY

    public static final [DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant") BSM\_VARHANDLE\_ARRAY

    [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant") representing [`ConstantBootstraps.arrayVarHandle`](../invoke/ConstantBootstraps.md#arrayVarHandle(java.lang.invoke.MethodHandles.Lookup,java.lang.String,java.lang.Class,java.lang.Class))
  + ### BSM\_INVOKE

    public static final [DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant") BSM\_INVOKE

    [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant") representing [`ConstantBootstraps.invoke`](../invoke/ConstantBootstraps.md#invoke(java.lang.invoke.MethodHandles.Lookup,java.lang.String,java.lang.Class,java.lang.invoke.MethodHandle,java.lang.Object...))
  + ### BSM\_EXPLICIT\_CAST

    public static final [DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant") BSM\_EXPLICIT\_CAST

    [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant") representing [`ConstantBootstraps.explicitCast`](../invoke/ConstantBootstraps.md#explicitCast(java.lang.invoke.MethodHandles.Lookup,java.lang.String,java.lang.Class,java.lang.Object))

    Since:
    :   15
  + ### CD\_int

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_int

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing the primitive type `int`
  + ### CD\_long

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_long

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing the primitive type `long`
  + ### CD\_float

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_float

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing the primitive type `float`
  + ### CD\_double

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_double

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing the primitive type `double`
  + ### CD\_short

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_short

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing the primitive type `short`
  + ### CD\_byte

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_byte

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing the primitive type `byte`
  + ### CD\_char

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_char

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing the primitive type `char`
  + ### CD\_boolean

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_boolean

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing the primitive type `boolean`
  + ### CD\_void

    public static final [ClassDesc](ClassDesc.md "interface in java.lang.constant") CD\_void

    [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") representing the primitive type `void`
  + ### BSM\_CLASS\_DATA

    public static final [DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant") BSM\_CLASS\_DATA

    [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant") representing [`MethodHandles.classData`](../invoke/MethodHandles.md#classData(java.lang.invoke.MethodHandles.Lookup,java.lang.String,java.lang.Class))

    Since:
    :   21
  + ### BSM\_CLASS\_DATA\_AT

    public static final [DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant") BSM\_CLASS\_DATA\_AT

    [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant") representing [`MethodHandles.classDataAt`](../invoke/MethodHandles.md#classDataAt(java.lang.invoke.MethodHandles.Lookup,java.lang.String,java.lang.Class,int))

    Since:
    :   21
  + ### NULL

    public static final [ConstantDesc](ConstantDesc.md "interface in java.lang.constant") NULL

    Nominal descriptor representing the constant `null`
  + ### TRUE

    public static final [DynamicConstantDesc](DynamicConstantDesc.md "class in java.lang.constant")<[Boolean](../Boolean.md "class in java.lang")> TRUE

    Nominal descriptor representing the constant [Boolean.TRUE](../Boolean.md#TRUE)

    Since:
    :   15
  + ### FALSE

    public static final [DynamicConstantDesc](DynamicConstantDesc.md "class in java.lang.constant")<[Boolean](../Boolean.md "class in java.lang")> FALSE

    Nominal descriptor representing the constant [Boolean.FALSE](../Boolean.md#FALSE)

    Since:
    :   15
  + ### INIT\_NAME

    public static final [String](../String.md "class in java.lang") INIT\_NAME

    The special name of instance initialization methods, "<init>". An instance
    initialization method has this special name and is `void`.

    Since:
    :   21

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.lang.constant.ConstantDescs.INIT_NAME)
  + ### CLASS\_INIT\_NAME

    public static final [String](../String.md "class in java.lang") CLASS\_INIT\_NAME

    The special name of class initialization methods, "<clinit>". A class
    initialization method has this special name, [`ACC_STATIC`](../reflect/AccessFlag.md#STATIC) flag set, is [`void`](#MTD_void) and takes no arguments.

    Since:
    :   21

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.lang.constant.ConstantDescs.CLASS_INIT_NAME)
  + ### MTD\_void

    public static final [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") MTD\_void

    Nominal descriptor representing the method descriptor `()V`,
    taking no argument and returning `void`.

    Since:
    :   21
* ## Method Details

  + ### ofCallsiteBootstrap

    public static [DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant") ofCallsiteBootstrap([ClassDesc](ClassDesc.md "interface in java.lang.constant") owner,
    [String](../String.md "class in java.lang") name,
    [ClassDesc](ClassDesc.md "interface in java.lang.constant") returnType,
    [ClassDesc](ClassDesc.md "interface in java.lang.constant")... paramTypes)

    Returns a [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant") corresponding to a bootstrap method for
    an `invokedynamic` callsite, which is a static method whose leading
    parameter types are `Lookup`, `String`, and `MethodType`.

    Parameters:
    :   `owner` - the class declaring the method
    :   `name` - the unqualified name of the method
    :   `returnType` - the return type of the method
    :   `paramTypes` - the types of the static bootstrap arguments, if any

    Returns:
    :   the [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant")

    Throws:
    :   `NullPointerException` - if any of the arguments are null
  + ### ofConstantBootstrap

    public static [DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant") ofConstantBootstrap([ClassDesc](ClassDesc.md "interface in java.lang.constant") owner,
    [String](../String.md "class in java.lang") name,
    [ClassDesc](ClassDesc.md "interface in java.lang.constant") returnType,
    [ClassDesc](ClassDesc.md "interface in java.lang.constant")... paramTypes)

    Returns a [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant") corresponding to a bootstrap method for a
    dynamic constant, which is a static method whose leading arguments are
    `Lookup`, `String`, and `Class`.

    Parameters:
    :   `owner` - the class declaring the method
    :   `name` - the unqualified name of the method
    :   `returnType` - the return type of the method
    :   `paramTypes` - the types of the static bootstrap arguments, if any

    Returns:
    :   the [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant")

    Throws:
    :   `NullPointerException` - if any of the arguments are null