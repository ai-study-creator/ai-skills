Module [java.base](../../../module-summary.md)

Package [java.lang.invoke](package-summary.md)

# Interface MethodHandleInfo

---

public interface MethodHandleInfo

A symbolic reference obtained by cracking a direct method handle
into its constituent symbolic parts.
To crack a direct method handle, call [`Lookup.revealDirect`](MethodHandles.Lookup.md#revealDirect(java.lang.invoke.MethodHandle)).

## Direct Method Handles

A *direct method handle* represents a method, constructor, or field without
any intervening argument bindings or other transformations.
The method, constructor, or field referred to by a direct method handle is called
its *underlying member*.
Direct method handles may be obtained in any of these ways:

* By executing an `ldc` instruction on a `CONSTANT_MethodHandle` constant.
  (See the Java Virtual Machine Specification, sections and .)* By calling one of the [Lookup Factory Methods](MethodHandles.Lookup.md#lookups),
    such as [`Lookup.findVirtual`](MethodHandles.Lookup.md#findVirtual(java.lang.Class,java.lang.String,java.lang.invoke.MethodType)),
    to resolve a symbolic reference into a method handle.
    A symbolic reference consists of a class, name string, and type.* By calling the factory method [`Lookup.unreflect`](MethodHandles.Lookup.md#unreflect(java.lang.reflect.Method))
      or [`Lookup.unreflectSpecial`](MethodHandles.Lookup.md#unreflectSpecial(java.lang.reflect.Method,java.lang.Class))
      to convert a [`Method`](../reflect/Method.md "class in java.lang.reflect") into a method handle.* By calling the factory method [`Lookup.unreflectConstructor`](MethodHandles.Lookup.md#unreflectConstructor(java.lang.reflect.Constructor))
        to convert a [`Constructor`](../reflect/Constructor.md "class in java.lang.reflect") into a method handle.* By calling the factory method [`Lookup.unreflectGetter`](MethodHandles.Lookup.md#unreflectGetter(java.lang.reflect.Field))
          or [`Lookup.unreflectSetter`](MethodHandles.Lookup.md#unreflectSetter(java.lang.reflect.Field))
          to convert a [`Field`](../reflect/Field.md "class in java.lang.reflect") into a method handle.

## Restrictions on Cracking

Given a suitable `Lookup` object, it is possible to crack any direct method handle
to recover a symbolic reference for the underlying method, constructor, or field.
Cracking must be done via a `Lookup` object equivalent to that which created
the target method handle, or which has enough access permissions to recreate
an equivalent method handle.

If the underlying method is [caller sensitive](MethodHandles.Lookup.md#callsens),
the direct method handle will have been "bound" to a particular caller class, the
[lookup class](MethodHandles.Lookup.md#lookupClass())
of the lookup object used to create it.
Cracking this method handle with a different lookup class will fail
even if the underlying method is public (like `Class.forName`).

The requirement of lookup object matching provides a "fast fail" behavior
for programs which may otherwise trust erroneous revelation of a method
handle with symbolic information (or caller binding) from an unexpected scope.
Use [`MethodHandles.reflectAs(java.lang.Class<T>, java.lang.invoke.MethodHandle)`](MethodHandles.md#reflectAs(java.lang.Class,java.lang.invoke.MethodHandle)) to override this limitation.

## Reference kinds

The [Lookup Factory Methods](MethodHandles.Lookup.md#lookups)
correspond to all major use cases for methods, constructors, and fields.
These use cases may be distinguished using small integers as follows:

reference kinds

| reference kind | descriptive name | scope | member | behavior |
| --- | --- | --- | --- | --- |
| `1` | `REF_getField` | `class` | `FT f;` | `(T) this.f;` |
| `2` | `REF_getStatic` | `class` or `interface` | `static` `FT f;` | `(T) C.f;` |
| `3` | `REF_putField` | `class` | `FT f;` | `this.f = x;` |
| `4` | `REF_putStatic` | `class` | `static` `FT f;` | `C.f = arg;` |
| `5` | `REF_invokeVirtual` | `class` | `T m(A*);` | `(T) this.m(arg*);` |
| `6` | `REF_invokeStatic` | `class` or `interface` | `static` `T m(A*);` | `(T) C.m(arg*);` |
| `7` | `REF_invokeSpecial` | `class` or `interface` | `T m(A*);` | `(T) super.m(arg*);` |
| `8` | `REF_newInvokeSpecial` | `class` | `C(A*);` | `new C(arg*);` |
| `9` | `REF_invokeInterface` | `interface` | `T m(A*);` | `(T) this.m(arg*);` |

Since:
:   1.8

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `REF_getField`

  A direct method handle reference kind,
  as defined in the [table above](MethodHandleInfo.md#refkinds).

  `static final int`

  `REF_getStatic`

  A direct method handle reference kind,
  as defined in the [table above](MethodHandleInfo.md#refkinds).

  `static final int`

  `REF_invokeInterface`

  A direct method handle reference kind,
  as defined in the [table above](MethodHandleInfo.md#refkinds).

  `static final int`

  `REF_invokeSpecial`

  A direct method handle reference kind,
  as defined in the [table above](MethodHandleInfo.md#refkinds).

  `static final int`

  `REF_invokeStatic`

  A direct method handle reference kind,
  as defined in the [table above](MethodHandleInfo.md#refkinds).

  `static final int`

  `REF_invokeVirtual`

  A direct method handle reference kind,
  as defined in the [table above](MethodHandleInfo.md#refkinds).

  `static final int`

  `REF_newInvokeSpecial`

  A direct method handle reference kind,
  as defined in the [table above](MethodHandleInfo.md#refkinds).

  `static final int`

  `REF_putField`

  A direct method handle reference kind,
  as defined in the [table above](MethodHandleInfo.md#refkinds).

  `static final int`

  `REF_putStatic`

  A direct method handle reference kind,
  as defined in the [table above](MethodHandleInfo.md#refkinds).
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `Class<?>`

  `getDeclaringClass()`

  Returns the class in which the cracked method handle's underlying member was defined.

  `MethodType`

  `getMethodType()`

  Returns the nominal type of the cracked symbolic reference, expressed as a method type.

  `int`

  `getModifiers()`

  Returns the access modifiers of the underlying member.

  `String`

  `getName()`

  Returns the name of the cracked method handle's underlying member.

  `int`

  `getReferenceKind()`

  Returns the reference kind of the cracked method handle, which in turn
  determines whether the method handle's underlying member was a constructor, method, or field.

  `default boolean`

  `isVarArgs()`

  Determines if the underlying member was a variable arity method or constructor.

  `static String`

  `referenceKindToString(int referenceKind)`

  Returns the descriptive name of the given reference kind,
  as defined in the [table above](MethodHandleInfo.md#refkinds).

  `<T extends Member>  
  T`

  `reflectAs(Class<T> expected,
  MethodHandles.Lookup lookup)`

  Reflects the underlying member as a method, constructor, or field object.

  `static String`

  `toString(int kind,
  Class<?> defc,
  String name,
  MethodType type)`

  Returns a string representation for a `MethodHandleInfo`,
  given the four parts of its symbolic reference.

* ## Field Details

  + ### REF\_getField

    static final int REF\_getField

    A direct method handle reference kind,
    as defined in the [table above](MethodHandleInfo.md#refkinds).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.lang.invoke.MethodHandleInfo.REF_getField)
  + ### REF\_getStatic

    static final int REF\_getStatic

    A direct method handle reference kind,
    as defined in the [table above](MethodHandleInfo.md#refkinds).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.lang.invoke.MethodHandleInfo.REF_getStatic)
  + ### REF\_putField

    static final int REF\_putField

    A direct method handle reference kind,
    as defined in the [table above](MethodHandleInfo.md#refkinds).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.lang.invoke.MethodHandleInfo.REF_putField)
  + ### REF\_putStatic

    static final int REF\_putStatic

    A direct method handle reference kind,
    as defined in the [table above](MethodHandleInfo.md#refkinds).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.lang.invoke.MethodHandleInfo.REF_putStatic)
  + ### REF\_invokeVirtual

    static final int REF\_invokeVirtual

    A direct method handle reference kind,
    as defined in the [table above](MethodHandleInfo.md#refkinds).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.lang.invoke.MethodHandleInfo.REF_invokeVirtual)
  + ### REF\_invokeStatic

    static final int REF\_invokeStatic

    A direct method handle reference kind,
    as defined in the [table above](MethodHandleInfo.md#refkinds).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.lang.invoke.MethodHandleInfo.REF_invokeStatic)
  + ### REF\_invokeSpecial

    static final int REF\_invokeSpecial

    A direct method handle reference kind,
    as defined in the [table above](MethodHandleInfo.md#refkinds).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.lang.invoke.MethodHandleInfo.REF_invokeSpecial)
  + ### REF\_newInvokeSpecial

    static final int REF\_newInvokeSpecial

    A direct method handle reference kind,
    as defined in the [table above](MethodHandleInfo.md#refkinds).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.lang.invoke.MethodHandleInfo.REF_newInvokeSpecial)
  + ### REF\_invokeInterface

    static final int REF\_invokeInterface

    A direct method handle reference kind,
    as defined in the [table above](MethodHandleInfo.md#refkinds).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.lang.invoke.MethodHandleInfo.REF_invokeInterface)
* ## Method Details

  + ### getReferenceKind

    int getReferenceKind()

    Returns the reference kind of the cracked method handle, which in turn
    determines whether the method handle's underlying member was a constructor, method, or field.
    See the [table above](MethodHandleInfo.md#refkinds) for definitions.

    Returns:
    :   the integer code for the kind of reference used to access the underlying member
  + ### getDeclaringClass

    [Class](../Class.md "class in java.lang")<?> getDeclaringClass()

    Returns the class in which the cracked method handle's underlying member was defined.

    Returns:
    :   the declaring class of the underlying member
  + ### getName

    [String](../String.md "class in java.lang") getName()

    Returns the name of the cracked method handle's underlying member.
    This is ["<init>"](../constant/ConstantDescs.md#INIT_NAME)
    if the underlying member was a constructor,
    else it is a simple method name or field name.

    Returns:
    :   the simple name of the underlying member
  + ### getMethodType

    [MethodType](MethodType.md "class in java.lang.invoke") getMethodType()

    Returns the nominal type of the cracked symbolic reference, expressed as a method type.
    If the reference is to a constructor, the return type will be `void`.
    If it is to a non-static method, the method type will not mention the `this` parameter.
    If it is to a field and the requested access is to read the field,
    the method type will have no parameters and return the field type.
    If it is to a field and the requested access is to write the field,
    the method type will have one parameter of the field type and return `void`.

    Note that original direct method handle may include a leading `this` parameter,
    or (in the case of a constructor) will replace the `void` return type
    with the constructed class.
    The nominal type does not include any `this` parameter,
    and (in the case of a constructor) will return `void`.

    Returns:
    :   the type of the underlying member, expressed as a method type
  + ### reflectAs

    <T extends [Member](../reflect/Member.md "interface in java.lang.reflect")> T reflectAs([Class](../Class.md "class in java.lang")<T> expected,
    [MethodHandles.Lookup](MethodHandles.Lookup.md "class in java.lang.invoke") lookup)

    Reflects the underlying member as a method, constructor, or field object.
    If the underlying member is public, it is reflected as if by
    `getMethod`, `getConstructor`, or `getField`.
    Otherwise, it is reflected as if by
    `getDeclaredMethod`, `getDeclaredConstructor`, or `getDeclaredField`.
    The underlying member must be accessible to the given lookup object.

    Type Parameters:
    :   `T` - the desired type of the result, either [`Member`](../reflect/Member.md "interface in java.lang.reflect") or a subtype

    Parameters:
    :   `expected` - a class object representing the desired result type `T`
    :   `lookup` - the lookup object that created this MethodHandleInfo, or one with equivalent access privileges

    Returns:
    :   a reference to the method, constructor, or field object

    Throws:
    :   `ClassCastException` - if the member is not of the expected type
    :   `NullPointerException` - if either argument is `null`
    :   `IllegalArgumentException` - if the underlying member is not accessible to the given lookup object
  + ### getModifiers

    int getModifiers()

    Returns the access modifiers of the underlying member.

    Returns:
    :   the Java language modifiers for underlying member,
        or -1 if the member cannot be accessed

    See Also:
    :   - [`Modifier`](../reflect/Modifier.md "class in java.lang.reflect")
        - [`reflectAs(java.lang.Class<T>, java.lang.invoke.MethodHandles.Lookup)`](#reflectAs(java.lang.Class,java.lang.invoke.MethodHandles.Lookup))
  + ### isVarArgs

    default boolean isVarArgs()

    Determines if the underlying member was a variable arity method or constructor.
    Such members are represented by method handles that are varargs collectors.

    Returns:
    :   `true` if and only if the underlying member was declared with variable arity.
  + ### referenceKindToString

    static [String](../String.md "class in java.lang") referenceKindToString(int referenceKind)

    Returns the descriptive name of the given reference kind,
    as defined in the [table above](MethodHandleInfo.md#refkinds).
    The conventional prefix "REF\_" is omitted.

    Parameters:
    :   `referenceKind` - an integer code for a kind of reference used to access a class member

    Returns:
    :   a mixed-case string such as `"getField"`

    Throws:
    :   `IllegalArgumentException` - if the argument is not a valid
        [reference kind number](MethodHandleInfo.md#refkinds)
  + ### toString

    static [String](../String.md "class in java.lang") toString(int kind,
    [Class](../Class.md "class in java.lang")<?> defc,
    [String](../String.md "class in java.lang") name,
    [MethodType](MethodType.md "class in java.lang.invoke") type)

    Returns a string representation for a `MethodHandleInfo`,
    given the four parts of its symbolic reference.
    This is defined to be of the form `"RK C.N:MT"`, where `RK` is the
    [reference kind string](#referenceKindToString(int)) for `kind`,
    `C` is the [name](../Class.md#getName()) of `defc`
    `N` is the `name`, and
    `MT` is the `type`.
    These four values may be obtained from the
    [reference kind](#getReferenceKind()),
    [declaring class](#getDeclaringClass()),
    [member name](#getName()),
    and [method type](#getMethodType())
    of a `MethodHandleInfo` object.

    Parameters:
    :   `kind` - the [reference kind](#getReferenceKind()) part of the symbolic reference
    :   `defc` - the [declaring class](#getDeclaringClass()) part of the symbolic reference
    :   `name` - the [member name](#getName()) part of the symbolic reference
    :   `type` - the [method type](#getMethodType()) part of the symbolic reference

    Returns:
    :   a string of the form `"RK C.N:MT"`

    Throws:
    :   `IllegalArgumentException` - if the first argument is not a valid
        [reference kind number](MethodHandleInfo.md#refkinds)
    :   `NullPointerException` - if any reference argument is `null`