Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class ObjectInputFilter.Config

[java.lang.Object](../lang/Object.md "class in java.lang")

java.io.ObjectInputFilter.Config

Enclosing interface:
:   `ObjectInputFilter`

---

public static final class ObjectInputFilter.Config
extends [Object](../lang/Object.md "class in java.lang")

A utility class to set and get the JVM-wide deserialization filter factory,
the static JVM-wide filter, or to create a filter from a pattern string.
The static filter factory and the static filter apply to the whole Java runtime,
or "JVM-wide", there is only one of each. For a complete description of
the function and use refer to [`ObjectInputFilter`](ObjectInputFilter.md "interface in java.io").

The JVM-wide deserialization filter factory and the static JVM-wide filter
can be configured from system properties during the initialization of the
`ObjectInputFilter.Config` class.

If the Java virtual machine is started with the system property
`jdk.serialFilter`, its value is used to configure the filter.
If the system property is not defined, and the [`Security`](../security/Security.md "class in java.security") property
`jdk.serialFilter` is defined then it is used to configure the filter.
The filter is created as if [`createFilter`](#createFilter(java.lang.String)) is called,
if the filter string is invalid the initialization fails and subsequent attempts to
[get the filter](#getSerialFilter()), [set a filter](#setSerialFilter(java.io.ObjectInputFilter)),
or create an [ObjectInputStream](ObjectInputStream.md#%3Cinit%3E(java.io.InputStream))
throw [`IllegalStateException`](../lang/IllegalStateException.md "class in java.lang"). Deserialization is not possible with an
invalid serial filter.
If the system property `jdk.serialFilter` or the [`Security`](../security/Security.md "class in java.security")
property `jdk.serialFilter` is not set the filter can be set with
[`Config.setSerialFilter`](#setSerialFilter(java.io.ObjectInputFilter)).
Setting the `jdk.serialFilter` with [`System.setProperty`](../lang/System.md#setProperty(java.lang.String,java.lang.String)) *does not set the filter*.
The syntax for the property value is the same as for the
[`createFilter`](#createFilter(java.lang.String)) method.

If the Java virtual machine is started with the system property
`jdk.serialFilterFactory` or the [`Security`](../security/Security.md "class in java.security") property
of the same name, its value names the class to configure the JVM-wide deserialization
filter factory.
If the system property is not defined, and the [`Security`](../security/Security.md "class in java.security") property
`jdk.serialFilterFactory` is defined then it is used to configure the filter factory.
If it remains unset, the filter factory is a builtin filter factory compatible
with previous versions.

The class must be public, must have a public zero-argument constructor, implement the
[`BinaryOperator<ObjectInputFilter>`](../util/function/BinaryOperator.md "interface in java.util.function") interface, provide its implementation and
be accessible via the [application class loader](../lang/ClassLoader.md#getSystemClassLoader()).
If the filter factory constructor is not invoked successfully subsequent attempts to
[get the factory](#getSerialFilterFactory()),
[set the factory](#setSerialFilterFactory(java.util.function.BinaryOperator)), or create an
[`ObjectInputStream`](ObjectInputStream.md#%3Cinit%3E(java.io.InputStream))
throw [`IllegalStateException`](../lang/IllegalStateException.md "class in java.lang"). Deserialization is not possible with an
invalid serial filter factory.
The filter factory configured using the system or security property during initialization
can NOT be replaced with [`Config.setSerialFilterFactory`](#setSerialFilterFactory(java.util.function.BinaryOperator)).
This ensures that a filter factory set on the command line is not overridden accidentally
or intentionally by the application.

Setting the `jdk.serialFilterFactory` with [`System.setProperty`](../lang/System.md#setProperty(java.lang.String,java.lang.String)) *does not set the filter factory*.
The syntax for the system property value and security property value is the
fully qualified class name of the deserialization filter factory.

Since:
:   9

* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ObjectInputFilter`

  `createFilter(String pattern)`

  Returns an ObjectInputFilter from a string of patterns.

  `static ObjectInputFilter`

  `getSerialFilter()`

  Returns the static JVM-wide deserialization filter or `null` if not configured.

  `static BinaryOperator<ObjectInputFilter>`

  `getSerialFilterFactory()`

  Returns the JVM-wide deserialization filter factory.

  `static void`

  `setSerialFilter(ObjectInputFilter filter)`

  Set the static JVM-wide filter if it has not already been configured or set.

  `static void`

  `setSerialFilterFactory(BinaryOperator<ObjectInputFilter> filterFactory)`

  Set the [JVM-wide deserialization filter factory](#getSerialFilterFactory()).

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### getSerialFilter

    public static [ObjectInputFilter](ObjectInputFilter.md "interface in java.io") getSerialFilter()

    Returns the static JVM-wide deserialization filter or `null` if not configured.

    Returns:
    :   the static JVM-wide deserialization filter or `null` if not configured

    Throws:
    :   `IllegalStateException` - if the initialization of the filter from the
        system property `jdk.serialFilter` or
        the security property `jdk.serialFilter` fails.
  + ### setSerialFilter

    public static void setSerialFilter([ObjectInputFilter](ObjectInputFilter.md "interface in java.io") filter)

    Set the static JVM-wide filter if it has not already been configured or set.

    Parameters:
    :   `filter` - the deserialization filter to set as the JVM-wide filter; not null

    Throws:
    :   `SecurityException` - if there is security manager and the
        `SerializablePermission("serialFilter")` is not granted
    :   `IllegalStateException` - if the filter has already been set or the initialization
        of the filter from the system property `jdk.serialFilter` or
        the security property `jdk.serialFilter` fails.
  + ### getSerialFilterFactory

    public static [BinaryOperator](../util/function/BinaryOperator.md "interface in java.util.function")<[ObjectInputFilter](ObjectInputFilter.md "interface in java.io")> getSerialFilterFactory()

    Returns the JVM-wide deserialization filter factory.
    If the filter factory has been [set](#setSerialFilterFactory(java.util.function.BinaryOperator)) it is returned,
    otherwise, a builtin deserialization filter factory is returned.
    The filter factory provides a filter for every ObjectInputStream when invoked from
    [ObjectInputStream constructors](ObjectInputStream.md#%3Cinit%3E(java.io.InputStream))
    and when a stream-specific filter is set with
    [`setObjectInputFilter`](ObjectInputStream.md#setObjectInputFilter(java.io.ObjectInputFilter)).

    Returns:
    :   the JVM-wide deserialization filter factory; non-null

    Throws:
    :   `IllegalStateException` - if the filter factory initialization is incomplete

    Since:
    :   17
  + ### setSerialFilterFactory

    public static void setSerialFilterFactory([BinaryOperator](../util/function/BinaryOperator.md "interface in java.util.function")<[ObjectInputFilter](ObjectInputFilter.md "interface in java.io")> filterFactory)

    Set the [JVM-wide deserialization filter factory](#getSerialFilterFactory()).
    The filter factory can be configured exactly once with one of:
    setting the `jdk.serialFilterFactory` property on the command line,
    setting the `jdk.serialFilterFactory` property in the [`Security`](../security/Security.md "class in java.security")
    file, or using this `setSerialFilterFactory` method.
    The filter factory can be set only before any [`ObjectInputStream`](ObjectInputStream.md "class in java.io") has been
    created to avoid any inconsistency in which filter factory is being used.

    The JVM-wide filter factory is invoked when an ObjectInputStream
    [is constructed](ObjectInputStream.md#%3Cinit%3E()) and when the
    [stream-specific filter is set](ObjectInputStream.md#setObjectInputFilter(java.io.ObjectInputFilter)).
    The parameters are the current filter and a requested filter and it
    returns the filter to be used for the stream.
    If the current filter is `non-null`, the filter factory must return a
    `non-null` filter; this is to prevent unintentional disabling of filtering
    after it has been enabled.
    The factory determines the filter to be used for `ObjectInputStream` streams based
    on its inputs, any other filters, context, or state that is available.
    The factory may throw runtime exceptions to signal incorrect use or invalid parameters.
    See the [filter models](ObjectInputFilter.md "interface in java.io") for examples of composition and delegation.

    Parameters:
    :   `filterFactory` - the deserialization filter factory to set as the
        JVM-wide filter factory; not null

    Throws:
    :   `IllegalStateException` - if the builtin deserialization filter factory
        has already been replaced or any instance of [`ObjectInputStream`](ObjectInputStream.md "class in java.io")
        has been created.
    :   `SecurityException` - if there is security manager and the
        `SerializablePermission("serialFilter")` is not granted

    Since:
    :   17
  + ### createFilter

    public static [ObjectInputFilter](ObjectInputFilter.md "interface in java.io") createFilter([String](../lang/String.md "class in java.lang") pattern)

    Returns an ObjectInputFilter from a string of patterns.

    Patterns are separated by ";" (semicolon). Whitespace is significant and
    is considered part of the pattern.
    If a pattern includes an equals assignment, "`=`" it sets a limit.
    If a limit appears more than once the last value is used.
    - maxdepth=`value` - the maximum depth of a graph
    - maxrefs=`value` - the maximum number of internal references
    - maxbytes=`value` - the maximum number of bytes in the input stream
    - maxarray=`value` - the maximum array length allowed

    Other patterns match or reject class or package name
    as returned from [`Class.getName()`](../lang/Class.md#getName()) and
    if an optional module name is present
    [`class.getModule().getName()`](../lang/Module.md#getName()).
    Note that for arrays the element type is used in the pattern,
    not the array type.
    - If the pattern starts with "!", the class is rejected if the remaining pattern is matched;
      otherwise the class is allowed if the pattern matches.- If the pattern contains "/", the non-empty prefix up to the "/" is the module name;
        if the module name matches the module name of the class then
        the remaining pattern is matched with the class name.
        If there is no "/", the module name is not compared.- If the pattern ends with ".\*\*" it matches any class in the package and all subpackages.- If the pattern ends with ".\*" it matches any class in the package.- If the pattern ends with "\*", it matches any class with the pattern as a prefix.- If the pattern is equal to the class name, it matches.- Otherwise, the pattern is not matched.

    The resulting filter performs the limit checks and then
    tries to match the class, if any. If any of the limits are exceeded,
    the filter returns [`Status.REJECTED`](ObjectInputFilter.Status.md#REJECTED).
    If the class is an array type, the class to be matched is the element type.
    Arrays of any number of dimensions are treated the same as the element type.
    For example, a pattern of "`!example.Foo`",
    rejects creation of any instance or array of `example.Foo`.
    The first pattern that matches, working from left to right, determines
    the [`Status.ALLOWED`](ObjectInputFilter.Status.md#ALLOWED)
    or [`Status.REJECTED`](ObjectInputFilter.Status.md#REJECTED) result.
    If the limits are not exceeded and no pattern matches the class,
    the result is [`Status.UNDECIDED`](ObjectInputFilter.Status.md#UNDECIDED).

    Parameters:
    :   `pattern` - the pattern string to parse; not null

    Returns:
    :   a filter to check a class being deserialized;
        `null` if no patterns

    Throws:
    :   `IllegalArgumentException` - if the pattern string is illegal or
        malformed and cannot be parsed.
        In particular, if any of the following is true:
        - if a limit is missing the name or the name is not one of
          "maxdepth", "maxrefs", "maxbytes", or "maxarray"- if the value of the limit can not be parsed by
            [`Long.parseLong`](../lang/Long.md#parseLong(java.lang.String,int)) or is negative- if the pattern contains "/" and the module name is missing
              or the remaining pattern is empty- if the package is missing for ".\*" and ".\*\*"