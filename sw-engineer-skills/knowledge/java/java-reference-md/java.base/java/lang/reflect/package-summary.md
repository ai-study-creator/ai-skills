Module [java.base](../../../module-summary.md)

# Package java.lang.reflect

---

package java.lang.reflect

Provides classes and interfaces for obtaining reflective information about
classes and objects. Reflection allows programmatic access to information
about the fields, methods, and constructors of loaded classes, and the use
of reflected fields, methods, and constructors to operate on their underlying
counterparts, within encapsulation and security restrictions.

Classes in this package, along with `java.lang.Class`
accommodate applications such as debuggers, interpreters, object
inspectors, class browsers, and services such as Object
Serialization and JavaBeans that need access to either the public
members of a target object (based on its runtime class) or the
members declared by a given class.

[`AccessibleObject`](AccessibleObject.md "class in java.lang.reflect") allows suppression of access checks if
the necessary [`ReflectPermission`](ReflectPermission.md "class in java.lang.reflect") is available.

[`Array`](Array.md "class in java.lang.reflect") provides static methods to dynamically create and
access arrays.

## Java programming language and JVM modeling in core reflection

The components of core reflection, which include types in this
package as well as [`Class`](../Class.md "class in java.lang"), [`Package`](../Package.md "class in java.lang"), and [`Module`](../Module.md "class in java.lang"),
fundamentally present a JVM model of the entities in question
rather than a Java programming language model. A Java compiler,
such as `javac`, translates Java source code into executable
output that can be run on a JVM, primarily `class`
files. Compilers for source languages other than Java can and do
target the JVM as well.

