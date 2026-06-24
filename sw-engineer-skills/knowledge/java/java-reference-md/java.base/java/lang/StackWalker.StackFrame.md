Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Interface StackWalker.StackFrame

Enclosing class:
:   `StackWalker`

---

public static interface StackWalker.StackFrame

A `StackFrame` object represents a method invocation returned by
[`StackWalker`](StackWalker.md "class in java.lang").

The [`getDeclaringClass()`](#getDeclaringClass()) method may be unsupported as determined
by the [stack walking options](StackWalker.Option.md "enum class in java.lang") of a [stack walker](StackWalker.md "class in java.lang").

Since:
:   9

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `int`

  `getByteCodeIndex()`

  Returns the index to the code array of the `Code` attribute
  containing the execution point represented by this stack frame.

  `String`

  `getClassName()`

  Gets the [binary name](ClassLoader.md#binary-name)
  of the declaring class of the method represented by this stack frame.

  `Class<?>`

  `getDeclaringClass()`

  Gets the declaring `Class` for the method represented by
  this stack frame.

  `default String`

  `getDescriptor()`

  Returns the *descriptor* of the method represented by
  this stack frame as defined by
  The Java Virtual Machine Specification.

  `String`

  `getFileName()`

  Returns the name of the source file containing the execution point
  represented by this stack frame.

  `int`

  `getLineNumber()`

  Returns the line number of the source line containing the execution
  point represented by this stack frame.

  `String`

  `getMethodName()`

  Gets the name of the method represented by this stack frame.

  `default MethodType`

  `getMethodType()`

  Returns the [`MethodType`](invoke/MethodType.md "class in java.lang.invoke") representing the parameter types and
  the return type for the method represented by this stack frame.

  `boolean`

  `isNativeMethod()`

  Returns `true` if the method containing the execution point
  represented by this stack frame is a native method.

  `StackTraceElement`

  `toStackTraceElement()`

  Gets a `StackTraceElement` for this stack frame.

* ## Method Details

  + ### getClassName

    [String](String.md "class in java.lang") getClassName()

    Gets the [binary name](ClassLoader.md#binary-name)
    of the declaring class of the method represented by this stack frame.

    Returns:
    :   the binary name of the declaring class of the method
        represented by this stack frame
  + ### getMethodName

    [String](String.md "class in java.lang") getMethodName()

    Gets the name of the method represented by this stack frame.

    Returns:
    :   the name of the method represented by this stack frame
  + ### getDeclaringClass

    [Class](Class.md "class in java.lang")<?> getDeclaringClass()

    Gets the declaring `Class` for the method represented by
    this stack frame.

    Returns:
    :   the declaring `Class` of the method represented by
        this stack frame

    Throws:
    :   `UnsupportedOperationException` - if this `StackWalker`
        is not configured with [`Option.RETAIN_CLASS_REFERENCE`](StackWalker.Option.md#RETAIN_CLASS_REFERENCE).
  + ### getMethodType

    default [MethodType](invoke/MethodType.md "class in java.lang.invoke") getMethodType()

    Returns the [`MethodType`](invoke/MethodType.md "class in java.lang.invoke") representing the parameter types and
    the return type for the method represented by this stack frame.

    Returns:
    :   the `MethodType` for this stack frame

    Throws:
    :   `UnsupportedOperationException` - if this `StackWalker`
        is not configured with [`Option.RETAIN_CLASS_REFERENCE`](StackWalker.Option.md#RETAIN_CLASS_REFERENCE).

    Since:
    :   10
  + ### getDescriptor

    default [String](String.md "class in java.lang") getDescriptor()

    Returns the *descriptor* of the method represented by
    this stack frame as defined by
    The Java Virtual Machine Specification.

    Returns:
    :   the descriptor of the method represented by
        this stack frame

    Since:
    :   10

    See Also:
    :   - [`MethodType.fromMethodDescriptorString(String, ClassLoader)`](invoke/MethodType.md#fromMethodDescriptorString(java.lang.String,java.lang.ClassLoader))
        - [`MethodType.toMethodDescriptorString()`](invoke/MethodType.md#toMethodDescriptorString())
  + ### getByteCodeIndex

    int getByteCodeIndex()

    Returns the index to the code array of the `Code` attribute
    containing the execution point represented by this stack frame.
    The code array gives the actual bytes of Java Virtual Machine code
    that implement the method.

    Returns:
    :   the index to the code array of the `Code` attribute
        containing the execution point represented by this stack frame,
        or a negative number if the method is native.
  + ### getFileName

    [String](String.md "class in java.lang") getFileName()

    Returns the name of the source file containing the execution point
    represented by this stack frame. Generally, this corresponds
    to the `SourceFile` attribute of the relevant `class`
    file as defined by The Java Virtual Machine Specification.
    In some systems, the name may refer to some source code unit
    other than a file, such as an entry in a source repository.

    Returns:
    :   the name of the file containing the execution point
        represented by this stack frame, or `null` if
        this information is unavailable.
  + ### getLineNumber

    int getLineNumber()

    Returns the line number of the source line containing the execution
    point represented by this stack frame. Generally, this is
    derived from the `LineNumberTable` attribute of the relevant
    `class` file as defined by The Java Virtual Machine
    Specification.

    Returns:
    :   the line number of the source line containing the execution
        point represented by this stack frame, or a negative number if
        this information is unavailable.
  + ### isNativeMethod

    boolean isNativeMethod()

    Returns `true` if the method containing the execution point
    represented by this stack frame is a native method.

    Returns:
    :   `true` if the method containing the execution point
        represented by this stack frame is a native method.
  + ### toStackTraceElement

    [StackTraceElement](StackTraceElement.md "class in java.lang") toStackTraceElement()

    Gets a `StackTraceElement` for this stack frame.

    Returns:
    :   `StackTraceElement` for this stack frame.