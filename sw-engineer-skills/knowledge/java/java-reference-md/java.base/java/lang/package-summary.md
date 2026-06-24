Module [java.base](../../module-summary.md)

# Package java.lang

---

package java.lang

Provides classes that are fundamental to the design of the Java
programming language. The most important classes are `Object`, which is the root of the class hierarchy, and `Class`, instances of which represent classes at run time.

Frequently it is necessary to represent a value of primitive
type as if it were an object. The wrapper classes `Boolean`,
`Character`, `Integer`, `Long`, `Float`,
and `Double` serve this purpose. An object of type `Double`, for example, contains a field whose type is double,
representing that value in such a way that a reference to it can be
stored in a variable of reference type. These classes also provide
a number of methods for converting among primitive values, as well
as supporting such standard methods as equals and hashCode. The
`Void` class is a non-instantiable class that holds a
reference to a `Class` object representing the type void.

The class `Math` provides commonly used mathematical
functions such as sine, cosine, and square root. The classes `String`, `StringBuffer`, and `StringBuilder` similarly
provide commonly used operations on character strings.

Classes `ClassLoader`, `Process`, `ProcessBuilder`, `Runtime`, `SecurityManager`, and
`System` provide "system operations" that manage the dynamic
loading of classes, creation of external processes, host
environment inquiries such as the time of day, and enforcement of
security policies.

Class `Throwable` encompasses objects that may be thrown
by the `throw` statement. Subclasses of `Throwable`
represent errors and exceptions.

## Character Encodings

The specification of the [`java.nio.charset.Charset`](../nio/charset/Charset.md "class in java.nio.charset") class describes the naming conventions
for character encodings as well as the set of standard encodings
that must be supported by every implementation of the Java
platform.

Since:
:   1.0

* Related Packages

  Module

  Package

  Description

  [java.base](../../module-summary.md)

  [java.lang.annotation](annotation/package-summary.md)

  Provides library support for the Java programming language
  annotation facility.

  [java.base](../../module-summary.md)

  [java.lang.constant](constant/package-summary.md)

  Classes and interfaces to represent *nominal descriptors* for run-time
  entities such as classes or method handles, and classfile entities such as
  constant pool entries or `invokedynamic` call sites.

  [java.base](../../module-summary.md)

  [java.lang.foreign](foreign/package-summary.md)

  Provides low-level access to memory and functions outside the Java runtime.

  [java.instrument](../../../java.instrument/module-summary.md)

  [java.lang.instrument](../../../java.instrument/java/lang/instrument/package-summary.md)

  Provides services that allow Java programming language agents to instrument
  programs running on the Java Virtual Machine (JVM).

  [java.base](../../module-summary.md)

  [java.lang.invoke](invoke/package-summary.md)

  The `java.lang.invoke` package provides low-level primitives for interacting
  with the Java Virtual Machine.

  [java.management](../../../java.management/module-summary.md)

  [java.lang.management](../../../java.management/java/lang/management/package-summary.md)

  [java.base](../../module-summary.md)

  [java.lang.module](module/package-summary.md)

  Classes to support module descriptors and creating configurations of modules
  by means of resolution and service binding.

  [java.base](../../module-summary.md)

  [java.lang.ref](ref/package-summary.md)

  Provides reference-object classes, which support a limited degree
  of interaction with the garbage collector.

  [java.base](../../module-summary.md)

  [java.lang.reflect](reflect/package-summary.md)

  Provides classes and interfaces for obtaining reflective information about
  classes and objects.

  [java.base](../../module-summary.md)

  [java.lang.runtime](runtime/package-summary.md)

  The `java.lang.runtime` package provides low-level runtime support
  for the Java language.
