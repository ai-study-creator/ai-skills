Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class StackTraceElement

[java.lang.Object](Object.md "class in java.lang")

java.lang.StackTraceElement

All Implemented Interfaces:
:   `Serializable`

---

public final class StackTraceElement
extends [Object](Object.md "class in java.lang")
implements [Serializable](../io/Serializable.md "interface in java.io")

An element in a stack trace, as returned by [`Throwable.getStackTrace()`](Throwable.md#getStackTrace()). Each element represents a single stack frame.
All stack frames except for the one at the top of the stack represent
a method invocation. The frame at the top of the stack represents the
execution point at which the stack trace was generated. Typically,
this is the point at which the throwable corresponding to the stack trace
was created.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.StackTraceElement)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `StackTraceElement(String declaringClass,
  String methodName,
  String fileName,
  int lineNumber)`

  Creates a stack trace element representing the specified execution
  point.

  `StackTraceElement(String classLoaderName,
  String moduleName,
  String moduleVersion,
  String declaringClass,
  String methodName,
  String fileName,
  int lineNumber)`

  Creates a stack trace element representing the specified execution
  point.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Returns true if the specified object is another
  `StackTraceElement` instance representing the same execution
  point as this instance.

  `String`

  `getClassLoaderName()`

  Returns the name of the class loader of the class containing the
  execution point represented by this stack trace element.

  `String`

  `getClassName()`

  Returns the fully qualified name of the class containing the
  execution point represented by this stack trace element.

  `String`

  `getFileName()`

  Returns the name of the source file containing the execution point
  represented by this stack trace element.

  `int`

  `getLineNumber()`

  Returns the line number of the source line containing the execution
  point represented by this stack trace element.

  `String`

  `getMethodName()`

  Returns the name of the method containing the execution point
  represented by this stack trace element.

  `String`

  `getModuleName()`

  Returns the module name of the module containing the execution point
  represented by this stack trace element.

  `String`

  `getModuleVersion()`

  Returns the module version of the module containing the execution point
  represented by this stack trace element.

  `int`

  `hashCode()`

  Returns a hash code value for this stack trace element.

  `boolean`

  `isNativeMethod()`

  Returns true if the method containing the execution point
  represented by this stack trace element is a native method.

  `String`

  `toString()`

  Returns a string representation of this stack trace element.

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### StackTraceElement

    public StackTraceElement([String](String.md "class in java.lang") declaringClass,
    [String](String.md "class in java.lang") methodName,
    [String](String.md "class in java.lang") fileName,
    int lineNumber)

    Creates a stack trace element representing the specified execution
    point. The [`module name`](#getModuleName()) and [`module version`](#getModuleVersion()) of the stack trace element will
    be `null`.

    Parameters:
    :   `declaringClass` - the fully qualified name of the class containing
        the execution point represented by the stack trace element
    :   `methodName` - the name of the method containing the execution point
        represented by the stack trace element
    :   `fileName` - the name of the file containing the execution point
        represented by the stack trace element, or `null` if
        this information is unavailable
    :   `lineNumber` - the line number of the source line containing the
        execution point represented by this stack trace element, or
        a negative number if this information is unavailable. A value
        of -2 indicates that the method containing the execution point
        is a native method

    Throws:
    :   `NullPointerException` - if `declaringClass` or
        `methodName` is null

    Since:
    :   1.5
  + ### StackTraceElement

    public StackTraceElement([String](String.md "class in java.lang") classLoaderName,
    [String](String.md "class in java.lang") moduleName,
    [String](String.md "class in java.lang") moduleVersion,
    [String](String.md "class in java.lang") declaringClass,
    [String](String.md "class in java.lang") methodName,
    [String](String.md "class in java.lang") fileName,
    int lineNumber)

    Creates a stack trace element representing the specified execution
    point.

    Parameters:
    :   `classLoaderName` - the class loader name if the class loader of
        the class containing the execution point represented by
        the stack trace is named; otherwise `null`
    :   `moduleName` - the module name if the class containing the
        execution point represented by the stack trace is in a named
        module; otherwise `null`
    :   `moduleVersion` - the module version if the class containing the
        execution point represented by the stack trace is in a named
        module that has a version; otherwise `null`
    :   `declaringClass` - the fully qualified name of the class containing
        the execution point represented by the stack trace element
    :   `methodName` - the name of the method containing the execution point
        represented by the stack trace element
    :   `fileName` - the name of the file containing the execution point
        represented by the stack trace element, or `null` if
        this information is unavailable
    :   `lineNumber` - the line number of the source line containing the
        execution point represented by this stack trace element, or
        a negative number if this information is unavailable. A value
        of -2 indicates that the method containing the execution point
        is a native method

    Throws:
    :   `NullPointerException` - if `declaringClass` is `null`
        or `methodName` is `null`

    Since:
    :   9
* ## Method Details

  + ### getFileName

    public [String](String.md "class in java.lang") getFileName()

    Returns the name of the source file containing the execution point
    represented by this stack trace element. Generally, this corresponds
    to the `SourceFile` attribute of the relevant `class`
    file (as per The Java Virtual Machine Specification, Section
    ). In some systems, the name may refer to some source code unit
    other than a file, such as an entry in source repository.

    Returns:
    :   the name of the file containing the execution point
        represented by this stack trace element, or `null` if
        this information is unavailable.
  + ### getLineNumber

    public int getLineNumber()

    Returns the line number of the source line containing the execution
    point represented by this stack trace element. Generally, this is
    derived from the `LineNumberTable` attribute of the relevant
    `class` file (as per The Java Virtual Machine
    Specification, Section ).

    Returns:
    :   the line number of the source line containing the execution
        point represented by this stack trace element, or a negative
        number if this information is unavailable.
  + ### getModuleName

    public [String](String.md "class in java.lang") getModuleName()

    Returns the module name of the module containing the execution point
    represented by this stack trace element.

    Returns:
    :   the module name of the `Module` containing the execution
        point represented by this stack trace element; `null`
        if the module name is not available.

    Since:
    :   9

    See Also:
    :   - [`Module.getName()`](Module.md#getName())
  + ### getModuleVersion

    public [String](String.md "class in java.lang") getModuleVersion()

    Returns the module version of the module containing the execution point
    represented by this stack trace element.

    Returns:
    :   the module version of the `Module` containing the execution
        point represented by this stack trace element; `null`
        if the module version is not available.

    Since:
    :   9

    See Also:
    :   - [`ModuleDescriptor.Version`](module/ModuleDescriptor.Version.md "class in java.lang.module")
  + ### getClassLoaderName

    public [String](String.md "class in java.lang") getClassLoaderName()

    Returns the name of the class loader of the class containing the
    execution point represented by this stack trace element.

    Returns:
    :   the name of the class loader of the class containing the execution
        point represented by this stack trace element; `null`
        if the class loader is not named.

    Since:
    :   9

    See Also:
    :   - [`ClassLoader.getName()`](ClassLoader.md#getName())
  + ### getClassName

    public [String](String.md "class in java.lang") getClassName()

    Returns the fully qualified name of the class containing the
    execution point represented by this stack trace element.

    Returns:
    :   the fully qualified name of the `Class` containing
        the execution point represented by this stack trace element.
  + ### getMethodName

    public [String](String.md "class in java.lang") getMethodName()

    Returns the name of the method containing the execution point
    represented by this stack trace element. If the execution point is
    contained in an instance or class initializer, this method will return
    the appropriate *special method name*, ["<init>"](constant/ConstantDescs.md#INIT_NAME)
    or ["<clinit>"](constant/ConstantDescs.md#CLASS_INIT_NAME), as per Section
    of The Java Virtual Machine Specification.

    Returns:
    :   the name of the method containing the execution point
        represented by this stack trace element.
  + ### isNativeMethod

    public boolean isNativeMethod()

    Returns true if the method containing the execution point
    represented by this stack trace element is a native method.

    Returns:
    :   `true` if the method containing the execution point
        represented by this stack trace element is a native method.
  + ### toString

    public [String](String.md "class in java.lang") toString()

    Returns a string representation of this stack trace element.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.

    See Also:
    :   - [`Throwable.printStackTrace()`](Throwable.md#printStackTrace())
  + ### equals

    public boolean equals([Object](Object.md "class in java.lang") obj)

    Returns true if the specified object is another
    `StackTraceElement` instance representing the same execution
    point as this instance. Two stack trace elements `a` and
    `b` are equal if and only if:

    ```
         equals(a.getClassLoaderName(), b.getClassLoaderName()) &&
         equals(a.getModuleName(), b.getModuleName()) &&
         equals(a.getModuleVersion(), b.getModuleVersion()) &&
         equals(a.getClassName(), b.getClassName()) &&
         equals(a.getMethodName(), b.getMethodName())
         equals(a.getFileName(), b.getFileName()) &&
         a.getLineNumber() == b.getLineNumber()
    ```

    where `equals` has the semantics of [`Objects.equals`](../util/Objects.md#equals(java.lang.Object,java.lang.Object)).

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the object to be compared with this stack trace element.

    Returns:
    :   true if the specified object is another
        `StackTraceElement` instance representing the same
        execution point as this instance.

    See Also:
    :   - [`Object.hashCode()`](Object.md#hashCode())
        - [`HashMap`](../util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns a hash code value for this stack trace element.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](System.md#identityHashCode(java.lang.Object))