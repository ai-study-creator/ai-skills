Module [java.base](../../../module-summary.md)

Package [java.lang.invoke](package-summary.md)

# Class StringConcatFactory

[java.lang.Object](../Object.md "class in java.lang")

java.lang.invoke.StringConcatFactory

---

public final class StringConcatFactory
extends [Object](../Object.md "class in java.lang")

Methods to facilitate the creation of String concatenation methods, that
can be used to efficiently concatenate a known number of arguments of known
types, possibly after type adaptation and partial evaluation of arguments.
These methods are typically used as *bootstrap methods* for `invokedynamic` call sites, to support the *string concatenation*
feature of the Java Programming Language.

Indirect access to the behavior specified by the provided `MethodHandle` proceeds in order through two phases:

1. *Linkage* occurs when the methods in this class are invoked.
   They take as arguments a method type describing the concatenated arguments
   count and types, and optionally the String *recipe*, plus the
   constants that participate in the String concatenation. The details on
   accepted recipe shapes are described further below. Linkage may involve
   dynamically loading a new class that implements the expected concatenation
   behavior. The `CallSite` holds the `MethodHandle` pointing to the
   exact concatenation method. The concatenation methods may be shared among
   different `CallSite`s, e.g. if linkage methods produce them as pure
   functions.
2. *Invocation* occurs when a generated concatenation method is
   invoked with the exact dynamic arguments. This may occur many times for a
   single concatenation method. The method referenced by the behavior `MethodHandle` is invoked with the static arguments and any additional dynamic
   arguments provided on invocation, as if by [`MethodHandle.invoke(Object...)`](MethodHandle.md#invoke(java.lang.Object...)).

This class provides two forms of linkage methods: a simple version
([`makeConcat(java.lang.invoke.MethodHandles.Lookup, String, MethodType)`](#makeConcat(java.lang.invoke.MethodHandles.Lookup,java.lang.String,java.lang.invoke.MethodType))) using only the dynamic arguments, and an advanced version
([`makeConcatWithConstants(java.lang.invoke.MethodHandles.Lookup, String, MethodType, String, Object...)`](#makeConcatWithConstants(java.lang.invoke.MethodHandles.Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object...)) using the advanced forms of capturing
the constant arguments. The advanced strategy can produce marginally better
invocation bytecode, at the expense of exploding the number of shapes of
string concatenation methods present at runtime, because those shapes would
include constant static arguments as well.

Since:
:   9

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `MAX_INDY_CONCAT_ARG_SLOTS`

  Preview.

  Maximum number of argument slots in String Concat call.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static CallSite`

  `makeConcat(MethodHandles.Lookup lookup,
  String name,
  MethodType concatType)`

  Facilitates the creation of optimized String concatenation methods, that
  can be used to efficiently concatenate a known number of arguments of
  known types, possibly after type adaptation and partial evaluation of
  arguments.

  `static CallSite`

  `makeConcatWithConstants(MethodHandles.Lookup lookup,
  String name,
  MethodType concatType,
  String recipe,
  Object... constants)`

  Facilitates the creation of optimized String concatenation methods, that
  can be used to efficiently concatenate a known number of arguments of
  known types, possibly after type adaptation and partial evaluation of
  arguments.

  `static MethodHandle`

  `makeConcatWithTemplate(List<String> fragments,
  List<Class<?>> ptypes)`

  Preview.

  Simplified concatenation method to facilitate [`StringTemplate`](../StringTemplate.md "interface in java.lang")[PREVIEW](../StringTemplate.md#preview-java.lang.StringTemplate)
  concatenation.

  `static List<MethodHandle>`

  `makeConcatWithTemplateCluster(List<String> fragments,
  List<Class<?>> ptypes,
  int maxSlots)`

  Preview.

  This method breaks up large concatenations into separate
  [`MethodHandles`](MethodHandle.md "class in java.lang.invoke") based on the number of slots required
  per [`MethodHandle`](MethodHandle.md "class in java.lang.invoke").

  `static MethodHandle`

  `makeConcatWithTemplateGetters(List<String> fragments,
  List<MethodHandle> getters,
  int maxSlots)`

  Preview.

  This method creates a [`MethodHandle`](MethodHandle.md "class in java.lang.invoke") expecting one input, the
  receiver of the supplied getters.

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### MAX\_INDY\_CONCAT\_ARG\_SLOTS

    public static final int MAX\_INDY\_CONCAT\_ARG\_SLOTS

    `MAX_INDY_CONCAT_ARG_SLOTS` is a preview API of the Java platform.

    Programs can only use `MAX_INDY_CONCAT_ARG_SLOTS` when preview features are enabled.

    Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

    Maximum number of argument slots in String Concat call.
    While the maximum number of argument slots that indy call can handle is 253,
    we do not use all those slots, to let the strategies with MethodHandle
    combinators to use some arguments.

    Since:
    :   21
* ## Method Details

  + ### makeConcat

    public static [CallSite](CallSite.md "class in java.lang.invoke") makeConcat([MethodHandles.Lookup](MethodHandles.Lookup.md "class in java.lang.invoke") lookup,
    [String](../String.md "class in java.lang") name,
    [MethodType](MethodType.md "class in java.lang.invoke") concatType)
    throws [StringConcatException](StringConcatException.md "class in java.lang.invoke")

    Facilitates the creation of optimized String concatenation methods, that
    can be used to efficiently concatenate a known number of arguments of
    known types, possibly after type adaptation and partial evaluation of
    arguments. Typically used as a *bootstrap method* for `invokedynamic` call sites, to support the *string concatenation*
    feature of the Java Programming Language.

    When the target of the `CallSite` returned from this method is
    invoked, it returns the result of String concatenation, taking all
    function arguments passed to the linkage method as inputs for
    concatenation. The target signature is given by `concatType`.
    For a target accepting:
    - zero inputs, concatenation results in an empty string;
    - one input, concatenation results in the single
      input converted as per JLS "String Conversion"; otherwise
    - two or more inputs, the inputs are concatenated as per
      requirements stated in JLS "String Concatenation Operator +".
      The inputs are converted as per JLS "String Conversion",
      and combined from left to right.

    Assume the linkage arguments are as follows:
    - `concatType`, describing the `CallSite` signature

    Then the following linkage invariants must hold:
    - The number of parameter slots in `concatType` is
      less than or equal to 200
    - The return type in `concatType` is assignable from [`String`](../String.md "class in java.lang")

    Parameters:
    :   `lookup` - Represents a lookup context with the accessibility
        privileges of the caller. Specifically, the lookup
        context must have
        [full privilege access](MethodHandles.Lookup.md#hasFullPrivilegeAccess()).
        When used with `invokedynamic`, this is stacked
        automatically by the VM.
    :   `name` - The name of the method to implement. This name is
        arbitrary, and has no meaning for this linkage method.
        When used with `invokedynamic`, this is provided by
        the `NameAndType` of the `InvokeDynamic`
        structure and is stacked automatically by the VM.
    :   `concatType` - The expected signature of the `CallSite`. The
        parameter types represent the types of concatenation
        arguments; the return type is always assignable from [`String`](../String.md "class in java.lang"). When used with `invokedynamic`,
        this is provided by the `NameAndType` of the `InvokeDynamic` structure and is stacked automatically by
        the VM.

    Returns:
    :   a CallSite whose target can be used to perform String
        concatenation, with dynamic concatenation arguments described by the given
        `concatType`.

    Throws:
    :   `StringConcatException` - If any of the linkage invariants described
        here are violated, or the lookup context
        does not have private access privileges.
    :   `NullPointerException` - If any of the incoming arguments is null.
        This will never happen when a bootstrap method
        is called with invokedynamic.
  + ### makeConcatWithConstants

    public static [CallSite](CallSite.md "class in java.lang.invoke") makeConcatWithConstants([MethodHandles.Lookup](MethodHandles.Lookup.md "class in java.lang.invoke") lookup,
    [String](../String.md "class in java.lang") name,
    [MethodType](MethodType.md "class in java.lang.invoke") concatType,
    [String](../String.md "class in java.lang") recipe,
    [Object](../Object.md "class in java.lang")... constants)
    throws [StringConcatException](StringConcatException.md "class in java.lang.invoke")

    Facilitates the creation of optimized String concatenation methods, that
    can be used to efficiently concatenate a known number of arguments of
    known types, possibly after type adaptation and partial evaluation of
    arguments. Typically used as a *bootstrap method* for `invokedynamic` call sites, to support the *string concatenation*
    feature of the Java Programming Language.

    When the target of the `CallSite` returned from this method is
    invoked, it returns the result of String concatenation, taking all
    function arguments and constants passed to the linkage method as inputs for
    concatenation. The target signature is given by `concatType`, and
    does not include constants.
    For a target accepting:
    - zero inputs, concatenation results in an empty string;
    - one input, concatenation results in the single
      input converted as per JLS "String Conversion"; otherwise
    - two or more inputs, the inputs are concatenated as per
      requirements stated in JLS "String Concatenation Operator +".
      The inputs are converted as per JLS "String Conversion",
      and combined from left to right.

    The concatenation *recipe* is a String description for the way to
    construct a concatenated String from the arguments and constants. The
    recipe is processed from left to right, and each character represents an
    input to concatenation. Recipe characters mean:
    - *\1 (Unicode point 0001)*: an ordinary argument. This
      input is passed through dynamic argument, and is provided during the
      concatenation method invocation. This input can be null.
    - *\2 (Unicode point 0002):* a constant. This input passed
      through static bootstrap argument. This constant can be any value
      representable in constant pool. If necessary, the factory would call
      `toString` to perform a one-time String conversion.
    - *Any other char value:* a single character constant.

    Assume the linkage arguments are as follows:
    - `concatType`, describing the `CallSite` signature
    - `recipe`, describing the String recipe
    - `constants`, the vararg array of constants

    Then the following linkage invariants must hold:
    - The number of parameter slots in `concatType` is less than
      or equal to 200
    - The parameter count in `concatType` is equal to number of \1 tags
      in `recipe`
    - The return type in `concatType` is assignable
      from [`String`](../String.md "class in java.lang"), and matches the return type of the
      returned [`MethodHandle`](MethodHandle.md "class in java.lang.invoke")
    - The number of elements in `constants` is equal to number of \2
      tags in `recipe`

    Parameters:
    :   `lookup` - Represents a lookup context with the accessibility
        privileges of the caller. Specifically, the lookup
        context must have
        [full privilege access](MethodHandles.Lookup.md#hasFullPrivilegeAccess()).
        When used with `invokedynamic`, this is stacked
        automatically by the VM.
    :   `name` - The name of the method to implement. This name is
        arbitrary, and has no meaning for this linkage method.
        When used with `invokedynamic`, this is provided
        by the `NameAndType` of the `InvokeDynamic`
        structure and is stacked automatically by the VM.
    :   `concatType` - The expected signature of the `CallSite`. The
        parameter types represent the types of dynamic concatenation
        arguments; the return type is always assignable from [`String`](../String.md "class in java.lang"). When used with `invokedynamic`, this is provided by the `NameAndType` of the `InvokeDynamic` structure and
        is stacked automatically by the VM.
    :   `recipe` - Concatenation recipe, described above.
    :   `constants` - A vararg parameter representing the constants passed to
        the linkage method.

    Returns:
    :   a CallSite whose target can be used to perform String
        concatenation, with dynamic concatenation arguments described by the given
        `concatType`.

    Throws:
    :   `StringConcatException` - If any of the linkage invariants described
        here are violated, or the lookup context
        does not have private access privileges.
    :   `NullPointerException` - If any of the incoming arguments is null, or
        any constant in `recipe` is null.
        This will never happen when a bootstrap method
        is called with invokedynamic.
  + ### makeConcatWithTemplate

    public static [MethodHandle](MethodHandle.md "class in java.lang.invoke") makeConcatWithTemplate([List](../../util/List.md "interface in java.util")<[String](../String.md "class in java.lang")> fragments,
    [List](../../util/List.md "interface in java.util")<[Class](../Class.md "class in java.lang")<?>> ptypes)
    throws [StringConcatException](StringConcatException.md "class in java.lang.invoke")

    `makeConcatWithTemplate` is a preview API of the Java platform.

    Programs can only use `makeConcatWithTemplate` when preview features are enabled.

    Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

    Simplified concatenation method to facilitate [`StringTemplate`](../StringTemplate.md "interface in java.lang")[PREVIEW](../StringTemplate.md#preview-java.lang.StringTemplate)
    concatenation. This method returns a single concatenation method that
    interleaves fragments and values. fragment|value|fragment|value|...|value|fragment.
    The number of fragments must be one more that the number of ptypes.
    The total number of slots used by the ptypes must be less than or equal
    to [`MAX_INDY_CONCAT_ARG_SLOTS`](#MAX_INDY_CONCAT_ARG_SLOTS)[PREVIEW](#preview-MAX_INDY_CONCAT_ARG_SLOTS).

    Parameters:
    :   `fragments` - list of string fragments
    :   `ptypes` - list of expression types

    Returns:
    :   the [`MethodHandle`](MethodHandle.md "class in java.lang.invoke") for concatenation

    Throws:
    :   `StringConcatException` - If any of the linkage invariants are violated.
    :   `NullPointerException` - If any of the incoming arguments is null.
    :   `IllegalArgumentException` - If the number of value slots exceed [`MAX_INDY_CONCAT_ARG_SLOTS`](#MAX_INDY_CONCAT_ARG_SLOTS)[PREVIEW](#preview-MAX_INDY_CONCAT_ARG_SLOTS).

    Since:
    :   21
  + ### makeConcatWithTemplateCluster

    public static [List](../../util/List.md "interface in java.util")<[MethodHandle](MethodHandle.md "class in java.lang.invoke")> makeConcatWithTemplateCluster([List](../../util/List.md "interface in java.util")<[String](../String.md "class in java.lang")> fragments,
    [List](../../util/List.md "interface in java.util")<[Class](../Class.md "class in java.lang")<?>> ptypes,
    int maxSlots)
    throws [StringConcatException](StringConcatException.md "class in java.lang.invoke")

    `makeConcatWithTemplateCluster` is a preview API of the Java platform.

    Programs can only use `makeConcatWithTemplateCluster` when preview features are enabled.

    Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

    This method breaks up large concatenations into separate
    [`MethodHandles`](MethodHandle.md "class in java.lang.invoke") based on the number of slots required
    per [`MethodHandle`](MethodHandle.md "class in java.lang.invoke"). Each [`MethodHandle`](MethodHandle.md "class in java.lang.invoke") after the first will
    have an extra [`String`](../String.md "class in java.lang") slot for the result from the previous
    [`MethodHandle`](MethodHandle.md "class in java.lang.invoke").
    [`makeConcatWithTemplate(java.util.List<java.lang.String>, java.util.List<java.lang.Class<?>>)`](#makeConcatWithTemplate(java.util.List,java.util.List))[PREVIEW](#preview-makeConcatWithTemplate(java.util.List,java.util.List))
    is used to construct the [`MethodHandles`](MethodHandle.md "class in java.lang.invoke"). The total
    number of slots used by the ptypes is open ended. However, care must
    be given when combining the [`MethodHandles`](MethodHandle.md "class in java.lang.invoke") so that
    the combine total does not exceed the 255 slot limit.

    Parameters:
    :   `fragments` - list of string fragments
    :   `ptypes` - list of expression types
    :   `maxSlots` - maximum number of slots per [`MethodHandle`](MethodHandle.md "class in java.lang.invoke").

    Returns:
    :   List of [`MethodHandles`](MethodHandle.md "class in java.lang.invoke")

    Throws:
    :   `IllegalArgumentException` - If maxSlots is not between 1 and
        MAX\_INDY\_CONCAT\_ARG\_SLOTS.
    :   `StringConcatException` - If any of the linkage invariants are violated.
    :   `NullPointerException` - If any of the incoming arguments is null.
    :   `IllegalArgumentException` - If the number of value slots exceed [`MAX_INDY_CONCAT_ARG_SLOTS`](#MAX_INDY_CONCAT_ARG_SLOTS)[PREVIEW](#preview-MAX_INDY_CONCAT_ARG_SLOTS).

    Since:
    :   21
  + ### makeConcatWithTemplateGetters

    public static [MethodHandle](MethodHandle.md "class in java.lang.invoke") makeConcatWithTemplateGetters([List](../../util/List.md "interface in java.util")<[String](../String.md "class in java.lang")> fragments,
    [List](../../util/List.md "interface in java.util")<[MethodHandle](MethodHandle.md "class in java.lang.invoke")> getters,
    int maxSlots)
    throws [StringConcatException](StringConcatException.md "class in java.lang.invoke")

    `makeConcatWithTemplateGetters` is a preview API of the Java platform.

    Programs can only use `makeConcatWithTemplateGetters` when preview features are enabled.

    Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

    This method creates a [`MethodHandle`](MethodHandle.md "class in java.lang.invoke") expecting one input, the
    receiver of the supplied getters. This method uses
    [`makeConcatWithTemplateCluster(java.util.List<java.lang.String>, java.util.List<java.lang.Class<?>>, int)`](#makeConcatWithTemplateCluster(java.util.List,java.util.List,int))[PREVIEW](#preview-makeConcatWithTemplateCluster(java.util.List,java.util.List,int))
    to create the intermediate [`MethodHandles`](MethodHandle.md "class in java.lang.invoke").

    Parameters:
    :   `fragments` - list of string fragments
    :   `getters` - list of getter [`MethodHandles`](MethodHandle.md "class in java.lang.invoke")
    :   `maxSlots` - maximum number of slots per [`MethodHandle`](MethodHandle.md "class in java.lang.invoke") in
        cluster.

    Returns:
    :   the [`MethodHandle`](MethodHandle.md "class in java.lang.invoke") for concatenation

    Throws:
    :   `IllegalArgumentException` - If maxSlots is not between 1 and
        MAX\_INDY\_CONCAT\_ARG\_SLOTS or if the
        getters don't use the same argument type
    :   `StringConcatException` - If any of the linkage invariants are violated
    :   `NullPointerException` - If any of the incoming arguments is null
    :   `IllegalArgumentException` - If the number of value slots exceed [`MAX_INDY_CONCAT_ARG_SLOTS`](#MAX_INDY_CONCAT_ARG_SLOTS)[PREVIEW](#preview-MAX_INDY_CONCAT_ARG_SLOTS).

    Since:
    :   21