* All Classes and InterfacesInterfacesClassesEnum ClassesException ClassesAnnotation Interfaces

  Class

  Description

  [AbstractMethodError](AbstractMethodError.md "class in java.lang")

  Thrown when an application tries to call an abstract method.

  [Appendable](Appendable.md "interface in java.lang")

  An object to which `char` sequences and values can be appended.

  [ArithmeticException](ArithmeticException.md "class in java.lang")

  Thrown when an exceptional arithmetic condition has occurred.

  [ArrayIndexOutOfBoundsException](ArrayIndexOutOfBoundsException.md "class in java.lang")

  Thrown to indicate that an array has been accessed with an illegal index.

  [ArrayStoreException](ArrayStoreException.md "class in java.lang")

  Thrown to indicate that an attempt has been made to store the
  wrong type of object into an array of objects.

  [AssertionError](AssertionError.md "class in java.lang")

  Thrown to indicate that an assertion has failed.

  [AutoCloseable](AutoCloseable.md "interface in java.lang")

  An object that may hold resources (such as file or socket handles)
  until it is closed.

  [Boolean](Boolean.md "class in java.lang")

  The Boolean class wraps a value of the primitive type
  `boolean` in an object.

  [BootstrapMethodError](BootstrapMethodError.md "class in java.lang")

  Thrown to indicate that an `invokedynamic` instruction or a dynamic
  constant failed to resolve its bootstrap method and arguments,
  or for `invokedynamic` instruction the bootstrap method has failed to
  provide a
  [call site](invoke/CallSite.md "class in java.lang.invoke") with a
  [target](invoke/CallSite.md#getTarget())
  of the correct [method type](invoke/MethodHandle.md#type()),
  or for a dynamic constant the bootstrap method has failed to provide a
  constant value of the required type.

  [Byte](Byte.md "class in java.lang")

  The `Byte` class wraps a value of primitive type `byte`
  in an object.

  [Character](Character.md "class in java.lang")

  The `Character` class wraps a value of the primitive
  type `char` in an object.

  [Character.Subset](Character.Subset.md "class in java.lang")

  Instances of this class represent particular subsets of the Unicode
  character set.

  [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang")

  A family of character subsets representing the character blocks in the
  Unicode specification.

  [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang")

  A family of character subsets representing the character scripts
  defined in the [*Unicode Standard Annex #24: Script Names*](http://www.unicode.org/reports/tr24/).

  [CharSequence](CharSequence.md "interface in java.lang")

  A `CharSequence` is a readable sequence of `char` values.

  [Class](Class.md "class in java.lang")<T>

  Instances of the class `Class` represent classes and
  interfaces in a running Java application.

  [ClassCastException](ClassCastException.md "class in java.lang")

  Thrown to indicate that the code has attempted to cast an object
  to a subclass of which it is not an instance.

  [ClassCircularityError](ClassCircularityError.md "class in java.lang")

  Thrown when the Java Virtual Machine detects a circularity in the
  superclass hierarchy of a class being loaded.

  [ClassFormatError](ClassFormatError.md "class in java.lang")

  Thrown when the Java Virtual Machine attempts to read a class
  file and determines that the file is malformed or otherwise cannot
  be interpreted as a class file.

  [ClassLoader](ClassLoader.md "class in java.lang")

  A class loader is an object that is responsible for loading classes.

  [ClassNotFoundException](ClassNotFoundException.md "class in java.lang")

  Thrown when an application tries to load in a class through its
  string name using:
  The `forName` method in class `Class`.

  [ClassValue](ClassValue.md "class in java.lang")<T>

  Lazily associate a computed value with (potentially) every type.

  [Cloneable](Cloneable.md "interface in java.lang")

  A class implements the `Cloneable` interface to
  indicate to the [`Object.clone()`](Object.md#clone()) method that it
  is legal for that method to make a
  field-for-field copy of instances of that class.

  [CloneNotSupportedException](CloneNotSupportedException.md "class in java.lang")

  Thrown to indicate that the `clone` method in class
  `Object` has been called to clone an object, but that
  the object's class does not implement the `Cloneable`
  interface.

  [Comparable](Comparable.md "interface in java.lang")<T>

  This interface imposes a total ordering on the objects of each class that
  implements it.

  [Deprecated](Deprecated.md "annotation interface in java.lang")

  A program element annotated `@Deprecated` is one that programmers
  are discouraged from using.

  [Double](Double.md "class in java.lang")

  The `Double` class wraps a value of the primitive type
  `double` in an object.

  [Enum](Enum.md "class in java.lang")<E extends [Enum](Enum.md "class in java.lang")<E>>

  This is the common base class of all Java language enumeration classes.

  [Enum.EnumDesc](Enum.EnumDesc.md "class in java.lang")<E extends [Enum](Enum.md "class in java.lang")<E>>

  A [nominal descriptor](../../../java.base/java/lang/constant/package-summary.md#nominal) for an
  `enum` constant.

  [EnumConstantNotPresentException](EnumConstantNotPresentException.md "class in java.lang")

  Thrown when an application tries to access an enum constant by name
  and the enum type contains no constant with the specified name.

  [Error](Error.md "class in java.lang")

  An `Error` is a subclass of `Throwable`
  that indicates serious problems that a reasonable application
  should not try to catch.

  [Exception](Exception.md "class in java.lang")

  The class `Exception` and its subclasses are a form of
  `Throwable` that indicates conditions that a reasonable
  application might want to catch.

  [ExceptionInInitializerError](ExceptionInInitializerError.md "class in java.lang")

  Signals that an unexpected exception has occurred in a static initializer.

  [Float](Float.md "class in java.lang")

  The `Float` class wraps a value of primitive type
  `float` in an object.

  [FunctionalInterface](FunctionalInterface.md "annotation interface in java.lang")

  An informative annotation type used to indicate that an interface
  type declaration is intended to be a *functional interface* as
  defined by the Java Language Specification.

  [IllegalAccessError](IllegalAccessError.md "class in java.lang")

  Thrown if an application attempts to access or modify a field, or
  to call a method that it does not have access to.

  [IllegalAccessException](IllegalAccessException.md "class in java.lang")

  An IllegalAccessException is thrown when an application tries
  to reflectively create an instance (other than an array),
  set or get a field, or invoke a method, but the currently
  executing method does not have access to the definition of
  the specified class, field, method or constructor.

  [IllegalArgumentException](IllegalArgumentException.md "class in java.lang")

  Thrown to indicate that a method has been passed an illegal or
  inappropriate argument.

  [IllegalCallerException](IllegalCallerException.md "class in java.lang")

  Thrown to indicate that a method has been called by an inappropriate caller.

  [IllegalMonitorStateException](IllegalMonitorStateException.md "class in java.lang")

  Thrown to indicate that a thread has attempted to wait on an
  object's monitor or to notify other threads waiting on an object's
  monitor without owning the specified monitor.

  [IllegalStateException](IllegalStateException.md "class in java.lang")

  Signals that a method has been invoked at an illegal or
  inappropriate time.

  [IllegalThreadStateException](IllegalThreadStateException.md "class in java.lang")

  Thrown to indicate that a thread is not in an appropriate state
  for the requested operation.

  [IncompatibleClassChangeError](IncompatibleClassChangeError.md "class in java.lang")

  Thrown when an incompatible class change has occurred to some class
  definition.

  [IndexOutOfBoundsException](IndexOutOfBoundsException.md "class in java.lang")

  Thrown to indicate that an index of some sort (such as to an array, to a
  string, or to a vector) is out of range.

  [InheritableThreadLocal](InheritableThreadLocal.md "class in java.lang")<T>

  This class extends `ThreadLocal` to provide inheritance of values
  from parent thread to child thread: when a child thread is created, the
  child receives initial values for all inheritable thread-local variables
  for which the parent has values.

  [InstantiationError](InstantiationError.md "class in java.lang")

  Thrown when an application tries to use the Java `new`
  construct to instantiate an abstract class or an interface.

  [InstantiationException](InstantiationException.md "class in java.lang")

  Thrown when an application tries to create an instance of a class
  using the `newInstance` method in class
  `Class`, but the specified class object cannot be
  instantiated.

  [Integer](Integer.md "class in java.lang")

  The `Integer` class wraps a value of the primitive type
  `int` in an object.

  [InternalError](InternalError.md "class in java.lang")

  Thrown to indicate some unexpected internal error has occurred in
  the Java Virtual Machine.

  [InterruptedException](InterruptedException.md "class in java.lang")

  Thrown when a thread is waiting, sleeping, or otherwise occupied,
  and the thread is interrupted, either before or during the activity.

  [Iterable](Iterable.md "interface in java.lang")<T>

  Implementing this interface allows an object to be the target of the enhanced
  `for` statement (sometimes called the "for-each loop" statement).

  [LayerInstantiationException](LayerInstantiationException.md "class in java.lang")

  Thrown when creating a [module layer](ModuleLayer.md "class in java.lang") fails.

  [LinkageError](LinkageError.md "class in java.lang")

  Subclasses of `LinkageError` indicate that a class has
  some dependency on another class; however, the latter class has
  incompatibly changed after the compilation of the former class.

  [Long](Long.md "class in java.lang")

  The `Long` class wraps a value of the primitive type `long` in an object.

  [MatchException](MatchException.md "class in java.lang")

  Thrown to indicate an unexpected failure in pattern matching.

  [Math](Math.md "class in java.lang")

  The class `Math` contains methods for performing basic
  numeric operations such as the elementary exponential, logarithm,
  square root, and trigonometric functions.

  [Module](Module.md "class in java.lang")

  Represents a run-time module, either [`named`](Module.md#isNamed()) or unnamed.

  [ModuleLayer](ModuleLayer.md "class in java.lang")

  A layer of modules in the Java virtual machine.

  [ModuleLayer.Controller](ModuleLayer.Controller.md "class in java.lang")

  Controls a module layer.

  [NegativeArraySizeException](NegativeArraySizeException.md "class in java.lang")

  Thrown if an application tries to create an array with negative size.

  [NoClassDefFoundError](NoClassDefFoundError.md "class in java.lang")

  Thrown if the Java Virtual Machine or a `ClassLoader` instance
  tries to load in the definition of a class (as part of a normal method call
  or as part of creating a new instance using the `new` expression)
  and no definition of the class could be found.

  [NoSuchFieldError](NoSuchFieldError.md "class in java.lang")

  Thrown if an application tries to access or modify a specified
  field of an object, and that object no longer has that field.

  [NoSuchFieldException](NoSuchFieldException.md "class in java.lang")

  Signals that the class doesn't have a field of a specified name.

  [NoSuchMethodError](NoSuchMethodError.md "class in java.lang")

  Thrown if an application tries to call a specified method of a
  class (either static or instance), and that class no longer has a
  definition of that method.

  [NoSuchMethodException](NoSuchMethodException.md "class in java.lang")

  Thrown when a particular method cannot be found.

  [NullPointerException](NullPointerException.md "class in java.lang")

  Thrown when an application attempts to use `null` in a
  case where an object is required.

  [Number](Number.md "class in java.lang")

  The abstract class `Number` is the superclass of platform
  classes representing numeric values that are convertible to the
  primitive types `byte`, `double`, `float`, `int`, `long`, and `short`.

  [NumberFormatException](NumberFormatException.md "class in java.lang")

  Thrown to indicate that the application has attempted to convert
  a string to one of the numeric types, but that the string does not
  have the appropriate format.

  [Object](Object.md "class in java.lang")

  Class `Object` is the root of the class hierarchy.

  [OutOfMemoryError](OutOfMemoryError.md "class in java.lang")

  Thrown when the Java Virtual Machine cannot allocate an object
  because it is out of memory, and no more memory could be made
  available by the garbage collector.

  [Override](Override.md "annotation interface in java.lang")

  Indicates that a method declaration is intended to override a
  method declaration in a supertype.

  [Package](Package.md "class in java.lang")

  Represents metadata about a run-time package associated with a class loader.

  [Process](Process.md "class in java.lang")

  `Process` provides control of native processes started by
  ProcessBuilder.start and Runtime.exec.

  [ProcessBuilder](ProcessBuilder.md "class in java.lang")

  This class is used to create operating system processes.

  [ProcessBuilder.Redirect](ProcessBuilder.Redirect.md "class in java.lang")

  Represents a source of subprocess input or a destination of
  subprocess output.

  [ProcessBuilder.Redirect.Type](ProcessBuilder.Redirect.Type.md "enum class in java.lang")

  The type of a [`ProcessBuilder.Redirect`](ProcessBuilder.Redirect.md "class in java.lang").

  [ProcessHandle](ProcessHandle.md "interface in java.lang")

  ProcessHandle identifies and provides control of native processes.

  [ProcessHandle.Info](ProcessHandle.Info.md "interface in java.lang")

  Information snapshot about the process.

  [Readable](Readable.md "interface in java.lang")

  A `Readable` is a source of characters.

  [Record](Record.md "class in java.lang")

  This is the common base class of all Java language record classes.

  [ReflectiveOperationException](ReflectiveOperationException.md "class in java.lang")

  Common superclass of exceptions thrown by reflective operations in
  core reflection.

  [Runnable](Runnable.md "interface in java.lang")

  Represents an operation that does not return a result.

  [Runtime](Runtime.md "class in java.lang")

  Every Java application has a single instance of class
  `Runtime` that allows the application to interface with
  the environment in which the application is running.

  [Runtime.Version](Runtime.Version.md "class in java.lang")

  A representation of a version string for an implementation of the
  Java SE Platform.

  [RuntimeException](RuntimeException.md "class in java.lang")

  `RuntimeException` is the superclass of those
  exceptions that can be thrown during the normal operation of the
  Java Virtual Machine.

  [RuntimePermission](RuntimePermission.md "class in java.lang")

  This class is for runtime permissions.

  [SafeVarargs](SafeVarargs.md "annotation interface in java.lang")

  A programmer assertion that the body of the annotated method or
  constructor does not perform potentially unsafe operations on its
  varargs parameter.

  [ScopedValue](ScopedValue.md "class in java.lang")[PREVIEW](ScopedValue.md#preview-java.lang.ScopedValue)<T>

  Preview.

  A value that may be safely and efficiently shared to methods without using method
  parameters.

  [ScopedValue.Carrier](ScopedValue.Carrier.md "class in java.lang")[PREVIEW](ScopedValue.Carrier.md#preview-java.lang.ScopedValue.Carrier)

  Preview.

  A mapping of scoped values, as *keys*, to values.

  [SecurityException](SecurityException.md "class in java.lang")

  Thrown by the security manager to indicate a security violation.

  [SecurityManager](SecurityManager.md "class in java.lang")

  Deprecated, for removal: This API element is subject to removal in a future version.

  The Security Manager is deprecated and subject to removal in a
  future release.

  [Short](Short.md "class in java.lang")

  The `Short` class wraps a value of primitive type `short` in an object.

  [StackOverflowError](StackOverflowError.md "class in java.lang")

  Thrown when a stack overflow occurs because an application
  recurses too deeply.

  [StackTraceElement](StackTraceElement.md "class in java.lang")

  An element in a stack trace, as returned by [`Throwable.getStackTrace()`](Throwable.md#getStackTrace()).

  [StackWalker](StackWalker.md "class in java.lang")

  A stack walker.

  [StackWalker.Option](StackWalker.Option.md "enum class in java.lang")

  Stack walker option to configure the [stack frame](StackWalker.StackFrame.md "interface in java.lang")
  information obtained by a `StackWalker`.

  [StackWalker.StackFrame](StackWalker.StackFrame.md "interface in java.lang")

  A `StackFrame` object represents a method invocation returned by
  [`StackWalker`](StackWalker.md "class in java.lang").

  [StrictMath](StrictMath.md "class in java.lang")

  The class `StrictMath` contains methods for performing basic
  numeric operations such as the elementary exponential, logarithm,
  square root, and trigonometric functions.

  [String](String.md "class in java.lang")

  The `String` class represents character strings.

  [StringBuffer](StringBuffer.md "class in java.lang")

  A thread-safe, mutable sequence of characters.

  [StringBuilder](StringBuilder.md "class in java.lang")

  A mutable sequence of characters.

  [StringIndexOutOfBoundsException](StringIndexOutOfBoundsException.md "class in java.lang")

  Thrown by `String` methods to indicate that an index is either negative
  or greater than the size of the string.

  [StringTemplate](StringTemplate.md "interface in java.lang")[PREVIEW](StringTemplate.md#preview-java.lang.StringTemplate)

  Preview.

  [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](StringTemplate.md#preview-java.lang.StringTemplate) is the run-time representation of a string template or
  text block template in a template expression.

  [StringTemplate.Processor](StringTemplate.Processor.md "interface in java.lang")[PREVIEW](StringTemplate.Processor.md#preview-java.lang.StringTemplate.Processor)<R,E extends [Throwable](Throwable.md "class in java.lang")>

  Preview.

  This interface describes the methods provided by a generalized string template processor.

  [StringTemplate.Processor.Linkage](StringTemplate.Processor.Linkage.md "interface in java.lang")[PREVIEW](StringTemplate.Processor.Linkage.md#preview-java.lang.StringTemplate.Processor.Linkage)

  Preview.

  Built-in policies using this additional interface have the flexibility to
  specialize the composition of the templated string by returning a customized
  [`MethodHandle`](invoke/MethodHandle.md "class in java.lang.invoke") from [`linkage`](StringTemplate.Processor.Linkage.md#linkage(java.util.List,java.lang.invoke.MethodType))[PREVIEW](StringTemplate.Processor.Linkage.md#preview-java.lang.StringTemplate.Processor.Linkage).

  [SuppressWarnings](SuppressWarnings.md "annotation interface in java.lang")

  Indicates the warnings to be suppressed at compile time in the
  annotated element, and in all elements contained in the annotated
  element.

  [System](System.md "class in java.lang")

  The `System` class contains several useful class fields
  and methods.

  [System.Logger](System.Logger.md "interface in java.lang")

  `System.Logger` instances log messages that will be
  routed to the underlying logging framework the [`LoggerFinder`](System.LoggerFinder.md "class in java.lang") uses.

  [System.Logger.Level](System.Logger.Level.md "enum class in java.lang")

  System [loggers](System.Logger.md "interface in java.lang") levels.

  [System.LoggerFinder](System.LoggerFinder.md "class in java.lang")

  The `LoggerFinder` service is responsible for creating, managing,
  and configuring loggers to the underlying framework it uses.

  [Thread](Thread.md "class in java.lang")

  A *thread* is a thread of execution in a program.

  [Thread.Builder](Thread.Builder.md "interface in java.lang")

  A builder for [`Thread`](Thread.md "class in java.lang") and [`ThreadFactory`](../util/concurrent/ThreadFactory.md "interface in java.util.concurrent") objects.

  [Thread.Builder.OfPlatform](Thread.Builder.OfPlatform.md "interface in java.lang")

  A builder for creating a platform [`Thread`](Thread.md "class in java.lang") or [`ThreadFactory`](../util/concurrent/ThreadFactory.md "interface in java.util.concurrent")
  that creates platform threads.

  [Thread.Builder.OfVirtual](Thread.Builder.OfVirtual.md "interface in java.lang")

  A builder for creating a virtual [`Thread`](Thread.md "class in java.lang") or [`ThreadFactory`](../util/concurrent/ThreadFactory.md "interface in java.util.concurrent")
  that creates virtual threads.

  [Thread.State](Thread.State.md "enum class in java.lang")

  A thread state.

  [Thread.UncaughtExceptionHandler](Thread.UncaughtExceptionHandler.md "interface in java.lang")

  Interface for handlers invoked when a `Thread` abruptly
  terminates due to an uncaught exception.

  [ThreadDeath](ThreadDeath.md "class in java.lang")

  Deprecated, for removal: This API element is subject to removal in a future version.

  [`Thread.stop()`](Thread.md#stop()) was originally specified to "stop" a victim
  thread by causing the victim thread to throw a `ThreadDeath`.

  [ThreadGroup](ThreadGroup.md "class in java.lang")

  A thread group represents a set of threads.

  [ThreadLocal](ThreadLocal.md "class in java.lang")<T>

  This class provides thread-local variables.

  [Throwable](Throwable.md "class in java.lang")

  The `Throwable` class is the superclass of all errors and
  exceptions in the Java language.

  [TypeNotPresentException](TypeNotPresentException.md "class in java.lang")

  Thrown when an application tries to access a type using a string
  representing the type's name, but no definition for the type with
  the specified name can be found.

  [UnknownError](UnknownError.md "class in java.lang")

  Thrown when an unknown but serious exception has occurred in the
  Java Virtual Machine.

  [UnsatisfiedLinkError](UnsatisfiedLinkError.md "class in java.lang")

  Thrown if the Java Virtual Machine cannot find an appropriate
  native-language definition of a method declared `native`.

  [UnsupportedClassVersionError](UnsupportedClassVersionError.md "class in java.lang")

  Thrown when the Java Virtual Machine attempts to read a class
  file and determines that the major and minor version numbers
  in the file are not supported.

  [UnsupportedOperationException](UnsupportedOperationException.md "class in java.lang")

  Thrown to indicate that the requested operation is not supported.

  [VerifyError](VerifyError.md "class in java.lang")

  Thrown when the "verifier" detects that a class file,
  though well formed, contains some sort of internal inconsistency
  or security problem.

  [VirtualMachineError](VirtualMachineError.md "class in java.lang")

  Thrown to indicate that the Java Virtual Machine is broken or has
  run out of resources necessary for it to continue operating.

  [Void](Void.md "class in java.lang")

  The `Void` class is an uninstantiable placeholder class to hold a
  reference to the `Class` object representing the Java keyword
  void.

  [WrongThreadException](WrongThreadException.md "class in java.lang")

  Thrown to indicate that a method has been called on the wrong thread.