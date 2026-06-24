# Preview API

Show preview API for:

* 430: [String Templates (Preview)](https://openjdk.org/jeps/430)
* 442: [Foreign Function & Memory API (Third Preview)](https://openjdk.org/jeps/442)
* 443: [Unnamed Patterns and Variables (Preview)](https://openjdk.org/jeps/443)
* 445: [Unnamed Classes and Instance Main Methods (Preview)](https://openjdk.org/jeps/445)
* 446: [Scoped Values (Preview)](https://openjdk.org/jeps/446)
* 453: [Structured Concurrency (Preview)](https://openjdk.org/jeps/453)

## Contents

* [Interfaces](#interface)
* [Classes](#class)
* [Enum Classes](#enum-class)
* [Exception Classes](#exception-class)
* [Fields](#field)
* [Methods](#method)

* Interfaces

  Interface

  Preview Feature

  Description

  [java.lang.foreign.AddressLayout](java.base/java/lang/foreign/AddressLayout.md "interface in java.lang.foreign")[PREVIEW](java.base/java/lang/foreign/AddressLayout.md#preview-java.lang.foreign.AddressLayout)

  Foreign Function & Memory API

  A value layout used to model the address of some region of memory.

  [java.lang.foreign.Arena](java.base/java/lang/foreign/Arena.md "interface in java.lang.foreign")[PREVIEW](java.base/java/lang/foreign/Arena.md#preview-java.lang.foreign.Arena)

  Foreign Function & Memory API

  An arena controls the lifecycle of native memory segments, providing both flexible allocation and timely deallocation.

  [java.lang.foreign.FunctionDescriptor](java.base/java/lang/foreign/FunctionDescriptor.md "interface in java.lang.foreign")[PREVIEW](java.base/java/lang/foreign/FunctionDescriptor.md#preview-java.lang.foreign.FunctionDescriptor)

  Foreign Function & Memory API

  A function descriptor models the signature of a foreign function.

  [java.lang.foreign.GroupLayout](java.base/java/lang/foreign/GroupLayout.md "interface in java.lang.foreign")[PREVIEW](java.base/java/lang/foreign/GroupLayout.md#preview-java.lang.foreign.GroupLayout)

  Foreign Function & Memory API

  A compound layout that is an aggregation of multiple, heterogeneous *member layouts*.

  [java.lang.foreign.Linker](java.base/java/lang/foreign/Linker.md "interface in java.lang.foreign")[PREVIEW](java.base/java/lang/foreign/Linker.md#preview-java.lang.foreign.Linker)

  Foreign Function & Memory API

  A linker provides access to foreign functions from Java code, and access to Java code from foreign functions.

  [java.lang.foreign.Linker.Option](java.base/java/lang/foreign/Linker.Option.md "interface in java.lang.foreign")[PREVIEW](java.base/java/lang/foreign/Linker.Option.md#preview-java.lang.foreign.Linker.Option)

  Foreign Function & Memory API

  A linker option is used to provide additional parameters to a linkage request.

  [java.lang.foreign.MemoryLayout](java.base/java/lang/foreign/MemoryLayout.md "interface in java.lang.foreign")[PREVIEW](java.base/java/lang/foreign/MemoryLayout.md#preview-java.lang.foreign.MemoryLayout)

  Foreign Function & Memory API

  A memory layout describes the contents of a memory segment.

  [java.lang.foreign.MemoryLayout.PathElement](java.base/java/lang/foreign/MemoryLayout.PathElement.md "interface in java.lang.foreign")[PREVIEW](java.base/java/lang/foreign/MemoryLayout.PathElement.md#preview-java.lang.foreign.MemoryLayout.PathElement)

  Foreign Function & Memory API

  An element in a [*layout path*](./java.base/java/lang/foreign/MemoryLayout.md#layout-paths).

  [java.lang.foreign.MemorySegment](java.base/java/lang/foreign/MemorySegment.md "interface in java.lang.foreign")[PREVIEW](java.base/java/lang/foreign/MemorySegment.md#preview-java.lang.foreign.MemorySegment)

  Foreign Function & Memory API

  A memory segment provides access to a contiguous region of memory.

  [java.lang.foreign.MemorySegment.Scope](java.base/java/lang/foreign/MemorySegment.Scope.md "interface in java.lang.foreign")[PREVIEW](java.base/java/lang/foreign/MemorySegment.Scope.md#preview-java.lang.foreign.MemorySegment.Scope)

  Foreign Function & Memory API

  A scope models the *lifetime* of all the memory segments associated with it.

  [java.lang.foreign.PaddingLayout](java.base/java/lang/foreign/PaddingLayout.md "interface in java.lang.foreign")[PREVIEW](java.base/java/lang/foreign/PaddingLayout.md#preview-java.lang.foreign.PaddingLayout)

  Foreign Function & Memory API

  A padding layout.

  [java.lang.foreign.SegmentAllocator](java.base/java/lang/foreign/SegmentAllocator.md "interface in java.lang.foreign")[PREVIEW](java.base/java/lang/foreign/SegmentAllocator.md#preview-java.lang.foreign.SegmentAllocator)

  Foreign Function & Memory API

  An object that may be used to allocate [memory segments](java.base/java/lang/foreign/MemorySegment.md "interface in java.lang.foreign")[PREVIEW](java.base/java/lang/foreign/MemorySegment.md#preview-java.lang.foreign.MemorySegment).

  [java.lang.foreign.SequenceLayout](java.base/java/lang/foreign/SequenceLayout.md "interface in java.lang.foreign")[PREVIEW](java.base/java/lang/foreign/SequenceLayout.md#preview-java.lang.foreign.SequenceLayout)

  Foreign Function & Memory API

  A compound layout that denotes a homogeneous repetition of a given *element layout*.

  [java.lang.foreign.StructLayout](java.base/java/lang/foreign/StructLayout.md "interface in java.lang.foreign")[PREVIEW](java.base/java/lang/foreign/StructLayout.md#preview-java.lang.foreign.StructLayout)

  Foreign Function & Memory API

  A group layout whose member layouts are laid out one after the other.

  [java.lang.foreign.SymbolLookup](java.base/java/lang/foreign/SymbolLookup.md "interface in java.lang.foreign")[PREVIEW](java.base/java/lang/foreign/SymbolLookup.md#preview-java.lang.foreign.SymbolLookup)

  Foreign Function & Memory API

  A *symbol lookup* retrieves the address of a symbol in one or more libraries.

  [java.lang.foreign.UnionLayout](java.base/java/lang/foreign/UnionLayout.md "interface in java.lang.foreign")[PREVIEW](java.base/java/lang/foreign/UnionLayout.md#preview-java.lang.foreign.UnionLayout)

  Foreign Function & Memory API

  A group layout whose member layouts are laid out at the same starting offset.

  [java.lang.foreign.ValueLayout](java.base/java/lang/foreign/ValueLayout.md "interface in java.lang.foreign")[PREVIEW](java.base/java/lang/foreign/ValueLayout.md#preview-java.lang.foreign.ValueLayout)

  Foreign Function & Memory API

  A layout that models values of basic data types.

  [java.lang.foreign.ValueLayout.OfBoolean](java.base/java/lang/foreign/ValueLayout.OfBoolean.md "interface in java.lang.foreign")[PREVIEW](java.base/java/lang/foreign/ValueLayout.OfBoolean.md#preview-java.lang.foreign.ValueLayout.OfBoolean)

  Foreign Function & Memory API

  A value layout whose carrier is `boolean.class`.

  [java.lang.foreign.ValueLayout.OfByte](java.base/java/lang/foreign/ValueLayout.OfByte.md "interface in java.lang.foreign")[PREVIEW](java.base/java/lang/foreign/ValueLayout.OfByte.md#preview-java.lang.foreign.ValueLayout.OfByte)

  Foreign Function & Memory API

  A value layout whose carrier is `byte.class`.

  [java.lang.foreign.ValueLayout.OfChar](java.base/java/lang/foreign/ValueLayout.OfChar.md "interface in java.lang.foreign")[PREVIEW](java.base/java/lang/foreign/ValueLayout.OfChar.md#preview-java.lang.foreign.ValueLayout.OfChar)

  Foreign Function & Memory API

  A value layout whose carrier is `char.class`.

  [java.lang.foreign.ValueLayout.OfDouble](java.base/java/lang/foreign/ValueLayout.OfDouble.md "interface in java.lang.foreign")[PREVIEW](java.base/java/lang/foreign/ValueLayout.OfDouble.md#preview-java.lang.foreign.ValueLayout.OfDouble)

  Foreign Function & Memory API

  A value layout whose carrier is `double.class`.

  [java.lang.foreign.ValueLayout.OfFloat](java.base/java/lang/foreign/ValueLayout.OfFloat.md "interface in java.lang.foreign")[PREVIEW](java.base/java/lang/foreign/ValueLayout.OfFloat.md#preview-java.lang.foreign.ValueLayout.OfFloat)

  Foreign Function & Memory API

  A value layout whose carrier is `float.class`.

  [java.lang.foreign.ValueLayout.OfInt](java.base/java/lang/foreign/ValueLayout.OfInt.md "interface in java.lang.foreign")[PREVIEW](java.base/java/lang/foreign/ValueLayout.OfInt.md#preview-java.lang.foreign.ValueLayout.OfInt)

  Foreign Function & Memory API

  A value layout whose carrier is `int.class`.

  [java.lang.foreign.ValueLayout.OfLong](java.base/java/lang/foreign/ValueLayout.OfLong.md "interface in java.lang.foreign")[PREVIEW](java.base/java/lang/foreign/ValueLayout.OfLong.md#preview-java.lang.foreign.ValueLayout.OfLong)

  Foreign Function & Memory API

  A value layout whose carrier is `long.class`.

  [java.lang.foreign.ValueLayout.OfShort](java.base/java/lang/foreign/ValueLayout.OfShort.md "interface in java.lang.foreign")[PREVIEW](java.base/java/lang/foreign/ValueLayout.OfShort.md#preview-java.lang.foreign.ValueLayout.OfShort)

  Foreign Function & Memory API

  A value layout whose carrier is `short.class`.

  [java.lang.StringTemplate](java.base/java/lang/StringTemplate.md "interface in java.lang")[PREVIEW](java.base/java/lang/StringTemplate.md#preview-java.lang.StringTemplate)

  String Templates

  [`StringTemplate`](java.base/java/lang/StringTemplate.md "interface in java.lang")[PREVIEW](java.base/java/lang/StringTemplate.md#preview-java.lang.StringTemplate) is the run-time representation of a string template or
  text block template in a template expression.

  [java.lang.StringTemplate.Processor](java.base/java/lang/StringTemplate.Processor.md "interface in java.lang")[PREVIEW](java.base/java/lang/StringTemplate.Processor.md#preview-java.lang.StringTemplate.Processor)

  String Templates

  This interface describes the methods provided by a generalized string template processor.

  [java.lang.StringTemplate.Processor.Linkage](java.base/java/lang/StringTemplate.Processor.Linkage.md "interface in java.lang")[PREVIEW](java.base/java/lang/StringTemplate.Processor.Linkage.md#preview-java.lang.StringTemplate.Processor.Linkage)

  String Templates

  Built-in policies using this additional interface have the flexibility to
  specialize the composition of the templated string by returning a customized
  [`MethodHandle`](java.base/java/lang/invoke/MethodHandle.md "class in java.lang.invoke") from [`linkage`](java.base/java/lang/StringTemplate.Processor.Linkage.md#linkage(java.util.List,java.lang.invoke.MethodType))[PREVIEW](java.base/java/lang/StringTemplate.Processor.Linkage.md#preview-java.lang.StringTemplate.Processor.Linkage).

  [java.util.concurrent.StructuredTaskScope.Subtask](java.base/java/util/concurrent/StructuredTaskScope.Subtask.md "interface in java.util.concurrent")[PREVIEW](java.base/java/util/concurrent/StructuredTaskScope.Subtask.md#preview-java.util.concurrent.StructuredTaskScope.Subtask)

  Structured Concurrency

  Represents a subtask forked with [`StructuredTaskScope.fork(Callable)`](java.base/java/util/concurrent/StructuredTaskScope.md#fork(java.util.concurrent.Callable))[PREVIEW](java.base/java/util/concurrent/StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope).

* Classes

  Class

  Preview Feature

  Description

  [java.lang.runtime.TemplateRuntime](java.base/java/lang/runtime/TemplateRuntime.md "class in java.lang.runtime")[PREVIEW](java.base/java/lang/runtime/TemplateRuntime.md#preview-java.lang.runtime.TemplateRuntime)

  String Templates

  Manages string template bootstrap methods.

  [java.lang.ScopedValue](java.base/java/lang/ScopedValue.md "class in java.lang")[PREVIEW](java.base/java/lang/ScopedValue.md#preview-java.lang.ScopedValue)

  Scoped Values

  A value that may be safely and efficiently shared to methods without using method
  parameters.

  [java.lang.ScopedValue.Carrier](java.base/java/lang/ScopedValue.Carrier.md "class in java.lang")[PREVIEW](java.base/java/lang/ScopedValue.Carrier.md#preview-java.lang.ScopedValue.Carrier)

  Scoped Values

  A mapping of scoped values, as *keys*, to values.

  [java.util.concurrent.StructuredTaskScope](java.base/java/util/concurrent/StructuredTaskScope.md "class in java.util.concurrent")[PREVIEW](java.base/java/util/concurrent/StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope)

  Structured Concurrency

  A basic API for *structured concurrency*.

  [java.util.concurrent.StructuredTaskScope.ShutdownOnFailure](java.base/java/util/concurrent/StructuredTaskScope.ShutdownOnFailure.md "class in java.util.concurrent")[PREVIEW](java.base/java/util/concurrent/StructuredTaskScope.ShutdownOnFailure.md#preview-java.util.concurrent.StructuredTaskScope.ShutdownOnFailure)

  Structured Concurrency

  A `StructuredTaskScope` that captures the exception of the first subtask to
  [fail](java.base/java/util/concurrent/StructuredTaskScope.Subtask.State.md#FAILED)[PREVIEW](java.base/java/util/concurrent/StructuredTaskScope.Subtask.State.md#preview-java.util.concurrent.StructuredTaskScope.Subtask.State).

  [java.util.concurrent.StructuredTaskScope.ShutdownOnSuccess](java.base/java/util/concurrent/StructuredTaskScope.ShutdownOnSuccess.md "class in java.util.concurrent")[PREVIEW](java.base/java/util/concurrent/StructuredTaskScope.ShutdownOnSuccess.md#preview-java.util.concurrent.StructuredTaskScope.ShutdownOnSuccess)

  Structured Concurrency

  A `StructuredTaskScope` that captures the result of the first subtask to
  complete [successfully](java.base/java/util/concurrent/StructuredTaskScope.Subtask.State.md#SUCCESS)[PREVIEW](java.base/java/util/concurrent/StructuredTaskScope.Subtask.State.md#preview-java.util.concurrent.StructuredTaskScope.Subtask.State).

  [java.util.FormatProcessor](java.base/java/util/FormatProcessor.md "class in java.util")[PREVIEW](java.base/java/util/FormatProcessor.md#preview-java.util.FormatProcessor)

  String Templates

  This [`StringTemplate.Processor`](java.base/java/lang/StringTemplate.Processor.md "interface in java.lang")[PREVIEW](java.base/java/lang/StringTemplate.Processor.md#preview-java.lang.StringTemplate.Processor) constructs a [`String`](java.base/java/lang/String.md "class in java.lang") result using
  [`Formatter`](java.base/java/util/Formatter.md "class in java.util") specifications and values found in the [`StringTemplate`](java.base/java/lang/StringTemplate.md "interface in java.lang")[PREVIEW](java.base/java/lang/StringTemplate.md#preview-java.lang.StringTemplate).

* Enum Classes

  Enum Class

  Preview Feature

  Description

  [java.util.concurrent.StructuredTaskScope.Subtask.State](java.base/java/util/concurrent/StructuredTaskScope.Subtask.State.md "enum class in java.util.concurrent")[PREVIEW](java.base/java/util/concurrent/StructuredTaskScope.Subtask.State.md#preview-java.util.concurrent.StructuredTaskScope.Subtask.State)

  Structured Concurrency

  Represents the state of a subtask.

* Exception Classes

  Exception Class

  Preview Feature

  Description

  [java.util.concurrent.StructureViolationException](java.base/java/util/concurrent/StructureViolationException.md "class in java.util.concurrent")[PREVIEW](java.base/java/util/concurrent/StructureViolationException.md#preview-java.util.concurrent.StructureViolationException)

  Structured Concurrency

  Thrown when a structure violation is detected.

* Fields

  Field

  Preview Feature

  Description

  [java.lang.invoke.StringConcatFactory.MAX\_INDY\_CONCAT\_ARG\_SLOTS](java.base/java/lang/invoke/StringConcatFactory.md#MAX_INDY_CONCAT_ARG_SLOTS)[PREVIEW](java.base/java/lang/invoke/StringConcatFactory.md#preview-MAX_INDY_CONCAT_ARG_SLOTS)

  String Templates

  Maximum number of argument slots in String Concat call.

* Methods

  Method

  Preview Feature

  Description

  [java.lang.Class.isUnnamedClass()](java.base/java/lang/Class.md#isUnnamedClass())[PREVIEW](java.base/java/lang/Class.md#preview-isUnnamedClass())

  Unnamed Classes and Instance Main Methods

  Returns `true` if and only if the underlying class
  is an unnamed class.

  [java.lang.invoke.MethodHandles.collectCoordinates(VarHandle, int, MethodHandle)](java.base/java/lang/invoke/MethodHandles.md#collectCoordinates(java.lang.invoke.VarHandle,int,java.lang.invoke.MethodHandle))[PREVIEW](java.base/java/lang/invoke/MethodHandles.md#preview-collectCoordinates(java.lang.invoke.VarHandle,int,java.lang.invoke.MethodHandle))

  Foreign Function & Memory API

  Adapts a target var handle by pre-processing
  a sub-sequence of its coordinate values with a filter (a method handle).

  [java.lang.invoke.MethodHandles.dropCoordinates(VarHandle, int, Class<?>...)](java.base/java/lang/invoke/MethodHandles.md#dropCoordinates(java.lang.invoke.VarHandle,int,java.lang.Class...))[PREVIEW](java.base/java/lang/invoke/MethodHandles.md#preview-dropCoordinates(java.lang.invoke.VarHandle,int,java.lang.Class...))

  Foreign Function & Memory API

  Returns a var handle which will discard some dummy coordinates before delegating to the
  target var handle.

  [java.lang.invoke.MethodHandles.filterCoordinates(VarHandle, int, MethodHandle...)](java.base/java/lang/invoke/MethodHandles.md#filterCoordinates(java.lang.invoke.VarHandle,int,java.lang.invoke.MethodHandle...))[PREVIEW](java.base/java/lang/invoke/MethodHandles.md#preview-filterCoordinates(java.lang.invoke.VarHandle,int,java.lang.invoke.MethodHandle...))

  Foreign Function & Memory API

  Adapts a target var handle by pre-processing incoming coordinate values using unary filter functions.

  [java.lang.invoke.MethodHandles.filterValue(VarHandle, MethodHandle, MethodHandle)](java.base/java/lang/invoke/MethodHandles.md#filterValue(java.lang.invoke.VarHandle,java.lang.invoke.MethodHandle,java.lang.invoke.MethodHandle))[PREVIEW](java.base/java/lang/invoke/MethodHandles.md#preview-filterValue(java.lang.invoke.VarHandle,java.lang.invoke.MethodHandle,java.lang.invoke.MethodHandle))

  Foreign Function & Memory API

  Adapts a target var handle by pre-processing incoming and outgoing values using a pair of filter functions.

  [java.lang.invoke.MethodHandles.insertCoordinates(VarHandle, int, Object...)](java.base/java/lang/invoke/MethodHandles.md#insertCoordinates(java.lang.invoke.VarHandle,int,java.lang.Object...))[PREVIEW](java.base/java/lang/invoke/MethodHandles.md#preview-insertCoordinates(java.lang.invoke.VarHandle,int,java.lang.Object...))

  Foreign Function & Memory API

  Provides a target var handle with one or more *bound coordinates*
  in advance of the var handle's invocation.

  [java.lang.invoke.MethodHandles.memorySegmentViewVarHandle(ValueLayout)](java.base/java/lang/invoke/MethodHandles.md#memorySegmentViewVarHandle(java.lang.foreign.ValueLayout))[PREVIEW](java.base/java/lang/invoke/MethodHandles.md#preview-memorySegmentViewVarHandle(java.lang.foreign.ValueLayout))

  Foreign Function & Memory API

  Creates a var handle object, which can be used to dereference a [memory segment](java.base/java/lang/foreign/MemorySegment.md "interface in java.lang.foreign")[PREVIEW](java.base/java/lang/foreign/MemorySegment.md#preview-java.lang.foreign.MemorySegment)
  at a given byte offset, using the provided value layout.

  [java.lang.invoke.MethodHandles.permuteCoordinates(VarHandle, List<Class<?>>, int...)](java.base/java/lang/invoke/MethodHandles.md#permuteCoordinates(java.lang.invoke.VarHandle,java.util.List,int...))[PREVIEW](java.base/java/lang/invoke/MethodHandles.md#preview-permuteCoordinates(java.lang.invoke.VarHandle,java.util.List,int...))

  Foreign Function & Memory API

  Provides a var handle which adapts the coordinate values of the target var handle, by re-arranging them
  so that the new coordinates match the provided ones.

  [java.lang.invoke.StringConcatFactory.makeConcatWithTemplate(List<String>, List<Class<?>>)](java.base/java/lang/invoke/StringConcatFactory.md#makeConcatWithTemplate(java.util.List,java.util.List))[PREVIEW](java.base/java/lang/invoke/StringConcatFactory.md#preview-makeConcatWithTemplate(java.util.List,java.util.List))

  String Templates

  Simplified concatenation method to facilitate [`StringTemplate`](java.base/java/lang/StringTemplate.md "interface in java.lang")[PREVIEW](java.base/java/lang/StringTemplate.md#preview-java.lang.StringTemplate)
  concatenation.

  [java.lang.invoke.StringConcatFactory.makeConcatWithTemplateCluster(List<String>, List<Class<?>>, int)](java.base/java/lang/invoke/StringConcatFactory.md#makeConcatWithTemplateCluster(java.util.List,java.util.List,int))[PREVIEW](java.base/java/lang/invoke/StringConcatFactory.md#preview-makeConcatWithTemplateCluster(java.util.List,java.util.List,int))

  String Templates

  This method breaks up large concatenations into separate
  [`MethodHandles`](java.base/java/lang/invoke/MethodHandle.md "class in java.lang.invoke") based on the number of slots required
  per [`MethodHandle`](java.base/java/lang/invoke/MethodHandle.md "class in java.lang.invoke").

  [java.lang.invoke.StringConcatFactory.makeConcatWithTemplateGetters(List<String>, List<MethodHandle>, int)](java.base/java/lang/invoke/StringConcatFactory.md#makeConcatWithTemplateGetters(java.util.List,java.util.List,int))[PREVIEW](java.base/java/lang/invoke/StringConcatFactory.md#preview-makeConcatWithTemplateGetters(java.util.List,java.util.List,int))

  String Templates

  This method creates a [`MethodHandle`](java.base/java/lang/invoke/MethodHandle.md "class in java.lang.invoke") expecting one input, the
  receiver of the supplied getters.

  [java.lang.Module.isNativeAccessEnabled()](java.base/java/lang/Module.md#isNativeAccessEnabled())[PREVIEW](java.base/java/lang/Module.md#preview-isNativeAccessEnabled())

  Foreign Function & Memory API

  Returns `true` if this module can access
  [*restricted*](./java.base/java/lang/foreign/package-summary.md#restricted) methods.

  [java.lang.ModuleLayer.Controller.enableNativeAccess(Module)](java.base/java/lang/ModuleLayer.Controller.md#enableNativeAccess(java.lang.Module))[PREVIEW](java.base/java/lang/ModuleLayer.Controller.md#preview-enableNativeAccess(java.lang.Module))

  Foreign Function & Memory API

  Enables native access for a module in the layer if the caller's module
  has native access.

  [java.nio.channels.FileChannel.map(FileChannel.MapMode, long, long, Arena)](java.base/java/nio/channels/FileChannel.md#map(java.nio.channels.FileChannel.MapMode,long,long,java.lang.foreign.Arena))[PREVIEW](java.base/java/nio/channels/FileChannel.md#preview-map(java.nio.channels.FileChannel.MapMode,long,long,java.lang.foreign.Arena))

  Foreign Function & Memory API

  Maps a region of this channel's file into a new mapped memory segment,
  with the given offset, size and arena.

  [javax.lang.model.element.TypeElement.isUnnamed()](java.compiler/javax/lang/model/element/TypeElement.md#isUnnamed())[PREVIEW](java.compiler/javax/lang/model/element/TypeElement.md#preview-isUnnamed())

  Unnamed Classes and Instance Main Methods

  Returns `true` if this is an unnamed class and `false` otherwise.

  [javax.lang.model.element.VariableElement.isUnnamed()](java.compiler/javax/lang/model/element/VariableElement.md#isUnnamed())[PREVIEW](java.compiler/javax/lang/model/element/VariableElement.md#preview-isUnnamed())

  Unnamed Patterns and Variables

  Returns `true` if this is an unnamed variable and `false` otherwise.