The translation process, including from Java language sources,
to executable output for the JVM is not a one-to-one
mapping. Structures present in the source language may have no
representation in the output and structures *not* present in
the source language may be present in the output. The latter are
called *synthetic* structures. Synthetic structures can
include [methods](Method.md#isSynthetic()), [fields](Field.md#isSynthetic()), [parameters](Parameter.md#isSynthetic()), [classes and
interfaces](../Class.md#isSynthetic()). One particular kind of synthetic method is a
[bridge method](Method.md#isBridge()). It is possible a
synthetic structure may not be marked as such. In particular, not
all `class` file versions support marking a parameter as
synthetic. A source language compiler generally has multiple ways
to translate a source program into a `class` file
representation. The translation may also depend on the version of
the `class` file format being targeted as different `class` file versions have different capabilities and features. In
some cases the modifiers present in the `class` file
representation may differ from the modifiers on the originating
element in the source language, including [`final`](Modifier.md#FINAL) on a [parameter](Parameter.md#getModifiers()) and
`protected`, `private`, and `static` on
[classes and interfaces](../Class.md#getModifiers()).

Besides differences in structural representation between the
source language and the JVM representation, core reflection also
exposes runtime specific information. For example, the [class loaders](../Class.md#getClassLoader()) and [protection domains](../Class.md#getProtectionDomain()) of a
`Class` are runtime concepts without a direct analogue in
source code.

Since:
:   1.1

* Related Packages

  Package

  Description

  [java.lang](../package-summary.md)

  Provides classes that are fundamental to the design of the Java
  programming language.
* All Classes and InterfacesInterfacesClassesEnum ClassesException Classes

  Class

  Description

  [AccessFlag](AccessFlag.md "enum class in java.lang.reflect")

  Represents a JVM access or module-related flag on a runtime member,
  such as a [class](../Class.md "class in java.lang"), [field](Field.md "class in java.lang.reflect"), or
  [method](Executable.md "class in java.lang.reflect").

  [AccessFlag.Location](AccessFlag.Location.md "enum class in java.lang.reflect")

  A location within a class file where flags can be applied.

  [AccessibleObject](AccessibleObject.md "class in java.lang.reflect")

  The `AccessibleObject` class is the base class for `Field`,
  `Method`, and `Constructor` objects (known as *reflected
  objects*).

  [AnnotatedArrayType](AnnotatedArrayType.md "interface in java.lang.reflect")

  `AnnotatedArrayType` represents the potentially annotated use of an
  array type, whose component type may itself represent the annotated use of a
  type.

  [AnnotatedElement](AnnotatedElement.md "interface in java.lang.reflect")

  Represents an annotated construct of the program currently running
  in this VM.

  [AnnotatedParameterizedType](AnnotatedParameterizedType.md "interface in java.lang.reflect")

  `AnnotatedParameterizedType` represents the potentially annotated use
  of a parameterized type, whose type arguments may themselves represent
  annotated uses of types.

  [AnnotatedType](AnnotatedType.md "interface in java.lang.reflect")

  `AnnotatedType` represents the potentially annotated use of a type in
  the program currently running in this VM.

  [AnnotatedTypeVariable](AnnotatedTypeVariable.md "interface in java.lang.reflect")

  `AnnotatedTypeVariable` represents the potentially annotated use of a
  type variable, whose declaration may have bounds which themselves represent
  annotated uses of types.

  [AnnotatedWildcardType](AnnotatedWildcardType.md "interface in java.lang.reflect")

  `AnnotatedWildcardType` represents the potentially annotated use of a
  wildcard type argument, whose upper or lower bounds may themselves represent
  annotated uses of types.

  [Array](Array.md "class in java.lang.reflect")

  The `Array` class provides static methods to dynamically create and
  access Java arrays.

  [ClassFileFormatVersion](ClassFileFormatVersion.md "enum class in java.lang.reflect")

  Class file format versions of the Java virtual machine.

  [Constructor](Constructor.md "class in java.lang.reflect")<T>

  `Constructor` provides information about, and access to, a single
  constructor for a class.

  [Executable](Executable.md "class in java.lang.reflect")

  A shared superclass for the common functionality of [`Method`](Method.md "class in java.lang.reflect")
  and [`Constructor`](Constructor.md "class in java.lang.reflect").

  [Field](Field.md "class in java.lang.reflect")

  A `Field` provides information about, and dynamic access to, a
  single field of a class or an interface.

  [GenericArrayType](GenericArrayType.md "interface in java.lang.reflect")

  `GenericArrayType` represents an array type whose component
  type is either a parameterized type or a type variable.

  [GenericDeclaration](GenericDeclaration.md "interface in java.lang.reflect")

  A common interface for all entities that declare type variables.

  [GenericSignatureFormatError](GenericSignatureFormatError.md "class in java.lang.reflect")

  Thrown when a syntactically malformed signature attribute is
  encountered by a reflective method that needs to interpret the generic
  signature information for a class or interface, method or constructor.

  [InaccessibleObjectException](InaccessibleObjectException.md "class in java.lang.reflect")

  Thrown when Java language access checks cannot be suppressed.

  [InvocationHandler](InvocationHandler.md "interface in java.lang.reflect")

  `InvocationHandler` is the interface implemented by
  the *invocation handler* of a proxy instance.

  [InvocationTargetException](InvocationTargetException.md "class in java.lang.reflect")

  InvocationTargetException is a checked exception that wraps
  an exception thrown by an invoked method or constructor.

  [MalformedParameterizedTypeException](MalformedParameterizedTypeException.md "class in java.lang.reflect")

  Thrown when a semantically malformed parameterized type is
  encountered by a reflective method that needs to instantiate it.

  [MalformedParametersException](MalformedParametersException.md "class in java.lang.reflect")

  Thrown when [`the
  java.lang.reflect package`](Executable.md#getParameters()) attempts to read method parameters from
  a class file and determines that one or more parameters are
  malformed.

  [Member](Member.md "interface in java.lang.reflect")

  Member is an interface that reflects identifying information about
  a single member (a field or a method) or a constructor.

  [Method](Method.md "class in java.lang.reflect")

  A `Method` provides information about, and access to, a single method
  on a class or interface.

  [Modifier](Modifier.md "class in java.lang.reflect")

  The Modifier class provides `static` methods and
  constants to decode class and member access modifiers.

  [Parameter](Parameter.md "class in java.lang.reflect")

  Information about method parameters.

  [ParameterizedType](ParameterizedType.md "interface in java.lang.reflect")

  ParameterizedType represents a parameterized type such as
  `Collection<String>`.

  [Proxy](Proxy.md "class in java.lang.reflect")

  `Proxy` provides static methods for creating objects that act like instances
  of interfaces but allow for customized method invocation.

  [RecordComponent](RecordComponent.md "class in java.lang.reflect")

  A `RecordComponent` provides information about, and dynamic access to, a
  component of a record class.

  [ReflectPermission](ReflectPermission.md "class in java.lang.reflect")

  The Permission class for reflective operations.

  [Type](Type.md "interface in java.lang.reflect")

  Type is the common superinterface for all types in the Java
  programming language.

  [TypeVariable](TypeVariable.md "interface in java.lang.reflect")<D extends [GenericDeclaration](GenericDeclaration.md "interface in java.lang.reflect")>

  TypeVariable is the common superinterface for type variables of kinds.

  [UndeclaredThrowableException](UndeclaredThrowableException.md "class in java.lang.reflect")

  Thrown by a method invocation on a proxy instance if its invocation
  handler's [`invoke`](InvocationHandler.md#invoke(java.lang.Object,java.lang.reflect.Method,java.lang.Object%5B%5D)) method throws a
  checked exception (a `Throwable` that is not assignable
  to `RuntimeException` or `Error`) that
  is not assignable to any of the exception types declared in the
  `throws` clause of the method that was invoked on the
  proxy instance and dispatched to the invocation handler.

  [WildcardType](WildcardType.md "interface in java.lang.reflect")

  WildcardType represents a wildcard type expression, such as
  `?`, `? extends Number`, or `? super Integer`.